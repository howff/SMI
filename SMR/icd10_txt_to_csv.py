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

# negative numbers are the field width for ignored fields
fieldwidths = (-1, 4, -1, 4, 1, 1, 1, -4, 6, 74, -1, -10, -1, -10,   1, 1, 1, -4, 3, 3, 10, 1, 5, 5, -1, 1,1,1,1,1,-1,  1,1,1,3,3,5,-1, -33, 1,1,1,-1, 8,8,255)
fmtstring = ' '.join('{}{}'.format(abs(fw), 'x' if fw < 0 else 's')
                        for fw in fieldwidths)
fieldstruct = struct.Struct(fmtstring)
#print('fmtstring: {!r}, recsize: {} chars'.format(fmtstring, fieldstruct.size))

print('code1,code2,code1b,code2b,recordtype,lastupdated,description,smr01applic,smr01sex,smr01rare,smr01minage,smr01maxage,smr01admittype10,smr01discharge,smr01maxwait,smr01maxstay,smr02a,smr02b,smr02c,smr02d,smr02e,smr04applic,smr04sex,smr04rare,smi04minage,smr04maxage,smr04maxstay,smr11applic,smr11sex,smr11discharge,smr11start,smr11end,fulldescription')
fd = open('icd10_64975703.txt', 'r')
for line in fd:
  if len(line) < fieldstruct.size:
  	line += ' '*(fieldstruct.size - len(line))
  fields = fieldstruct.unpack_from(str.encode(line))
  fields_str = [x.decode().rstrip() for x in fields]
  print('"'+'","'.join(fields_str)+'"')
