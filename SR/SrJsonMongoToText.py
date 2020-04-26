#!/usr/bin/env python3
# A simple demonstration program to parse a DICOM Structured Report
# in JSON format as extracted from the SMI MongoDB database.
# Note that this is a specific format, not the same as that from dcm2json.

import collections
import json
import re
import sys

# List of known keys which we either parse or can safely ignore
# (all the others will be reported during testing to ensure no content is missed).
sr_keys_to_ignore = [
    '_id',
    'header',
    'InstanceCreationDate',
    'InstanceCreationTime',
    'SOPClassUID',
    'SOPInstanceUID',
    'StudyDate',
    'SeriesDate',
    'ContentDate',
    'StudyTime',
    'ContentTime',
    'AccessionNumber',
    'Modality',
    'ModalitiesInStudy',
    'Manufacturer',
    'InstitutionName',
    'ReferringPhysicianName',
    'StudyDescription',
    'SeriesDescription',
    'ReferencedPerformedProcedureStepSequence',
    'PatientName',
    'PatientID',
    'TypeOfPatientID',
    'IssuerOfPatientID',
    'OtherPatientIDs',
    'PatientBirthDate',
    'PatientSex',
    'PatientAge',
    'PatientWeight',
    'MedicalAlerts',
    'Allergies',
    'EthnicGroup',
    'OtherPatientIDsSequence',
    'StudyInstanceUID',
    'SeriesInstanceUID',
    'StudyID',
    'SeriesNumber',
    'InstanceNumber',
    'NumberOfStudyRelatedInstances',
    'ValueType',
    'ContinuityOfContent',
    'CurrentRequestedProcedureEvidenceSequence',
    'CompletionFlag',
    'VerificationFlag',
    'ContentTemplateSequence',
    'SpecificCharacterSet',
    'ImageType',
    'SeriesTime',
    'InstitutionAddress',
    'StationName',
    'InstitutionalDepartmentName',
    'PhysiciansOfRecord',
    'ManufacturerModelName',
    'SoftwareVersions',
    'DateOfLastCalibration',
    'TimeOfLastCalibration',
    'RequestingPhysician',
    'RequestingService',              # XXX do we want this?
    'RequestedProcedureDescription',  # XXX do we want this?
    'RequestAttributesSequence',      # XXX what is this?
    'PerformedProcedureStepDescription',
    'PerformedProcedureStepStartDate',
    'PerformedProcedureStepStartTime',
    'PerformedProcedureStepID',
    'PerformedProcedureCodeSequence', # XXX what is this? does it ever exist?
    'PerformedProtocolCodeSequence',  # XXX what is this?
    'ReferringPhysicianName',
    'ProtocolName',
    'StudyComments',
    'ImageComments', # XXX do we want this?
    'TotalNumberOfExposures',
    'ExposedArea',
    'ExposedDoseSequence',
    'ExposureDoseSequence',
    'EntranceDoseInmGy',
    'ProcedureCodeSequence', # XXX what is this?
    'ReferencedStudySequence', # XXX what is this?
    'PatientSize', # XXX do we want this?
    'DeviceSerialNumber',
    'QueryRetrieveLevel',
    'ScheduledStepAttributesSequence',
]


# ---------------------------------------------------------------------
# Return True if the DICOM tag named keystr can be ignored, either because
# it exists at the top level of the document and has already been output,
# or because it contains nothing of interest,
# or it is not recognised so cannot be decoded.
# Uses the global list sr_keys_to_ignore

def sr_key_can_be_ignored(keystr):
    if keystr in sr_keys_to_ignore:
        return True
    # We cannot definitively decode private tags, BUT some contain information which is not anywhere else, even person names!
    if '-PrivateCreator' in keystr:
        return True
    if '-Unknown' in keystr:
        return True
    if '-CSA ' in keystr: # part of SIEMENS CSA HEADER
        return True
    return False


# ---------------------------------------------------------------------
# Decode the string value of the PNAME tag.
# Decode the Person's Name value which is typically encoded
# using ^ as a separator between Surname^First^Middle^Title^Suffix
# Returns the decoded human-readable string.

def sr_decode_PNAME(pname):
    if pname == None:
        return ''
    if '^' in pname:
        pname_list = pname.split('^')
        pname = ''
        for ii in (3, 1, 2, 0, 4):
            if (len(pname_list) > ii) and (len(pname_list[ii]) > 0):
                pname = pname + pname_list[ii] + ' '
        pname = pname.rstrip()  # remove trailing spaces
    return pname


def test_sr_decode_PNAME():
    assert sr_decode_PNAME('Fukuda^Katherine M.^^^M. D.') == 'Katherine M. Fukuda M. D.'


# ---------------------------------------------------------------------
# Decode the ConceptNameCodeSequence by returning the value of CodeMeaning inside

def sr_decode_ConceptNameCodeSequence(cncs):
    assert isinstance(cncs, list)
    for cncs_item in cncs:
        if 'CodeMeaning' in cncs_item:
            return sr_get_key(cncs_item, 'CodeMeaning')
    return ''

# ---------------------------------------------------------------------
# Decode a MeasuredValueSequence by returning a string consisting of the
# NumericValue inside, and having the short form of the units appended
# eg. 23mm.
# XXX could insert a space before the units if required

def sr_decode_MeasurementUnitsCodeSequence(mucs):
    assert isinstance(mucs, list)
    for mucs_item in mucs:
        # NB CodeValue pulls out the abbreviation, eg. 'mm',
        # use CodeMeaning if you want the full name, eg. 'millimeter'
        if 'CodeValue' in mucs_item:
            return sr_get_key(mucs_item, 'CodeValue')
    return ''

def sr_decode_MeasuredValueSequence(mvs):
    # Sometimes it is 'null' when no measurement was attempted
    # A NumericValueQualifierCodeSequence would report this but we don't check for it.
    if mvs == None:
        return ''
    assert isinstance(mvs, list)
    num_str = ''
    units_str = ''
    for mvs_item in mvs:
        if 'NumericValue' in mvs_item:
            num_str = sr_get_key(mvs_item, 'NumericValue')
        if 'MeasurementUnitsCodeSequence' in mvs_item:
            units_str = sr_decode_MeasurementUnitsCodeSequence(mvs_item.get('MeasurementUnitsCodeSequence', ''))
    return num_str+' '+units_str


# ---------------------------------------------------------------------
# Output the string given in valstr, if not empty.
# Prepends a section title given in keystr if not empty.
# eg.  keystr : valstr
# Removes multiple line endings for clarity

def sr_output_string(keystr, valstr):
    # If there is no value the do not print anything at all
    if valstr == None or valstr == '':
        return
    # Replace CRs with LF
    valstr = re.sub('\r+', '\n', valstr)
    # Replace HTML tags such as <br>
    valstr = re.sub('<[Bb][Rr]>', '\n', valstr)
    # Remove superfluous LFs
    valstr = re.sub('\n+', '\n', valstr)
    # If there is no key then do not print a prefix
    if keystr == None or keystr == '':
        print('%s' % (valstr))
    else:
        print('%s : %s' % (keystr, valstr))


# ---------------------------------------------------------------------
# Decode a DICOM date tag into a readable string

def sr_decode_date(datestr):
    # XXX TODO: parse YYYYMMDD and return YYYY-MM-DD ?
    return datestr


# ---------------------------------------------------------------------
# Get the value of a key from a dictionary or an empty string if not present
def sr_get_key(jsondict, jsonkey):
    if isinstance(jsondict, collections.Mapping):
        str = jsondict.get(jsonkey, '')
        if str == None:
            str = ''
        return str


# ---------------------------------------------------------------------
# Internal function to parse a DICOM tag which calls itself recursively
# when it finds a sequence
# Uses str_output_string to format the output.

def sr_parse_key(json_dict, json_key):
        if json_key == 'ConceptNameCodeSequence':
            sr_output_string('', sr_decode_ConceptNameCodeSequence(json_dict[json_key]))
        elif json_key == 'ContentSequence':
            for cs_item in json_dict[json_key]:
                if 'RelationshipType' in cs_item and 'ValueType' in cs_item:
                    value_type = cs_item['ValueType']
                    if value_type == 'PNAME':
                        sr_output_string(sr_decode_ConceptNameCodeSequence(cs_item['ConceptNameCodeSequence']), cs_item.get('PersonName', ''))
                    elif value_type == 'DATETIME':
                        sr_output_string(sr_decode_ConceptNameCodeSequence(cs_item['ConceptNameCodeSequence']), cs_item.get('DateTime', ''))
                    elif value_type == 'TEXT':
                        sr_output_string(sr_decode_ConceptNameCodeSequence(cs_item['ConceptNameCodeSequence']), cs_item.get('TextValue', ''))
                    elif value_type == 'NUM':
                        sr_output_string(sr_decode_ConceptNameCodeSequence(cs_item['ConceptNameCodeSequence']), sr_decode_MeasuredValueSequence(cs_item['MeasuredValueSequence']))
                    elif value_type == 'CODE':
                        sr_output_string(sr_decode_ConceptNameCodeSequence(cs_item['ConceptNameCodeSequence']), sr_decode_ConceptNameCodeSequence(cs_item['ConceptCodeSequence']))
                    elif value_type == 'CONTAINER':
                        # Sometimes it has no ContentSequence or is 'null'
                        if 'ContentSequence' in cs_item and cs_item['ContentSequence'] != None:
                            sr_output_string('', sr_decode_ConceptNameCodeSequence(cs_item['ConceptNameCodeSequence']))
                            sr_parse_key(cs_item, 'ContentSequence')
                    else:
                        print('UNEXPECTED ITEM OF TYPE %s = %s' % (value_type, cs_item))
                #print('ITEM %s' % cs_item)
        else:
            if not sr_key_can_be_ignored(json_key):
                print('UNEXPECTED KEY %s' % json_key)


# ---------------------------------------------------------------------
# Main function to parse a DICOM Structured Report in JSON format as
# output by the MongoDB database.

def sr_parse_doc(doc_name, json_dict):
    sr_output_string('Document name', doc_name)

    # First extract the known or expected entities at the top level
    sr_output_string('Study Description', sr_get_key(json_dict, 'StudyDescription'))
    sr_output_string('Study Date', sr_decode_date(sr_get_key(json_dict, 'StudyDate')))
    sr_output_string('Series Description', sr_get_key(json_dict, 'SeriesDescription'))
    sr_output_string('Series Date', sr_decode_date(sr_get_key(json_dict, 'SeriesDate')))
    sr_output_string('Performed Procedure Step Description', sr_decode_date(sr_get_key(json_dict, 'PerformedProcedureStepDescription')))
    sr_output_string('ProtocolName', sr_decode_date(sr_get_key(json_dict, 'ProtocolName')))
    sr_output_string('StudyComments', sr_decode_date(sr_get_key(json_dict, 'StudyComments')))
    sr_output_string('Content Date', sr_decode_date(sr_get_key(json_dict, 'ContentDate')))
    sr_output_string('Patient ID', sr_get_key(json_dict, 'PatientID'))
    sr_output_string('Patient Name', sr_decode_PNAME(sr_get_key(json_dict, 'PatientName')))
    sr_output_string('Patient Birth Date', sr_decode_date(sr_get_key(json_dict, 'PatientBirthDate')))
    sr_output_string('Patient Sex', sr_get_key(json_dict, 'PatientSex'))
    sr_output_string('Patient Age', sr_get_key(json_dict, 'PatientAge'))
    sr_output_string('Patient Weight', sr_get_key(json_dict, 'PatientWeight'))
    sr_output_string('Medical Alerts', sr_get_key(json_dict, 'MedicalAlerts'))
    sr_output_string('Allergies', sr_get_key(json_dict, 'Allergies'))
    sr_output_string('Ethnic Group', sr_get_key(json_dict, 'EthnicGroup'))
    sr_output_string('Referring Physician Name', sr_decode_PNAME(sr_get_key(json_dict, 'ReferringPhysicianName')))

    for json_key in json_dict:
        sr_parse_key(json_dict, json_key)


# ---------------------------------------------------------------------
# Main program for testing
# Usage: filename
#   reads one DICOM or an array of DICOM in JSON format
#   decodes to stdout.

if __name__ == '__main__':
    json_doc = {}

    if len(sys.argv) > 1 and sys.argv[1] != '':
        filename = sys.argv[1]
    else:
        filename = 'sampleSR.json'

    # Read the whole document into memory
    with open(filename, 'r') as fd:
        json_doc = json.loads(fd.read())

    # If it is an array then process each item separately
    if isinstance(json_doc, list):
        for json_dict in json_doc:
            sr_parse_doc(filename, json_dict)
    else:
        sr_parse_doc(filename, json_doc)
