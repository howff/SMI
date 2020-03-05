#!/bin/bash

# Convert a DICOM file into a JSON file
# Usage: DicomToJson.sh file.dcm file.json
# Requires DicomJsonToSemEHR.yaml in the current directory to find the executable.
# Requires that the full mono-devel environment is installed.
# Requires all necessary DLLs have been copied into DicomToJsonDir.

dcmfile="$1"
jsonfile="$2"

# Find out where the executable is
# Read DicomJsonToSemEHR.yaml config file

DicomToJsonDir=`awk '/DicomToJsonDir/{print$NF}' default.yaml`

(cd $DicomToJsonDir; mono DicomToJson.exe -i "$dcmfile") > "$jsonfile"
