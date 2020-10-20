# Two data sources have been used to create this file.
# They map between CodeValue and CodeMeaning.
# The CodeMeaning may be present in the JSON but is it consistent?
# We might be able to use these to work out which objects are of interest
# or which need to be blacklisted entirely (eg. a PersonName object).

# ---------------------------------------------------------------------
# Map from ConceptValue to CodeMeaning

CodeValueToCodeMeaning_map = {
	'IHE.01': "Document Title",
	'IHE.02': "Observation Context Mode",
	'IHE.03': "DIRECT",
	'IHE.04': "Recording Observer's Name",
	'IHE.05': "Recording Observer's Organization Name",
	'IHE.06': "Observation Context Mode",
	'IHE.07': "PATIENT",
	'IHE.08': "Section Heading",
	'IHE.09': "Report Text",
	'IHE.10': "Image Reference",
	'DT.01': "Radiology Report",
	'DT.03': "Ultrasound Report",
	'DT.04': "CT Report",
	'DT.05': "MR Report",
	'DT.06': "Consultation Report",
	'RE.01': "History",
	'RE.02': "Request",
	'RE.03': "Procedure",
	'RE.04': "",
	'RE.05': "Finding",
	'RE.06': "Impression",
	'RE.07': "Recommendation",
	'RE.08': "Conclusion",
	'CODE_01': "Description",
	'CODE_02': "Diagnosis",
	'CODE_03': "Treatment",
	'CODE_04': "Referring Physician",
	'CODE_05': "Hospital Name",
	'CODE_06': "Redlands Clinic",
	'CODE_07': "PA Chest",
	'CODE_08': "Abdomen",
	'CODE_09': "Chief Complaint",
	'CODE_10': "Present Illness",
	'CODE_11': "Past History",
	'CODE_12': "Illnesses",
	'CODE_13': "Allergies",
	'CODE_14': "Medications",
	'CODE_15': "Operations",
	'CODE_16': "Social",
	'CODE_17': "Family History",
	'CODE_18': "Family History",
	'CODE_19': "Discharge Summary",
	'CODE_20': "History of present Illness",
	'CODE_21': "Physical Examination",
	'CODE_22': "Admitting Diagnosis",
	'CODE_23': "Laboratory Data on Admission",
	'CODE_24': "Hospital Course and Treatment",
	'CODE_25': "Surgical Procedures",
	'CODE_26': "Discharge Diagnosis",
	'CODE_27': "Teeth Present",
	'CODE_28': "Orthodontic/Pediatric Assessment",
	'CODE_29': "Other",
	'SH.06': "Findings",
	'IR.02': "Best illustration of finding",
	'OR.01': "Physician",
}


# ---------------------------------------------------------------------
# List of ConceptName values which should be considered personal data.
# See above for the full list.

ConceptName_personal_list = (
	'IHE.04', # Recording Observer's Name
	'IHE.05', # Recording Observer's Organization Name
	'IHE.07', # PATIENT
	'OR.01',  # Physician
)


# ---------------------------------------------------------------------
# List of ConceptValue which should be considered personal data.

ConceptValue_personal_list = (
	'Hospital Name',
	'Physician',
)


# ---------------------------------------------------------------------
# List of valid RelationshipType values.
# Not actually used yet, just for information.

RelationshipTypes = (
	"CONTAINS",
	"HAS PROPERTIES",
	"INFERRED FROM",
	"SELECTED FROM",
	"HAS OBS CONTEXT",
	"HAS ACQ CONTEXT",
	"HAS CONCEPT MOD",
)


# ---------------------------------------------------------------------
# Map from the DICOM tag number (as an 8-digit string) to a Keyword.
# This is the opposite of the pydicom.datadict.keyword_for_tag function.
# NOTE: keep this list in sync with the dict below (yes I know that's bad).

Tagnum_AccessionNumber = "00080050"
Tagnum_CodeMeaning = "00080104"
Tagnum_CodeValue = "00080100"
Tagnum_CodingSchemeDesignator = "00080102"
Tagnum_CodingSchemeIdentificationSequence = "00080110"
Tagnum_CodingSchemeName = "00080115"
Tagnum_CodingSchemeResponsibleOrganization = "00080116"
Tagnum_CodingSchemeUID = "0008010C"
Tagnum_CodingSchemeVersion = "00080103"
Tagnum_CompletionFlag = "0040A491"
Tagnum_ConceptCodeSequence = "0040A168"
Tagnum_ConceptNameCodeSequence = "0040A043"
Tagnum_ContentDate = "00080023"
Tagnum_ContentSequence = "0040A730"
Tagnum_ContentTemplateSequence = "0040A504"
Tagnum_ContentTime = "00080033"
Tagnum_ContinuityOfContent = "0040A050"
Tagnum_CurrentRequestedProcedureEvidenceSequence = "0040A375"
Tagnum_InstanceCreationDate = "00080012"
Tagnum_InstanceCreationTime = "00080013"
Tagnum_InstanceCreatorUID = "00080014"
Tagnum_InstanceNumber = "00200013"
Tagnum_InstitutionName = "00080080"
Tagnum_IssuerOfPatientID = "00100021"
Tagnum_Manufacturer = "00080070"
Tagnum_MeasuredValueSequence = "0040A300"
Tagnum_MeasurementUnitsCodeSequence = "004008EA"
Tagnum_ModalitiesInStudy = "00080061"
Tagnum_Modality = "00080060"
Tagnum_NumberOfStudyRelatedInstances = "00201208"
Tagnum_NumericValue = "0040A30A"
Tagnum_ObservationDateTime = "0040A032"
Tagnum_OtherPatientIDsSequence = "00101002"
Tagnum_PatientBirthDate = "00100030"
Tagnum_PatientID = "00100020"
Tagnum_PatientName = "00100010"
Tagnum_PatientSex = "00100040"
Tagnum_PerformedProcedureCodeSequence = "0040A372"
Tagnum_PersonName = "0040A123"
Tagnum_ReferencedPerformedProcedureStepSequence = "00081111"
Tagnum_ReferencedSOPSequence = "00081199"
Tagnum_ReferringPhysicianName = "00080090"
Tagnum_RelationshipType = "0040A010"
Tagnum_SeriesDate = "00080021"
Tagnum_SeriesDescription = "0008103E"
Tagnum_SeriesInstanceUID = "0020000E"
Tagnum_SeriesNumber = "00200011"
Tagnum_SOPClassUID = "00080016"
Tagnum_SOPInstanceUID = "00080018"
Tagnum_SpecificCharacterSet = "00080005"
Tagnum_StudyDate = "00080020"
Tagnum_StudyDescription = "00081030"
Tagnum_StudyID = "00200010"
Tagnum_StudyInstanceUID = "0020000D"
Tagnum_StudyTime = "00080030"
Tagnum_TextValue = "0040A160"
Tagnum_ValueType = "0040A040"
Tagnum_VerificationFlag = "0040A493"



# ---------------------------------------------------------------------
# List of attributes which should be extracted and whether they could be considered personal data.
# to_extract is only considered for simple attributes at the top level of a dictionary.
# so even though MeasuredValue is False here, it's actually extracted manually anyway.
# I know there are better data structures but I didn't want the overhead of a huge library.
# NOTE: keep this list in sync with the names above (yes I know that's bad).

Tagnum_extraction_list = {
	"_id": {'to_extract': False, 'is_personal': False},     # an artefact of MongoDB
	"header": {'to_extract': False, 'is_personal': False},  # added by the SMI Mongo import service
	Tagnum_AccessionNumber: {'to_extract': False, 'is_personal': False},
	'AccessionNumber': {'to_extract': False, 'is_personal': False},
	Tagnum_CodeMeaning: {'to_extract': False, 'is_personal': False},
	'CodeMeaning': {'to_extract': False, 'is_personal': False},
	Tagnum_CodeValue: {'to_extract': False, 'is_personal': False},
	'CodeValue': {'to_extract': False, 'is_personal': False},
	Tagnum_CodingSchemeDesignator: {'to_extract': False, 'is_personal': False},
	'CodingSchemeDesignator': {'to_extract': False, 'is_personal': False},
	Tagnum_CodingSchemeIdentificationSequence: {'to_extract': False, 'is_personal': False},
	'CodingSchemeIdentificationSequence': {'to_extract': False, 'is_personal': False},
	Tagnum_CodingSchemeName: {'to_extract': False, 'is_personal': False},
	'CodingSchemeName': {'to_extract': False, 'is_personal': False},
	Tagnum_CodingSchemeResponsibleOrganization: {'to_extract': False, 'is_personal': False},
	'CodingSchemeResponsibleOrganization': {'to_extract': False, 'is_personal': False},
	Tagnum_CodingSchemeUID: {'to_extract': False, 'is_personal': False},
	'CodingSchemeUID': {'to_extract': False, 'is_personal': False},
	Tagnum_CodingSchemeVersion: {'to_extract': False, 'is_personal': False},
	'CodingSchemeVersion': {'to_extract': False, 'is_personal': False},
	Tagnum_CompletionFlag: {'to_extract': False, 'is_personal': False},
	'CompletionFlag': {'to_extract': False, 'is_personal': False},
	Tagnum_ConceptCodeSequence: {'to_extract': False, 'is_personal': False},
	'ConceptCodeSequence': {'to_extract': False, 'is_personal': False},
	Tagnum_ConceptNameCodeSequence: {'to_extract': False, 'is_personal': False},
	'ConceptNameCodeSequence': {'to_extract': False, 'is_personal': False},
	Tagnum_ContentDate: {'to_extract': True, 'is_personal': True},
	'ContentDate': {'to_extract': True, 'is_personal': True},
	Tagnum_ContentSequence: {'to_extract': False, 'is_personal': False},
	'ContentSequence': {'to_extract': False, 'is_personal': False},
	Tagnum_ContentTemplateSequence: {'to_extract': False, 'is_personal': False},
	'ContentTemplateSequence': {'to_extract': False, 'is_personal': False},
	Tagnum_ContentTime: {'to_extract': True, 'is_personal': True},
	'ContentTime': {'to_extract': True, 'is_personal': True},
	Tagnum_ContinuityOfContent: {'to_extract': False, 'is_personal': False},
	'ContinuityOfContent': {'to_extract': False, 'is_personal': False},
	Tagnum_CurrentRequestedProcedureEvidenceSequence: {'to_extract': False, 'is_personal': False},
	'CurrentRequestedProcedureEvidenceSequence': {'to_extract': False, 'is_personal': False},
	Tagnum_InstanceCreationDate: {'to_extract': True, 'is_personal': True},
	'InstanceCreationDate': {'to_extract': True, 'is_personal': True},
	Tagnum_InstanceCreationTime: {'to_extract': True, 'is_personal': True},
	'InstanceCreationTime': {'to_extract': True, 'is_personal': True},
	Tagnum_InstanceCreatorUID: {'to_extract': True, 'is_personal': False},
	'InstanceCreatorUID': {'to_extract': True, 'is_personal': False},
	Tagnum_InstanceNumber: {'to_extract': True, 'is_personal': False},
	'InstanceNumber': {'to_extract': True, 'is_personal': False},
	Tagnum_InstitutionName: {'to_extract': False, 'is_personal': False},
	'InstitutionName': {'to_extract': False, 'is_personal': False},
	Tagnum_IssuerOfPatientID: {'to_extract': False, 'is_personal': False},
	'IssuerOfPatientID': {'to_extract': False, 'is_personal': False},
	Tagnum_Manufacturer: {'to_extract': False, 'is_personal': False},
	'Manufacturer': {'to_extract': False, 'is_personal': False},
	Tagnum_MeasuredValueSequence: {'to_extract': False, 'is_personal': False},
	'MeasuredValueSequence': {'to_extract': False, 'is_personal': False},
	Tagnum_MeasurementUnitsCodeSequence: {'to_extract': False, 'is_personal': False},
	'MeasurementUnitsCodeSequence': {'to_extract': False, 'is_personal': False},
	Tagnum_ModalitiesInStudy: {'to_extract': False, 'is_personal': False},
	'ModalitiesInStudy': {'to_extract': False, 'is_personal': False},
	Tagnum_Modality: {'to_extract': False, 'is_personal': False},
	'Modality': {'to_extract': False, 'is_personal': False},
	Tagnum_NumberOfStudyRelatedInstances: {'to_extract': False, 'is_personal': False},
	'NumberOfStudyRelatedInstances': {'to_extract': False, 'is_personal': False},
	Tagnum_NumericValue: {'to_extract': False, 'is_personal': False},
	'NumericValue': {'to_extract': False, 'is_personal': False},
	Tagnum_ObservationDateTime: {'to_extract': True, 'is_personal': True},
	'ObservationDateTime': {'to_extract': True, 'is_personal': True},
	Tagnum_OtherPatientIDsSequence: {'to_extract': False, 'is_personal': False},
	'OtherPatientIDsSequence': {'to_extract': False, 'is_personal': False},
	Tagnum_PatientBirthDate: {'to_extract': True, 'is_personal': True},
	'PatientBirthDate': {'to_extract': True, 'is_personal': True},
	Tagnum_PatientID: {'to_extract': True, 'is_personal': True},
	'PatientID': {'to_extract': True, 'is_personal': True},
	Tagnum_PatientName: {'to_extract': True, 'is_personal': True},
	'PatientName': {'to_extract': True, 'is_personal': True},
	Tagnum_PatientSex: {'to_extract': True, 'is_personal': True},
	'PatientSex': {'to_extract': True, 'is_personal': True},
	Tagnum_PerformedProcedureCodeSequence: {'to_extract': False, 'is_personal': False},
	'PerformedProcedureCodeSequence': {'to_extract': False, 'is_personal': False},
	Tagnum_PersonName: {'to_extract': False, 'is_personal': True}, # Names are extracted elsewhere so don't extract here
	'PersonName': {'to_extract': False, 'is_personal': True}, # Names are extracted elsewhere so don't extract here
	Tagnum_ReferencedPerformedProcedureStepSequence: {'to_extract': False, 'is_personal': False},
	'ReferencedPerformedProcedureStepSequence': {'to_extract': False, 'is_personal': False},
	Tagnum_ReferencedSOPSequence: {'to_extract': False, 'is_personal': False},
	'ReferencedSOPSequence': {'to_extract': False, 'is_personal': False},
	Tagnum_ReferringPhysicianName: {'to_extract': True, 'is_personal': True},
	'ReferringPhysicianName': {'to_extract': True, 'is_personal': True},
	Tagnum_RelationshipType: {'to_extract': False, 'is_personal': False},
	'RelationshipType': {'to_extract': False, 'is_personal': False},
	Tagnum_SeriesDate: {'to_extract': False, 'is_personal': False},
	'SeriesDate': {'to_extract': False, 'is_personal': False},
	Tagnum_SeriesDescription: {'to_extract': True, 'is_personal': False},
	'SeriesDescription': {'to_extract': True, 'is_personal': False},
	Tagnum_SeriesInstanceUID: {'to_extract': True, 'is_personal': False},
	'SeriesInstanceUID': {'to_extract': True, 'is_personal': False},
	Tagnum_SeriesNumber: {'to_extract': True, 'is_personal': False},
	'SeriesNumber': {'to_extract': True, 'is_personal': False},
	Tagnum_SOPClassUID: {'to_extract': True, 'is_personal': False},
	'SOPClassUID': {'to_extract': True, 'is_personal': False},
	Tagnum_SOPInstanceUID: {'to_extract': True, 'is_personal': False},
	'SOPInstanceUID': {'to_extract': True, 'is_personal': False},
	Tagnum_SpecificCharacterSet: {'to_extract': False, 'is_personal': False},
	'SpecificCharacterSet': {'to_extract': False, 'is_personal': False},
	Tagnum_StudyDate: {'to_extract': True, 'is_personal': False},
	'StudyDate': {'to_extract': True, 'is_personal': False},
	Tagnum_StudyDescription: {'to_extract': True, 'is_personal': False},
	'StudyDescription': {'to_extract': True, 'is_personal': False},
	Tagnum_StudyID: {'to_extract': True, 'is_personal': False},
	'StudyID': {'to_extract': True, 'is_personal': False},
	Tagnum_StudyInstanceUID: {'to_extract': True, 'is_personal': False},
	'StudyInstanceUID': {'to_extract': True, 'is_personal': False},
	Tagnum_StudyTime: {'to_extract': True, 'is_personal': False},
	'StudyTime': {'to_extract': True, 'is_personal': False},
	Tagnum_TextValue: {'to_extract': False, 'is_personal': False},
	'TextValue': {'to_extract': False, 'is_personal': False},
	Tagnum_ValueType: {'to_extract': False, 'is_personal': False},
	'ValueType': {'to_extract': False, 'is_personal': False},
	Tagnum_VerificationFlag: {'to_extract': False, 'is_personal': False},
	'VerificationFlag': {'to_extract': False, 'is_personal': False},
}


# ---------------------------------------------------------------------
# DICOM elements have a type which is one of these.
# Not actually used yet, just for information.

DataTypeName_map = {
    "AE": 'Application Entity',
    "AS": 'Age String',
    "CS": 'Code String',
    "DS": 'Decimal String',
    "IS": 'Integer String',
    "LO": 'Long String',
    "PN": 'Person Name',
    "SH": 'Short String',
    "UI": 'Unique Identifier',
    "UC": 'Unlimited Characters',
    "LT": 'Long Text',
    "ST": 'Short Text',
    "UR": 'Universal Resource',
    "UT": 'Unlimited Text',
    "DA": 'Date',
    "DT": 'DateTime',
    "TM": 'Time',
    "AT": 'Attribute Tag',
    "FD": 'Floating Point Double',
    "FL": 'Floating Point Single',
    "SL": 'Signed Long',
    "UL": 'Unsigned Long',
    "SS": 'Signed Short',
    "US": 'Unsigned Short',
    "SQ": 'Sequence',
    # OtherX elements
    'OB': '',
    'OD': '',
    'OF': '',
    'OL': '',
    'OW': '',
    'UN': '',
}


# ---------------------------------------------------------------------
# The following has been taken from the DicomScope file codes.dic
# (you need to install it and find the file in /usr/share/dicomscope)

# A dictionary specifying all codes which can be selected from the
# DICOMscope 3.x application.  Many codes (at least the code meanings)
# are directly taken from the current "letter ballot" version of
# Supplement 57 "DICOM Content Mapping Resource (DCMR)".
#
# Each line represents an entry in the code dictionary.  Each line has 5
# fields (Context Group, Coding Scheme Designator, Coding Scheme Version,
# Code Value, Code Meaning).  Each field must be separated by a comma and
# surrounded by quotation marks.
#
# Tuples contain:
# Context Group,  Coding Scheme Designator,  Version,  Code Value,  Code Meaning
#

CodeValueToCodeMeaning_array = [

# ------------------------------------------------------------------------------
#
# Document Title: Concept Name codes for CONTAINER content items (root only)
#
	("Document Title",       "99_OFFIS_DCMTK",    "",       "DT.01",     "Radiology Report"),
	("Document Title",       "99_OFFIS_DCMTK",    "",       "DT.02",     "General Radiology Report"),
	("Document Title",       "99_OFFIS_DCMTK",    "",       "DT.03",     "Ultrasound Report"),
	("Document Title",       "99_OFFIS_DCMTK",    "",       "DT.04",     "CT Report"),
	("Document Title",       "99_OFFIS_DCMTK",    "",       "DT.05",     "MR Report"),
	("Document Title",       "99_OFFIS_DCMTK",    "",       "DT.06",     "Consultation Report"),
	("Document Title",       "99_OFFIS_DCMTK",    "",       "DT.07",     "Consultation Report"),
	("Document Title",       "99_OFFIS_DCMTK",    "",       "DT.08",     "Cardiac Catheterization Report"),
	("Document Title",       "99_OFFIS_DCMTK",    "",       "DT.09",     "Diagnostic Imaging Report"),
#
# -----------------------------------------------------------------------------
#
# Section Headings: Concept Name codes for CONTAINER content items (non-root),
#
	("Section Heading",      "99_OFFIS_DCMTK",    "",       "SH.01",     "History"),
	("Section Heading",      "99_OFFIS_DCMTK",    "",       "SH.02",     "Request"),
	("Section Heading",      "99_OFFIS_DCMTK",    "",       "SH.03",     "Current Procedure Descriptions"),
	("Section Heading",      "99_OFFIS_DCMTK",    "",       "SH.04",     "Prior Procedure Descriptions"),
	("Section Heading",      "99_OFFIS_DCMTK",    "",       "SH.05",     "Previous Findings"),
	("Section Heading",      "99_OFFIS_DCMTK",    "",       "SH.06",     "Findings"),
	("Section Heading",      "99_OFFIS_DCMTK",    "",       "SH.07",     "Impressions"),
	("Section Heading",      "99_OFFIS_DCMTK",    "",       "SH.08",     "Recommendations"),
	("Section Heading",      "99_OFFIS_DCMTK",    "",       "SH.09",     "Conclusions"),
	("Section Heading",      "99_OFFIS_DCMTK",    "",       "SH.10",     "Addendum"),
#
# -----------------------------------------------------------------------------
#
# Report Elements: Concept Name codes for TEXT content items
#
	("Report Element",       "99_OFFIS_DCMTK",    "",       "RE.01",     "History"),
	("Report Element",       "99_OFFIS_DCMTK",    "",       "RE.02",     "Request"),
	("Report Element",       "99_OFFIS_DCMTK",    "",       "RE.03",     "Procedure Description"),
	("Report Element",       "99_OFFIS_DCMTK",    "",       "RE.04",     "Previous Finding"),
	("Report Element",       "99_OFFIS_DCMTK",    "",       "RE.05",     "Finding"),
	("Report Element",       "99_OFFIS_DCMTK",    "",       "RE.06",     "Impression"),
	("Report Element",       "99_OFFIS_DCMTK",    "",       "RE.07",     "Recommendation"),
	("Report Element",       "99_OFFIS_DCMTK",    "",       "RE.08",     "Conclusion"),
#
# -----------------------------------------------------------------------------
#
# Image Reference: Concept Name codes for IMAGE content items
#
	("Image Reference",      "99_OFFIS_DCMTK",    "",       "IR.01",     "Baseline"),
	("Image Reference",      "99_OFFIS_DCMTK",    "",       "IR.02",     "Best illustration of finding"),
#
# -----------------------------------------------------------------------------
#
# Organizational Roles: Concept Name codes for PNAME content items
#
	("Organizational Role",  "99_OFFIS_DCMTK",    "",       "OR.01",     "Physician"),
	("Organizational Role",  "99_OFFIS_DCMTK",    "",       "OR.02",     "Nurse"),
	("Organizational Role",  "99_OFFIS_DCMTK",    "",       "OR.03",     "Technologist"),
	("Organizational Role",  "99_OFFIS_DCMTK",    "",       "OR.04",     "Radiographer"),
	("Organizational Role",  "99_OFFIS_DCMTK",    "",       "OR.05",     "Intern"),
	("Organizational Role",  "99_OFFIS_DCMTK",    "",       "OR.06",     "Resident"),
	("Organizational Role",  "99_OFFIS_DCMTK",    "",       "OR.07",     "Registrar"),
	("Organizational Role",  "99_OFFIS_DCMTK",    "",       "OR.08",     "Fellow"),
	("Organizational Role",  "99_OFFIS_DCMTK",    "",       "OR.09",     "Attending"),
# synonym for "Attending"
	("Organizational Role",  "99_OFFIS_DCMTK",    "",       "OR.09",     "Consultant"),
	("Organizational Role",  "99_OFFIS_DCMTK",    "",       "OR.10",     "Surgeon"),
#
# -----------------------------------------------------------------------------
#
# Numeric Measurements: Concept Name codes for NUM content items
#
	("Numeric Measurement",  "99_OFFIS_DCMTK",    "",       "NM.01",     "Length"),
	("Numeric Measurement",  "SNM3",              "",       "G-A220",    "Width"),
	("Numeric Measurement",  "99_OFFIS_DCMTK",    "",       "NM.03",     "Depth"),
	("Numeric Measurement",  "SNM3",              "",       "M-02550",   "Diameter"),
	("Numeric Measurement",  "SNM3",              "",       "T-12420",   "Radius"),
#
# -----------------------------------------------------------------------------
#
# Measurement Units: Measurement Unit codes for NUM content items
#
	("Measurement Unit",     "UCUM",              "1.4",    "cm",        "centimeter"),
	("Measurement Unit",     "UCUM",              "1.4",    "mm",        "millimeter"),
	("Measurement Unit",     "UCUM",              "1.4",    "um",        "micrometer"),
#
# -----------------------------------------------------------------------------
#
# IHE Year 2 Technical Framework: Concept Name codes used in IHE Year 2 templates
#
	("IHE Year 2 TF",        "99_OFFIS_DCMTK",    "",       "IHE.01",    "Document Title"),
	("IHE Year 2 TF",        "99_OFFIS_DCMTK",    "",       "IHE.02",    "Observation Context Mode"),
	("IHE Year 2 TF",        "99_OFFIS_DCMTK",    "",       "IHE.03",    "DIRECT"),
	("IHE Year 2 TF",        "99_OFFIS_DCMTK",    "",       "IHE.04",    "Recording Observer's Name"),
	("IHE Year 2 TF",        "99_OFFIS_DCMTK",    "",       "IHE.05",    "Recording Observer's Organization Name"),
	("IHE Year 2 TF",        "99_OFFIS_DCMTK",    "",       "IHE.06",    "Observation Context Mode"),
	("IHE Year 2 TF",        "99_OFFIS_DCMTK",    "",       "IHE.07",    "PATIENT"),
	("IHE Year 2 TF",        "99_OFFIS_DCMTK",    "",       "IHE.08",    "Section Heading"),
	("IHE Year 2 TF",        "99_OFFIS_DCMTK",    "",       "IHE.09",    "Report Text"),
	("IHE Year 2 TF",        "99_OFFIS_DCMTK",    "",       "IHE.10",    "Image Reference"),
	("IHE Year 2 TF",        "99_OFFIS_DCMTK",    "",       "IHE.11",    "Key Image Description"),
]
