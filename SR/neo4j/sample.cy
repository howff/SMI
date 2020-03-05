MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Condition {id: 'C0221198'}) SET node.PREF='Lesion' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Condition {id: 'C0221198'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Treatment {id: 'C0009244'}) SET node.PREF='Cognition Therapy' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Treatment {id: 'C0009244'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Body {id: 'C0227481'}) SET node.PREF='Right lobe of liver' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Body {id: 'C0227481'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Temporal {id: 'C0205265'}) SET node.PREF='Initial' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Temporal {id: 'C0205265'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Condition {id: 'C0011900'}) SET node.PREF='Diagnosed' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Condition {id: 'C0011900'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Treatment {id: 'C0220825'}) SET node.PREF='Evaluate' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Treatment {id: 'C0220825'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Treatment {id: 'C1627358'}) SET node.PREF='Enhancement' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Treatment {id: 'C1627358'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Body {id: 'C0000726'}) SET node.PREF='Abdomen' SET node.STY='Body Location or Region'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Body {id: 'C0000726'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Temporal {id: 'C0332282'}) SET node.PREF='Following' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Temporal {id: 'C0332282'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Condition {id: 'C0018916'}) SET node.PREF='Angioma' SET node.STY='Neoplastic Process'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Condition {id: 'C0018916'}) 
MERGE (i)-[r:IS_NEOPLASTIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Treatment {id: 'C0011923'}) SET node.PREF='Imaging' SET node.STY='Diagnostic Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Treatment {id: 'C0011923'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Treatment {id: 'C1627358'}) SET node.PREF='Enhancement' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Treatment {id: 'C1627358'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Condition {id: 'C0262926'}) SET node.PREF='History' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Condition {id: 'C0262926'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Condition {id: 'C0018916'}) SET node.PREF='Angioma' SET node.STY='Neoplastic Process'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Condition {id: 'C0018916'}) 
MERGE (i)-[r:IS_NEOPLASTIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Condition {id: 'C0238246'}) SET node.PREF='Liver Angioma' SET node.STY='Neoplastic Process'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Condition {id: 'C0238246'}) 
MERGE (i)-[r:IS_NEOPLASTIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Temporal {id: 'C0439234'}) SET node.PREF='Year' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Temporal {id: 'C0439234'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Temporal {id: 'C0580836'}) SET node.PREF='Old' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Temporal {id: 'C0580836'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Body {id: 'C0023884'}) SET node.PREF='Livers' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Body {id: 'C0023884'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Condition {id: 'C0151766'}) SET node.PREF='abnormal lft' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Condition {id: 'C0151766'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Treatment {id: 'C1627358'}) SET node.PREF='Enhancement' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Treatment {id: 'C1627358'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Treatment {id: 'C0041618'}) SET node.PREF='Sonogram' SET node.STY='Diagnostic Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Treatment {id: 'C0041618'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Treatment {id: 'C0220825'}) SET node.PREF='Evaluate' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Treatment {id: 'C0220825'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Body {id: 'C0023884'}) SET node.PREF='Livers' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Body {id: 'C0023884'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Condition {id: 'C0221198'}) SET node.PREF='Lesion' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Condition {id: 'C0221198'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Body {id: 'C0227481'}) SET node.PREF='Right lobe of liver' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Body {id: 'C0227481'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Condition {id: 'C1550457'}) SET node.PREF='Normal' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Condition {id: 'C1550457'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Condition {id: 'C0018916'}) SET node.PREF='Angioma' SET node.STY='Neoplastic Process'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Condition {id: 'C0018916'}) 
MERGE (i)-[r:IS_NEOPLASTIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Condition {id: 'C1271005'}) SET node.PREF='Normal appearance' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Condition {id: 'C1271005'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Body {id: 'C0001625'}) SET node.PREF='Adrenal' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Body {id: 'C0001625'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Treatment {id: 'C0184661'}) SET node.PREF='Procedure' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Treatment {id: 'C0184661'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Body {id: 'C0037993'}) SET node.PREF='Spleen' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Body {id: 'C0037993'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Treatment {id: 'C0011923'}) SET node.PREF='Imaging' SET node.STY='Diagnostic Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Treatment {id: 'C0011923'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Body {id: 'C0022646'}) SET node.PREF='Kidney' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Body {id: 'C0022646'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Body {id: 'C0230165'}) SET node.PREF='Upper abdomen' SET node.STY='Body Location or Region'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Body {id: 'C0230165'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Treatment {id: 'C1533734'}) SET node.PREF='Treatment' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Treatment {id: 'C1533734'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Body {id: 'C0226896'}) SET node.PREF='Orally' SET node.STY='Body Space or Junction'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Body {id: 'C0226896'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Body {id: 'C0030274'}) SET node.PREF='Pancreas' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Body {id: 'C0030274'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Condition {id: 'C0494165'}) SET node.PREF='Liver Metastases' SET node.STY='Neoplastic Process'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Condition {id: 'C0494165'}) 
MERGE (i)-[r:IS_NEOPLASTIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Condition {id: 'C0028259'}) SET node.PREF='Nodule' SET node.STY='Acquired Abnormality'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Condition {id: 'C0028259'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Condition {id: 'C0037088'}) SET node.PREF='Finding' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Condition {id: 'C0037088'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Body {id: 'C0227481'}) SET node.PREF='Right lobe of liver' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Body {id: 'C0227481'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Treatment {id: 'C0031809'}) SET node.PREF='Physical' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Treatment {id: 'C0031809'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-1'}); 
MERGE (node:Treatment {id: 'C1627358'}) SET node.PREF='Enhancement' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-1'}) 
MATCH (j:Treatment {id: 'C1627358'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-2'}); 
MERGE (node:Condition {id: 'C0032371'}) SET node.PREF='Polios' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-2'}) 
MATCH (j:Condition {id: 'C0032371'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-2'}); 
MERGE (node:Clinical {id: 'C1114365'}) SET node.PREF='Age' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-2'}) 
MATCH (j:Clinical {id: 'C1114365'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-2'}); 
MERGE (node:Body {id: 'C0230420'}) SET node.PREF='Both lower extremities' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-2'}) 
MATCH (j:Body {id: 'C0230420'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
ERROR: Experiencer is not Patient: Other
MERGE (node:Body {id: 'C0031354'}) SET node.PREF='Throat' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-2'}) 
MATCH (j:Body {id: 'C0031354'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-2'}); 
MERGE (node:Condition {id: 'C0221423'}) SET node.PREF='Illness' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-2'}) 
MATCH (j:Condition {id: 'C0221423'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
ERROR: Experiencer is not Patient: Other
MERGE (node:Condition {id: 'C0740457'}) SET node.PREF='Renal Cancer' SET node.STY='Neoplastic Process'; 
MATCH (i:Person {id: 'FAKE_ID-2'}) 
MATCH (j:Condition {id: 'C0740457'}) 
MERGE (i)-[r:IS_NEOPLASTIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-2'}); 
MERGE (node:Condition {id: 'C0033377'}) SET node.PREF='Ptosis' SET node.STY='Disease or Syndrome,Anatomical Abnormality'; 
MATCH (i:Person {id: 'FAKE_ID-2'}) 
MATCH (j:Condition {id: 'C0033377'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-2'}); 
MERGE (node:Condition {id: 'C0020517'}) SET node.PREF='Allergy' SET node.STY='Pathologic Function'; 
MATCH (i:Person {id: 'FAKE_ID-2'}) 
MATCH (j:Condition {id: 'C0020517'}) 
MERGE (i)-[r:IS_PATHOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-2'}); 
MERGE (node:Condition {id: 'C0019080'}) SET node.PREF='Bleeding' SET node.STY='Pathologic Function'; 
MATCH (i:Person {id: 'FAKE_ID-2'}) 
MATCH (j:Condition {id: 'C0019080'}) 
MERGE (i)-[r:IS_PATHOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-2'}); 
MERGE (node:Body {id: 'C0021853'}) SET node.PREF='Intestine' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-2'}) 
MATCH (j:Body {id: 'C0021853'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-2'}); 
MERGE (node:Drug {id: 'C0013227'}) SET node.PREF='Medicine' SET node.STY='Pharmacologic Substance'; 
MATCH (i:Person {id: 'FAKE_ID-2'}) 
MATCH (j:Drug {id: 'C0013227'}) 
MERGE (i)-[r:HAS_PHARMACOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-2'}); 
MERGE (node:Temporal {id: 'C1444637'}) SET node.PREF='In the past' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-2'}) 
MATCH (j:Temporal {id: 'C1444637'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-2'}); 
MERGE (node:Condition {id: 'C0016470'}) SET node.PREF='Food Allergy' SET node.STY='Pathologic Function'; 
MATCH (i:Person {id: 'FAKE_ID-2'}) 
MATCH (j:Condition {id: 'C0016470'}) 
MERGE (i)-[r:IS_PATHOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-2'}); 
MERGE (node:Temporal {id: 'C0439231'}) SET node.PREF='Month' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-2'}) 
MATCH (j:Temporal {id: 'C0439231'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-2'}); 
MERGE (node:Condition {id: 'C0221423'}) SET node.PREF='Illness' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-2'}) 
MATCH (j:Condition {id: 'C0221423'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-2'}); 
MERGE (node:Temporal {id: 'C0580836'}) SET node.PREF='Old' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-2'}) 
MATCH (j:Temporal {id: 'C0580836'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-2'}); 
MERGE (node:Body {id: 'C0021853'}) SET node.PREF='Intestine' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-2'}) 
MATCH (j:Body {id: 'C0021853'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-2'}); 
MERGE (node:Temporal {id: 'C0332173'}) SET node.PREF='Per Day' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-2'}) 
MATCH (j:Temporal {id: 'C0332173'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-2'}); 
MERGE (node:Temporal {id: 'C0332185'}) SET node.PREF='Recent' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-2'}) 
MATCH (j:Temporal {id: 'C0332185'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-2'}); 
MERGE (node:Temporal {id: 'C0439603'}) SET node.PREF='Frequency' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-2'}) 
MATCH (j:Temporal {id: 'C0439603'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-2'}); 
MERGE (node:Body {id: 'C0021853'}) SET node.PREF='Intestine' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-2'}) 
MATCH (j:Body {id: 'C0021853'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-2'}); 
MERGE (node:Drug {id: 'C0013227'}) SET node.PREF='Medicine' SET node.STY='Pharmacologic Substance'; 
MATCH (i:Person {id: 'FAKE_ID-2'}) 
MATCH (j:Drug {id: 'C0013227'}) 
MERGE (i)-[r:HAS_PHARMACOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-2'}); 
MERGE (node:Treatment {id: 'C0019328'}) SET node.PREF='Hernioplasty' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-2'}) 
MATCH (j:Treatment {id: 'C0019328'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-2'}); 
MERGE (node:Condition {id: 'C0030193'}) SET node.PREF='Painful' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-2'}) 
MATCH (j:Condition {id: 'C0030193'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-2'}); 
MERGE (node:Condition {id: 'C1299585'}) SET node.PREF='Does not' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-2'}) 
MATCH (j:Condition {id: 'C1299585'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-2'}); 
MERGE (node:Condition {id: 'C0595998'}) SET node.PREF='Lives with' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-2'}) 
MATCH (j:Condition {id: 'C0595998'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-2'}); 
MERGE (node:Condition {id: 'C2700617'}) SET node.PREF='Irritation' SET node.STY='Mental Process'; 
MATCH (i:Person {id: 'FAKE_ID-2'}) 
MATCH (j:Condition {id: 'C2700617'}) 
MERGE (i)-[r:IS_MENTALPROCESS]->(j); 
ERROR: Experiencer is not Patient: Other
MERGE (node:Condition {id: 'C0231173'}) SET node.PREF='Invalid' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-2'}) 
MATCH (j:Condition {id: 'C0231173'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-2'}); 
MERGE (node:Temporal {id: 'C0205156'}) SET node.PREF='Former' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-2'}) 
MATCH (j:Temporal {id: 'C0205156'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-2'}); 
MERGE (node:Body {id: 'C3870603'}) SET node.PREF='Anorectal' SET node.STY='Body Space or Junction'; 
MATCH (i:Person {id: 'FAKE_ID-2'}) 
MATCH (j:Body {id: 'C3870603'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-2'}); 
MERGE (node:Condition {id: 'C0035345'}) SET node.PREF='Retire' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-2'}) 
MATCH (j:Condition {id: 'C0035345'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-2'}); 
MERGE (node:Treatment {id: 'C0543467'}) SET node.PREF='Surgery' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-2'}) 
MATCH (j:Treatment {id: 'C0543467'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
ERROR: Experiencer is not Patient: Other
MERGE (node:Condition {id: 'C0241889'}) SET node.PREF='FH: NOS' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-2'}) 
MATCH (j:Condition {id: 'C0241889'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-2'}); 
MERGE (node:Condition {id: 'C0009450'}) SET node.PREF='Infection' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-2'}) 
MATCH (j:Condition {id: 'C0009450'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
ERROR: Experiencer is not Patient: Other
MERGE (node:Condition {id: 'C1306577'}) SET node.PREF='Has died' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-2'}) 
MATCH (j:Condition {id: 'C1306577'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-2'}); 
MERGE (node:Body {id: 'C0005767'}) SET node.PREF='Sanguis' SET node.STY='Tissue'; 
MATCH (i:Person {id: 'FAKE_ID-2'}) 
MATCH (j:Body {id: 'C0005767'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-2'}); 
MERGE (node:Drug {id: 'C0220892'}) SET node.PREF='Penicillin' SET node.STY='Antibiotic'; 
MATCH (i:Person {id: 'FAKE_ID-2'}) 
MATCH (j:Drug {id: 'C0220892'}) 
MERGE (i)-[r:IS_ADMINISTERED]->(j); 
MERGE (node:Person {id: 'FAKE_ID-2'}); 
MERGE (node:Condition {id: 'C0221423'}) SET node.PREF='Illness' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-2'}) 
MATCH (j:Condition {id: 'C0221423'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
ERROR: Experiencer is not Patient: Other
MERGE (node:Condition {id: 'C0006826'}) SET node.PREF='Cancer' SET node.STY='Neoplastic Process'; 
MATCH (i:Person {id: 'FAKE_ID-2'}) 
MATCH (j:Condition {id: 'C0006826'}) 
MERGE (i)-[r:IS_NEOPLASTIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-2'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-2'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-2'}); 
MERGE (node:Condition {id: 'C0277786'}) SET node.PREF='Complaint' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-2'}) 
MATCH (j:Condition {id: 'C0277786'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-3'}); 
MERGE (node:Condition {id: 'C2242558'}) SET node.PREF='Calcification' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-3'}) 
MATCH (j:Condition {id: 'C2242558'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-3'}); 
MERGE (node:Condition {id: 'C1513916'}) SET node.PREF='Negative' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-3'}) 
MATCH (j:Condition {id: 'C1513916'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-3'}); 
MERGE (node:Condition {id: 'C1550457'}) SET node.PREF='Normal' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-3'}) 
MATCH (j:Condition {id: 'C1550457'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-3'}); 
MERGE (node:Condition {id: 'C0596764'}) SET node.PREF='impression' SET node.STY='Individual Behavior'; 
MATCH (i:Person {id: 'FAKE_ID-3'}) 
MATCH (j:Condition {id: 'C0596764'}) 
MERGE (i)-[r:IS_BEHAVIOUR]->(j); 
MERGE (node:Person {id: 'FAKE_ID-3'}); 
MERGE (node:Condition {id: 'C0596764'}) SET node.PREF='impression' SET node.STY='Individual Behavior'; 
MATCH (i:Person {id: 'FAKE_ID-3'}) 
MATCH (j:Condition {id: 'C0596764'}) 
MERGE (i)-[r:IS_BEHAVIOUR]->(j); 
MERGE (node:Person {id: 'FAKE_ID-3'}); 
MERGE (node:Condition {id: 'C1513916'}) SET node.PREF='Negative' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-3'}) 
MATCH (j:Condition {id: 'C1513916'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-3'}); 
MERGE (node:Treatment {id: 'C0008972'}) SET node.PREF='Study' SET node.STY='Research Activity'; 
MATCH (i:Person {id: 'FAKE_ID-3'}) 
MATCH (j:Treatment {id: 'C0008972'}) 
MERGE (i)-[r:IS_RESEARCH]->(j); 
MERGE (node:Person {id: 'FAKE_ID-3'}); 
MERGE (node:Temporal {id: 'C0439508'}) SET node.PREF='Yearly' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-3'}) 
MATCH (j:Temporal {id: 'C0439508'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-3'}); 
MERGE (node:Body {id: 'C1527391'}) SET node.PREF='Chest region' SET node.STY='Body Location or Region'; 
MATCH (i:Person {id: 'FAKE_ID-3'}) 
MATCH (j:Body {id: 'C1527391'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-3'}); 
MERGE (node:Temporal {id: 'C0439508'}) SET node.PREF='Yearly' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-3'}) 
MATCH (j:Temporal {id: 'C0439508'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-3'}); 
MERGE (node:Body {id: 'C1527391'}) SET node.PREF='Chest region' SET node.STY='Body Location or Region'; 
MATCH (i:Person {id: 'FAKE_ID-3'}) 
MATCH (j:Body {id: 'C1527391'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-3'}); 
MERGE (node:Body {id: 'C0000726'}) SET node.PREF='Abdomen' SET node.STY='Body Location or Region'; 
MATCH (i:Person {id: 'FAKE_ID-3'}) 
MATCH (j:Body {id: 'C0000726'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-3'}); 
MERGE (node:Body {id: 'C1527391'}) SET node.PREF='Chest region' SET node.STY='Body Location or Region'; 
MATCH (i:Person {id: 'FAKE_ID-3'}) 
MATCH (j:Body {id: 'C1527391'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-3'}); 
MERGE (node:Body {id: 'C0000726'}) SET node.PREF='Abdomen' SET node.STY='Body Location or Region'; 
MATCH (i:Person {id: 'FAKE_ID-3'}) 
MATCH (j:Body {id: 'C0000726'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-3'}); 
MERGE (node:Body {id: 'C0024109'}) SET node.PREF='Pulmones' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-3'}) 
MATCH (j:Body {id: 'C0024109'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-3'}); 
MERGE (node:Condition {id: 'C1550457'}) SET node.PREF='Normal' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-3'}) 
MATCH (j:Condition {id: 'C1550457'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-3'}); 
MERGE (node:Condition {id: 'C1709157'}) SET node.PREF='Clear Margin' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-3'}) 
MATCH (j:Condition {id: 'C1709157'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-3'}); 
MERGE (node:Condition {id: 'C0596601'}) SET node.PREF='Gas' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-3'}) 
MATCH (j:Condition {id: 'C0596601'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-3'}); 
MERGE (node:Drug {id: 'C0718247'}) SET node.PREF='Active' SET node.STY='Pharmacologic Substance'; 
MATCH (i:Person {id: 'FAKE_ID-3'}) 
MATCH (j:Drug {id: 'C0718247'}) 
MERGE (i)-[r:HAS_PHARMACOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-3'}); 
MERGE (node:Condition {id: 'C0028778'}) SET node.PREF='Occlusion' SET node.STY='Pathologic Function'; 
MATCH (i:Person {id: 'FAKE_ID-3'}) 
MATCH (j:Condition {id: 'C0028778'}) 
MERGE (i)-[r:IS_PATHOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-3'}); 
MERGE (node:Body {id: 'C1184743'}) SET node.PREF='Process' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-3'}) 
MATCH (j:Body {id: 'C1184743'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-3'}); 
MERGE (node:Condition {id: 'C0744689'}) SET node.PREF='heart size' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-3'}) 
MATCH (j:Condition {id: 'C0744689'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-3'}); 
MERGE (node:Condition {id: 'C4019039'}) SET node.PREF='Ileus' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-3'}) 
MATCH (j:Condition {id: 'C4019039'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-4'}); 
MERGE (node:Treatment {id: 'C0203057'}) SET node.PREF='Upper GI' SET node.STY='Diagnostic Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-4'}) 
MATCH (j:Treatment {id: 'C0203057'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-4'}); 
MERGE (node:Condition {id: 'C0038354'}) SET node.PREF='Stomach' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-4'}) 
MATCH (j:Condition {id: 'C0038354'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-4'}); 
MERGE (node:Clinical {id: 'C0801658'}) SET node.PREF='Primary diagnosis' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-4'}) 
MATCH (j:Clinical {id: 'C0801658'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-4'}); 
MERGE (node:Condition {id: 'C0699791'}) SET node.PREF='Gastric Cancer' SET node.STY='Neoplastic Process'; 
MATCH (i:Person {id: 'FAKE_ID-4'}) 
MATCH (j:Condition {id: 'C0699791'}) 
MERGE (i)-[r:IS_NEOPLASTIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-4'}); 
MERGE (node:Treatment {id: 'C0011906'}) SET node.PREF='DIAG DIFFER' SET node.STY='Diagnostic Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-4'}) 
MATCH (j:Treatment {id: 'C0011906'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-4'}); 
MERGE (node:Condition {id: 'C0038354'}) SET node.PREF='Stomach' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-4'}) 
MATCH (j:Condition {id: 'C0038354'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-4'}); 
MERGE (node:Condition {id: 'C0038358'}) SET node.PREF='Gastric Ulcer' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-4'}) 
MATCH (j:Condition {id: 'C0038358'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-4'}); 
MERGE (node:Condition {id: 'C0039869'}) SET node.PREF='Thought' SET node.STY='Mental Process'; 
MATCH (i:Person {id: 'FAKE_ID-4'}) 
MATCH (j:Condition {id: 'C0039869'}) 
MERGE (i)-[r:IS_MENTALPROCESS]->(j); 
MERGE (node:Person {id: 'FAKE_ID-4'}); 
MERGE (node:Condition {id: 'C0262926'}) SET node.PREF='History' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-4'}) 
MATCH (j:Condition {id: 'C0262926'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-4'}); 
MERGE (node:Condition {id: 'C0221512'}) SET node.PREF='Belly ache' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-4'}) 
MATCH (j:Condition {id: 'C0221512'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-4'}); 
MERGE (node:Condition {id: 'C0013604'}) SET node.PREF='Dropsy' SET node.STY='Pathologic Function'; 
MATCH (i:Person {id: 'FAKE_ID-4'}) 
MATCH (j:Condition {id: 'C0013604'}) 
MERGE (i)-[r:IS_PATHOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-4'}); 
MERGE (node:Condition {id: 'C0037088'}) SET node.PREF='Finding' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-4'}) 
MATCH (j:Condition {id: 'C0037088'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-4'}); 
MERGE (node:Treatment {id: 'C0184661'}) SET node.PREF='Procedure' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-4'}) 
MATCH (j:Treatment {id: 'C0184661'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-4'}); 
MERGE (node:Body {id: 'C0227224'}) SET node.PREF='Gastric wall' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-4'}) 
MATCH (j:Body {id: 'C0227224'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-4'}); 
MERGE (node:Condition {id: 'C0746408'}) SET node.PREF='Mass/lesion' SET node.STY='Neoplastic Process'; 
MATCH (i:Person {id: 'FAKE_ID-4'}) 
MATCH (j:Condition {id: 'C0746408'}) 
MERGE (i)-[r:IS_NEOPLASTIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-4'}); 
MERGE (node:Body {id: 'C0227223'}) SET node.PREF='Greater Curvature' SET node.STY='Body Location or Region'; 
MATCH (i:Person {id: 'FAKE_ID-4'}) 
MATCH (j:Body {id: 'C0227223'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-4'}); 
MERGE (node:Condition {id: 'C0699791'}) SET node.PREF='Gastric Cancer' SET node.STY='Neoplastic Process'; 
MATCH (i:Person {id: 'FAKE_ID-4'}) 
MATCH (j:Condition {id: 'C0699791'}) 
MERGE (i)-[r:IS_NEOPLASTIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-4'}); 
MERGE (node:Condition {id: 'C0038354'}) SET node.PREF='Stomach' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-4'}) 
MATCH (j:Condition {id: 'C0038354'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-4'}); 
MERGE (node:Condition {id: 'C0037088'}) SET node.PREF='Finding' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-4'}) 
MATCH (j:Condition {id: 'C0037088'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-4'}); 
MERGE (node:Body {id: 'C0227224'}) SET node.PREF='Gastric wall' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-4'}) 
MATCH (j:Body {id: 'C0227224'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-4'}); 
MERGE (node:Condition {id: 'C0221198'}) SET node.PREF='Lesion' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-4'}) 
MATCH (j:Condition {id: 'C0221198'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-4'}); 
MERGE (node:Body {id: 'C0227223'}) SET node.PREF='Greater Curvature' SET node.STY='Body Location or Region'; 
MATCH (i:Person {id: 'FAKE_ID-4'}) 
MATCH (j:Body {id: 'C0227223'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-4'}); 
MERGE (node:Body {id: 'C0227199'}) SET node.PREF='gastric fold' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-4'}) 
MATCH (j:Body {id: 'C0227199'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-4'}); 
MERGE (node:Condition {id: 'C0221198'}) SET node.PREF='Lesion' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-4'}) 
MATCH (j:Condition {id: 'C0221198'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-4'}); 
MERGE (node:Condition {id: 'C0013604'}) SET node.PREF='Dropsy' SET node.STY='Pathologic Function'; 
MATCH (i:Person {id: 'FAKE_ID-4'}) 
MATCH (j:Condition {id: 'C0013604'}) 
MERGE (i)-[r:IS_PATHOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-4'}); 
MERGE (node:Condition {id: 'C0000768'}) SET node.PREF='Deformity' SET node.STY='Congenital Abnormality'; 
MATCH (i:Person {id: 'FAKE_ID-4'}) 
MATCH (j:Condition {id: 'C0000768'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-4'}); 
MERGE (node:Condition {id: 'C0442726'}) SET node.PREF='Detected' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-4'}) 
MATCH (j:Condition {id: 'C0442726'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-4'}); 
MERGE (node:Condition {id: 'C0013604'}) SET node.PREF='Dropsy' SET node.STY='Pathologic Function'; 
MATCH (i:Person {id: 'FAKE_ID-4'}) 
MATCH (j:Condition {id: 'C0013604'}) 
MERGE (i)-[r:IS_PATHOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-4'}); 
MERGE (node:Condition {id: 'C0577304'}) SET node.PREF='Single lesion' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-4'}) 
MATCH (j:Condition {id: 'C0577304'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-5'}); 
MERGE (node:Condition {id: 'C0577559'}) SET node.PREF='A mass' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-5'}) 
MATCH (j:Condition {id: 'C0577559'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-5'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-5'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-5'}); 
MERGE (node:Condition {id: 'C1513302'}) SET node.PREF='Mild' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-5'}) 
MATCH (j:Condition {id: 'C1513302'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-5'}); 
MERGE (node:Temporal {id: 'C0205267'}) SET node.PREF='Intermittent' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-5'}) 
MATCH (j:Temporal {id: 'C0205267'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-5'}); 
MERGE (node:Condition {id: 'C0149741'}) SET node.PREF='Breast discharge' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-5'}) 
MATCH (j:Condition {id: 'C0149741'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-5'}); 
MERGE (node:Condition {id: 'C0012359'}) SET node.PREF='Ectasia' SET node.STY='Pathologic Function'; 
MATCH (i:Person {id: 'FAKE_ID-5'}) 
MATCH (j:Condition {id: 'C0012359'}) 
MERGE (i)-[r:IS_PATHOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-5'}); 
MERGE (node:Treatment {id: 'C0080264'}) SET node.PREF='Breast Ultrasonography' SET node.STY='Diagnostic Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-5'}) 
MATCH (j:Treatment {id: 'C0080264'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-5'}); 
MERGE (node:Condition {id: 'C0037088'}) SET node.PREF='Finding' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-5'}) 
MATCH (j:Condition {id: 'C0037088'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-5'}); 
MERGE (node:Condition {id: 'C0024103'}) SET node.PREF='Breast Lump' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-5'}) 
MATCH (j:Condition {id: 'C0024103'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-5'}); 
MERGE (node:Condition {id: 'C0577559'}) SET node.PREF='A mass' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-5'}) 
MATCH (j:Condition {id: 'C0577559'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-5'}); 
MERGE (node:Condition {id: 'C1550043'}) SET node.PREF='Identified' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-5'}) 
MATCH (j:Condition {id: 'C1550043'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-5'}); 
MERGE (node:Condition {id: 'C0262926'}) SET node.PREF='History' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-5'}) 
MATCH (j:Condition {id: 'C0262926'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-5'}); 
MERGE (node:Condition {id: 'C2242558'}) SET node.PREF='Calcification' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-5'}) 
MATCH (j:Condition {id: 'C2242558'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-5'}); 
MERGE (node:Body {id: 'C0006141'}) SET node.PREF='Breast' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-5'}) 
MATCH (j:Body {id: 'C0006141'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-5'}); 
MERGE (node:Condition {id: 'C0746412'}) SET node.PREF='Palpable mass' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-5'}) 
MATCH (j:Condition {id: 'C0746412'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-5'}); 
MERGE (node:Body {id: 'C1515974'}) SET node.PREF='Location' SET node.STY='Body Location or Region'; 
MATCH (i:Person {id: 'FAKE_ID-5'}) 
MATCH (j:Body {id: 'C1515974'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-5'}); 
MERGE (node:Condition {id: 'C0746412'}) SET node.PREF='Palpable mass' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-5'}) 
MATCH (j:Condition {id: 'C0746412'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-5'}); 
MERGE (node:Condition {id: 'C0442726'}) SET node.PREF='Detected' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-5'}) 
MATCH (j:Condition {id: 'C0442726'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-5'}); 
MERGE (node:Condition {id: 'C0577559'}) SET node.PREF='A mass' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-5'}) 
MATCH (j:Condition {id: 'C0577559'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-5'}); 
MERGE (node:Condition {id: 'C2242558'}) SET node.PREF='Calcification' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-5'}) 
MATCH (j:Condition {id: 'C2242558'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-5'}); 
MERGE (node:Treatment {id: 'C0024671'}) SET node.PREF='Mammogram' SET node.STY='Diagnostic Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-5'}) 
MATCH (j:Treatment {id: 'C0024671'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-5'}); 
MERGE (node:Treatment {id: 'C0024671'}) SET node.PREF='Mammogram' SET node.STY='Diagnostic Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-5'}) 
MATCH (j:Treatment {id: 'C0024671'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-5'}); 
MERGE (node:Body {id: 'C0222598'}) SET node.PREF='Upper outer quadrant of breast' SET node.STY='Body Location or Region'; 
MATCH (i:Person {id: 'FAKE_ID-5'}) 
MATCH (j:Body {id: 'C0222598'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-5'}); 
MERGE (node:Condition {id: 'C1550043'}) SET node.PREF='Identified' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-5'}) 
MATCH (j:Condition {id: 'C1550043'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-6'}); 
MERGE (node:Condition {id: 'C0596764'}) SET node.PREF='impression' SET node.STY='Individual Behavior'; 
MATCH (i:Person {id: 'FAKE_ID-6'}) 
MATCH (j:Condition {id: 'C0596764'}) 
MERGE (i)-[r:IS_BEHAVIOUR]->(j); 
MERGE (node:Person {id: 'FAKE_ID-6'}); 
MERGE (node:Treatment {id: 'C0189476'}) SET node.PREF='Tube thoracostomy' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-6'}) 
MATCH (j:Treatment {id: 'C0189476'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-6'}); 
MERGE (node:Condition {id: 'C0032227'}) SET node.PREF='Pleural Effusion' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-6'}) 
MATCH (j:Condition {id: 'C0032227'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-6'}); 
MERGE (node:Condition {id: 'C0032326'}) SET node.PREF='Pneumothorax' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-6'}) 
MATCH (j:Condition {id: 'C0032326'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-6'}); 
MERGE (node:Condition {id: 'C0262926'}) SET node.PREF='History' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-6'}) 
MATCH (j:Condition {id: 'C0262926'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-6'}); 
MERGE (node:Condition {id: 'C0032326'}) SET node.PREF='Pneumothorax' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-6'}) 
MATCH (j:Condition {id: 'C0032326'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-6'}); 
MERGE (node:Treatment {id: 'C0189476'}) SET node.PREF='Tube thoracostomy' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-6'}) 
MATCH (j:Treatment {id: 'C0189476'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-6'}); 
MERGE (node:Condition {id: 'C0037088'}) SET node.PREF='Finding' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-6'}) 
MATCH (j:Condition {id: 'C0037088'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-6'}); 
MERGE (node:Temporal {id: 'C1272706'}) SET node.PREF='Window' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-6'}) 
MATCH (j:Temporal {id: 'C1272706'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-6'}); 
MERGE (node:Treatment {id: 'C0441587'}) SET node.PREF='Insert' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-6'}) 
MATCH (j:Treatment {id: 'C0441587'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-6'}); 
MERGE (node:Condition {id: 'C0264557'}) SET node.PREF='Chronic pneumothorax' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-6'}) 
MATCH (j:Condition {id: 'C0264557'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-6'}); 
MERGE (node:Body {id: 'C1549530'}) SET node.PREF='Chest Tube' SET node.STY='Body Location or Region'; 
MATCH (i:Person {id: 'FAKE_ID-6'}) 
MATCH (j:Body {id: 'C1549530'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-6'}); 
MERGE (node:Condition {id: 'C0032227'}) SET node.PREF='Pleural Effusion' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-6'}) 
MATCH (j:Condition {id: 'C0032227'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-6'}); 
MERGE (node:Condition {id: 'C0032326'}) SET node.PREF='Pneumothorax' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-6'}) 
MATCH (j:Condition {id: 'C0032326'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Treatment {id: 'C0009244'}) SET node.PREF='Cognition Therapy' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Treatment {id: 'C0009244'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Treatment {id: 'C0002978'}) SET node.PREF='Angiogram' SET node.STY='Diagnostic Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Treatment {id: 'C0002978'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Condition {id: 'C0153661'}) SET node.PREF='Thorax' SET node.STY='Neoplastic Process'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Condition {id: 'C0153661'}) 
MERGE (i)-[r:IS_NEOPLASTIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Condition {id: 'C0002940'}) SET node.PREF='Aneurysm' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Condition {id: 'C0002940'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Condition {id: 'C0262926'}) SET node.PREF='History' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Condition {id: 'C0262926'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Body {id: 'C1281571'}) SET node.PREF='Thoracic aorta' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Body {id: 'C1281571'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Temporal {id: 'C0439234'}) SET node.PREF='Year' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Temporal {id: 'C0439234'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Body {id: 'C0038925'}) SET node.PREF='Flap' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Body {id: 'C0038925'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Body {id: 'C0524461'}) SET node.PREF='Lumen, NOS' SET node.STY='Body Space or Junction'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Body {id: 'C0524461'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Temporal {id: 'C0580836'}) SET node.PREF='Old' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Temporal {id: 'C0580836'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Body {id: 'C0003483'}) SET node.PREF='Aortas' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Body {id: 'C0003483'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Org {id: 'C0562508'}) SET node.PREF='Emergency Room' SET node.STY='Health Care Related Organization'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Org {id: 'C0562508'}) 
MERGE (i)-[r:AT_LOCATION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Body {id: 'C2987514'}) SET node.PREF='Base' SET node.STY='Body Location or Region'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Body {id: 'C2987514'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Condition {id: 'C0232493'}) SET node.PREF='Epigastric pain' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Condition {id: 'C0232493'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Body {id: 'C0003956'}) SET node.PREF='Aorta ascendens' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Body {id: 'C0003956'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Treatment {id: 'C0039985'}) SET node.PREF='chest X ray' SET node.STY='Diagnostic Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Treatment {id: 'C0039985'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Body {id: 'C0003489'}) SET node.PREF='Aortic Arch' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Body {id: 'C0003489'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Body {id: 'C0011666'}) SET node.PREF='Aorta descendens' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Body {id: 'C0011666'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Body {id: 'C0025066'}) SET node.PREF='Mediastinal' SET node.STY='Body Location or Region'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Body {id: 'C0025066'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Condition {id: 'C0162872'}) SET node.PREF='Thoracic Aortic Aneurysm' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Condition {id: 'C0162872'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Body {id: 'C0000726'}) SET node.PREF='Abdomen' SET node.STY='Body Location or Region'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Body {id: 'C0000726'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Condition {id: 'C0037088'}) SET node.PREF='Finding' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Condition {id: 'C0037088'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Body {id: 'C0024109'}) SET node.PREF='Pulmones' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Body {id: 'C0024109'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Condition {id: 'C1550043'}) SET node.PREF='Identified' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Condition {id: 'C1550043'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Org {id: 'C0562508'}) SET node.PREF='Emergency Room' SET node.STY='Health Care Related Organization'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Org {id: 'C0562508'}) 
MERGE (i)-[r:AT_LOCATION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Temporal {id: 'C0205548'}) SET node.PREF='Immediate' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Temporal {id: 'C0205548'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Condition {id: 'C0037088'}) SET node.PREF='Finding' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Condition {id: 'C0037088'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Org {id: 'C0562508'}) SET node.PREF='Emergency Room' SET node.STY='Health Care Related Organization'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Org {id: 'C0562508'}) 
MERGE (i)-[r:AT_LOCATION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Condition {id: 'C0162872'}) SET node.PREF='Thoracic Aortic Aneurysm' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Condition {id: 'C0162872'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Treatment {id: 'C0012737'}) SET node.PREF='Dissection' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Treatment {id: 'C0012737'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-7'}); 
MERGE (node:Body {id: 'C0011666'}) SET node.PREF='Aorta descendens' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-7'}) 
MATCH (j:Body {id: 'C0011666'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-8'}); 
MERGE (node:Condition {id: 'C1550457'}) SET node.PREF='Normal' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-8'}) 
MATCH (j:Condition {id: 'C1550457'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-8'}); 
MERGE (node:Body {id: 'C0447303'}) SET node.PREF='Occlusal' SET node.STY='Body Location or Region'; 
MATCH (i:Person {id: 'FAKE_ID-8'}) 
MATCH (j:Body {id: 'C0447303'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-8'}); 
MERGE (node:Body {id: 'C0225317'}) SET node.PREF='Soft Tissue' SET node.STY='Tissue'; 
MATCH (i:Person {id: 'FAKE_ID-8'}) 
MATCH (j:Body {id: 'C0225317'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-8'}); 
MERGE (node:Condition {id: 'C1550457'}) SET node.PREF='Normal' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-8'}) 
MATCH (j:Condition {id: 'C1550457'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-8'}); 
MERGE (node:Body {id: 'C0262950'}) SET node.PREF='Osseous' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-8'}) 
MATCH (j:Body {id: 'C0262950'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-8'}); 
MERGE (node:Condition {id: 'C0080233'}) SET node.PREF='Tooth Loss' SET node.STY='Acquired Abnormality'; 
MATCH (i:Person {id: 'FAKE_ID-8'}) 
MATCH (j:Condition {id: 'C0080233'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-8'}); 
MERGE (node:Body {id: 'C0030471'}) SET node.PREF='Sinuses' SET node.STY='Body Space or Junction'; 
MATCH (i:Person {id: 'FAKE_ID-8'}) 
MATCH (j:Body {id: 'C0030471'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-8'}); 
MERGE (node:Body {id: 'C0022359'}) SET node.PREF='Jaw Bone' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-8'}) 
MATCH (j:Body {id: 'C0022359'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-8'}); 
MERGE (node:Condition {id: 'C1554187'}) SET node.PREF='Intact' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-8'}) 
MATCH (j:Condition {id: 'C1554187'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-8'}); 
MERGE (node:Condition {id: 'C0700329'}) SET node.PREF='morphology' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-8'}) 
MATCH (j:Condition {id: 'C0700329'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-8'}); 
MERGE (node:Condition {id: 'C0016169'}) SET node.PREF='Fistula' SET node.STY='Anatomical Abnormality'; 
MATCH (i:Person {id: 'FAKE_ID-8'}) 
MATCH (j:Condition {id: 'C0016169'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-8'}); 
MERGE (node:Condition {id: 'C1550457'}) SET node.PREF='Normal' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-8'}) 
MATCH (j:Condition {id: 'C1550457'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-8'}); 
MERGE (node:Body {id: 'C0458827'}) SET node.PREF='Airway' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-8'}) 
MATCH (j:Body {id: 'C0458827'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-8'}); 
MERGE (node:Condition {id: 'C0020507'}) SET node.PREF='Hyperplasia' SET node.STY='Pathologic Function'; 
MATCH (i:Person {id: 'FAKE_ID-8'}) 
MATCH (j:Condition {id: 'C0020507'}) 
MERGE (i)-[r:IS_PATHOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-8'}); 
MERGE (node:Treatment {id: 'C0031809'}) SET node.PREF='Physical' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-8'}) 
MATCH (j:Treatment {id: 'C0031809'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-8'}); 
MERGE (node:Temporal {id: 'C0457385'}) SET node.PREF='Second' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-8'}) 
MATCH (j:Temporal {id: 'C0457385'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-8'}); 
MERGE (node:Body {id: 'C0728985'}) SET node.PREF='C Spine' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-8'}) 
MATCH (j:Body {id: 'C0728985'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-8'}); 
MERGE (node:Org {id: 'C0011344'}) SET node.PREF='Dental' SET node.STY='Health Care Related Organization'; 
MATCH (i:Person {id: 'FAKE_ID-8'}) 
MATCH (j:Org {id: 'C0011344'}) 
MERGE (i)-[r:AT_LOCATION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-8'}); 
MERGE (node:Condition {id: 'C0000768'}) SET node.PREF='Deformity' SET node.STY='Congenital Abnormality'; 
MATCH (i:Person {id: 'FAKE_ID-8'}) 
MATCH (j:Condition {id: 'C0000768'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-8'}); 
MERGE (node:Clinical {id: 'C1114365'}) SET node.PREF='Age' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-8'}) 
MATCH (j:Clinical {id: 'C1114365'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-8'}); 
MERGE (node:Clinical {id: 'C1114365'}) SET node.PREF='Age' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-8'}) 
MATCH (j:Clinical {id: 'C1114365'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Body {id: 'C1182883'}) SET node.PREF='Appendix Tip' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Body {id: 'C1182883'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Condition {id: 'C0021368'}) SET node.PREF='Inflammation' SET node.STY='Pathologic Function'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Condition {id: 'C0021368'}) 
MERGE (i)-[r:IS_PATHOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Temporal {id: 'C1279919'}) SET node.PREF='Earlier' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Temporal {id: 'C1279919'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Condition {id: 'C0003615'}) SET node.PREF='Appendicitis' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Condition {id: 'C0003615'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Condition {id: 'C0549099'}) SET node.PREF='Perforated' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Condition {id: 'C0549099'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Treatment {id: 'C0041618'}) SET node.PREF='Sonogram' SET node.STY='Diagnostic Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Treatment {id: 'C0041618'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Condition {id: 'C0021368'}) SET node.PREF='Inflammation' SET node.STY='Pathologic Function'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Condition {id: 'C0021368'}) 
MERGE (i)-[r:IS_PATHOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Body {id: 'C1548802'}) SET node.PREF='Lower' SET node.STY='Body Location or Region'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Body {id: 'C1548802'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Temporal {id: 'C0347985'}) SET node.PREF='Peri' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Temporal {id: 'C0347985'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Drug {id: 'C0015677'}) SET node.PREF='Fat' SET node.STY='Pharmacologic Substance'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Drug {id: 'C0015677'}) 
MERGE (i)-[r:HAS_PHARMACOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Condition {id: 'C0262926'}) SET node.PREF='History' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Condition {id: 'C0262926'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Condition {id: 'C0694551'}) SET node.PREF='pain rlq' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Condition {id: 'C0694551'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Body {id: 'C0005767'}) SET node.PREF='Sanguis' SET node.STY='Tissue'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Body {id: 'C0005767'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Treatment {id: 'C0554756'}) SET node.PREF='Doppler' SET node.STY='Diagnostic Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Treatment {id: 'C0554756'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Treatment {id: 'C0011923'}) SET node.PREF='Imaging' SET node.STY='Diagnostic Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Treatment {id: 'C0011923'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Condition {id: 'C0037088'}) SET node.PREF='Finding' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Condition {id: 'C0037088'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Body {id: 'C0023884'}) SET node.PREF='Livers' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Body {id: 'C0023884'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Body {id: 'C0037993'}) SET node.PREF='Spleen' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Body {id: 'C0037993'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Body {id: 'C0022646'}) SET node.PREF='Kidney' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Body {id: 'C0022646'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Condition {id: 'C0003615'}) SET node.PREF='Appendicitis' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Condition {id: 'C0003615'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Body {id: 'C0016976'}) SET node.PREF='Gallbladder' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Body {id: 'C0016976'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Condition {id: 'C0037088'}) SET node.PREF='Finding' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Condition {id: 'C0037088'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Body {id: 'C0030274'}) SET node.PREF='Pancreas' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Body {id: 'C0030274'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Body {id: 'C0227344'}) SET node.PREF='Retrocecal appendix' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Body {id: 'C0227344'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Treatment {id: 'C1293134'}) SET node.PREF='Enlarged' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Treatment {id: 'C1293134'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Condition {id: 'C1550457'}) SET node.PREF='Normal' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Condition {id: 'C1550457'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Condition {id: 'C3844009'}) SET node.PREF='4.5' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Condition {id: 'C3844009'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Condition {id: 'C3840882'}) SET node.PREF='5 mm' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Condition {id: 'C3840882'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Condition {id: 'C0037088'}) SET node.PREF='Finding' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Condition {id: 'C0037088'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Condition {id: 'C0205400'}) SET node.PREF='Thickened' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Condition {id: 'C0205400'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Body {id: 'C0003617'}) SET node.PREF='Appendix' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Body {id: 'C0003617'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Condition {id: 'C0475806'}) SET node.PREF='Near' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Condition {id: 'C0475806'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-9'}); 
MERGE (node:Body {id: 'C0003617'}) SET node.PREF='Appendix' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-9'}) 
MATCH (j:Body {id: 'C0003617'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Treatment {id: 'C0184661'}) SET node.PREF='Procedure' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Treatment {id: 'C0184661'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Condition {id: 'C1299585'}) SET node.PREF='Does not' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Condition {id: 'C1299585'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Body {id: 'C0935598'}) SET node.PREF='Sagittal' SET node.STY='Body Location or Region'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Body {id: 'C0935598'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Condition {id: 'C0043246'}) SET node.PREF='Lacerated' SET node.STY='Injury or Poisoning'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Condition {id: 'C0043246'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Body {id: 'C1179687'}) SET node.PREF='T1 innervation' SET node.STY='Body Location or Region'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Body {id: 'C1179687'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Body {id: 'C1305312'}) SET node.PREF='Lateral meniscus' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Body {id: 'C1305312'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Body {id: 'C1179688'}) SET node.PREF='T2 innervation' SET node.STY='Body Location or Region'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Body {id: 'C1179688'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Condition {id: 'C1550457'}) SET node.PREF='Normal' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Condition {id: 'C1550457'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Condition {id: 'C0751437'}) SET node.PREF='Anterior' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Condition {id: 'C0751437'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Body {id: 'C0080039'}) SET node.PREF='Posterior Cruciate Ligament' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Body {id: 'C0080039'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Condition {id: 'C1550457'}) SET node.PREF='Normal' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Condition {id: 'C1550457'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Body {id: 'C0022417'}) SET node.PREF='Joints' SET node.STY='Body Space or Junction'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Body {id: 'C0022417'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Body {id: 'C0022417'}) SET node.PREF='Joints' SET node.STY='Body Space or Junction'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Body {id: 'C0022417'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Condition {id: 'C1550043'}) SET node.PREF='Identified' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Condition {id: 'C1550043'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Body {id: 'C0376152'}) SET node.PREF='Marrow' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Body {id: 'C0376152'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Condition {id: 'C0013604'}) SET node.PREF='Dropsy' SET node.STY='Pathologic Function'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Condition {id: 'C0013604'}) 
MERGE (i)-[r:IS_PATHOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Body {id: 'C0206365'}) SET node.PREF='Collateral Ligament' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Body {id: 'C0206365'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Treatment {id: 'C1305866'}) SET node.PREF='Weighing' SET node.STY='Diagnostic Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Treatment {id: 'C1305866'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Condition {id: 'C0015663'}) SET node.PREF='Fasting' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Condition {id: 'C0015663'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Condition {id: 'C1550457'}) SET node.PREF='Normal' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Condition {id: 'C1550457'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Body {id: 'C1179688'}) SET node.PREF='T2 innervation' SET node.STY='Body Location or Region'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Body {id: 'C1179688'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Condition {id: 'C0871010'}) SET node.PREF='opinion' SET node.STY='Mental Process'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Condition {id: 'C0871010'}) 
MERGE (i)-[r:IS_MENTALPROCESS]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Treatment {id: 'C1305866'}) SET node.PREF='Weighing' SET node.STY='Diagnostic Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Treatment {id: 'C1305866'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Temporal {id: 'C0439661'}) SET node.PREF='Acquired' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Temporal {id: 'C0439661'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Body {id: 'C0022417'}) SET node.PREF='Joints' SET node.STY='Body Space or Junction'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Body {id: 'C0022417'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Condition {id: 'C0037088'}) SET node.PREF='Finding' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Condition {id: 'C0037088'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Body {id: 'C0022417'}) SET node.PREF='Joints' SET node.STY='Body Space or Junction'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Body {id: 'C0022417'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Condition {id: 'C0751438'}) SET node.PREF='Posterior' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Condition {id: 'C0751438'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Body {id: 'C0447843'}) SET node.PREF='Posterior horn of medial meniscus' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Body {id: 'C0447843'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Body {id: 'C0019939'}) SET node.PREF='Horn, NOS' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Body {id: 'C0019939'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Condition {id: 'C0011164'}) SET node.PREF='Degeneration' SET node.STY='Pathologic Function'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Condition {id: 'C0011164'}) 
MERGE (i)-[r:IS_PATHOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Body {id: 'C1305316'}) SET node.PREF='Medial meniscus' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Body {id: 'C1305316'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Condition {id: 'C0238218'}) SET node.PREF='Torn meniscus' SET node.STY='Injury or Poisoning'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Condition {id: 'C0238218'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Condition {id: 'C1299585'}) SET node.PREF='Does not' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Condition {id: 'C1299585'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-10'}); 
MERGE (node:Body {id: 'C0022417'}) SET node.PREF='Joints' SET node.STY='Body Space or Junction'; 
MATCH (i:Person {id: 'FAKE_ID-10'}) 
MATCH (j:Body {id: 'C0022417'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Condition {id: 'C0027651'}) SET node.PREF='Tumors' SET node.STY='Neoplastic Process'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Condition {id: 'C0027651'}) 
MERGE (i)-[r:IS_NEOPLASTIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Condition {id: 'C1299585'}) SET node.PREF='Does not' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Condition {id: 'C1299585'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Body {id: 'C0042232'}) SET node.PREF='Vagina' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Body {id: 'C0042232'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Body {id: 'C0729890'}) SET node.PREF='Iliac vessel' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Body {id: 'C0729890'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Condition {id: 'C3844012'}) SET node.PREF='1.5' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Condition {id: 'C3844012'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Treatment {id: 'C0031809'}) SET node.PREF='Physical' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Treatment {id: 'C0031809'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Body {id: 'C0227874'}) SET node.PREF='Left Ovary' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Body {id: 'C0227874'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Condition {id: 'C0032987'}) SET node.PREF='Ectopic Pregnancy' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Condition {id: 'C0032987'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Body {id: 'C0227759'}) SET node.PREF='Labium' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Body {id: 'C0227759'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Condition {id: 'C0497156'}) SET node.PREF='Adenopathy' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Condition {id: 'C0497156'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Condition {id: 'C0029927'}) SET node.PREF='Ovarian Cyst' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Condition {id: 'C0029927'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Condition {id: 'C0153581'}) SET node.PREF='Parametrium' SET node.STY='Neoplastic Process'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Condition {id: 'C0153581'}) 
MERGE (i)-[r:IS_NEOPLASTIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Condition {id: 'C0302592'}) SET node.PREF='Ca cervix' SET node.STY='Neoplastic Process'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Condition {id: 'C0302592'}) 
MERGE (i)-[r:IS_NEOPLASTIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Treatment {id: 'C0024485'}) SET node.PREF='Imaging, NMR' SET node.STY='Diagnostic Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Treatment {id: 'C0024485'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Condition {id: 'C0751437'}) SET node.PREF='Anterior' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Condition {id: 'C0751437'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Condition {id: 'C0751438'}) SET node.PREF='Posterior' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Condition {id: 'C0751438'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Body {id: 'C0030797'}) SET node.PREF='Pelvic' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Body {id: 'C0030797'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Condition {id: 'C0037088'}) SET node.PREF='Finding' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Condition {id: 'C0037088'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Condition {id: 'C0175631'}) SET node.PREF='Imagery' SET node.STY='Mental Process'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Condition {id: 'C0175631'}) 
MERGE (i)-[r:IS_MENTALPROCESS]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Condition {id: 'C0302592'}) SET node.PREF='Ca cervix' SET node.STY='Neoplastic Process'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Condition {id: 'C0302592'}) 
MERGE (i)-[r:IS_NEOPLASTIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Condition {id: 'C0751437'}) SET node.PREF='Anterior' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Condition {id: 'C0751437'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Condition {id: 'C0751438'}) SET node.PREF='Posterior' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Condition {id: 'C0751438'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Body {id: 'C0227759'}) SET node.PREF='Labium' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Body {id: 'C0227759'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Condition {id: 'C0153581'}) SET node.PREF='Parametrium' SET node.STY='Neoplastic Process'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Condition {id: 'C0153581'}) 
MERGE (i)-[r:IS_NEOPLASTIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Body {id: 'C0005682'}) SET node.PREF='Bladder' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Body {id: 'C0005682'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-11'}); 
MERGE (node:Body {id: 'C0230284'}) SET node.PREF='Pelvic wall' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-11'}) 
MATCH (j:Body {id: 'C0230284'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-12'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-12'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-12'}); 
MERGE (node:Condition {id: 'C0221198'}) SET node.PREF='Lesion' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-12'}) 
MATCH (j:Condition {id: 'C0221198'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-12'}); 
MERGE (node:Body {id: 'C0229316'}) SET node.PREF='Concha' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-12'}) 
MATCH (j:Body {id: 'C0229316'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-12'}); 
MERGE (node:Body {id: 'C0229302'}) SET node.PREF='Left external ear' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-12'}) 
MATCH (j:Body {id: 'C0229302'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-12'}); 
MERGE (node:Temporal {id: 'C0332185'}) SET node.PREF='Recent' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-12'}) 
MATCH (j:Temporal {id: 'C0332185'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-12'}); 
MERGE (node:Treatment {id: 'C0005558'}) SET node.PREF='Biopsy' SET node.STY='Diagnostic Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-12'}) 
MATCH (j:Treatment {id: 'C0005558'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-12'}); 
MERGE (node:Condition {id: 'C0007137'}) SET node.PREF='Squamous Carcinoma' SET node.STY='Neoplastic Process'; 
MATCH (i:Person {id: 'FAKE_ID-12'}) 
MATCH (j:Condition {id: 'C0007137'}) 
MERGE (i)-[r:IS_NEOPLASTIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-12'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-12'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-12'}); 
MERGE (node:Condition {id: 'C0007114'}) SET node.PREF='Skin Cancer' SET node.STY='Neoplastic Process'; 
MATCH (i:Person {id: 'FAKE_ID-12'}) 
MATCH (j:Condition {id: 'C0007114'}) 
MERGE (i)-[r:IS_NEOPLASTIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-12'}); 
MERGE (node:Temporal {id: 'C1444637'}) SET node.PREF='In the past' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-12'}) 
MATCH (j:Temporal {id: 'C1444637'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-12'}); 
MERGE (node:Condition {id: 'C0262926'}) SET node.PREF='History' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-12'}) 
MATCH (j:Condition {id: 'C0262926'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-12'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-12'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-12'}); 
MERGE (node:Condition {id: 'C0023418'}) SET node.PREF='Leukemia' SET node.STY='Neoplastic Process'; 
MATCH (i:Person {id: 'FAKE_ID-12'}) 
MATCH (j:Condition {id: 'C0023418'}) 
MERGE (i)-[r:IS_NEOPLASTIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-12'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-12'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-12'}); 
MERGE (node:Org {id: 'C0002424'}) SET node.PREF='Clinic' SET node.STY='Health Care Related Organization'; 
MATCH (i:Person {id: 'FAKE_ID-12'}) 
MATCH (j:Org {id: 'C0002424'}) 
MERGE (i)-[r:AT_LOCATION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-12'}); 
MERGE (node:Condition {id: 'C3715209'}) SET node.PREF='Protocol' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-12'}) 
MATCH (j:Condition {id: 'C3715209'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-12'}); 
MERGE (node:Condition {id: 'C0237886'}) SET node.PREF='Sorting' SET node.STY='Mental Process'; 
MATCH (i:Person {id: 'FAKE_ID-12'}) 
MATCH (j:Condition {id: 'C0237886'}) 
MERGE (i)-[r:IS_MENTALPROCESS]->(j); 
MERGE (node:Person {id: 'FAKE_ID-12'}); 
MERGE (node:Treatment {id: 'C0013855'}) SET node.PREF='Electrophoreses' SET node.STY='Laboratory Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-12'}) 
MATCH (j:Treatment {id: 'C0013855'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-12'}); 
MERGE (node:Condition {id: 'C0544452'}) SET node.PREF='Remission' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-12'}) 
MATCH (j:Condition {id: 'C0544452'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-12'}); 
MERGE (node:Temporal {id: 'C0521116'}) SET node.PREF='Current' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-12'}) 
MATCH (j:Temporal {id: 'C0521116'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-12'}); 
MERGE (node:Body {id: 'C0229302'}) SET node.PREF='Left external ear' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-12'}) 
MATCH (j:Body {id: 'C0229302'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-12'}); 
MERGE (node:Body {id: 'C0024204'}) SET node.PREF='Lymph Node' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-12'}) 
MATCH (j:Body {id: 'C0024204'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-12'}); 
MERGE (node:Drug {id: 'C0013227'}) SET node.PREF='Medicine' SET node.STY='Pharmacologic Substance'; 
MATCH (i:Person {id: 'FAKE_ID-12'}) 
MATCH (j:Drug {id: 'C0013227'}) 
MERGE (i)-[r:HAS_PHARMACOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-12'}); 
MERGE (node:Treatment {id: 'C0199168'}) SET node.PREF='Medical' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-12'}) 
MATCH (j:Treatment {id: 'C0199168'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-12'}); 
MERGE (node:Body {id: 'C0027530'}) SET node.PREF='Collum' SET node.STY='Body Location or Region'; 
MATCH (i:Person {id: 'FAKE_ID-12'}) 
MATCH (j:Body {id: 'C0027530'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-12'}); 
MERGE (node:Treatment {id: 'C0376636'}) SET node.PREF='management' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-12'}) 
MATCH (j:Treatment {id: 'C0376636'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-12'}); 
MERGE (node:Condition {id: 'C0445223'}) SET node.PREF='Related' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-12'}) 
MATCH (j:Condition {id: 'C0445223'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-12'}); 
MERGE (node:Treatment {id: 'C0031809'}) SET node.PREF='Physical' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-12'}) 
MATCH (j:Treatment {id: 'C0031809'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-12'}); 
MERGE (node:Condition {id: 'C0023418'}) SET node.PREF='Leukemia' SET node.STY='Neoplastic Process'; 
MATCH (i:Person {id: 'FAKE_ID-12'}) 
MATCH (j:Condition {id: 'C0023418'}) 
MERGE (i)-[r:IS_NEOPLASTIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-12'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-12'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-12'}); 
MERGE (node:Condition {id: 'C0011900'}) SET node.PREF='Diagnosed' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-12'}) 
MATCH (j:Condition {id: 'C0011900'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-12'}); 
MERGE (node:Condition {id: 'C0007137'}) SET node.PREF='Squamous Carcinoma' SET node.STY='Neoplastic Process'; 
MATCH (i:Person {id: 'FAKE_ID-12'}) 
MATCH (j:Condition {id: 'C0007137'}) 
MERGE (i)-[r:IS_NEOPLASTIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-12'}); 
MERGE (node:Clinical {id: 'C1148118'}) SET node.PREF='General appearance' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-12'}) 
MATCH (j:Clinical {id: 'C1148118'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-12'}); 
MERGE (node:Condition {id: 'C3844012'}) SET node.PREF='1.5' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-12'}) 
MATCH (j:Condition {id: 'C3844012'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-12'}); 
MERGE (node:Condition {id: 'C0221198'}) SET node.PREF='Lesion' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-12'}) 
MATCH (j:Condition {id: 'C0221198'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-12'}); 
MERGE (node:Body {id: 'C1123023'}) SET node.PREF='Skin NOS' SET node.STY='Body System'; 
MATCH (i:Person {id: 'FAKE_ID-12'}) 
MATCH (j:Body {id: 'C1123023'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-12'}); 
MERGE (node:Body {id: 'C0229316'}) SET node.PREF='Concha' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-12'}) 
MATCH (j:Body {id: 'C0229316'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-12'}); 
MERGE (node:Body {id: 'C0229302'}) SET node.PREF='Left external ear' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-12'}) 
MATCH (j:Body {id: 'C0229302'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-12'}); 
MERGE (node:Body {id: 'C0013443'}) SET node.PREF='Ear' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-12'}) 
MATCH (j:Body {id: 'C0013443'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-12'}); 
MERGE (node:Body {id: 'C0229302'}) SET node.PREF='Left external ear' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-12'}) 
MATCH (j:Body {id: 'C0229302'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-12'}); 
MERGE (node:Treatment {id: 'C0087111'}) SET node.PREF='Therapy' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-12'}) 
MATCH (j:Treatment {id: 'C0087111'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-12'}); 
MERGE (node:Treatment {id: 'C0087111'}) SET node.PREF='Therapy' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-12'}) 
MATCH (j:Treatment {id: 'C0087111'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-12'}); 
MERGE (node:Temporal {id: 'C0332283'}) SET node.PREF='Followed by' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-12'}) 
MATCH (j:Temporal {id: 'C0332283'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-12'}); 
MERGE (node:Treatment {id: 'C0087111'}) SET node.PREF='Therapy' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-12'}) 
MATCH (j:Treatment {id: 'C0087111'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-12'}); 
MERGE (node:Treatment {id: 'C1522449'}) SET node.PREF='Irradiate' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-12'}) 
MATCH (j:Treatment {id: 'C1522449'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-12'}); 
MERGE (node:Condition {id: 'C1443309'}) SET node.PREF='Reason for Treatment' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-12'}) 
MATCH (j:Condition {id: 'C1443309'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-12'}); 
MERGE (node:Temporal {id: 'C0205178'}) SET node.PREF='Acuteness' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-12'}) 
MATCH (j:Temporal {id: 'C0205178'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-12'}); 
MERGE (node:Condition {id: 'C0009566'}) SET node.PREF='Complication' SET node.STY='Pathologic Function'; 
MATCH (i:Person {id: 'FAKE_ID-12'}) 
MATCH (j:Condition {id: 'C0009566'}) 
MERGE (i)-[r:IS_PATHOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-12'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-12'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-12'}); 
MERGE (node:Treatment {id: 'C0087111'}) SET node.PREF='Therapy' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-12'}) 
MATCH (j:Treatment {id: 'C0087111'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-12'}); 
MERGE (node:Temporal {id: 'C0439234'}) SET node.PREF='Year' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-12'}) 
MATCH (j:Temporal {id: 'C0439234'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-12'}); 
MERGE (node:Temporal {id: 'C0580836'}) SET node.PREF='Old' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-12'}) 
MATCH (j:Temporal {id: 'C0580836'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-12'}); 
MERGE (node:Org {id: 'C0331857'}) SET node.PREF='masons' SET node.STY='Health Care Related Organization'; 
MATCH (i:Person {id: 'FAKE_ID-12'}) 
MATCH (j:Org {id: 'C0331857'}) 
MERGE (i)-[r:AT_LOCATION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-12'}); 
MERGE (node:Org {id: 'C0002424'}) SET node.PREF='Clinic' SET node.STY='Health Care Related Organization'; 
MATCH (i:Person {id: 'FAKE_ID-12'}) 
MATCH (j:Org {id: 'C0002424'}) 
MERGE (i)-[r:AT_LOCATION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-12'}); 
MERGE (node:Temporal {id: 'C1444637'}) SET node.PREF='In the past' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-12'}) 
MATCH (j:Temporal {id: 'C1444637'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-13'}); 
MERGE (node:Condition {id: 'C0262926'}) SET node.PREF='History' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-13'}) 
MATCH (j:Condition {id: 'C0262926'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-13'}); 
MERGE (node:Condition {id: 'C0037088'}) SET node.PREF='Finding' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-13'}) 
MATCH (j:Condition {id: 'C0037088'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-13'}); 
MERGE (node:Temporal {id: 'C0439234'}) SET node.PREF='Year' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-13'}) 
MATCH (j:Temporal {id: 'C0439234'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-13'}); 
MERGE (node:Temporal {id: 'C0580836'}) SET node.PREF='Old' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-13'}) 
MATCH (j:Temporal {id: 'C0580836'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-13'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-13'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-13'}); 
MERGE (node:Temporal {id: 'C0332177'}) SET node.PREF='/month' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-13'}) 
MATCH (j:Temporal {id: 'C0332177'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-13'}); 
MERGE (node:Condition {id: 'C0022346'}) SET node.PREF='Icteric' SET node.STY='Pathologic Function'; 
MATCH (i:Person {id: 'FAKE_ID-13'}) 
MATCH (j:Condition {id: 'C0022346'}) 
MERGE (i)-[r:IS_PATHOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-13'}); 
MERGE (node:Condition {id: 'C0221198'}) SET node.PREF='Lesion' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-13'}) 
MATCH (j:Condition {id: 'C0221198'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-13'}); 
MERGE (node:Body {id: 'C0005400'}) SET node.PREF='Bile Duct' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-13'}) 
MATCH (j:Body {id: 'C0005400'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-13'}); 
MERGE (node:Condition {id: 'C0037088'}) SET node.PREF='Finding' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-13'}) 
MATCH (j:Condition {id: 'C0037088'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-13'}); 
MERGE (node:Body {id: 'C1267211'}) SET node.PREF='Duct, NOS' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-13'}) 
MATCH (j:Body {id: 'C1267211'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-13'}); 
MERGE (node:Treatment {id: 'C0449900'}) SET node.PREF='contrasted' SET node.STY='Diagnostic Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-13'}) 
MATCH (j:Treatment {id: 'C0449900'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-13'}); 
MERGE (node:Body {id: 'C0030288'}) SET node.PREF='Duct of Wirsung' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-13'}) 
MATCH (j:Body {id: 'C0030288'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-13'}); 
MERGE (node:Temporal {id: 'C0205191'}) SET node.PREF='Chronic' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-13'}) 
MATCH (j:Temporal {id: 'C0205191'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-13'}); 
MERGE (node:Condition {id: 'C1271005'}) SET node.PREF='Normal appearance' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-13'}) 
MATCH (j:Condition {id: 'C1271005'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-13'}); 
MERGE (node:Body {id: 'C0162867'}) SET node.PREF='Tunica Media' SET node.STY='Tissue'; 
MATCH (i:Person {id: 'FAKE_ID-13'}) 
MATCH (j:Body {id: 'C0162867'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-13'}); 
MERGE (node:Body {id: 'C0005400'}) SET node.PREF='Bile Duct' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-13'}) 
MATCH (j:Body {id: 'C0005400'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-13'}); 
MERGE (node:Condition {id: 'C0010709'}) SET node.PREF='Cyst, NOS' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-13'}) 
MATCH (j:Condition {id: 'C0010709'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-13'}); 
MERGE (node:Body {id: 'C0010672'}) SET node.PREF='Cystic Duct' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-13'}) 
MATCH (j:Body {id: 'C0010672'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-13'}); 
MERGE (node:Condition {id: 'C0333161'}) SET node.PREF='Pseudocyst' SET node.STY='Acquired Abnormality'; 
MATCH (i:Person {id: 'FAKE_ID-13'}) 
MATCH (j:Condition {id: 'C0333161'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-13'}); 
MERGE (node:Body {id: 'C0010672'}) SET node.PREF='Cystic Duct' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-13'}) 
MATCH (j:Body {id: 'C0010672'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-13'}); 
MERGE (node:Condition {id: 'C0037088'}) SET node.PREF='Finding' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-13'}) 
MATCH (j:Condition {id: 'C0037088'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-13'}); 
MERGE (node:Body {id: 'C0016976'}) SET node.PREF='Gallbladder' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-13'}) 
MATCH (j:Body {id: 'C0016976'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-13'}); 
MERGE (node:Treatment {id: 'C0449900'}) SET node.PREF='contrasted' SET node.STY='Diagnostic Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-13'}) 
MATCH (j:Treatment {id: 'C0449900'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-13'}); 
MERGE (node:Treatment {id: 'C0013103'}) SET node.PREF='Drainage' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-13'}) 
MATCH (j:Treatment {id: 'C0013103'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-13'}); 
MERGE (node:Body {id: 'C0005400'}) SET node.PREF='Bile Duct' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-13'}) 
MATCH (j:Body {id: 'C0005400'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-13'}); 
MERGE (node:Body {id: 'C0917710'}) SET node.PREF='Liver ducts' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-13'}) 
MATCH (j:Body {id: 'C0917710'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-13'}); 
MERGE (node:Body {id: 'C0013303'}) SET node.PREF='Duodenal' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-13'}) 
MATCH (j:Body {id: 'C0013303'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-13'}); 
MERGE (node:Condition {id: 'C1261287'}) SET node.PREF='Stenoses' SET node.STY='Pathologic Function'; 
MATCH (i:Person {id: 'FAKE_ID-13'}) 
MATCH (j:Condition {id: 'C1261287'}) 
MERGE (i)-[r:IS_PATHOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-13'}); 
MERGE (node:Treatment {id: 'C0014245'}) SET node.PREF='Endoscopy' SET node.STY='Diagnostic Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-13'}) 
MATCH (j:Treatment {id: 'C0014245'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-13'}); 
MERGE (node:Body {id: 'C0687028'}) SET node.PREF='Ducts set' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-13'}) 
MATCH (j:Body {id: 'C0687028'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-13'}); 
MERGE (node:Treatment {id: 'C0008310'}) SET node.PREF='ERCP, NOS' SET node.STY='Diagnostic Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-13'}) 
MATCH (j:Treatment {id: 'C0008310'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-13'}); 
MERGE (node:Temporal {id: 'C0205191'}) SET node.PREF='Chronic' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-13'}) 
MATCH (j:Temporal {id: 'C0205191'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-14'}); 
MERGE (node:Condition {id: 'C1550457'}) SET node.PREF='Normal' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-14'}) 
MATCH (j:Condition {id: 'C1550457'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-14'}); 
MERGE (node:Body {id: 'C0447303'}) SET node.PREF='Occlusal' SET node.STY='Body Location or Region'; 
MATCH (i:Person {id: 'FAKE_ID-14'}) 
MATCH (j:Body {id: 'C0447303'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-14'}); 
MERGE (node:Body {id: 'C0225317'}) SET node.PREF='Soft Tissue' SET node.STY='Tissue'; 
MATCH (i:Person {id: 'FAKE_ID-14'}) 
MATCH (j:Body {id: 'C0225317'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-14'}); 
MERGE (node:Condition {id: 'C1550457'}) SET node.PREF='Normal' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-14'}) 
MATCH (j:Condition {id: 'C1550457'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-14'}); 
MERGE (node:Body {id: 'C0262950'}) SET node.PREF='Osseous' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-14'}) 
MATCH (j:Body {id: 'C0262950'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-14'}); 
MERGE (node:Condition {id: 'C0080233'}) SET node.PREF='Tooth Loss' SET node.STY='Acquired Abnormality'; 
MATCH (i:Person {id: 'FAKE_ID-14'}) 
MATCH (j:Condition {id: 'C0080233'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-14'}); 
MERGE (node:Body {id: 'C0030471'}) SET node.PREF='Sinuses' SET node.STY='Body Space or Junction'; 
MATCH (i:Person {id: 'FAKE_ID-14'}) 
MATCH (j:Body {id: 'C0030471'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-14'}); 
MERGE (node:Body {id: 'C0022359'}) SET node.PREF='Jaw Bone' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-14'}) 
MATCH (j:Body {id: 'C0022359'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-14'}); 
MERGE (node:Condition {id: 'C1554187'}) SET node.PREF='Intact' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-14'}) 
MATCH (j:Condition {id: 'C1554187'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-14'}); 
MERGE (node:Condition {id: 'C0700329'}) SET node.PREF='morphology' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-14'}) 
MATCH (j:Condition {id: 'C0700329'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-14'}); 
MERGE (node:Condition {id: 'C0016169'}) SET node.PREF='Fistula' SET node.STY='Anatomical Abnormality'; 
MATCH (i:Person {id: 'FAKE_ID-14'}) 
MATCH (j:Condition {id: 'C0016169'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-14'}); 
MERGE (node:Condition {id: 'C1550457'}) SET node.PREF='Normal' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-14'}) 
MATCH (j:Condition {id: 'C1550457'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-14'}); 
MERGE (node:Body {id: 'C0458827'}) SET node.PREF='Airway' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-14'}) 
MATCH (j:Body {id: 'C0458827'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-14'}); 
MERGE (node:Condition {id: 'C0020507'}) SET node.PREF='Hyperplasia' SET node.STY='Pathologic Function'; 
MATCH (i:Person {id: 'FAKE_ID-14'}) 
MATCH (j:Condition {id: 'C0020507'}) 
MERGE (i)-[r:IS_PATHOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-14'}); 
MERGE (node:Treatment {id: 'C0031809'}) SET node.PREF='Physical' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-14'}) 
MATCH (j:Treatment {id: 'C0031809'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-14'}); 
MERGE (node:Temporal {id: 'C0457385'}) SET node.PREF='Second' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-14'}) 
MATCH (j:Temporal {id: 'C0457385'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-14'}); 
MERGE (node:Body {id: 'C0728985'}) SET node.PREF='C Spine' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-14'}) 
MATCH (j:Body {id: 'C0728985'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-14'}); 
MERGE (node:Org {id: 'C0011344'}) SET node.PREF='Dental' SET node.STY='Health Care Related Organization'; 
MATCH (i:Person {id: 'FAKE_ID-14'}) 
MATCH (j:Org {id: 'C0011344'}) 
MERGE (i)-[r:AT_LOCATION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-14'}); 
MERGE (node:Condition {id: 'C0000768'}) SET node.PREF='Deformity' SET node.STY='Congenital Abnormality'; 
MATCH (i:Person {id: 'FAKE_ID-14'}) 
MATCH (j:Condition {id: 'C0000768'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-14'}); 
MERGE (node:Clinical {id: 'C1114365'}) SET node.PREF='Age' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-14'}) 
MATCH (j:Clinical {id: 'C1114365'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-14'}); 
MERGE (node:Clinical {id: 'C1114365'}) SET node.PREF='Age' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-14'}) 
MATCH (j:Clinical {id: 'C1114365'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-15'}); 
MERGE (node:Condition {id: 'C1550457'}) SET node.PREF='Normal' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-15'}) 
MATCH (j:Condition {id: 'C1550457'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-15'}); 
MERGE (node:Body {id: 'C0447303'}) SET node.PREF='Occlusal' SET node.STY='Body Location or Region'; 
MATCH (i:Person {id: 'FAKE_ID-15'}) 
MATCH (j:Body {id: 'C0447303'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-15'}); 
MERGE (node:Body {id: 'C0225317'}) SET node.PREF='Soft Tissue' SET node.STY='Tissue'; 
MATCH (i:Person {id: 'FAKE_ID-15'}) 
MATCH (j:Body {id: 'C0225317'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-15'}); 
MERGE (node:Condition {id: 'C1550457'}) SET node.PREF='Normal' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-15'}) 
MATCH (j:Condition {id: 'C1550457'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-15'}); 
MERGE (node:Body {id: 'C0262950'}) SET node.PREF='Osseous' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-15'}) 
MATCH (j:Body {id: 'C0262950'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-15'}); 
MERGE (node:Condition {id: 'C0080233'}) SET node.PREF='Tooth Loss' SET node.STY='Acquired Abnormality'; 
MATCH (i:Person {id: 'FAKE_ID-15'}) 
MATCH (j:Condition {id: 'C0080233'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-15'}); 
MERGE (node:Body {id: 'C0030471'}) SET node.PREF='Sinuses' SET node.STY='Body Space or Junction'; 
MATCH (i:Person {id: 'FAKE_ID-15'}) 
MATCH (j:Body {id: 'C0030471'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-15'}); 
MERGE (node:Body {id: 'C0022359'}) SET node.PREF='Jaw Bone' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-15'}) 
MATCH (j:Body {id: 'C0022359'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-15'}); 
MERGE (node:Condition {id: 'C1554187'}) SET node.PREF='Intact' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-15'}) 
MATCH (j:Condition {id: 'C1554187'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-15'}); 
MERGE (node:Condition {id: 'C0700329'}) SET node.PREF='morphology' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-15'}) 
MATCH (j:Condition {id: 'C0700329'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-15'}); 
MERGE (node:Condition {id: 'C0016169'}) SET node.PREF='Fistula' SET node.STY='Anatomical Abnormality'; 
MATCH (i:Person {id: 'FAKE_ID-15'}) 
MATCH (j:Condition {id: 'C0016169'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-15'}); 
MERGE (node:Condition {id: 'C1550457'}) SET node.PREF='Normal' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-15'}) 
MATCH (j:Condition {id: 'C1550457'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-15'}); 
MERGE (node:Body {id: 'C0458827'}) SET node.PREF='Airway' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-15'}) 
MATCH (j:Body {id: 'C0458827'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-15'}); 
MERGE (node:Condition {id: 'C0020507'}) SET node.PREF='Hyperplasia' SET node.STY='Pathologic Function'; 
MATCH (i:Person {id: 'FAKE_ID-15'}) 
MATCH (j:Condition {id: 'C0020507'}) 
MERGE (i)-[r:IS_PATHOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-15'}); 
MERGE (node:Treatment {id: 'C0031809'}) SET node.PREF='Physical' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-15'}) 
MATCH (j:Treatment {id: 'C0031809'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-15'}); 
MERGE (node:Temporal {id: 'C0457385'}) SET node.PREF='Second' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-15'}) 
MATCH (j:Temporal {id: 'C0457385'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-15'}); 
MERGE (node:Body {id: 'C0728985'}) SET node.PREF='C Spine' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-15'}) 
MATCH (j:Body {id: 'C0728985'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-15'}); 
MERGE (node:Org {id: 'C0011344'}) SET node.PREF='Dental' SET node.STY='Health Care Related Organization'; 
MATCH (i:Person {id: 'FAKE_ID-15'}) 
MATCH (j:Org {id: 'C0011344'}) 
MERGE (i)-[r:AT_LOCATION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-15'}); 
MERGE (node:Condition {id: 'C0000768'}) SET node.PREF='Deformity' SET node.STY='Congenital Abnormality'; 
MATCH (i:Person {id: 'FAKE_ID-15'}) 
MATCH (j:Condition {id: 'C0000768'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-15'}); 
MERGE (node:Clinical {id: 'C1114365'}) SET node.PREF='Age' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-15'}) 
MATCH (j:Clinical {id: 'C1114365'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-15'}); 
MERGE (node:Clinical {id: 'C1114365'}) SET node.PREF='Age' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-15'}) 
MATCH (j:Clinical {id: 'C1114365'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-16'}); 
MERGE (node:Condition {id: 'C0009938'}) SET node.PREF='Bruise' SET node.STY='Injury or Poisoning'; 
MATCH (i:Person {id: 'FAKE_ID-16'}) 
MATCH (j:Condition {id: 'C0009938'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-16'}); 
MERGE (node:Body {id: 'C0582800'}) SET node.PREF='Femoral Condyle' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-16'}) 
MATCH (j:Body {id: 'C0582800'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-16'}); 
MERGE (node:Condition {id: 'C3263723'}) SET node.PREF='Injury' SET node.STY='Injury or Poisoning'; 
MATCH (i:Person {id: 'FAKE_ID-16'}) 
MATCH (j:Condition {id: 'C3263723'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-16'}); 
MERGE (node:Body {id: 'C0206365'}) SET node.PREF='Collateral Ligament' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-16'}) 
MATCH (j:Body {id: 'C0206365'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-16'}); 
MERGE (node:Body {id: 'C3658298'}) SET node.PREF='External Lateral Ligament' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-16'}) 
MATCH (j:Body {id: 'C3658298'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-16'}); 
MERGE (node:Condition {id: 'C1554187'}) SET node.PREF='Intact' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-16'}) 
MATCH (j:Condition {id: 'C1554187'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-16'}); 
MERGE (node:Body {id: 'C0078960'}) SET node.PREF='Cranial Cruciate Ligament' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-16'}) 
MATCH (j:Body {id: 'C0078960'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-16'}); 
MERGE (node:Drug {id: 'C1762622'}) SET node.PREF='Lax' SET node.STY='Pharmacologic Substance'; 
MATCH (i:Person {id: 'FAKE_ID-16'}) 
MATCH (j:Drug {id: 'C1762622'}) 
MERGE (i)-[r:HAS_PHARMACOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-16'}); 
MERGE (node:Condition {id: 'C0443274'}) SET node.PREF='Partial tear' SET node.STY='Injury or Poisoning'; 
MATCH (i:Person {id: 'FAKE_ID-16'}) 
MATCH (j:Condition {id: 'C0443274'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-16'}); 
MERGE (node:Condition {id: 'C1299585'}) SET node.PREF='Does not' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-16'}) 
MATCH (j:Condition {id: 'C1299585'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-16'}); 
MERGE (node:Condition {id: 'C0043246'}) SET node.PREF='Lacerated' SET node.STY='Injury or Poisoning'; 
MATCH (i:Person {id: 'FAKE_ID-16'}) 
MATCH (j:Condition {id: 'C0043246'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-16'}); 
MERGE (node:Body {id: 'C0080039'}) SET node.PREF='Posterior Cruciate Ligament' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-16'}) 
MATCH (j:Body {id: 'C0080039'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-16'}); 
MERGE (node:Condition {id: 'C1554187'}) SET node.PREF='Intact' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-16'}) 
MATCH (j:Condition {id: 'C1554187'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-16'}); 
MERGE (node:Body {id: 'C0039508'}) SET node.PREF='Tendon' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-16'}) 
MATCH (j:Body {id: 'C0039508'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-16'}); 
MERGE (node:Condition {id: 'C1550457'}) SET node.PREF='Normal' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-16'}) 
MATCH (j:Condition {id: 'C1550457'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-16'}); 
MERGE (node:Condition {id: 'C0037088'}) SET node.PREF='Finding' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-16'}) 
MATCH (j:Condition {id: 'C0037088'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-16'}); 
MERGE (node:Condition {id: 'C0043246'}) SET node.PREF='Lacerated' SET node.STY='Injury or Poisoning'; 
MATCH (i:Person {id: 'FAKE_ID-16'}) 
MATCH (j:Condition {id: 'C0043246'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-16'}); 
MERGE (node:Condition {id: 'C0751438'}) SET node.PREF='Posterior' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-16'}) 
MATCH (j:Condition {id: 'C0751438'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-16'}); 
MERGE (node:Body {id: 'C0015385'}) SET node.PREF='Extremity' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-16'}) 
MATCH (j:Body {id: 'C0015385'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-16'}); 
MERGE (node:Body {id: 'C1305316'}) SET node.PREF='Medial meniscus' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-16'}) 
MATCH (j:Body {id: 'C1305316'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-16'}); 
MERGE (node:Condition {id: 'C0566001'}) SET node.PREF='Communicates' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-16'}) 
MATCH (j:Condition {id: 'C0566001'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-16'}); 
MERGE (node:Body {id: 'C0022417'}) SET node.PREF='Joints' SET node.STY='Body Space or Junction'; 
MATCH (i:Person {id: 'FAKE_ID-16'}) 
MATCH (j:Body {id: 'C0022417'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-16'}); 
MERGE (node:Body {id: 'C1305312'}) SET node.PREF='Lateral meniscus' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-16'}) 
MATCH (j:Body {id: 'C1305312'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-16'}); 
MERGE (node:Condition {id: 'C1554187'}) SET node.PREF='Intact' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-16'}) 
MATCH (j:Condition {id: 'C1554187'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-16'}); 
MERGE (node:Condition {id: 'C0032650'}) SET node.PREF='Baker Cyst' SET node.STY='Acquired Abnormality'; 
MATCH (i:Person {id: 'FAKE_ID-16'}) 
MATCH (j:Condition {id: 'C0032650'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-16'}); 
MERGE (node:Condition {id: 'C1253936'}) SET node.PREF='Hydrarthroses' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-16'}) 
MATCH (j:Condition {id: 'C1253936'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-16'}); 
MERGE (node:Condition {id: 'C0037088'}) SET node.PREF='Finding' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-16'}) 
MATCH (j:Condition {id: 'C0037088'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-16'}); 
MERGE (node:Body {id: 'C0230431'}) SET node.PREF='R knee' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-16'}) 
MATCH (j:Body {id: 'C0230431'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-16'}); 
MERGE (node:Condition {id: 'C3263723'}) SET node.PREF='Injury' SET node.STY='Injury or Poisoning'; 
MATCH (i:Person {id: 'FAKE_ID-16'}) 
MATCH (j:Condition {id: 'C3263723'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-16'}); 
MERGE (node:Condition {id: 'C0443274'}) SET node.PREF='Partial tear' SET node.STY='Injury or Poisoning'; 
MATCH (i:Person {id: 'FAKE_ID-16'}) 
MATCH (j:Condition {id: 'C0443274'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-16'}); 
MERGE (node:Condition {id: 'C0043246'}) SET node.PREF='Lacerated' SET node.STY='Injury or Poisoning'; 
MATCH (i:Person {id: 'FAKE_ID-16'}) 
MATCH (j:Condition {id: 'C0043246'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-16'}); 
MERGE (node:Condition {id: 'C0751438'}) SET node.PREF='Posterior' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-16'}) 
MATCH (j:Condition {id: 'C0751438'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-16'}); 
MERGE (node:Body {id: 'C0015385'}) SET node.PREF='Extremity' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-16'}) 
MATCH (j:Body {id: 'C0015385'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-16'}); 
MERGE (node:Condition {id: 'C3263723'}) SET node.PREF='Injury' SET node.STY='Injury or Poisoning'; 
MATCH (i:Person {id: 'FAKE_ID-16'}) 
MATCH (j:Condition {id: 'C3263723'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-16'}); 
MERGE (node:Body {id: 'C1305316'}) SET node.PREF='Medial meniscus' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-16'}) 
MATCH (j:Body {id: 'C1305316'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-16'}); 
MERGE (node:Condition {id: 'C0032650'}) SET node.PREF='Baker Cyst' SET node.STY='Acquired Abnormality'; 
MATCH (i:Person {id: 'FAKE_ID-16'}) 
MATCH (j:Condition {id: 'C0032650'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-16'}); 
MERGE (node:Body {id: 'C0206365'}) SET node.PREF='Collateral Ligament' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-16'}) 
MATCH (j:Body {id: 'C0206365'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-16'}); 
MERGE (node:Condition {id: 'C1253936'}) SET node.PREF='Hydrarthroses' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-16'}) 
MATCH (j:Condition {id: 'C1253936'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-16'}); 
MERGE (node:Treatment {id: 'C0024485'}) SET node.PREF='Imaging, NMR' SET node.STY='Diagnostic Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-16'}) 
MATCH (j:Treatment {id: 'C0024485'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-16'}); 
MERGE (node:Body {id: 'C0022742'}) SET node.PREF='Genu' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-16'}) 
MATCH (j:Body {id: 'C0022742'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-16'}); 
MERGE (node:Condition {id: 'C0262926'}) SET node.PREF='History' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-16'}) 
MATCH (j:Condition {id: 'C0262926'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-16'}); 
MERGE (node:Temporal {id: 'C0439234'}) SET node.PREF='Year' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-16'}) 
MATCH (j:Temporal {id: 'C0439234'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-16'}); 
MERGE (node:Temporal {id: 'C0580836'}) SET node.PREF='Old' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-16'}) 
MATCH (j:Temporal {id: 'C0580836'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-16'}); 
MERGE (node:Body {id: 'C0230431'}) SET node.PREF='R knee' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-16'}) 
MATCH (j:Body {id: 'C0230431'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-16'}); 
MERGE (node:Condition {id: 'C0231749'}) SET node.PREF='Gonalgia' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-16'}) 
MATCH (j:Condition {id: 'C0231749'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-16'}); 
MERGE (node:Condition {id: 'C0030193'}) SET node.PREF='Painful' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-16'}) 
MATCH (j:Condition {id: 'C0030193'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-16'}); 
MERGE (node:Condition {id: 'C3263723'}) SET node.PREF='Injury' SET node.STY='Injury or Poisoning'; 
MATCH (i:Person {id: 'FAKE_ID-16'}) 
MATCH (j:Condition {id: 'C3263723'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-16'}); 
MERGE (node:Condition {id: 'C0600138'}) SET node.PREF='Does play' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-16'}) 
MATCH (j:Condition {id: 'C0600138'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-16'}); 
MERGE (node:Condition {id: 'C0037088'}) SET node.PREF='Finding' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-16'}) 
MATCH (j:Condition {id: 'C0037088'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-16'}); 
MERGE (node:Condition {id: 'C1554187'}) SET node.PREF='Intact' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-16'}) 
MATCH (j:Condition {id: 'C1554187'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Treatment {id: 'C0039985'}) SET node.PREF='chest X ray' SET node.STY='Diagnostic Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Treatment {id: 'C0039985'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Condition {id: 'C1513916'}) SET node.PREF='Negative' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Condition {id: 'C1513916'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Temporal {id: 'C1292425'}) SET node.PREF='2 hour' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Temporal {id: 'C1292425'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Condition {id: 'C1513916'}) SET node.PREF='Negative' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Condition {id: 'C1513916'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Clinical {id: 'C0488549'}) SET node.PREF='Hospital course' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Clinical {id: 'C0488549'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Treatment {id: 'C0087111'}) SET node.PREF='Therapy' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Treatment {id: 'C0087111'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Temporal {id: 'C0205265'}) SET node.PREF='Initial' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Temporal {id: 'C0205265'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Drug {id: 'C0007735'}) SET node.PREF='Cefalotin' SET node.STY='Antibiotic'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Drug {id: 'C0007735'}) 
MERGE (i)-[r:IS_ADMINISTERED]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Treatment {id: 'C0021440'}) SET node.PREF='IV Infusion' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Treatment {id: 'C0021440'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Temporal {id: 'C0585325'}) SET node.PREF='Every Six Hours' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Temporal {id: 'C0585325'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Drug {id: 'C0022487'}) SET node.PREF='Kanamycin' SET node.STY='Antibiotic'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Drug {id: 'C0022487'}) 
MERGE (i)-[r:IS_ADMINISTERED]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Condition {id: 'C0231377'}) SET node.PREF='Im' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Condition {id: 'C0231377'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Condition {id: 'C0438108'}) SET node.PREF='Patient better' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Condition {id: 'C0438108'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Condition {id: 'C0030193'}) SET node.PREF='Painful' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Condition {id: 'C0030193'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Condition {id: 'C1550457'}) SET node.PREF='Normal' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Condition {id: 'C1550457'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Temporal {id: 'C0332170'}) SET node.PREF='Morning' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Temporal {id: 'C0332170'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Temporal {id: 'C0587117'}) SET node.PREF='Evening' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Temporal {id: 'C0587117'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Temporal {id: 'C1547730'}) SET node.PREF='Repeat' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Temporal {id: 'C1547730'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Drug {id: 'C0120777'}) SET node.PREF='HB 7' SET node.STY='Pharmacologic Substance'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Drug {id: 'C0120777'}) 
MERGE (i)-[r:HAS_PHARMACOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Treatment {id: 'C0018935'}) SET node.PREF='Hematocrit' SET node.STY='Laboratory Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Treatment {id: 'C0018935'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Treatment {id: 'C0032976'}) SET node.PREF='PREGN TEST' SET node.STY='Diagnostic Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Treatment {id: 'C0032976'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Condition {id: 'C1513916'}) SET node.PREF='Negative' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Condition {id: 'C1513916'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Temporal {id: 'C0457385'}) SET node.PREF='Second' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Temporal {id: 'C0457385'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Temporal {id: 'C0240526'}) SET node.PREF='At night' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Temporal {id: 'C0240526'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Temporal {id: 'C0231290'}) SET node.PREF='Following' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Temporal {id: 'C0231290'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Treatment {id: 'C0184666'}) SET node.PREF='Admission' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Treatment {id: 'C0184666'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Drug {id: 'C0003448'}) SET node.PREF='Antituberculars' SET node.STY='Pharmacologic Substance'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Drug {id: 'C0003448'}) 
MERGE (i)-[r:HAS_PHARMACOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Treatment {id: 'C0087111'}) SET node.PREF='Therapy' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Treatment {id: 'C0087111'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Drug {id: 'C0992473'}) SET node.PREF='isoniazid 300 MG' SET node.STY='Clinical Drug'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Drug {id: 'C0992473'}) 
MERGE (i)-[r:IS_ADMINISTERED]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Temporal {id: 'C0332173'}) SET node.PREF='Per Day' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Temporal {id: 'C0332173'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Drug {id: 'C0014964'}) SET node.PREF='Ethambutol' SET node.STY='Pharmacologic Substance'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Drug {id: 'C0014964'}) 
MERGE (i)-[r:HAS_PHARMACOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Drug {id: 'C1104996'}) SET node.PREF='Rifampin 600 MG' SET node.STY='Clinical Drug'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Drug {id: 'C1104996'}) 
MERGE (i)-[r:IS_ADMINISTERED]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Temporal {id: 'C0332173'}) SET node.PREF='Per Day' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Temporal {id: 'C0332173'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Condition {id: 'C0277797'}) SET node.PREF='Afebrile' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Condition {id: 'C0277797'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Temporal {id: 'C0032790'}) SET node.PREF='postop' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Temporal {id: 'C0032790'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Temporal {id: 'C0332173'}) SET node.PREF='Per Day' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Temporal {id: 'C0332173'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Treatment {id: 'C0030685'}) SET node.PREF='Release' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Treatment {id: 'C0030685'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Condition {id: 'C0012634'}) SET node.PREF='Disease' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Condition {id: 'C0012634'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Temporal {id: 'C0439230'}) SET node.PREF='Week' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Temporal {id: 'C0439230'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Treatment {id: 'C0543467'}) SET node.PREF='Surgery' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Treatment {id: 'C0543467'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Treatment {id: 'C0198612'}) SET node.PREF='Biopsy of omentum' SET node.STY='Diagnostic Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Treatment {id: 'C0198612'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Body {id: 'C0016741'}) SET node.PREF='Frozen Section' SET node.STY='Tissue'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Body {id: 'C0016741'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Treatment {id: 'C2242979'}) SET node.PREF='Culture' SET node.STY='Laboratory Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Treatment {id: 'C2242979'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Condition {id: 'C1555319'}) SET node.PREF='discharge diagnosis' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Condition {id: 'C1555319'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Condition {id: 'C0559523'}) SET node.PREF='Genital tuberculosis' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Condition {id: 'C0559523'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Treatment {id: 'C0023508'}) SET node.PREF='Leukocytes' SET node.STY='Laboratory Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Treatment {id: 'C0023508'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Condition {id: 'C0026847'}) SET node.PREF='Spinal Amyotrophy' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Condition {id: 'C0026847'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Treatment {id: 'C0009555'}) SET node.PREF='CBC, NOS' SET node.STY='Laboratory Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Treatment {id: 'C0009555'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Clinical {id: 'C0488508'}) SET node.PREF='History of present illness' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Clinical {id: 'C0488508'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Temporal {id: 'C0439234'}) SET node.PREF='Year' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Temporal {id: 'C0439234'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Temporal {id: 'C0580836'}) SET node.PREF='Old' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Temporal {id: 'C0580836'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Condition {id: 'C0232995'}) SET node.PREF='Nulligravida' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Condition {id: 'C0232995'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Treatment {id: 'C0184666'}) SET node.PREF='Admission' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Treatment {id: 'C0184666'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Org {id: 'C0019994'}) SET node.PREF='Hospital' SET node.STY='Health Care Related Organization'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Org {id: 'C0019994'}) 
MERGE (i)-[r:AT_LOCATION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Condition {id: 'C0015967'}) SET node.PREF='Fevers' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Condition {id: 'C0015967'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Condition {id: 'C0238551'}) SET node.PREF='llq pain' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Condition {id: 'C0238551'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Condition {id: 'C0227791'}) SET node.PREF='Vaginal Discharge' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Condition {id: 'C0227791'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Condition {id: 'C0009806'}) SET node.PREF='Constipated' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Condition {id: 'C0009806'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Condition {id: 'C0149614'}) SET node.PREF='Adnexal Mass' SET node.STY='Anatomical Abnormality'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Condition {id: 'C0149614'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Temporal {id: 'C1444637'}) SET node.PREF='In the past' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Temporal {id: 'C1444637'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Condition {id: 'C0262926'}) SET node.PREF='History' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Condition {id: 'C0262926'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
ERROR: Experiencer is not Patient: Other
MERGE (node:Condition {id: 'C0241889'}) SET node.PREF='FH: NOS' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Condition {id: 'C0241889'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Condition {id: 'C0030193'}) SET node.PREF='Painful' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Condition {id: 'C0030193'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Temporal {id: 'C1442462'}) SET node.PREF='3 weeks' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Temporal {id: 'C1442462'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Temporal {id: 'C0332152'}) SET node.PREF='Before' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Temporal {id: 'C0332152'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Temporal {id: 'C1442469'}) SET node.PREF='6 days' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Temporal {id: 'C1442469'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Drug {id: 'C0009871'}) SET node.PREF='Contraceptives' SET node.STY='Pharmacologic Substance'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Drug {id: 'C0009871'}) 
MERGE (i)-[r:HAS_PHARMACOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Temporal {id: 'C1444637'}) SET node.PREF='In the past' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Temporal {id: 'C1444637'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Condition {id: 'C0036899'}) SET node.PREF='Celibacy' SET node.STY='Individual Behavior'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Condition {id: 'C0036899'}) 
MERGE (i)-[r:IS_BEHAVIOUR]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Treatment {id: 'C0031809'}) SET node.PREF='Physical' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Treatment {id: 'C0031809'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Condition {id: 'C1513302'}) SET node.PREF='Mild' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Condition {id: 'C1513302'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Condition {id: 'C0231303'}) SET node.PREF='Distress' SET node.STY='Mental Process'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Condition {id: 'C0231303'}) 
MERGE (i)-[r:IS_MENTALPROCESS]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Condition {id: 'C1514241'}) SET node.PREF='Positive' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Condition {id: 'C1514241'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Condition {id: 'C0311392'}) SET node.PREF='Sign, NOS' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Condition {id: 'C0311392'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Body {id: 'C1508499'}) SET node.PREF='Abdomen+Pelvis' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Body {id: 'C1508499'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Body {id: 'C0000726'}) SET node.PREF='Abdomen' SET node.STY='Body Location or Region'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Body {id: 'C0000726'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Condition {id: 'C0700124'}) SET node.PREF='Dilate' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Condition {id: 'C0700124'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Body {id: 'C1548802'}) SET node.PREF='Lower' SET node.STY='Body Location or Region'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Body {id: 'C1548802'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Treatment {id: 'C0200045'}) SET node.PREF='Pelvic Exam' SET node.STY='Diagnostic Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Treatment {id: 'C0200045'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Body {id: 'C0007874'}) SET node.PREF='Cervix' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Body {id: 'C0007874'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Body {id: 'C0042149'}) SET node.PREF='Uterus' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Body {id: 'C0042149'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Condition {id: 'C1550457'}) SET node.PREF='Normal' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Condition {id: 'C1550457'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Condition {id: 'C0746405'}) SET node.PREF='cystic mass' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Condition {id: 'C0746405'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Body {id: 'C0001575'}) SET node.PREF='Adnexa' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Body {id: 'C0001575'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Treatment {id: 'C0199900'}) SET node.PREF='Rectal examination' SET node.STY='Diagnostic Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Treatment {id: 'C0199900'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Condition {id: 'C1513916'}) SET node.PREF='Negative' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Condition {id: 'C1513916'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Condition {id: 'C0332133'}) SET node.PREF='Admitting diagnosis' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Condition {id: 'C0332133'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Condition {id: 'C0242172'}) SET node.PREF='Pelvic Infection' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Condition {id: 'C0242172'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Condition {id: 'C0032987'}) SET node.PREF='Ectopic Pregnancy' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Condition {id: 'C0032987'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Treatment {id: 'C0022885'}) SET node.PREF='Lab Test' SET node.STY='Laboratory Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Treatment {id: 'C0022885'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Temporal {id: 'C0457453'}) SET node.PREF='On admission' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Temporal {id: 'C0457453'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Treatment {id: 'C0018935'}) SET node.PREF='Hematocrit' SET node.STY='Laboratory Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Treatment {id: 'C0018935'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Treatment {id: 'C1176468'}) SET node.PREF='Biernacki Reaction' SET node.STY='Laboratory Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Treatment {id: 'C1176468'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Temporal {id: 'C0439227'}) SET node.PREF='Hour' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Temporal {id: 'C0439227'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Condition {id: 'C0541749'}) SET node.PREF='Does turn' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Condition {id: 'C0541749'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Condition {id: 'C0749920'}) SET node.PREF='normal urinalysis' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Condition {id: 'C0749920'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Condition {id: 'C0438240'}) SET node.PREF='Electrolytes normal' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Condition {id: 'C0438240'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-17'}); 
MERGE (node:Condition {id: 'C1550457'}) SET node.PREF='Normal' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-17'}) 
MATCH (j:Condition {id: 'C1550457'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-18'}); 
MERGE (node:Treatment {id: 'C0005558'}) SET node.PREF='Biopsy' SET node.STY='Diagnostic Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-18'}) 
MATCH (j:Treatment {id: 'C0005558'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-18'}); 
MERGE (node:Condition {id: 'C0007137'}) SET node.PREF='Squamous Carcinoma' SET node.STY='Neoplastic Process'; 
MATCH (i:Person {id: 'FAKE_ID-18'}) 
MATCH (j:Condition {id: 'C0007137'}) 
MERGE (i)-[r:IS_NEOPLASTIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-18'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-18'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-18'}); 
MERGE (node:Condition {id: 'C0007114'}) SET node.PREF='Skin Cancer' SET node.STY='Neoplastic Process'; 
MATCH (i:Person {id: 'FAKE_ID-18'}) 
MATCH (j:Condition {id: 'C0007114'}) 
MERGE (i)-[r:IS_NEOPLASTIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-18'}); 
MERGE (node:Temporal {id: 'C1444637'}) SET node.PREF='In the past' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-18'}) 
MATCH (j:Temporal {id: 'C1444637'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-18'}); 
MERGE (node:Condition {id: 'C0262926'}) SET node.PREF='History' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-18'}) 
MATCH (j:Condition {id: 'C0262926'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-18'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-18'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-18'}); 
MERGE (node:Condition {id: 'C0023418'}) SET node.PREF='Leukemia' SET node.STY='Neoplastic Process'; 
MATCH (i:Person {id: 'FAKE_ID-18'}) 
MATCH (j:Condition {id: 'C0023418'}) 
MERGE (i)-[r:IS_NEOPLASTIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-18'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-18'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-18'}); 
MERGE (node:Org {id: 'C0002424'}) SET node.PREF='Clinic' SET node.STY='Health Care Related Organization'; 
MATCH (i:Person {id: 'FAKE_ID-18'}) 
MATCH (j:Org {id: 'C0002424'}) 
MERGE (i)-[r:AT_LOCATION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-18'}); 
MERGE (node:Condition {id: 'C3715209'}) SET node.PREF='Protocol' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-18'}) 
MATCH (j:Condition {id: 'C3715209'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-18'}); 
MERGE (node:Condition {id: 'C0237886'}) SET node.PREF='Sorting' SET node.STY='Mental Process'; 
MATCH (i:Person {id: 'FAKE_ID-18'}) 
MATCH (j:Condition {id: 'C0237886'}) 
MERGE (i)-[r:IS_MENTALPROCESS]->(j); 
MERGE (node:Person {id: 'FAKE_ID-18'}); 
MERGE (node:Treatment {id: 'C0013855'}) SET node.PREF='Electrophoreses' SET node.STY='Laboratory Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-18'}) 
MATCH (j:Treatment {id: 'C0013855'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-18'}); 
MERGE (node:Condition {id: 'C0544452'}) SET node.PREF='Remission' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-18'}) 
MATCH (j:Condition {id: 'C0544452'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-18'}); 
MERGE (node:Temporal {id: 'C0521116'}) SET node.PREF='Current' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-18'}) 
MATCH (j:Temporal {id: 'C0521116'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-18'}); 
MERGE (node:Body {id: 'C0024204'}) SET node.PREF='Lymph Node' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-18'}) 
MATCH (j:Body {id: 'C0024204'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-18'}); 
MERGE (node:Drug {id: 'C0013227'}) SET node.PREF='Medicine' SET node.STY='Pharmacologic Substance'; 
MATCH (i:Person {id: 'FAKE_ID-18'}) 
MATCH (j:Drug {id: 'C0013227'}) 
MERGE (i)-[r:HAS_PHARMACOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-18'}); 
MERGE (node:Treatment {id: 'C0199168'}) SET node.PREF='Medical' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-18'}) 
MATCH (j:Treatment {id: 'C0199168'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-18'}); 
MERGE (node:Body {id: 'C0027530'}) SET node.PREF='Collum' SET node.STY='Body Location or Region'; 
MATCH (i:Person {id: 'FAKE_ID-18'}) 
MATCH (j:Body {id: 'C0027530'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-18'}); 
MERGE (node:Treatment {id: 'C0376636'}) SET node.PREF='management' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-18'}) 
MATCH (j:Treatment {id: 'C0376636'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-18'}); 
MERGE (node:Condition {id: 'C0445223'}) SET node.PREF='Related' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-18'}) 
MATCH (j:Condition {id: 'C0445223'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-18'}); 
MERGE (node:Treatment {id: 'C0031809'}) SET node.PREF='Physical' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-18'}) 
MATCH (j:Treatment {id: 'C0031809'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-18'}); 
MERGE (node:Condition {id: 'C0023418'}) SET node.PREF='Leukemia' SET node.STY='Neoplastic Process'; 
MATCH (i:Person {id: 'FAKE_ID-18'}) 
MATCH (j:Condition {id: 'C0023418'}) 
MERGE (i)-[r:IS_NEOPLASTIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-18'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-18'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-18'}); 
MERGE (node:Condition {id: 'C0011900'}) SET node.PREF='Diagnosed' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-18'}) 
MATCH (j:Condition {id: 'C0011900'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-18'}); 
MERGE (node:Condition {id: 'C0007137'}) SET node.PREF='Squamous Carcinoma' SET node.STY='Neoplastic Process'; 
MATCH (i:Person {id: 'FAKE_ID-18'}) 
MATCH (j:Condition {id: 'C0007137'}) 
MERGE (i)-[r:IS_NEOPLASTIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-18'}); 
MERGE (node:Clinical {id: 'C1148118'}) SET node.PREF='General appearance' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-18'}) 
MATCH (j:Clinical {id: 'C1148118'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-18'}); 
MERGE (node:Condition {id: 'C3844012'}) SET node.PREF='1.5' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-18'}) 
MATCH (j:Condition {id: 'C3844012'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-18'}); 
MERGE (node:Condition {id: 'C0221198'}) SET node.PREF='Lesion' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-18'}) 
MATCH (j:Condition {id: 'C0221198'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-18'}); 
MERGE (node:Body {id: 'C1123023'}) SET node.PREF='Skin NOS' SET node.STY='Body System'; 
MATCH (i:Person {id: 'FAKE_ID-18'}) 
MATCH (j:Body {id: 'C1123023'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-18'}); 
MERGE (node:Body {id: 'C0229316'}) SET node.PREF='Concha' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-18'}) 
MATCH (j:Body {id: 'C0229316'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-18'}); 
MERGE (node:Body {id: 'C0229302'}) SET node.PREF='Left external ear' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-18'}) 
MATCH (j:Body {id: 'C0229302'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-18'}); 
MERGE (node:Body {id: 'C0013443'}) SET node.PREF='Ear' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-18'}) 
MATCH (j:Body {id: 'C0013443'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-18'}); 
MERGE (node:Body {id: 'C0229302'}) SET node.PREF='Left external ear' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-18'}) 
MATCH (j:Body {id: 'C0229302'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-18'}); 
MERGE (node:Body {id: 'C0229302'}) SET node.PREF='Left external ear' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-18'}) 
MATCH (j:Body {id: 'C0229302'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-18'}); 
MERGE (node:Treatment {id: 'C0087111'}) SET node.PREF='Therapy' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-18'}) 
MATCH (j:Treatment {id: 'C0087111'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-18'}); 
MERGE (node:Treatment {id: 'C0087111'}) SET node.PREF='Therapy' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-18'}) 
MATCH (j:Treatment {id: 'C0087111'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-18'}); 
MERGE (node:Temporal {id: 'C0332283'}) SET node.PREF='Followed by' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-18'}) 
MATCH (j:Temporal {id: 'C0332283'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-18'}); 
MERGE (node:Treatment {id: 'C0087111'}) SET node.PREF='Therapy' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-18'}) 
MATCH (j:Treatment {id: 'C0087111'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-18'}); 
MERGE (node:Treatment {id: 'C1522449'}) SET node.PREF='Irradiate' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-18'}) 
MATCH (j:Treatment {id: 'C1522449'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-18'}); 
MERGE (node:Condition {id: 'C1443309'}) SET node.PREF='Reason for Treatment' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-18'}) 
MATCH (j:Condition {id: 'C1443309'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-18'}); 
MERGE (node:Temporal {id: 'C0205178'}) SET node.PREF='Acuteness' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-18'}) 
MATCH (j:Temporal {id: 'C0205178'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-18'}); 
MERGE (node:Condition {id: 'C0009566'}) SET node.PREF='Complication' SET node.STY='Pathologic Function'; 
MATCH (i:Person {id: 'FAKE_ID-18'}) 
MATCH (j:Condition {id: 'C0009566'}) 
MERGE (i)-[r:IS_PATHOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-18'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-18'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-18'}); 
MERGE (node:Treatment {id: 'C0087111'}) SET node.PREF='Therapy' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-18'}) 
MATCH (j:Treatment {id: 'C0087111'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-18'}); 
MERGE (node:Temporal {id: 'C0439234'}) SET node.PREF='Year' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-18'}) 
MATCH (j:Temporal {id: 'C0439234'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-18'}); 
MERGE (node:Temporal {id: 'C0580836'}) SET node.PREF='Old' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-18'}) 
MATCH (j:Temporal {id: 'C0580836'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-18'}); 
MERGE (node:Org {id: 'C0331857'}) SET node.PREF='masons' SET node.STY='Health Care Related Organization'; 
MATCH (i:Person {id: 'FAKE_ID-18'}) 
MATCH (j:Org {id: 'C0331857'}) 
MERGE (i)-[r:AT_LOCATION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-18'}); 
MERGE (node:Org {id: 'C0002424'}) SET node.PREF='Clinic' SET node.STY='Health Care Related Organization'; 
MATCH (i:Person {id: 'FAKE_ID-18'}) 
MATCH (j:Org {id: 'C0002424'}) 
MERGE (i)-[r:AT_LOCATION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-18'}); 
MERGE (node:Temporal {id: 'C1444637'}) SET node.PREF='In the past' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-18'}) 
MATCH (j:Temporal {id: 'C1444637'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-18'}); 
MERGE (node:Clinical {id: 'C2360836'}) SET node.PREF='Patient' SET node.STY='Clinical Attribute'; 
MATCH (i:Person {id: 'FAKE_ID-18'}) 
MATCH (j:Clinical {id: 'C2360836'}) 
MERGE (i)-[r:IS_CLINICAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-18'}); 
MERGE (node:Condition {id: 'C0221198'}) SET node.PREF='Lesion' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-18'}) 
MATCH (j:Condition {id: 'C0221198'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-18'}); 
MERGE (node:Body {id: 'C0229316'}) SET node.PREF='Concha' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-18'}) 
MATCH (j:Body {id: 'C0229316'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-18'}); 
MERGE (node:Body {id: 'C0229302'}) SET node.PREF='Left external ear' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-18'}) 
MATCH (j:Body {id: 'C0229302'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-18'}); 
MERGE (node:Temporal {id: 'C0332185'}) SET node.PREF='Recent' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-18'}) 
MATCH (j:Temporal {id: 'C0332185'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-19'}); 
MERGE (node:Condition {id: 'C0087136'}) SET node.PREF='Unmarried' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-19'}) 
MATCH (j:Condition {id: 'C0087136'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-19'}); 
MERGE (node:Body {id: 'C1515974'}) SET node.PREF='Location' SET node.STY='Body Location or Region'; 
MATCH (i:Person {id: 'FAKE_ID-19'}) 
MATCH (j:Body {id: 'C1515974'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-19'}); 
MERGE (node:Condition {id: 'C0087136'}) SET node.PREF='Unmarried' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-19'}) 
MATCH (j:Condition {id: 'C0087136'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-19'}); 
MERGE (node:Body {id: 'C0005847'}) SET node.PREF='Vessel' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-19'}) 
MATCH (j:Body {id: 'C0005847'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-19'}); 
MERGE (node:Body {id: 'C0178784'}) SET node.PREF='{Organ}' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-19'}) 
MATCH (j:Body {id: 'C0178784'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-19'}); 
MERGE (node:Condition {id: 'C1261287'}) SET node.PREF='Stenoses' SET node.STY='Pathologic Function'; 
MATCH (i:Person {id: 'FAKE_ID-19'}) 
MATCH (j:Condition {id: 'C1261287'}) 
MERGE (i)-[r:IS_PATHOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-19'}); 
MERGE (node:Treatment {id: 'C1301725'}) SET node.PREF='Documented' SET node.STY='Health Care Activity'; 
MATCH (i:Person {id: 'FAKE_ID-19'}) 
MATCH (j:Treatment {id: 'C1301725'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-19'}); 
MERGE (node:Condition {id: 'C0087136'}) SET node.PREF='Unmarried' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-19'}) 
MATCH (j:Condition {id: 'C0087136'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-19'}); 
MERGE (node:Condition {id: 'C1261287'}) SET node.PREF='Stenoses' SET node.STY='Pathologic Function'; 
MATCH (i:Person {id: 'FAKE_ID-19'}) 
MATCH (j:Condition {id: 'C1261287'}) 
MERGE (i)-[r:IS_PATHOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-19'}); 
MERGE (node:Body {id: 'C0226332'}) SET node.PREF='Renal artery.right' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-19'}) 
MATCH (j:Body {id: 'C0226332'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-19'}); 
MERGE (node:Treatment {id: 'C0162577'}) SET node.PREF='Angioplasty' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-19'}) 
MATCH (j:Treatment {id: 'C0162577'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-19'}); 
MERGE (node:Treatment {id: 'C0002979'}) SET node.PREF='DS ANGIOGR' SET node.STY='Diagnostic Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-19'}) 
MATCH (j:Treatment {id: 'C0002979'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-19'}); 
MERGE (node:Treatment {id: 'C0243032'}) SET node.PREF='Vascular MRI' SET node.STY='Diagnostic Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-19'}) 
MATCH (j:Treatment {id: 'C0243032'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-19'}); 
MERGE (node:Body {id: 'C0022646'}) SET node.PREF='Kidney' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-19'}) 
MATCH (j:Body {id: 'C0022646'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-19'}); 
MERGE (node:Treatment {id: 'C0184661'}) SET node.PREF='Procedure' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-19'}) 
MATCH (j:Treatment {id: 'C0184661'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-19'}); 
MERGE (node:Condition {id: 'C0033119'}) SET node.PREF='Puncture' SET node.STY='Injury or Poisoning'; 
MATCH (i:Person {id: 'FAKE_ID-19'}) 
MATCH (j:Condition {id: 'C0033119'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-19'}); 
MERGE (node:Body {id: 'C0447105'}) SET node.PREF='Common Femoral Artery' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-19'}) 
MATCH (j:Body {id: 'C0447105'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-19'}); 
MERGE (node:Body {id: 'C0003484'}) SET node.PREF='Abdominal Aorta' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-19'}) 
MATCH (j:Body {id: 'C0003484'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-19'}); 
MERGE (node:Drug {id: 'C2946261'}) SET node.PREF='Level' SET node.STY='Pharmacologic Substance'; 
MATCH (i:Person {id: 'FAKE_ID-19'}) 
MATCH (j:Drug {id: 'C2946261'}) 
MERGE (i)-[r:HAS_PHARMACOLOGIC]->(j); 
MERGE (node:Person {id: 'FAKE_ID-19'}); 
MERGE (node:Body {id: 'C0035065'}) SET node.PREF='Artery.renal' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-19'}) 
MATCH (j:Body {id: 'C0035065'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-19'}); 
MERGE (node:Body {id: 'C0005847'}) SET node.PREF='Vessel' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-19'}) 
MATCH (j:Body {id: 'C0005847'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-19'}); 
MERGE (node:Treatment {id: 'C0947630'}) SET node.PREF='Study' SET node.STY='Laboratory Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-19'}) 
MATCH (j:Treatment {id: 'C0947630'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-19'}); 
MERGE (node:Condition {id: 'C3244287'}) SET node.PREF='School Grade' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-19'}) 
MATCH (j:Condition {id: 'C3244287'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-19'}); 
MERGE (node:Condition {id: 'C0035067'}) SET node.PREF='Renal Artery Stenoses' SET node.STY='Disease or Syndrome'; 
MATCH (i:Person {id: 'FAKE_ID-19'}) 
MATCH (j:Condition {id: 'C0035067'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-19'}); 
MERGE (node:Treatment {id: 'C0021485'}) SET node.PREF='Shot' SET node.STY='Therapeutic or Preventive Procedure'; 
MATCH (i:Person {id: 'FAKE_ID-19'}) 
MATCH (j:Treatment {id: 'C0021485'}) 
MERGE (i)-[r:HAS_TREATMENT]->(j); 
MERGE (node:Person {id: 'FAKE_ID-19'}); 
MERGE (node:Condition {id: 'C3840882'}) SET node.PREF='5 mm' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-19'}) 
MATCH (j:Condition {id: 'C3840882'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
MERGE (node:Person {id: 'FAKE_ID-19'}); 
MERGE (node:Temporal {id: 'C0439659'}) SET node.PREF='Origin' SET node.STY='Temporal Concept'; 
MATCH (i:Person {id: 'FAKE_ID-19'}) 
MATCH (j:Temporal {id: 'C0439659'}) 
MERGE (i)-[r:IS_TEMPORAL]->(j); 
MERGE (node:Person {id: 'FAKE_ID-19'}); 
MERGE (node:Condition {id: 'C0037088'}) SET node.PREF='Finding' SET node.STY='Sign or Symptom'; 
MATCH (i:Person {id: 'FAKE_ID-19'}) 
MATCH (j:Condition {id: 'C0037088'}) 
MERGE (i)-[r:HAS_CONDITION]->(j); 
MERGE (node:Person {id: 'FAKE_ID-19'}); 
MERGE (node:Body {id: 'C0003483'}) SET node.PREF='Aortas' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-19'}) 
MATCH (j:Body {id: 'C0003483'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-19'}); 
MERGE (node:Body {id: 'C0226332'}) SET node.PREF='Renal artery.right' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-19'}) 
MATCH (j:Body {id: 'C0226332'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-19'}); 
MERGE (node:Body {id: 'C0226333'}) SET node.PREF='Left Renal Artery' SET node.STY='Body Part, Organ, or Organ Component'; 
MATCH (i:Person {id: 'FAKE_ID-19'}) 
MATCH (j:Body {id: 'C0226333'}) 
MERGE (i)-[r:HAS_BODY]->(j); 
MERGE (node:Person {id: 'FAKE_ID-19'}); 
MERGE (node:Condition {id: 'C1550457'}) SET node.PREF='Normal' SET node.STY='Finding'; 
MATCH (i:Person {id: 'FAKE_ID-19'}) 
MATCH (j:Condition {id: 'C1550457'}) 
MERGE (i)-[r:HAS_FINDING]->(j); 
