#!/usr/bin/env python3
# A simple demonstration program to parse a DICOM Structured Report
# in JSON format as extracted from the SMI MongoDB database.
# Note that this is a specific format, not the same as that from dcm2json.

# Usage: filename
# The file can contain a single JSON dict, or an array of dict.
#   single dict - the output is written to the filename with .txt appended
#   array of dict - the output is written to SOPInstanceUID.txt files.
# If not an actual file then the filename is looked up in MongoDB
# so you can specify a file in the database and read the JSON from there.

# Instructions for modification:
#  Look through the items in sr_keys_to_ignore and if you decide that one of
# those keys should be output instead of ignored then move it into the
# sr_keys_to_extract array.

# TODO:
#  only extract certain modalities from Mongo, those that have a radiology report, the other SRs are less useful

import collections
import json
import os
import re
import sys
from DicomJson import Sr
from pymongo import MongoClient


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
    { 'label':'Text', 'tag':'TextValue', 'decode_func':Sr.sr_decode_plaintext },
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
    'AcquisitionDate',
    'AcquisitionTime',
    'AdditionalPatientHistory', # XXX do we want this?
    'AdmittingDiagnosesDescription', # XXX do we want this?
    'BodyPartExamined', # XXX do we want this?
    'BranchOfService',
    'CommentsOnThePerformedProcedureStep', # XXX do we want this?
    'CompletionFlagDescription',
    'ConfidentialityConstraintOnPatientDataDescription',
    'CountryOfResidence',
    'CountsAccumulated',
    'InstanceCreatorUID',
    'LastMenstrualDate',
    'MedicalRecordLocator',
    'MilitaryRank',
    'NameOfPhysiciansReadingStudy',
    'ObservationDateTime',
    'Occupation',
    'OperatorsName',
    'OtherPatientNames',
    'PatientAddress',
    'PatientBirthName',
    'PatientBirthTime',
    'PatientComments', # XXX do we want this?
    'PatientInsurancePlanCodeSequence',
    'PatientMotherBirthName',
    'PatientReligiousPreference',
    'PatientState',
    'PatientTelephoneNumbers',
    'PerformingPhysicianName',
    'PredecessorDocumentsSequence',
    'PregnancyStatus',
    'QualityControlImage',
    'ReferencedPatientSequence',
    'ReferencedRequestSequence',
    'RegionOfResidence',
    'RelationshipType',
    'RequestedProcedureCodeSequence', # XXX do we want this?
    'RequestedProcedureComments', # XXX do we want this?
    'ScheduledStudyStartDate',
    'ScheduledStudyStartTime',
    'SmokingStatus',
    'SpatialResolution',
    'SpecialNeeds',
    'StorageMediaFileSetUID',
    'StudyReadDate',
    'StudyReadTime',
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
    if ('-Dataset Name') in keystr: # part of GEMS_GENIE_1
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
        print('[[%s]] %s' % (keystr, valstr))


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
                    elif value_type == 'DATE':
                        sr_output_string(Sr.sr_decode_ConceptNameCodeSequence(cs_item['ConceptNameCodeSequence']), cs_item.get('Date', ''))
                    elif value_type == 'TEXT':
                        sr_output_string(Sr.sr_decode_ConceptNameCodeSequence(cs_item['ConceptNameCodeSequence']), cs_item.get('TextValue', ''))
                    elif value_type == 'NUM' and 'MeasuredValueSequence' in cs_item:
                        sr_output_string(Sr.sr_decode_ConceptNameCodeSequence(cs_item['ConceptNameCodeSequence']), Sr.sr_decode_MeasuredValueSequence(cs_item['MeasuredValueSequence']))
                    elif value_type == 'NUM' and 'NumericValue' in cs_item:
                        sr_output_string(Sr.sr_decode_ConceptNameCodeSequence(cs_item['ConceptNameCodeSequence']), cs_item.get('NumericValue'))
                    elif value_type == 'CODE':
                        sr_output_string(Sr.sr_decode_ConceptNameCodeSequence(cs_item['ConceptNameCodeSequence']), Sr.sr_decode_ConceptNameCodeSequence(cs_item['ConceptCodeSequence']))
                    elif value_type == 'UIDREF':
                        sr_output_string(Sr.sr_decode_ConceptNameCodeSequence(cs_item['ConceptNameCodeSequence']), cs_item.get('UID', ''))
                    elif value_type == 'IMAGE':
                        sr_output_string(Sr.sr_decode_ConceptNameCodeSequence(cs_item['ConceptNameCodeSequence']), Sr.sr_decode_ReferencedSOPSequence(cs_item['ReferencedSOPSequence']))
                    elif value_type == 'CONTAINER':
                        # Sometimes it has no ContentSequence or is 'null'
                        if 'ContentSequence' in cs_item and cs_item['ContentSequence'] != None:
                            sr_output_string('', Sr.sr_decode_ConceptNameCodeSequence(cs_item['ConceptNameCodeSequence']))
                            sr_parse_key(cs_item, 'ContentSequence')
                    else:
                        print('UNEXPECTED ITEM OF TYPE %s = %s' % (value_type, cs_item), file=sys.stderr)
                #print('ITEM %s' % cs_item)
        else:
            if not sr_key_can_be_ignored(json_key):
                print('UNEXPECTED KEY %s' % json_key, file=sys.stderr)


# ---------------------------------------------------------------------
# Main function to parse a DICOM Structured Report in JSON format as
# output by the MongoDB database.

def sr_parse_doc(doc_name, json_dict):

    output_filename = doc_name + '.txt'
    fd = open(output_filename, 'w')
    sys.stdout = fd

    sr_output_string('Document name', doc_name)

    # Output a set of known tags from the root of the document
    # This loop does the equivalent of
    # sr_output_string('Study Date', sr_decode_date(sr_get_key(json_dict, 'StudyDate')))
    for sr_extract_dict in sr_keys_to_extract:
        sr_output_string(sr_extract_dict['label'], sr_extract_dict['decode_func'](Sr.sr_get_key(json_dict, sr_extract_dict['tag'])))

    # Now output all the remaining tags which are not ignored
    for json_key in json_dict:
        sr_parse_key(json_dict, json_key)

    fd.close()


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

    # Read the whole document into memory from file or MongoDB
    try:
        with open(filename, 'r') as fd:
            json_doc = json.loads(fd.read())
    except OSError as e:
        #print('Cannot read file, trying Mongo')
        mongo_db_name = 'dicom'
        mongo_collection_name = 'image_SR'
        mongo_username = os.environ.get('MONGO_USERNAME')
        mongo_password = os.environ.get('MONGO_PASSWORD')
        mongo_db = MongoClient(host='nsh-smi02', username='reader', password=mongo_password, authSource='admin')
        mongo_collection = mongo_db[mongo_db_name][mongo_collection_name]
        for mongo_record in mongo_collection.find({ "header.DicomFilePath" : filename }):
            json_doc = mongo_record
            filename = json_doc['SopInstanceUID']

    # If it is an array then process each item separately
    if isinstance(json_doc, list):
        for json_dict in json_doc:
            sr_parse_doc(json_dict['SOPInstanceUID'], json_dict)
    else:
        sr_parse_doc(filename, json_doc)
