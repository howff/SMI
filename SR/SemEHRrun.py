#!/usr/bin/env python3

# Run the SemEHR processing.
# Reads default.yaml to find the configuration
# NLPOptions.SemEHRDir/SemEHRDockerComposeDir/SemEHRDockerRunFile
# The command to run is hard-coded as 'semehr'

import os
import yaml


# ---------------------------------------------------------------------
# Read the YAML configuration

cfg_file = 'default.yaml' # was DicomJsonToSemEHR.yaml

with open(cfg_file, 'r') as ymlfile:
    cfg_dict = yaml.load(ymlfile)
    # Descend into the section specifically for our programs
    cfg_dict = cfg_dict['NLPOptions']


# ---------------------------------------------------------------------
# 

semehr_root_dir  = cfg_dict['SemEHRDir']
semehr_docker_dir = os.path.join(semehr_root_dir, cfg_dict['SemEHRDockerComposeDir'])
semehr_docker_run_file = cfg_dict['SemEHRDockerRunFile']


# ---------------------------------------------------------------------
# 

print("Running the SemEHR processing")
cmd = "docker-compose -f %s/%s run semehr" % (semehr_docker_dir, semehr_docker_run_file)
os.system(cmd)
