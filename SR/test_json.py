#!/usr/bin/env python3

# This program recursively descends a JSON tree and gives some debug output.

import json
import pprint
import re
import sys
from pydicom.datadict import keyword_for_tag

json_file_name = 'output/report01.dcm.json'
json_file_name = sys.argv[1]
cfg_print_values = False

def ident_is_dicom_tag(ident):
	# If it's 8 hex digits then it might be a Dicom tag
	return re.match('[0-9a-fA-F]{8,8}', ident)

def vr_is_personal(vr):
	# If the data type is a PersonName then it's personal data
	if vr == 'PN':
		return True
	return False

def dicom_tagnum_is_personal(tagnum):
	# If the Dicom tag holds a PatientName or BirthDate then it's personal data
	if tagnum in [
		'00100010', # PatientName
		'00100030', # PatientBirthDate
		]:
		return True
	return False

def decode(item, prefix):
	if isinstance(item, list):
		ii = 0
		for listitem in item:
			decode(listitem, prefix + 'list%d/' % ii)
			ii = ii + 1
		return
	elif isinstance(item, dict):
		for dictname, dictvalue in item.items():
			personal = False
			if ident_is_dicom_tag(dictname):
				personal = dicom_tagnum_is_personal(dictname)
				dictname = keyword_for_tag(dictname) + '('+dictname+')'
			if isinstance(dictvalue, dict) and 'vr' in dictvalue:
				# A vr without a val is just an empty dict XXX maybe not, just assumed!
				if not 'val' in dictvalue:
					continue
				# A vr with a string val
				if 'val' in dictvalue and isinstance(dictvalue['val'], str):
					personal = personal or vr_is_personal(dictvalue['vr'])
					printable_value = dictvalue['val'] if cfg_print_values else ''
					if personal:
						print('%s/%s [PERSONAL] = %s' % (prefix, dictname, printable_value))
					else:
						print('%s/%s = %s' % (prefix, dictname, printable_value))
					continue
				# A vr with a list value
				if 'val' in dictvalue and isinstance(dictvalue['val'], list):
					decode(dictvalue['val'], prefix + '%s!/' % dictname) # same as line below
					continue
			decode(dictvalue, prefix + '%s/' % dictname)
	else:
		print('%s = ? %s' % (prefix, item if cfg_print_values else ''))


print("OO %s" % keyword_for_tag('0020000D'))

with open(json_file_name) as fd:
	json_dict = json.loads(fd.read())

prefix='/'
decode(json_dict, prefix)
exit(0)
for name,value in json_dict.items():
	if isinstance(value, dict) and 'val' in value and isinstance(value['val'], str) and len(value['val']) > 0:
		print ('%s %s = %s' % (name, keyword_for_tag(name), value['val']))
	else:
		print ('%s %s' % (name, keyword_for_tag(name)))

