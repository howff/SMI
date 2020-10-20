#!/usr/bin/env python3

# DO NOT USE, this is the old version, use txt_to_csv.py instead.

import struct

# negative numbers are the field width for ignored fields
fieldwidths = (-1, 4, -1, 4, 1, 1, 1, -4, 6, 74, -1, -10, -1, -10,   1, 1, 1, -4, 3, 3, 10, 1, 5, 5, -1, 1,1,1,1,1,-1,  1,1,1,3,3,5,-1, -33, 1,1,1,-1, 8,8,255)
fmtstring = ' '.join('{}{}'.format(abs(fw), 'x' if fw < 0 else 's')
                        for fw in fieldwidths)
fieldstruct = struct.Struct(fmtstring)
#print('fmtstring: {!r}, recsize: {} chars'.format(fmtstring, fieldstruct.size))

print('code1,code2,code1b,code2b,recordtype,lastupdated,description,smr01applic,smr01sex,smr01rare,smr01minage,smr01maxage,smr01admittype10,smr01discharge,smr01maxwait,smr01maxstay,smr02a,smr02b,smr02c,smr02d,smr02e,smr04applic,smr04sex,smr04rare,smi04minage,smr04maxage,smr04maxstay,smr11applic,smr11sex,smr11discharge,smr11start,smr11end,fulldescription')
fd = open('IDS/icd10.txt', 'r')
for line in fd:
  if len(line) < fieldstruct.size:
  	line += ' '*(fieldstruct.size - len(line))
  fields = fieldstruct.unpack_from(str.encode(line))
  fields_str = [x.decode().rstrip() for x in fields]
  print('"'+'","'.join(fields_str)+'"')
