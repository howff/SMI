#!/usr/bin/env python3

import collections
import re

# ---------------------------------------------------------------------
# Get the value of a key from a dictionary or an empty string if not present

def sr_get_key(jsondict, jsonkey):
    if isinstance(jsondict, collections.Mapping):
        str = jsondict.get(jsonkey, '')
        if str == None:
            str = ''
        return str
    return ''


# ---------------------------------------------------------------------
# Decode a plain string

def sr_decode_plaintext(str):
    # Could do any specific character encoding conversion, eg. to UTF-8
    return str


# ---------------------------------------------------------------------
# Decode a DICOM date tag into a readable string

def sr_decode_date(datestr):
    # XXX TODO: parse YYYYMMDD and return YYYY-MM-DD ?
    return datestr

def test_decode_date():
    assert sr_decode_date('20200101') == '20200101'


# ---------------------------------------------------------------------
# Decode the string value of the PNAME tag.
# Decode the Person's Name value which is typically encoded
# using ^ as a separator between Surname^First^Middle^Title^Suffix
# Returns the decoded human-readable string.

def sr_decode_PNAME(pname):
    if pname == None:
        return ''
    if '^' in pname:
        pname_list = pname.split('^')
        pname = ''
        for ii in (3, 1, 2, 0, 4):
            if (len(pname_list) > ii) and (len(pname_list[ii]) > 0):
                pname = pname + pname_list[ii] + ' '
        pname = pname.rstrip()  # remove trailing spaces
    return pname


def test_sr_decode_PNAME():
    assert sr_decode_PNAME('Fukuda^Katherine M.^^^M. D.') == 'Katherine M. Fukuda M. D.'


# ---------------------------------------------------------------------
# 

def sr_decode_ReferencedSOPSequence(rss):
    assert isinstance(rss, list)
    for rss_item in rss:
        if 'ReferencedSOPInstanceUID' in rss_item:
            return sr_get_key(rss_item, 'ReferencedSOPInstanceUID')
    return ''

def test_sr_decode_ReferencedSOPSequence():
    assert sr_decode_ReferencedSOPSequence([]) == ''
    assert sr_decode_ReferencedSOPSequence( [ { 'ReferencedSOPInstanceUID' : 'rsiuid' } ] ) == 'rsiuid'


# ---------------------------------------------------------------------
# Decode the ConceptNameCodeSequence by returning the value of CodeMeaning inside

def sr_decode_ConceptNameCodeSequence(cncs):
    assert isinstance(cncs, list)
    for cncs_item in cncs:
        if 'CodeMeaning' in cncs_item:
            return sr_get_key(cncs_item, 'CodeMeaning')
    return ''

def test_sr_decode_ConceptNameCodeSequence():
    assert sr_decode_ConceptNameCodeSequence([]) == ''
    assert sr_decode_ConceptNameCodeSequence( [ { 'CodeMeaning': 'cm', 'CodeValue': 'cv' } ] ) == 'cm'


# ---------------------------------------------------------------------
# Decode a MeasuredValueSequence by returning a string consisting of the
# NumericValue inside, and having the short form of the units appended
# eg. 23mm.
# XXX could insert a space before the units if required

def sr_decode_MeasurementUnitsCodeSequence(mucs):
    assert isinstance(mucs, list)
    for mucs_item in mucs:
        # NB CodeValue pulls out the abbreviation, eg. 'mm',
        # use CodeMeaning if you want the full name, eg. 'millimeter'
        if 'CodeValue' in mucs_item:
            return sr_get_key(mucs_item, 'CodeValue')
    return ''

def test_sr_decode_MeasurementUnitsCodeSequence():
    assert sr_decode_MeasurementUnitsCodeSequence([]) == ''
    assert sr_decode_MeasurementUnitsCodeSequence( [ { 'CodeMeaning': 'cm', 'CodeValue': 'cv' } ] ) == 'cv'


def sr_decode_MeasuredValueSequence(mvs):
    # Sometimes it is 'null' when no measurement was attempted
    # A NumericValueQualifierCodeSequence would report this but we don't check for it.
    if mvs == None:
        return ''
    assert isinstance(mvs, list)
    num_str = ''
    units_str = ''
    for mvs_item in mvs:
        if 'NumericValue' in mvs_item:
            num_str = sr_get_key(mvs_item, 'NumericValue')
        if 'MeasurementUnitsCodeSequence' in mvs_item:
            units_str = sr_decode_MeasurementUnitsCodeSequence(mvs_item.get('MeasurementUnitsCodeSequence', ''))
    return num_str+' '+units_str

def test_sr_decode_MeasuredValueSequence():
    assert sr_decode_MeasuredValueSequence(None) == ''
    assert sr_decode_MeasuredValueSequence( [ { 'NumericValue': '23', 'MeasurementUnitsCodeSequence': [ { 'CodeMeaning': 'cm', 'CodeValue': 'mm' } ] } ] ) == '23 mm'
