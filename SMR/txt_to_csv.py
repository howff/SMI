#!/usr/bin/env python3

# Download the ICD-10 table from
#  https://www.isdscotland.org/Products-and-Services/Data-Definitions-and-References/National-Reference-Files/Nat-Ref-Files/icd10?64975703
# and convert it into CSV format using the description from
#  https://www.isdscotland.org/Products-and-Services/Data-Definitions-and-References/National-Reference-Files/SMR-reference-file-layouts.asp
# as converted to SMR-reference-file-layouts.html

# See also:
#  PyMedTermino-0.3.3.tar.gz (from pypi)
#  icd10-cm-0.0.4.tar.gz (from pypi)

import struct

src_dir="IDS"
out_dir="IDS_csv"

files_to_convert = [
  # fieldwidths negative numbers are the field width for ignored fields
  {
    'filename' :'icd10',
    'fieldwidths' : (-1, 4, -1, 4, 1, 1, 1, -4, 6, 74, -1, -10, -1, -10,   1, 1, 1, -4, 3, 3, 10, 1, 5, 5, -1, 1,1,1,1,1,-1,  1,1,1,3,3,5,-1, -33, 1,1,1,-1, 8,8,255),
    'header' : 'code1,code2,code1b,code2b,record_type,last_updated,description,smr01applic,smr01sex,smr01rare,smr01minage,smr01maxage,smr01admittype10,smr01discharge,smr01maxwait,smr01maxstay,smr02a,smr02b,smr02c,smr02d,smr02e,smr04applic,smr04sex,smr04rare,smi04minage,smr04maxage,smr04maxstay,smr11applic,smr11sex,smr11discharge,smr11start,smr11end,full_description'
  },
  {
    'filename' :'icd10_full',
    'fieldwidths' : (-1, 4, -1, 4, 1, 1, 1, -4, 6, 74, -1, -10, -1, -10,   1, 1, 1, -4, 3, 3, 10, 1, 5, 5, -1, 1,1,1,1,1,-1,  1,1,1,3,3,5,-1, -33, 1,1,1,-1, 8,8,255),
    'header' : 'code1,code2,code1b,code2b,record_type,last_updated,description,smr01applic,smr01sex,smr01rare,smr01minage,smr01maxage,smr01admittype10,smr01discharge,smr01maxwait,smr01maxstay,smr02a,smr02b,smr02c,smr02d,smr02e,smr04applic,smr04sex,smr04rare,smi04minage,smr04maxage,smr04maxstay,smr11applic,smr11sex,smr11discharge,smr11start,smr11end,full_description'
  },
  {
    'filename' :'clinfaci',
    'fieldwidths' : (2,50,3,3),
    'header' : 'clinical_facility_code,description,min_age,max_age'
  },
  {
    'filename' :'facility',
    'fieldwidths' : (2,50,3,3),
    'header' : 'significant_facility_code,description,min_age,max_age'
  },
  {
    'filename' :'location',
    'fieldwidths' : (5,70,35,35,35,35,35,8,70,8,8,5,1,1,1,1,1,1,1,1,1,1,1,-20),
    'header' : 'location_code,name,addr1,addr2,addr3,addr4,addr5,postcode,summary,start_date,close_date,dest_code,gp_surgery,smr00,smr01,smr02,smr04,smr06,smr11,smr20,smr25,smr30,smr50'
  },
  {
    'filename' :'opcs4',
    'fieldwidths' : (4,4,1,4,6,74,4,1,1,1,1,2,1,1,1,3,3,1,1,1,1,1,1,1,1,2,1,3,3,8,8,255),
    'header' : 'code,pair_code,record_type,source,last_updated,description,short_code,smr01applic,smr01pairapplic,smr01pairpos,smr01chapter,smr01weight,smr01daycase,smr01sex,smr01rare,smr01minage,smr01maxage,smr02applic,smr02pairapplic,smr02pairpos,smr02chapter,smr11applic,smr11pairapplic,smr11pairpos,smr11chapter,smr11weight,smr11sex,smr11minage,smr11maxage,smr11start,smr11end,full_description'
  },
  {
    'filename' :'specialt',
    'fieldwidths' : (4,50,3,3),
    'header' : 'speciality_code,description,min_age,max_age'
  }
]


for file_dict in files_to_convert:
  fmtstring = ' '.join('{}{}'.format(abs(fw), 'x' if fw < 0 else 's')
    for fw in file_dict['fieldwidths'])
  fieldstruct = struct.Struct(fmtstring)
  print('Reading %s' % file_dict['filename'])
  fd_in = open(src_dir + '/' + file_dict['filename'], 'r')
  fd_out = open(out_dir + '/' + file_dict['filename'] + '.csv', 'w')
  print(file_dict['header'], file=fd_out)
  for line in fd_in:
    if len(line) < fieldstruct.size:
      line += ' '*(fieldstruct.size - len(line))
    fields = fieldstruct.unpack_from(str.encode(line))
    fields_str = [x.decode().rstrip() for x in fields]
    print('"'+'","'.join(fields_str)+'"', file=fd_out)
  fd_in.close()
  fd_out.close()
