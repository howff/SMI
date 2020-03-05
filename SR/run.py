#!/usr/bin/env python3

# Perform the whole sequence of converting DCM files to JSON to SemEHR,
# then create the SemEHR metadata files,
# then start the SemEHR services (elasticsearch and httpd),
# then run SemEHR to read the SemEHR input files and create output documents,
# it also populates elasticsearch so that the httpd server can search them.

import os
import glob
import yaml


# ---------------------------------------------------------------------
# Read the YAML configuration

cfg_file = 'default.yaml' # was DicomJsonToSemEHR.yaml

with open(cfg_file, 'r') as ymlfile:
    cfg_dict = yaml.load(ymlfile)
    # Descend into the section specifically for our programs
    cfg_dict = cfg_dict['NLPOptions']


# ---------------------------------------------------------------------
# Convert DICOM files in DicomDir to JSON files in TempDir
# XXX change from hard-coded report*.dcm filenames to *.dcm

dicom_dir = cfg_dict['DicomDir']
json_dir  = cfg_dict['TempDir']
file_pattern = 'report[0-9][0-9].dcm'
#file_pattern = 'report02.dcm'
cmd = './DicomToJson.sh'
for dcm_filename in glob.glob(os.path.join(dicom_dir, file_pattern)):
    json_filename = os.path.join(json_dir, os.path.basename(dcm_filename) + '.json')
    print('Converting %s to %s' % (dcm_filename, json_filename))
    os.system('%s %s %s' % (cmd, dcm_filename, json_filename))


# ---------------------------------------------------------------------
# Convert JSON files to txt files

semehr_root_dir  = cfg_dict['SemEHRDir']
semehr_input_dir = os.path.join(semehr_root_dir, cfg_dict['SemEHRInputDir'])

# Remove all SemEHR input files (our output files) first
for txt_filename in glob.glob(os.path.join(semehr_input_dir, '*.txt')):
    print("Removing old input file %s" % txt_filename)
    os.remove(txt_filename)

# Conversion
cmd = './DicomJsonToSemEHR.py'
print("converting *.json in %s" % json_dir)
for json_filename in glob.glob(os.path.join(json_dir, '*.json')):
    print('Converting %s into dir %s' % (json_filename, semehr_input_dir))
    os.system('%s %s %s' % (cmd, json_filename, semehr_input_dir))

# ---------------------------------------------------------------------
# Create mapping from filename to patient id (d2p.tsv)
# which contains Filename<tab>PatientID
# If the first line of each document contains "id : " we use that
# otherwise we generate a sequential number assuming each document is from a different patient.

filename_to_patient_dict = {}
patient_num = 1
for txt_filename in glob.glob(os.path.join(semehr_input_dir, '*.txt')):
    print("reading %s" % txt_filename)
    with open(txt_filename, 'r') as txt_fd:
        # patient ID is taken from file if firstline contains "id : <patientID>"
        # otherwise we just use a monotonic number.
        firstline = txt_fd.readline()
        if 'id : ' in firstline:
            patient_id = firstline.replace('id : ', '').strip()
        else:
            patient_id = patient_num
        filename_to_patient_dict[txt_filename] = patient_id
        patient_num += 1

semehr_map_to_patient_file = os.path.join(semehr_root_dir, cfg_dict['SemEHRMapToPatientFile'])
print("writing %s" % semehr_map_to_patient_file)
with open(semehr_map_to_patient_file, 'w') as tsv_fd:
    for fn, id in filename_to_patient_dict.items():
        #print("mapping %s -> %s" % (fn, id))
        tsv_fd.write('%s\t%s\n' % (os.path.basename(fn), id))

# ---------------------------------------------------------------------
# Create the cohorts file, basically a list of patient id
# which we already have from the above operation.

semehr_cohort_file = os.path.join(semehr_root_dir, cfg_dict['SemEHRCohortFile'])
print("writing %s" % semehr_cohort_file)
with open(semehr_cohort_file, 'w') as cohort_fd:
    for id in sorted(set(filename_to_patient_dict.values())):
        cohort_fd.write('%s\n' % id)


# ---------------------------------------------------------------------
# Check that three services are running (2 x elasticsearch, 1 x httpd)

print("Starting SemEHR services")
os.system("./SemEHRServicesStart.py")

# ---------------------------------------------------------------------
# Start the SemEHR processing

print("Running SemEHR")
os.system("./SemEHRrun.py")

# ---------------------------------------------------------------------
# Convert the SemEHR output to HTML and anonymise at the same time
print("Converting output to HTML")
os.system("./SemEHRtoHTML.py")
