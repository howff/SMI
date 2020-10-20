#!/usr/bin/env python3

# This class implements a Generator so you can iterate through the textual content
# of the document one text fragment at a time. The returned value from the generator
# will be a dictionary containing text: the text, is_personal: boolean

# Configuration:
#   Reads default.yaml, section NLPOptions, subsection DicomJsonSR
#   Options:
#     DisplayConceptPrefix: True or False (default is True)

# XXX TODO
# Return a new field is_attr=True for attributes
# Return a new field desc=Text for the concept name

import re
import json
import yaml
from pydicom.datadict import keyword_for_tag
from .DicomCodes import *

yaml_file_name = 'default.yaml'


# ---------------------------------------------------------------------
# Decode the string value of the PNAME tag.
# Decode the Person's Name value which is typically encoded
# using ^ as a separator between Surname^First^Middle^Title^Suffix
# Returns the decoded human-readable string.

def decode_PNAME(pname):
    if '^' in pname:
        pname_list = pname.split('^')
        pname = ''
        for ii in (3, 1, 2, 0, 4):
            if (len(pname_list) > ii) and (len(pname_list[ii]) > 0):
                pname = pname + pname_list[ii] + ' '
        pname = pname.rstrip()  # remove trailing spaces
    return pname


def test_decode_PNAME():
    assert decode_PNAME('Fukuda^Katherine M.^^^M. D.') == 'Katherine M. Fukuda M. D.'


# ---------------------------------------------------------------------

# Get the 'vr' or 'val' entry from inside a named item in anydict
# i.e. given this anydict get_val will returns 'anyvalue'
# anydict = { 'anykey': { 'vr': 'ST', 'val': 'anyvalue' } }
# If it doesn't exist then an empty string is returned (instead of exception).
# Note that anykey should be a dicom tag number string but that
# anydict might have that key present with a number or a name
# eg. either { '00100008': stuff } OR { 'Study': stuff }

def get_vr(anydict, anykey):
    if not anykey in anydict:
        anykey = dicom_tag_number_to_name(anykey)
    try:
        return anydict[anykey]['vr']
    except:
        return ''

def get_val(anydict, anykey):
    print('get_val %s is %s' % (anykey, anydict.get(anykey,"not present")))
    if not anykey in anydict:
        anykey = dicom_tag_number_to_name(anykey)
    print(' becomes get_val %s is %s' % (anykey, anydict.get(anykey,"not present")))
    if anykey in anydict and 'val' in anydict[anykey]:
        print('key %s has a "val" = %s' % (anykey, anydict[anykey]['val']))
    else:
        print('key %s has no "val"' % anykey)
    if not isinstance(anydict[anykey], dict):
        return anydict[anykey] # XXX if there's no 'vr' and 'val' maybe just use the actual plain text string value of the key
    try:
        return anydict[anykey]['val']
    except:
        return ''

def test_get_val():
    assert get_val( { 'anykey': { 'vr': 'ST', 'val': 'anyvalue' } }, 'anykey' ) == 'anyvalue'
    assert get_val( { 'StudyDate': { 'vr': 'ST', 'val': 'anyvalue' } }, '00080020' ) == 'anyvalue'
    assert get_val( { 'StudyDate': { 'vr': 'ST', 'val': 'anyvalue' } }, 'StudyDate' ) == 'anyvalue'
    #assert get_val( { '00080020': { 'vr': 'ST', 'val': 'anyvalue' } }, 'StudyDate' ) == 'anyvalue' # reverse lookup is not yet implemented
    assert get_val( { 'nokey':  { 'vr': 'ST', 'val': 'anyvalue' } }, 'anykey') == ''


# ---------------------------------------------------------------------

# Convert a tag number (as an 8-digit hex string) to a name.
# Matches nnnnmmmm OR nnnn,mmmm OR (nnnn,mmmm) OR (nnnn,mmmm:
# because we see examples such as:
#  "(07a1,0010)-PrivateCreator"
#  "(07a1,1002:ELSCINT1)-Unknown"
# also sometimes we get the name not the number so just return it untouched.

def dicom_tag_number_to_name(tag):
    match = re.match(r'^\({0,1}([0-9a-fA-F]{4}),{0,1}([0-9a-fA-F]{4})[\):]{0,1}', tag)
    if match:
        tagname = keyword_for_tag(match.group(1)+match.group(2))
        if tagname == "": tagname = "PrivateCreator"
        return tagname
    # If no number is found then assume it's already a name
    return tag

def test_dicom_tag_number_to_name():
    assert dicom_tag_number_to_name('00080020') == 'StudyDate'
    assert dicom_tag_number_to_name('(00080020)') == 'StudyDate'
    assert dicom_tag_number_to_name('(0008,0020)') == 'StudyDate'
    assert dicom_tag_number_to_name('(0008,0020:stuff)') == 'StudyDate'
    assert dicom_tag_number_to_name('(0008,0020)-nonsense') == 'StudyDate'
    assert dicom_tag_number_to_name('(0008,0020:stuff)-nonsense') == 'StudyDate'
    assert dicom_tag_number_to_name('(0008,0020:stuff)-nonsense') == 'StudyDate'


# ---------------------------------------------------------------------

# Get the CodeValue and CodeMeaning strings from a ConceptNameCodeSequence.
# Returns a tuple (CodeValue, CodeMeaning) being their 'val' entries.
# If the entries don't exist then it returns (None, None)
# eg.
#   "ConceptNameCodeSequence": {
#    "vr": "SQ",
#    "val": [
#      {
#        "CodeValue": { "vr": "SH", "val": "DT.06" },
#        "CodingSchemeDesignator": { "vr": "SH", "val": "99_OFFIS_DCMTK" },
#        "CodeMeaning": { "vr": "LO", "val": "Consultation Report" }
#      }
#    ]
#  },
# Returns a tuple ('DT.06', 'Consultation Report')
# However note that the dict passed in may have keys as numbers or names
# so we need to check for both, eg. '00080010' or 'Study' both possible.

def gg(adict, atag):
    if atag in adict: return adict[atag]
    name = dicom_tag_number_to_name(atag)
    if name in adict: return adict[name]
    return None

def get_CodeValue_CodeMeaning(codedict):
    try:
        codevalue = gg(codedict['val'][0], Tagnum_CodeValue)['val'] # codedict['val'][0][Tagnum_CodeValue]['val']
        codemeaning = gg(codedict['val'][0], Tagnum_CodeMeaning)['val'] # codedict['val'][0][Tagnum_CodeMeaning]['val']
        return (codevalue, codemeaning)
    except:
        return (None, None)


def get_ConceptNameCodeSequence(cncs_dict):
    # If we are passed the parent dict which contains the CNCS then select it.
    cncs = gg(cncs_dict, Tagnum_ConceptNameCodeSequence)
    if cncs != None:
        cncs_dict = cncs
    #WAS: if Tagnum_ConceptNameCodeSequence in cncs_dict:
    #    cncs_dict = cncs_dict[Tagnum_ConceptNameCodeSequence]
    # Look for the specific children and return their values.
    return get_CodeValue_CodeMeaning(cncs_dict)


def get_ConceptCodeSequence(ccs_dict):
    # If we are passed the parent dict which contains the CCS then select it.
    ccs = gg(ccs_dict, Tagnum_ConceptCodeSequence)
    if ccs != None:
        ccs_dict = ccs
    #WAS: if Tagnum_ConceptCodeSequence in ccs_dict:
    #    ccs_dict = ccs_dict[Tagnum_ConceptCodeSequence]
    # Look for the specific children and return their values.
    return get_CodeValue_CodeMeaning(ccs_dict)

def test_get_ConceptCodeSequence():
    assert get_ConceptCodeSequence( { Tagnum_ConceptCodeSequence : {
        'val': [ { Tagnum_CodeValue: { 'val': 'a'}, Tagnum_CodeMeaning: {'val': 'b' } } ]
        } } ) == ('a', 'b')
    assert get_ConceptCodeSequence( { 'ConceptCodeSequence' : {
        'val': [ { 'CodeValue': { 'val': 'a'}, 'CodeMeaning': {'val': 'b' } } ]
        } } ) == ('a', 'b')


# ---------------------------------------------------------------------
# This is a class method!  Class: DicomJsonSR
# It's not inside the class so we can keep the class definition clean.
# It's an internal method not to be exposed to class users.
# item: a dict containing the top-level dictionary of a DICOM SR in JSON format
#   or a sub-dict inside (i.e. it calls itself recursively).
# Generator returns: dict containing:
#   'text' (the extracted text fragment)
#   'is_personal': boolean True if the text is personal data
#   'is_attr': boolean True if an attribute not part of the text
#   'concept': describes the text eg. "Physicians" or "Diagnosis"

def text_and_personal_content(self, item):

    is_personal = False

    vr = None
    val = None
    relationship_type = ''
    relationship_value_type = ''
    text_content = ''
    num_children = 0
    ret_dict = { 'text': '', 'is_personal': False, 'is_attr': False, 'concept': '' }

    # Must be passed a dict
    assert isinstance(item, dict)

    # Extract values from the dict
    num_children = len(item)

    # Two common values in children items
    vr = item.get('vr', None)
    val = item.get('val', None)

    # Relationship to child item
    relationship_type = get_val(item, Tagnum_RelationshipType)
    relationship_value_type = get_val(item, Tagnum_ValueType)

    # Text strings
    # (if it's the name of an organisation we will detect this later)
    text_content = get_val(item, Tagnum_TextValue)

    # Person name
    if Tagnum_PersonName in item:
        text_content = decode_PNAME(get_val(item, Tagnum_PersonName))
        is_personal = True

    # Numeric values as text strings
    if Tagnum_MeasuredValueSequence in item:
        mvs = get_val(item, Tagnum_MeasuredValueSequence)[0]
        units = mvs[Tagnum_MeasurementUnitsCodeSequence]
        # Get the units, eg. ('cm', 'centimeter')
        (units_short, units_long) = get_CodeValue_CodeMeaning(units)
        text_content = get_val(mvs, Tagnum_NumericValue)
        # Append the units to the value, use the short form, eg. 'cm'
        text_content = text_content + ' ' + units_short

    # Check for any tags which we don't know about and may actually want to extract
    for tag in item:
        if not tag in Tagnum_extraction_list:
            print('** WARNING unexpected DICOM tag number "%s" = name "%s" (if this is a useful tag add it to the program otherwise safe to ignore)' % (tag, dicom_tag_number_to_name(tag)))
            #raise NotImplementedError("ERROR Unexpected DICOM tag in doc: %s = %s" % (tag, dicom_tag_number_to_name(tag)))

    # First, can we return any content which is an attribute of this item
    for tag in Tagnum_extraction_list:
        if Tagnum_extraction_list[tag]['to_extract']:
            print('Looking for %s OR %s in %s' % (tag, dicom_tag_number_to_name(tag), item))
            xx = get_val(item, tag)
            print("Should find %s" % item.get(tag, "Shouldn't find anything") )
            print("Found %s" % xx)
        if Tagnum_extraction_list[tag]['to_extract'] and \
                get_val(item, tag):
            print('Found %s' % tag)
            is_personal = Tagnum_extraction_list[tag]['is_personal']
            val = get_val(item, tag)
            vr  = get_vr(item, tag)
            # Decode strings to human-readable
            # XXX should we preserve encoding for downstream processing?
            # XXX could also decode DA dates (YYYYMMDD) and TM times (HHMMSS) ?
            if vr == 'PN':
                val = decode_PNAME(val)
            # Attributes can have a newline appended but this is left to the reader, not done here
            ##val = val + '\n'
            # Construct return dict
            ret_dict['text'] = val
            ret_dict['is_personal'] = is_personal
            ret_dict['is_attr'] = True
            # Use the DICOM tag name as the concept for the attr as it's not in the file
            ret_dict['concept'] = dicom_tag_number_to_name(tag)
            yield ret_dict
            # No return here, we continue processing the item itself

    # See if this dict has a 'meaning'
    # and whether it could be considered as personal data.
    # A "ConceptNameCodeSequence" contains a "CodeValue" and a "CodeMeaning"
    # and so does a "ConceptCodeSequence".
    (conceptname_name, conceptname_value) = get_ConceptNameCodeSequence(item)
    (concept_name, concept_value) = get_ConceptCodeSequence(item)
    # See if this concept is personal data
    if conceptname_name and (conceptname_name in ConceptName_personal_list):
        is_personal = True
    if conceptname_value and (conceptname_value in ConceptValue_personal_list):
        is_personal = True
    # Debug
    if conceptname_name and self.debug > 0:
        print("This item is a conceptName %s %s (%s)" % (conceptname_name, conceptname_value, 'personal' if is_personal else 'ok'))
    if concept_name and self.debug > 0:
        print("This item is a concept    %s %s (%s)" % (concept_name, concept_value, 'personal' if is_personal else 'ok'))

    # If it Contains a CODE then extract the value of the code
    # which is inside a "ConceptCodeSequence" tag having a "CodeValue" and "CodeMeaning"
    if relationship_type == 'CONTAINS':
        if relationship_value_type == 'CODE':
            assert text_content == '', "While parsing a CONTAINS=CODE %s already have text %s" % (concept_value, text_content)
            text_content = concept_value

    # Contextual items are attributes too
    if relationship_type == 'HAS OBS CONTEXT':
        ret_dict['is_attr'] = True

    # If it has a concept then prepend that to the front of the string value
    # unless it's the default Description as that appears multiple times.
    if conceptname_value and text_content and (conceptname_value != 'Description'):
        # XXX should we distinguish between 'Diagnosis' which we want, and 'Diameter' which we don't want?
        ret_dict['concept'] = conceptname_value

    # If we have a non-empty string then we can return it now
    if text_content:
        ret_dict['text'] = text_content
        ret_dict['is_personal'] = is_personal
        yield ret_dict
        # Return here because we shouldn't have anything left in this item to process
        return

    # If we have a content sequence child it's an array of similar items
    if Tagnum_ContentSequence in item:
        for seqitem in get_val(item, Tagnum_ContentSequence):
            yield from text_and_personal_content(self, seqitem)

    # Anything else is unexpected or unwanted
    if self.debug > 0:
        print("IGNORE the rest of %s" % item)
    return


# ---------------------------------------------------------------------

class DicomJsonSR():

    # Class members:
    # sr_dict = dict containing dicom sr in json format

    # -----------------------------------------------------------------
    # Constructor: takes the DICOM SR document as a dict
    # assuming it has been converted via JSON using the SMI Plugin algorithm
    # (which encodes the data and data types in a specific fashion).

    def __init__(self, dicom_json_sr_dict):
        self.sr_dict = dicom_json_sr_dict
        self.debug = False
        self.cfg_display_concept_prefix = True  # default, override in yaml
        self.cfg_display_attributes = False     # default, override in yaml
        self.text_and_personal_content_func = text_and_personal_content
        # Read the YAML config file
        try:
            with open(yaml_file_name, 'r') as fd:
                self.cfg_dict = yaml.load(fd)['NLPOptions']
            if 'DicomJsonSR' in self.cfg_dict and \
                    'DisplayConceptPrefix' in self.cfg_dict['DicomJsonSR']:
                self.cfg_display_concept_prefix = self.cfg_dict['DicomJsonSR']['DisplayConceptPrefix']
                self.cfg_display_attributes     = self.cfg_dict['DicomJsonSR']['DisplayAttributes']
        except FileNotFoundError:
            pass


    # Turn on/off the display of the prefix for concepts
    # eg. 'Diameter:' before a numeric value

    def set_display_concept_prefix(self, display_bool):
        self.cfg_display_concept_prefix = display_bool


    # Generator function will return the next text fragment as a dict
    # containing text: 'fragment', is_personal: boolean

    def __iter__(self):
        yield from self.text_and_personal_content_func(self, self.sr_dict)


# ---------------------------------------------------------------------
# Test program

if __name__ == '__main__':
    file = 'output/report02.dcm.json'
    with open(file, 'r') as fd:
        jsondict = json.loads(fd.read())

    obj = DicomJsonSR(jsondict)

    for ret_dict in obj:
        if ret_dict['text']:
            print("%s %s" % ('BAD ' if ret_dict['is_personal'] else 'OK  ', ret_dict['text']))