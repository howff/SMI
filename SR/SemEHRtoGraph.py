#!/usr/bin/env python3

# Convert SemEHR output into a graph format.
# Unfortunately if we do this separately from the NER step then we lose
# the ability to recognise people etc.
# Maybe this is better done in SemEHRtoHTML.py

import spacy
from spacy import displacy
import json
import ast
import glob
import os
import yaml
from operator import itemgetter # for sorting a list of dicts by value

# Configuration
#   the default spaCy model, can be changed in the default.yaml file
default_spacy_model = 'en_core_web_sm'
debug = True

# ---------------------------------------------------------------------
# Read the YAML configuration

cfg_file = 'default.yaml'

with open(cfg_file, 'r') as ymlfile:
    cfg_dict = yaml.load(ymlfile)
    # Descend into the section specifically for our programs
    cfg_dict = cfg_dict['NLPOptions']


# ---------------------------------------------------------------------

# input_dir - we need to read the original text so we can replace the named entities and produce HTML
# output_dir - we read the tagged json files from here
semehr_input_dir = os.path.join(cfg_dict['SemEHRDir'], cfg_dict['SemEHRInputDir'])
semehr_output_dir = os.path.join(cfg_dict['SemEHRDir'], cfg_dict['SemEHROutputDir'])
