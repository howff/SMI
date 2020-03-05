#!/usr/bin/env python3

# This program converts a DICOM SR file in JSON format
# into a text file (or files) suitable for input to SemEMH.
# Usage: dicomfile.json output_dir
#  where output_dir is the SemEHR input directory.
# The configuration is specified in default.yaml

# XXX TODO
#   how to ensure each sentence has a full stop at the end?
#   and don't add extra spaces before full stops.
#   add command line option to specify YAML filename
#   (would need to change all other programs too)

import os
import sys
import json
import yaml
#from DicomJsonToSemEHR import DicomJsonSR
from DicomJson import DicomJsonSR

usage = 'usage: dicomfile.json output_dir'

concepts_to_label = ('Diagnosis', 'Treatment')
concepts_to_ignore = ('Referring Physician', 'Physician', 'Hospital Name', 'Diameter')

if __name__ == '__main__':

    if len(sys.argv) < 3:
        print(usage)
        exit(0)

    filename = sys.argv[1]
    output_dir = sys.argv[2]

    # Can give a number as a shorthand to the filename
    if not os.path.isfile(filename):
        filename = 'output/report%s.dcm.json' % filename


    # ---------------------------------------------------------------------
    # Read the YAML configuration

    cfg_file = 'default.yaml'  # was DicomJsonToSemEHR.yaml

    with open(cfg_file, 'r') as ymlfile:
        cfg_dict = yaml.load(ymlfile)
        # Descend into the section specifically for our programs
        cfg_dict = cfg_dict['NLPOptions']


    # ---------------------------------------------------------------------
    # Check input file exists
    if not os.path.isfile(filename):
        print("error: cannot open for reading %s" % filename)
        print(usage)
        exit(0)

    # Check output is a directory
    if not os.path.isdir(output_dir):
        print("error: not a directory %s" % output_dir)
        print(usage)
        exit(0)

    # ---------------------------------------------------------------------
    # Create the output filename
    # could use Tagnum_SeriesInstanceUID to get a unique id?
    # or just use the input filename with .txt appended
    output_filename = os.path.join(output_dir, os.path.basename(filename) + '.txt')

    # ---------------------------------------------------------------------
    # Read the JSON file into a dict.
    with open(filename, 'r') as fd:
        jsondict = json.loads(fd.read())
        if len(jsondict) < 10:
            print("error: not a suitable JSON document (not enough entries) in %s" % filename)
            exit(0)

    # ---------------------------------------------------------------------
    # Find out the patient ID so we can do something??


    # ---------------------------------------------------------------------
    # Create an object which can parse the dict into text fragments.
    obj = DicomJsonSR.DicomJsonSR(jsondict)

    # Quick way to make a string from the results
    # but this would include all attributes and doesn't allow prefixes to be added.
    #s=' '.join([x['text'] for x in obj])

    # Extract the text fragments from the DICOM object.
    # Append all text fragments into a single string.
    # The fragments are returned as a dict containing:
    #  text = the text fragment
    #  is_personal = boolean if text has been tagged as a name in the DICOM
    #  is_attr = boolean if text is metadata in which case see the concept field
    #  concept = string describing the meaning of the text fragment
    # The concept can be a heading title such as "Diagnosis" or "Treatment"
    # or for attributes it can be "PatientName" or similar.

    doc_string = ''
    for ret_dict in obj:

        #if ret_dict['text'] and ret_dict['is_attr'] and cfg_dict['DicomJsonSR']['DisplayAttributes']:
        #    #print("Attr %s = %s" % (ret_dict['concept'], ret_dict['text']))
        #    # XXX use whitelist and/or blacklist as below
        #    doc_string += '\n\n%s is %s.\n\n' % (ret_dict['concept'], ret_dict['text'])

        if ret_dict['text'] and not ret_dict['is_attr']:
            # To show the text fragments with an indication of personal data:
            #print("%s %s" % ('BAD ' if ret_dict['is_personal'] else 'OK  ', ret_dict['text']))
            # To add the concept labels required (whitelist):
            #if ret_dict['concept'] in concepts_to_label:
            #    doc_string += '\n\n%s.\n\n' % ret_dict['concept']
            # To add all concept labels except those not required (blacklist):
            if ret_dict['concept'] and (not ret_dict['concept'] in concepts_to_ignore):
                doc_string += '\n\n%s.\n\n' % ret_dict['concept']
            # Append the text fragment
            doc_string += '%s' % (ret_dict['text'])
            # Separate with a space (XXX check for full stop, space not required before it)
            doc_string += ' ' # separate the text fragments

    doc_string += '\n'

    # Write document to output file
    with open(output_filename, 'w') as fd:
        fd.write(doc_string)

    exit(0)