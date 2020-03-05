#!/usr/bin/env python3

# Ensure that the docker containers to support SemEHR are stopped.
# Reads default.yaml to find the configuration
# NLPOptions.SemEHRDir/SemEHRDockerComposeDir/SemEHRDockerServicesFile
# Brings down the containers.
# Can be changed to also remove the persistent volumes?
# Can be changed to also remove the containers?

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

# Do we also need to remove the persistent volumes?
remove_volumes='' # or '--volumes' to remove the volumes too.


# ---------------------------------------------------------------------
# 

# Stop the containers.
print("Stopping the SemEHR background services")
cmd = "docker-compose -f %s/%s down %s" % (semehr_docker_dir, semehr_docker_services_file, remove_volumes)
os.system(cmd)

# Do we also need to 'rm -f' the containers?
cmd = "docker-compose -f %s/%s rm -f" % (semehr_docker_dir, semehr_docker_services_file)
#os.system(cmd)
