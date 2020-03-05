#!/usr/bin/python3

# This script reads any text file (including JSON files) and replaces all
# strings such as "xxxxxxxx" (8 hex digits) with the corresponding DICOM tag name.
# Use it to make JSON files human-readable!
# Reads stdin, outputs to stdout.

import os
import sys
import re
from pydicom.datadict import keyword_for_tag

for line in sys.stdin:
	for match in re.findall('"[0-9a-fA-F]{8}"', line):
		line = line.replace(match, '"' + keyword_for_tag(match.replace('"', '')) + '"')
	print(line, end='')
