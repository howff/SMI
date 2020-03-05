#!/usr/bin/env python3

import json
from pydicom.datadict import keyword_for_tag

debug=0

ConceptName_personal_list = (
	#'IHE.01', # Document Title
	#'IHE.02', # Observation Context Mode
	#'IHE.03', # DIRECT
	'IHE.04', # Recording Observer's Name
	'IHE.05', # Recording Observer's Organization Name
	#'IHE.06', # Observation Context Mode
	'IHE.07', # PATIENT
	#'IHE.08', # Section Heading
	#'IHE.09', # Report Text
	#'IHE.10', # Image Reference
	#'DT.01', # Radiology Report
	#'DT.03', # Ultrasound Report
	#'DT.04', # CT Report
	#'DT.05', # MR Report
	#'DT.06', # Consultation Report
	#'RE.01', # History
	#'RE.02', # Request
	#'RE.03', # Procedure
	#'RE.05', # Finding
	#'RE.06', # Impression
	#'RE.07', # Recommendation
	#'RE.08', # Conclusion
	#'CODE_01', # Description
	#'CODE_02', # Diagnosis
	#'CODE_03', # Treatment
	#'CODE_04', # Referring Physician
	#'CODE_05', # Hospital Name
	#'CODE_06', # Redlands Clinic
	#'CODE_07', # PA Chest
	#'CODE_08', # Abdomen
	#'CODE_09', # Chief Complaint
	#'CODE_10', # Present Illness
	#'CODE_11', # Past History
	#'CODE_12', # Illnesses
	#'CODE_13', # Allergies
	#'CODE_14', # Medications
	#'CODE_15', # Operations
	#'CODE_16', # Social
	#'CODE_17', # Family History
	#'CODE_18', # Family History
	#'CODE_19', # Discharge Summary
	#'CODE_20', # History of present Illness
	#'CODE_21', # Physical Examination
	#'CODE_22', # Admitting Diagnosis
	#'CODE_23', # Laboratory Data on Admission
	#'CODE_24', # Hospital Course and Treatment
	#'CODE_25', # Surgical Procedures
	#'CODE_26', # Discharge Diagnosis
	#'CODE_27', # Teeth Present
	#'CODE_28', # Orthodontic/Pediatric Assessment
	#'CODE_29', # Other
	#'SH.06', # Findings
	#'IR.02', # Best illustration of finding
	'OR.01', # Physician
)

ConceptValue_personal_list = (
	'Hospital Name',
	'Physician',
)

RelationshipTypes = (
	"CONTAINS",
	"HAS PROPERTIES",
	"INFERRED FROM",
	"SELECTED FROM",
	"HAS OBS CONTEXT",
	"HAS ACQ CONTEXT",
	"HAS CONCEPT MOD",
)

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
Tagnum_ContentTime = "00080033"
Tagnum_ContinuityOfContent = "0040A050"
Tagnum_InstanceCreationDate = "00080012"
Tagnum_InstanceCreationTime = "00080013"
Tagnum_InstanceCreatorUID = "00080014"
Tagnum_InstanceNumber = "00200013"
Tagnum_Manufacturer = "00080070"
Tagnum_MeasuredValueSequence = "0040A300"
Tagnum_MeasurementUnitsCodeSequence = "004008EA"
Tagnum_Modality = "00080060"
Tagnum_NumericValue = "0040A30A"
Tagnum_PatientBirthDate = "00100030"
Tagnum_PatientID = "00100020"
Tagnum_PatientName = "00100010"
Tagnum_PatientSex = "00100040"
Tagnum_PerformedProcedureCodeSequence = "0040A372"
Tagnum_PersonName = "0040A123"
Tagnum_ReferencedPerformedProcedureStepSequence = "00081111"
Tagnum_ReferringPhysicianName = "00080090"
Tagnum_RelationshipType = "0040A010"
Tagnum_SeriesDescription = "0008103E"
Tagnum_SeriesInstanceUID = "0020000E"
Tagnum_SeriesNumber = "00200011"
Tagnum_SOPClassUID = "00080016"
Tagnum_SOPInstanceUID = "00080018"
Tagnum_StudyDate = "00080020"
Tagnum_StudyDescription = "00081030"
Tagnum_StudyID = "00200010"
Tagnum_StudyInstanceUID = "0020000D"
Tagnum_StudyTime = "00080030"
Tagnum_TextValue = "0040A160"
Tagnum_ValueType = "0040A040"
Tagnum_VerificationFlag = "0040A493"



# ---------------------------------------------------------------------
# Decode the string value of the PNAME tag.
# Decode the Person's Name value which is typically encoded
# using ^ as a separator between Surname^First^Middle^Title^Suffix
# Returns the decoded human-readable string.

def decode_PNAME(pname):
	# XXX implemented properly elsewhere
	if '^' in pname:
		pname_list = pname.split('^')
		pname = ''
		for ii in (3, 1, 2, 0, 4):
			if (len(pname_list) > ii) and (len(pname_list[ii]) > 0):
				pname = pname + pname_list[ii] + ' '
		pname = pname.rstrip() # remove trailing spaces
	return pname

def test_decode_PNAME():
	assert decode_PNAME('Fukuda^Katherine M.^^^M. D.') == 'Katherine M. Fukuda M. D.'


# Get the CodeValue and CodeMeaning strings from a ConceptNameCodeSequence.
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


def get_val(anydict, anykey):
	try:
		return anydict[anykey]['val']
	except:
		return '' # XXX or None ?


def get_CodeValue_CodeMeaning(codedict):
	try:
		codevalue = codedict['val'][0][Tagnum_CodeValue]['val']
		codemeaning = codedict['val'][0][Tagnum_CodeMeaning]['val']
		return(codevalue, codemeaning)
	except:
		return (None, None)


def get_ConceptNameCodeSequence(cncs_dict):
	# If we are passed the parent dict which contains the CNCS then select it.
	if Tagnum_ConceptNameCodeSequence in cncs_dict:
		cncs_dict = cncs_dict[Tagnum_ConceptNameCodeSequence]
	# Look for the specific children and return their values.
	return get_CodeValue_CodeMeaning(cncs_dict)

def get_ConceptCodeSequence(ccs_dict):
	# If we are passed the parent dict which contains the CCS then select it.
	if Tagnum_ConceptCodeSequence in ccs_dict:
		ccs_dict = ccs_dict[Tagnum_ConceptCodeSequence]
	# Look for the specific children and return their values.
	return get_CodeValue_CodeMeaning(ccs_dict)


def text_and_personal_content(item):

	is_personal = False

	vr = None
	val = None
	relationship_type = ''
	relationship_value_type = ''
	text_content = ''
	num_children = 0

	assert isinstance(item, dict)

	# Extract values from the dict
	if isinstance(item, dict):
		num_children = len(item)

		# Two common values in children items
		vr = item.get('vr', None)
		val = item.get('val', None)

		# Relationship to child item
		relationship_type = get_val(item, Tagnum_RelationshipType)
		relationship_value_type = get_val(item, Tagnum_ValueType)

		# Text strings
		text_content = get_val(item, Tagnum_TextValue)

		# Person name
		# (if it's the name of an organisation we will detect this later)
		if Tagnum_PersonName in item:
			text_content = decode_PNAME(get_val(item, Tagnum_PersonName))
			is_personal = True

		# Numeric values as text strings
		if Tagnum_MeasuredValueSequence in item:
			mvs = get_val(item, Tagnum_MeasuredValueSequence)[0]
			units = mvs[Tagnum_MeasurementUnitsCodeSequence]
			(units_short, units_long) = get_CodeValue_CodeMeaning(units)
			text_content = get_val(mvs, Tagnum_NumericValue)
			text_content = text_content + ' ' + units_short


	# First, can we return any content which is an attribute of this item
	if Tagnum_ReferringPhysicianName in item:
		val = get_val(item, Tagnum_ReferringPhysicianName)
		val = 'Referring Physician Name' + ': ' + decode_PNAME(val)
		yield val, True

	# Debug
	if isinstance(item, dict) and debug > 0:
		print("Is a dict with %d entries" % num_children)
		print("VR  %s" % vr)
		print("VAL %s" % val)

	# See if this dict has a 'meaning'
	(conceptname_name,conceptname_value) = get_ConceptNameCodeSequence(item)
	if conceptname_name and debug > 0:
		print("This item is a conceptName %s %s" % (conceptname_name, conceptname_value))
	(concept_name,concept_value) = get_ConceptCodeSequence(item)
	if concept_name and debug > 0:
		print("This item is a concept    %s %s" % (concept_name,concept_value))
	# See if this concept is personal data
	if conceptname_name and conceptname_name in ConceptName_personal_list :
		is_personal = True
	if conceptname_value and conceptname_value in ConceptValue_personal_list:
		is_personal = True

	# If it contains a CODE then extract the value of the code
	if relationship_type == 'CONTAINS':
		if relationship_value_type == 'CODE':
			text_content = concept_value

	# If it has a concept then prepend that to the front of the string value
	# unless it's the default Description as that appears multiple times.
	if conceptname_value and text_content and conceptname_value != 'Description':
		text_content = conceptname_value + ': ' + text_content

	# If we have a numeric value then extract the value as a string
	# but also append the units.

	# If we have a non empty string then we can return it now
	if text_content:
		yield text_content, is_personal
		return

	# If we have a content sequence child it's an array of similar items
	if Tagnum_ContentSequence in item:
		for seqitem in get_val(item, Tagnum_ContentSequence):
			yield from text_and_personal_content(seqitem)

	# Anything else is unexpected or unwanted
	#print("Finishing with %s" % item)
	return

	# Has a VR but no VAL or anything else
	if vr and not val and num_children < 2:
		yield None, False

	# Has a VR and a simple string VAL only
	elif vr and val and num_children == 2 and isinstance(item['val'], str):
		#print("yield string %s" % item['val'])
		# Data type may tell us if it's personal data
		if vr == 'PN':
			is_personal = True
			val = decode_PNAME(val)
		yield val, is_personal

	# --


	# Has a VR and a dict for VAL
	elif isinstance(item, dict) and vr and val and \
		isinstance(item['val'], dict):
		#print("Exploding val dict")
		yield from text_and_personal_content(item['val'])

	# Has a VR and an array for VAL
	elif isinstance(item, dict) and vr and val and \
		isinstance(item['val'], list):
		#print("Exploding val array")
		for listitem in item['val']:
			yield from text_and_personal_content(listitem)

	# Is a dict
	elif isinstance(item, dict):
		for dictitem in item:
			keyword = keyword_for_tag(dictitem)
			if debug > 0:
				print("Exploding dict item %s (%s)" % (dictitem, keyword))
			yield from text_and_personal_content(item[dictitem])
	else:
		print("Huh %s" % item)
	# End
	#print("Why yield?")
	#yield None, True

file = 'output/report02.dcm.json'
with open(file, 'r') as fd:
	jsondict = json.loads(fd.read())

for string, is_personal in text_and_personal_content(jsondict):
	if string:
		print("%s %s" % ('BAD ' if is_personal else 'OK  ', string))