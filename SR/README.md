# DICOM Structured Reports Processing

# DicomJsonToSemEHR

This project aims to build a workflow which will
* Extract the structured report from DICOM SR files in the same JSON format that the SMIPlugin uses
* Extract the relevant text from the JSON and write to one or more text files suitable for SemEHR
* Run SemEHR and use a medical ontology to tag the words with meaning
* Run an anonymiser to remove personal data
* Combine the results of SemEHR and anonymiser to produce a marked-up output file

A second aim is to:
* Provide a UI to explore the data
* Allow themed projects (eg. a Stroke study) to provide feedback to a ML model 

# How to run (simple version)

The tool had to be modified to work with JSON data as output from MongoDB.

Simply run `SrJsonMongoToText.py` giving it the name of a JSON file.
The JSON file should be a single document from MongoDB, or it should be an array of documents.
If given an array of documents it will write the output for each document to a separate file named by SOPInstanceUID.

# Output file format

The output file is the plain text extracted from the SR.
Any tags which may be of use are also output inside `[[  ]]` brackets.
The list of tags to include/ignore is configurable inside the script.
Example output document:

```
[[Document name]] 1.2.3.4.5
[[Study Description]] XR Chest
[[Study Date]] 20170102
[[Patient Name]] Mr Arthur Boal
[[Patient Sex]] M
Radiology Report
[[Person Observer Name]] Dr. Z MacDonald
Findings
[[Finding]]
RADIOLOGY REPORT
CHI NUMBER: 12345 Examination Number: 54321 Examination Date: 02/01/2017
Name: Boal, Arthur
Examination: XR Chest
Clinical Indication
GP ref - breathing difficulties
Report:
Chest.
Examined the patient's chest. No evidence of problems.
Verified by: Dr. Y MacDougal
[[Observation Date and Time]] 20170102123456.000000
```

# How to prepare data (simple version)

To extract from MongoDB

```
const DBNAME="dicom"
const COLLNAME="image_SR"
conn = new Mongo();
db = conn.getDB('admin').auth(username,password);
db = conn.getDB(DBNAME);
coll = db.getCollection(COLLNAME);
print("Feb 2015 size:\t" + coll.count( {'StudyDate':/^201502/} ) +" documents\n");
cursor = coll.aggregate( [
  { "$match":  $and: [ { 'StudyDate': /^201[567]02/ } , { 'ModalitiesInStudy': /(CT|MR)/ } ] },
  { "$sample": { 'size': 5000 } } ],
  { allowDiskUse: true }
);
while (cursor.hasNext())
{
   printjson(cursor.next());
}
```

The ModalitiesInStudy value takes the form "nn" or "nn\mm" (upto 5 values have been seen)
where each can be SR, CR, PR, DX, IO, OT, NM, PT, CT, PX, RF, MR, US, XA, MG, etc.
For example, "NM\CT\SR"

To turn MongoDB output into proper array of JSON you need to
remove the Mongo ObjectID and NumberLong functions, then
convert each entry into an array item.

```
sed -e 's/ObjectID(\([^)]*\))/\1/' -s 's/NumberLong(\([^)]*\))/\1/'
sed -e '1i['  -e '$a]'  -e 's^}$/},/'
```

# How to run (old version, no longer needed)

* Get a DICOM SR file
* Edit default.yaml with the correct paths
* All the steps below can be run using the script: `./run.py`
* Convert the DCM to JSON using DicomToJson.exe, for example `(cd $DicomToJsonDir; mono DicomToJson.exe -i dicomfile.dcm) > dicomfile.json`
* Convert the JSON to SemEHR input using
`./DicomJsonToSemEHR.py dicomfile.json CogStack-SemEHR/tutorials/mtsamples-cohort/discharge_summaries`
* Create mapping from filename to patient id, d2p.tsv contains `Filename<tab>PatientID` lines, see `CogStack-SemEHR/tutorials/mtsamples-cohort/d2p.tsv`
* Create cohort file, cohort.txt contains one patient id per line, see `CogStack-SemEHR/tutorials/mtsamples-cohort/cohort.txt`
* Start the services if not already running (see `docker ps`) using
`SemEHRServicesStart.py`
which calls `docker-compose -f CogStack-SemEHR/tutorials/tutorial1_compose_files/semehr-tutorial1-servers-compose-arb.yml up -d`
* Process the input files using SemEHR
with `SemEHRrun.py`
which calls `docker-compose -f CogStack-SemEHR/tutorials/tutorial1_compose_files/semehr-tutorial-run-compose-arb.yml run semehr`
* Anonymise and convert to HTML using `./SemEHRtoHTML.py`

# Paths on Andrew's VM:

```
SMIPluginDir="/home/arb/RiderProjects/SMIPlugin"
DicomToJsonDir="/home/arb/RiderProjects/SMIPlugin/Applications/DicomToJson/bin/Debug"

DicomDir="/mnt/hgfs/OneDrive/SMI/DICOM/srdoc103"

SemEHRinputDir="/home/arb/src/SemEHR/CogStack-SemEHR/tutorials/mtsamples-cohort/discharge_summaries"
CohortFile="/home/arb/src/SemEHR/CogStack-SemEHR/tutorials/mtsamples-cohort/cohort.txt"
MapToPatientFile="/home/arb/src/SemEHR/CogStack-SemEHR/tutorials/mtsamples-cohort/d2p.tsv"
DockerComposeDir="/home/arb/src/SemEHR/CogStack-SemEHR/tutorials/tutorial1_compose_files"

semehr_input_dir  = '/home/arb/src/SemEHR/CogStack-SemEHR/tutorials/mtsamples-cohort/discharge_summaries/'
semehr_output_dir = '/home/arb/src/SemEHR/CogStack-SemEHR/tutorials/mtsamples-cohort/output_docs'
```

# Build notes

See SMIPlugin/demos/mongodb-load/README.md

```
export MONO_IOMAP=ALL
cd ~/RiderProjects/SMIPlugin/Applications/DicomFileTester
../../../../lib/fo-dicom-4.0.0-rc1-mono/make_symlinks.sh
msbuild /p:Configuration=Release /t:Build SMIPlugin.sln
mono ./DicomFileTester.exe -i /mnt/hgfs/OneDrive/SMI/DICOM/srdoc103/report01.dcm
```

# Configuration file

`default.yaml` contains a section `NLPOptions`.

```
NLPOptions:
    DicomJsonSR:
        DisplayConceptPrefix: True
        SpacyModel: en_core_web_sm
```
Not used: DisplayConceptPrefix determines whether the conversion from DICOM JSON to SemEHR outputs prefixes such as `Physician:` before names, and so on.

# To do

* Ensure each sentence is terminated properly with a full stop
* Extract names etc from the SR json name fields and train spacy with those names
* Train spacy with the list of baby names, surnames, hospital/clinic names, gazetteer?
* Manually remove the names given in the SR from the output? Careful if they also match a disease name
* How to handle spelling mistakes
* How to handle lower-case names (spacy only recognises names when capitalised)
* Detect IM and IV intramuscular and intravenous ??
* Extract the patient ID from the SR and put into the source doc so the d2p.tsv file works

# SR structure

After conversion to JSON and read into Python the document is basically a dict containing fields such as:

* Attributes such as: TextValue (a string), or PersonName (a name), or MeasuredValueSequence (a number)
* RelationshipType
* ValueType
* ConceptNameCodeSequence (abbreviated CNCS below)
* ContentSequence

Note that the dict keys will be 8-hexdigit strings such as "00018001" but there is a function `keyword_for_tag` which converts them to human-readable strings such as "PatientName".

Most leaf objects (TextValue, PersonName) are represented as a dict containing two keys, "vr" which is the data type and "val" which is the value, eg. `"PersonName": { "vr": "PN", "val": "Alice" }`

Top level attributes (items only appearing in the root object) include "PatientName", "PatientID", "PatientBirthDate", etc.

The structure allows for nested objects and sequences (arrays) of objects. Nested objects have a RelationshipType of "HAS OBS CONTEXT" or "CONTAINS", a ValueType, and a CNCS, plus the nested content (can be any other object). Sequences have a are a list of objects with a RelationshipType of "CONTAINS", a ValueType of "CONTAINER" and a ContentSequence whose "val" is a list of objects. Objects which contain text fragments can be pieced together by following through this structure.

An example of top level attributes:
```
"PatientName": { "vr": "PN", "val": "Osterman^Phillip B." },
"PatientBirthDate": { "vr": "DA", "val": "20011225" },
```

An example of a text object:
```
{
  "RelationshipType": { "vr": "CS", "val": "CONTAINS" },
  "ValueType": { "vr": "CS", "val": "TEXT" },
  "ConceptNameCodeSequence": { "vr": "SQ", "val": [
      {
        "CodeValue": { "vr": "SH", "val": "CODE_01" },
        "CodingSchemeDesignator": { "vr": "SH", "val": "99_OFFIS_DCMTK" },
        "CodeMeaning": { "vr": "LO", "val": "Description" }
      } ] }
  "TextValue": { "vr": "UT", "val": "This 78-year-old gentleman referred by" }
}
```

An example of a contextual object is a very similar structure:
```
{
  "RelationshipType": { "vr": "CS", "val": "HAS OBS CONTEXT" },
  "ValueType": { "vr": "CS", "val": "TEXT" },
  "ConceptNameCodeSequence": { "vr": "SQ", "val": [
      {
        "CodeValue": { "vr": "SH", "val": "IHE.05" },
        "CodingSchemeDesignator": { "vr": "SH", "val": "99_OFFIS_DCMTK" },
        "CodeMeaning": { "vr": "LO", "val": "Observer Organization Name" }
      } ] },
  "TextValue": { "vr": "UT", "val": "Redlands Clinic" }
}
```

An example of a sequence of objects:
```
{
  "RelationshipType": { "vr": "CS", "val": "CONTAINS" },
  "ValueType": { "vr": "CS", "val": "CONTAINER" },
  "ContinuityOfContent": { "vr": "CS", "val": "CONTINUOUS" },
  "ContentSequence": { "vr": "SQ", "val": [
    { some object }, { another object }
    ] }
}
```

# SemEHR input format

Plain text but headings appear on a separate line.

# SemEHR output format

SemEHR outputs several files.

Each output file contains the results from multiple input files.
Each input file is represented as a single text line in this output file.

Each line contains a dict:
* docID - the original filename
* annotations - the results in a three-element list

The three elements are:
* annotations[0] - mentions
* annotations[1] - phenotypes
* annotations[2] - sentences

Each one is an array of dicts, where the dicts contain:
* id, type, startNode, endNode - metadata about a text fragment
* features - a dict describing the meaning of the text fragment

Features dict contents:
* Experiencer - eg. Patient
* Negation - eg. Affirmed or Negated
* Temporality - eg. Recent or historical
* string_orig - the original text fragment
* PREF - fixed text fragment
* STY - the meaning such as "Diagnostic Procedure"
* TUI and inst - code numbers
* majorType, minorType - seen in Phenotypes
 
# Marked up HTML

The HTML marks up the SemEHR output to indicate the meaning of the words.
Currently it extracts three attributes:
* Experiencer
* Negation
* Temporality

and displays them alongside the meaning extracted from
* STY

# Viewing the ElasticSearch database

The docker image is using ElasticSearch version 7.1.1 so you will need to install Kibana version 7.1.1
(must be the same otherwise it complains).
Then use `sudo apt-mark hold kibana` to ensure it doesn't get upgraded.

# Graph database

Download and unpack `neo4j-community-3.5.8-unix.tar.gz` then run `bin/neo4j console`

Open a web browser at `localhost:7474`

Design of graph structure:

Each marked-up word/phrase is converted into a node.
The primary node to be created is the patient, if it doesn't already exist.
The patient node will have attributes (date of birth, etc.)
Nodes can also be created for the other fields in the DICOM file such as
the doctor and the hospital.
```
Person:ID {born:YEAR} -[:SEEN_BY]-> Person:ID {name:NAME}
 -[:SEEN_AT]-> Org:ID {name:HOSPITAL}  
```
The other words are created as nodes with suitable relationships to the patient
(or to another person as appropriate).

```
Acquired Abnormality - CONDITION
Anatomical Abnormality - CONDITION
Antibiotic - ADMINISTERED
Body Location or Region - BODY
Body Part, Organ, or Organ Component - BODY
Body Space or Junction - BODY
Body System - BODY
Clinical Attribute - ? (eg. "age")
Clinical Drug - ADMINISTERED
Congenital Abnormality - CONDITION
Diagnostic Procedure - TREATMENT
Disease or Syndrome - CONDITION
Disease or Syndrome,Anatomical Abnormality - CONDITION
Finding - ? (eg. "intact")
Health Care Activity - TREATMENT
Health Care Related Organization - VISITED
Individual Behavior - ? (eg. "impression")
Injury or Poisoning - CONDITION
Laboratory Procedure - TREATMENT
Mental Process - 
Neoplastic Process - 
Pathologic Function - 
Pharmacologic Substance - 
Research Activity - ? (eg. "study")
Sign or Symptom - CONDITION
Temporal Concept - ? (eg. "old" or "year")
Therapeutic or Preventive Procedure
Tissue - BODY
```

Run the script and add to the graph database. First run the neo4j server using the console option. Then run the extract script which writes Cypher commands into sample.cy. Then run the neo4j shell and empty the database (delete all nodes). Then pipe the Cypher commands to create a new graph database into the neo4j shell. The output can be visualised in the web browser at http://localhost:7474/browser/ by entering the `MATCH(n) RETURN(n)` command.

```
bin/neo4j console
./SemEHRtoHTML.py # | egrep 'MERGE|MATCH' > sample.cy
echo 'MATCH(n) DETACH DELETE (n)' | ~/Downloads/neo4j-community-3.5.8/bin/cypher-shell -u neo4j -p neo4jpassword --format=plain
~/Downloads/neo4j-community-3.5.8/bin/cypher-shell -u neo4j -p neo4jpassword --format=plain < sample.cy
```
