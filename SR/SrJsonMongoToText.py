#!/usr/bin/env python3
# A simple demonstration program to parse a DICOM Structured Report
# in JSON format as extracted from the SMI MongoDB database.
# Note that this is a specific format, not the same as that from dcm2json.

import collections
import json
import re
import sys
from DicomJson import Sr


# ---------------------------------------------------------------------
# List of known keys which we either parse or can safely ignore
# (all the others will be reported during testing to ensure no content is missed).
sr_keys_to_extract = [
    { 'label':'Study Description', 'tag':'StudyDescription', 'decode_func':Sr.sr_decode_plaintext },
    { 'label':'Study Date', 'tag':'StudyDate', 'decode_func':Sr.sr_decode_date },
    { 'label':'Series Description', 'tag':'SeriesDescription', 'decode_func':Sr.sr_decode_plaintext },
    { 'label':'Series Date', 'tag':'SeriesDate', 'decode_func':Sr.sr_decode_date },
    { 'label':'Performed Procedure Step Description', 'tag':'PerformedProcedureStepDescription', 'decode_func':Sr.sr_decode_plaintext },
    { 'label':'ProtocolName', 'tag':'ProtocolName', 'decode_func':Sr.sr_decode_plaintext },
    { 'label':'StudyComments', 'tag':'StudyComments', 'decode_func':Sr.sr_decode_plaintext },
    { 'label':'Content Date', 'tag':'ContentDate', 'decode_func':Sr.sr_decode_date },
    { 'label':'Patient ID', 'tag':'PatientID', 'decode_func':Sr.sr_decode_plaintext },
    { 'label':'Patient Name', 'tag':'PatientName', 'decode_func':Sr.sr_decode_PNAME },
    { 'label':'Patient Birth Date', 'tag':'PatientBirthDate', 'decode_func':Sr.sr_decode_date },
    { 'label':'Patient Sex', 'tag':'PatientSex', 'decode_func':Sr.sr_decode_plaintext },
    { 'label':'Patient Age', 'tag':'PatientAge', 'decode_func':Sr.sr_decode_plaintext },
    { 'label':'Patient Weight', 'tag':'PatientWeight', 'decode_func':Sr.sr_decode_plaintext },
    { 'label':'Medical Alerts', 'tag':'MedicalAlerts', 'decode_func':Sr.sr_decode_plaintext },
    { 'label':'Allergies', 'tag':'Allergies', 'decode_func':Sr.sr_decode_plaintext },
    { 'label':'Ethnic Group', 'tag':'EthnicGroup', 'decode_func':Sr.sr_decode_plaintext },
    { 'label':'Referring Physician Name', 'tag':'ReferringPhysicianName', 'decode_func':Sr.sr_decode_PNAME },
]


sr_keys_to_ignore = [
    '_id',        # an artefact of the MongoDB extract
    'header',     # an artefact of the SMI MongoDB load microservice
    'InstanceCreationDate',
    'InstanceCreationTime',
    'SOPClassUID',
    'SOPInstanceUID',
    'StudyTime',
    'ContentTime',
    'AccessionNumber',
    'Modality',
    'ModalitiesInStudy',
    'Manufacturer',
    'InstitutionName',
    'ReferencedPerformedProcedureStepSequence',
    'TypeOfPatientID',
    'IssuerOfPatientID',
    'OtherPatientIDs',
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
    'PerformedProcedureStepStartDate',
    'PerformedProcedureStepStartTime',
    'PerformedProcedureStepID',
    'PerformedProcedureCodeSequence', # XXX what is this? does it ever exist?
    'PerformedProtocolCodeSequence',  # XXX what is this?
    'ReferringPhysicianName',
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
    # If already handled explicitly elsewhere it can also be ignored
    for sr_extract_dict in sr_keys_to_extract:
        if keystr == sr_extract_dict['tag']:
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
        print('[%s] %s' % (keystr, valstr))


# ---------------------------------------------------------------------
# Internal function to parse a DICOM tag which calls itself recursively
# when it finds a sequence
# Uses str_output_string to format the output.

def sr_parse_key(json_dict, json_key):
        if json_key == 'ConceptNameCodeSequence':
            sr_output_string('', Sr.sr_decode_ConceptNameCodeSequence(json_dict[json_key]))
        elif json_key == 'ContentSequence':
            for cs_item in json_dict[json_key]:
                if 'RelationshipType' in cs_item and 'ValueType' in cs_item:
                    value_type = cs_item['ValueType']
                    if value_type == 'PNAME':
                        sr_output_string(Sr.sr_decode_ConceptNameCodeSequence(cs_item['ConceptNameCodeSequence']), cs_item.get('PersonName', ''))
                    elif value_type == 'DATETIME':
                        sr_output_string(Sr.sr_decode_ConceptNameCodeSequence(cs_item['ConceptNameCodeSequence']), cs_item.get('DateTime', ''))
                    elif value_type == 'TEXT':
                        sr_output_string(Sr.sr_decode_ConceptNameCodeSequence(cs_item['ConceptNameCodeSequence']), cs_item.get('TextValue', ''))
                    elif value_type == 'NUM':
                        sr_output_string(Sr.sr_decode_ConceptNameCodeSequence(cs_item['ConceptNameCodeSequence']), Sr.sr_decode_MeasuredValueSequence(cs_item['MeasuredValueSequence']))
                    elif value_type == 'CODE':
                        sr_output_string(Sr.sr_decode_ConceptNameCodeSequence(cs_item['ConceptNameCodeSequence']), Sr.sr_decode_ConceptNameCodeSequence(cs_item['ConceptCodeSequence']))
                    elif value_type == 'CONTAINER':
                        # Sometimes it has no ContentSequence or is 'null'
                        if 'ContentSequence' in cs_item and cs_item['ContentSequence'] != None:
                            sr_output_string('', Sr.sr_decode_ConceptNameCodeSequence(cs_item['ConceptNameCodeSequence']))
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

    # Output a set of known tags from the root of the document
    # This loop does the equivalent of
    # sr_output_string('Study Date', sr_decode_date(sr_get_key(json_dict, 'StudyDate')))
    for sr_extract_dict in sr_keys_to_extract:
        sr_output_string(sr_extract_dict['label'], sr_extract_dict['decode_func'](Sr.sr_get_key(json_dict, sr_extract_dict['tag'])))

    # Now output all the remaining tags which are not ignored
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
