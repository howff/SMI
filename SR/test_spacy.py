#!/usr/bin/env python3

# Test SpaCy by
#  1. find named entities and replace their text with placeholder labels
#  2. create HTML output to visualise the results

# Usage:
# test_spacy.py file_or_text
#   filename - parses the text in the given filename
#   text - can give a string of text as the first argument instead of a filename
# output goes to stdout

import sys
import os
import re
from pydicom.datadict import keyword_for_tag
import spacy
from spacy import displacy

spaCy_model = "en_core_web_sm"


# ---------------------------------------------------------------------
# Anonymise the given string by replacing named entities by their type
# (either PERSON or ORG).
# Uses SpaCy which must already have been installed.
# The model must also have been installed.
# Returns - the anonymised string

def anonymise_named_entities(value):

  # The nlp() function returns a tuple which is a set of Spans
  # see https://spacy.io/api/span#attributes
  nlp = spacy.load(spaCy_model)  # XXX should only do this once
  doc = nlp(value)
  print("Original text: -------------------------------")
  print(value)

  # Replace all PERSON and ORG entities with a placeholder (label)
  anon_value = ''
  ptr = 0
  for entity in doc.ents:
    # The types of entities it can recognise are documented here:
    # see https://spacy.io/api/annotation#named-entities
    # print(entity.text, entity.start_char, entity.end_char, entity.label_)
    if entity.label_ == 'PERSON' or entity.label_ == 'ORG':
      anon_value = anon_value + value[ptr: entity.start_char] + entity.label_
      ptr = entity.end_char
  if ptr > 0:
    anon_value = anon_value + value[ptr:]
    value = anon_value

  print("Anonymous text: -------------------------------")
  print(value)

  html = displacy.render(doc, style='ent') #, manual=True)

  print("HTML: -------------------------------")
  print(html)

  return value


# ---------------------------------------------------------------------
# MAIN program

arg=sys.argv[1]

if os.path.isfile(arg):
  with open(arg, 'r') as fd:
    rv = anonymise_named_entities(fd.read())
else:
  rv = anonymise_named_entities(arg)
