#!/usr/bin/env python3

# Ensure that the docker containers are running to support SemEHR
# Reads default.yaml to find the configuration
# NLPOptions.SemEHRDir/SemEHRDockerComposeDir/SemEHRDockerServicesFile
# Runs in the background with -d

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
semehr_docker_services_file = cfg_dict['SemEHRDockerServicesFile']


# ---------------------------------------------------------------------
# 

print("Starting the SemEHR background services")
cmd = "docker-compose -f %s/%s up -d" % (semehr_docker_dir, semehr_docker_services_file)
os.system(cmd)
