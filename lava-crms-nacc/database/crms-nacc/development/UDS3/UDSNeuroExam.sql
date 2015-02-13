DELETE FROM instrument where InstrName='UDS Neuro Exam';
INSERT INTO instrument (InstrName, TableName, FormName, HasVersion) VALUES ('UDS Neuro Exam', 'udsneuroexam', 'LavaWebOnly', 0);

ALTER TABLE udsappraisal
	ADD `NORMEXAM` SMALLINT,
	ADD `PARKSIGN` SMALLINT,
	ADD `RESTTRL` SMALLINT,
    ADD `RESTTRR` SMALLINT, 
	ADD `SLOWINGL` SMALLINT,
	ADD `SLOWINGR` SMALLINT,
	ADD `RIGIDL` SMALLINT,
	ADD `RIGIDR` SMALLINT,
	ADD `BRADY` SMALLINT,
	ADD `PARKGAIT` SMALLINT,
	ADD `POSTINST` SMALLINT,
	ADD `CVDSIGNS` SMALLINT,
	ADD `CORTDEF` SMALLINT,
	ADD `SIVDFIND` SMALLINT,
	ADD `CVDMOTL` SMALLINT,
	ADD `CVDMOTR` SMALLINT,
	ADD `CORTVISL` SMALLINT,
	ADD `CORTVISR` SMALLINT,
	ADD `SOMATL` SMALLINT,
	ADD `SOMATR` SMALLINT,
	ADD `POSTCORT` SMALLINT,
	ADD `PSPCBS` SMALLINT,
	ADD `EYEPSP` SMALLINT,
	ADD `DYSPSP` SMALLINT,
	ADD `AXIALPSP` SMALLINT,
	ADD `GAITPSP` SMALLINT,
	ADD `APRAXSP` SMALLINT,
	ADD `APRAXL` SMALLINT,
	ADD `APRAXR` SMALLINT,
	ADD `CORTSENL` SMALLINT,
	ADD `CORTSENR` SMALLINT,
	ADD `ATAXL` SMALLINT,
	ADD `ATAXR` SMALLINT,
	ADD `ALIENLML` SMALLINT,
	ADD `ALIENLMR` SMALLINT,
	ADD `DYSTONL` SMALLINT,
	ADD `DYSTONR` SMALLINT,
	ADD `MYOCLLT` SMALLINT,
	ADD `MYOCLRT` SMALLINT,
	ADD `ALSFIND` SMALLINT,
	ADD `GAITNPH` SMALLINT,
	ADD `OTHNEUR` SMALLINT,
	ADD `OTHNEURX` VARCHAR(60) DEFAULT NULL;

	
	
-- do lists
-- for all instruments set quickHelp to label	
	
	
DELETE FROM viewproperty WHERE entity="udsneuroexam3";

-- Add columns to viewproperty table
insert into viewproperty 
set messageCode='*.udsneuroexam3.normexam', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsneuroexam3', property='normexam',
  required='No', proporder='1', attributes='', quickHelp='', 
  label="Were there abnormal neurological exam findings?:", context="r",
  list="uds3.udsneuroexam3.NORMEXAM", style="scale";

insert into viewproperty 
set messageCode='*.udsneuroexam3.parksign', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsneuroexam3', property='parksign',
  required='No', proporder='2', attributes='', quickHelp='', 
  label="Parkinsonian signs:", context="r",
  list="list.uds3.common.noyes01", style="scale";

insert into viewproperty 
set messageCode='*.udsneuroexam3.resttrl', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsneuroexam3', property='resttrl',
  required='No', proporder='3', attributes='', quickHelp='', 
  label="Resting tremor - left arm:", context="r",
  list="uds3.common.NoYesNa", style="scale";

insert into viewproperty 
set messageCode='*.udsneuroexam3.resttrr', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsneuroexam3', property='resttrr',
  required='No', proporder='4', attributes='', quickHelp='', 
  label="Resting tremor - right arm:", context="r",
  list="uds3.common.NoYesNa", style="scale";

insert into viewproperty 
set messageCode='*.udsneuroexam3.slowingl', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsneuroexam3', property='slowingl',
  required='No', proporder='5', attributes='', quickHelp='', 
  label="Slowing of fine motor movements - left side:", context="r",
  list="uds3.common.NoYesNa", style="scale";

insert into viewproperty 
set messageCode='*.udsneuroexam3.slowingr', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsneuroexam3', property='slowingr',
  required='No', proporder='6', attributes='', quickHelp='', 
  label="Slowing of fine motor movements - right side:", context="r",
  list="uds3.common.NoYesNa", style="scale";

insert into viewproperty 
set messageCode='*.udsneuroexam3.rigidl', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsneuroexam3', property='rigidl',
  required='No', proporder='7', attributes='', quickHelp='', 
  label="Rigidity - left arm:", context="r",
  list="uds3.common.NoYesNa", style="scale";

insert into viewproperty 
set messageCode='*.udsneuroexam3.rigidr', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsneuroexam3', property='rigidr',
  required='No', proporder='8', attributes='', quickHelp='', 
  label="Rigidity - right arm:", context="r",
  list="uds3.common.NoYesNa", style="scale";

insert into viewproperty 
set messageCode='*.udsneuroexam3.brady', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsneuroexam3', property='brady',
  required='No', proporder='9', attributes='', quickHelp='', 
  label="Bradykinesia:", context="r",
  list="uds3.common.NoYesNa", style="scale";

insert into viewproperty 
set messageCode='*.udsneuroexam3.parkgait', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsneuroexam3', property='parkgait',
  required='No', proporder='10', attributes='', quickHelp='', 
  label="Parkinsonian gait disorder:", context="r",
  list="uds3.common.NoYesNa", style="scale";

insert into viewproperty 
set messageCode='*.udsneuroexam3.postinst', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsneuroexam3', property='postinst',
  required='No', proporder='11', attributes='', quickHelp='', 
  label="Postural instability:", context="r",
  list="uds3.common.NoYesNa", style="scale";

insert into viewproperty 
set messageCode='*.udsneuroexam3.cvdsigns', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsneuroexam3', property='cvdsigns',
  required='No', proporder='12', attributes='', quickHelp='', 
  label="Neurological sign considered by examiner to be most likely consistent with cerebrovascular disease:", context="r",
  list="list.uds3.common.noyes01", style="scale";

insert into viewproperty 
set messageCode='*.udsneuroexam3.cortdef', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsneuroexam3', property='cortdef',
  required='No', proporder='13', attributes='', quickHelp='', 
  label="Cortical cognitive deficit (e.g., aphasia, apraxia, neglect):", context="r",
  list="uds3.common.NoYesNa", style="scale";

insert into viewproperty 
set messageCode='*.udsneuroexam3.sivdfind', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsneuroexam3', property='sivdfind',
  required='No', proporder='14', attributes='', quickHelp='', 
  label="Focal or other neurological findings consistend with SIVD:", context="r",
  list="uds3.common.NoYesNa", style="scale";

insert into viewproperty 
set messageCode='*.udsneuroexam3.cvdmotl', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsneuroexam3', property='cvdmotl',
  required='No', proporder='15', attributes='', quickHelp='', 
  label="Motor (may include weakness of combination of face, arm, and leg; reflex changes, etc.) - left side:", context="r",
  list="uds3.common.NoYesNa", style="scale";

insert into viewproperty 
set messageCode='*.udsneuroexam3.cvdmotr', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsneuroexam3', property='cvdmotr',
  required='No', proporder='16', attributes='', quickHelp='', 
  label="Motor (may include weakness of combination of face, arm, and leg; reflex changes, etc.) - right side:", context="r",
  list="uds3.common.NoYesNa", style="scale";

insert into viewproperty 
set messageCode='*.udsneuroexam3.cortvisl', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsneuroexam3', property='cortvisl',
  required='No', proporder='17', attributes='', quickHelp='', 
  label="Cortical visual field loss - left side:", context="r",
  list="uds3.common.NoYesNa", style="scale";

insert into viewproperty 
set messageCode='*.udsneuroexam3.cortvisr', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsneuroexam3', property='cortvisr',
  required='No', proporder='18', attributes='', quickHelp='', 
  label="Cortical visual field loss - right side:", context="r",
  list="uds3.common.NoYesNa", style="scale";

insert into viewproperty 
set messageCode='*.udsneuroexam3.somatl', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsneuroexam3', property='somatl',
  required='No', proporder='19', attributes='', quickHelp='', 
  label="Somatosensory loss - left side:", context="r",
  list="uds3.common.NoYesNa", style="scale";

insert into viewproperty 
set messageCode='*.udsneuroexam3.somatr', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsneuroexam3', property='somatr',
  required='No', proporder='20', attributes='', quickHelp='', 
  label="Somatosensory loss - right side:", context="r",
  list="uds3.common.NoYesNa", style="scale";

insert into viewproperty 
set messageCode='*.udsneuroexam3.postcort', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsneuroexam3', property='postcort',
  required='No', proporder='21', attributes='', quickHelp='', 
  label="Higher cortical visual problem suggesting posterior cortical atrophy (e.g., prosopagnosia, simultagnosia, Balint’s syndrome) or apraxia of gaze:", context="r",
  list="list.uds3.common.noyes01", style="scale";

insert into viewproperty 
set messageCode='*.udsneuroexam3.pspcbs', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsneuroexam3', property='pspcbs',
  required='No', proporder='22', attributes='', quickHelp='', 
  label="Findings suggestive of progressive supranuclear palsy (PSP), corticobasal syndrome, or other related disorders:", context="r",
  list="list.uds3.common.noyes01", style="scale";

insert into viewproperty 
set messageCode='*.udsneuroexam3.eyepsp', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsneuroexam3', property='eyepsp',
  required='No', proporder='23', attributes='', quickHelp='', 
  label="Eye movement changes consistent with PSP:", context="r",
  list="uds3.common.NoYesNa", style="scale";

insert into viewproperty 
set messageCode='*.udsneuroexam3.dyspsp', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsneuroexam3', property='dyspsp',
  required='No', proporder='24', attributes='', quickHelp='', 
  label="Dysarthria consistent with PSP:", context="r",
  list="uds3.common.NoYesNa", style="scale";

insert into viewproperty 
set messageCode='*.udsneuroexam3.axialpsp', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsneuroexam3', property='axialpsp',
  required='No', proporder='25', attributes='', quickHelp='', 
  label="Axial rigidity consistent with PSP:", context="r",
  list="uds3.common.NoYesNa", style="scale";

insert into viewproperty 
set messageCode='*.udsneuroexam3.gaitpsp', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsneuroexam3', property='gaitpsp',
  required='No', proporder='26', attributes='', quickHelp='', 
  label="Gait disorder consistent with PSP:", context="r",
  list="uds3.common.NoYesNa", style="scale";

insert into viewproperty 
set messageCode='*.udsneuroexam3.apraxsp', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsneuroexam3', property='apraxsp',
  required='No', proporder='27', attributes='', quickHelp='', 
  label="Apraxia of speech:", context="r",
  list="uds3.common.NoYesNa", style="scale";

insert into viewproperty 
set messageCode='*.udsneuroexam3.apraxl', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsneuroexam3', property='apraxl',
  required='No', proporder='28', attributes='', quickHelp='', 
  label="Apraxia - left side:", context="r",
  list="uds3.common.NoYesNa", style="scale";

insert into viewproperty 
set messageCode='*.udsneuroexam3.apraxr', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsneuroexam3', property='apraxr',
  required='No', proporder='29', attributes='', quickHelp='', 
  label="Apraxia - right side:", context="r",
  list="uds3.common.NoYesNa", style="scale";

insert into viewproperty 
set messageCode='*.udsneuroexam3.cortsenl', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsneuroexam3', property='cortsenl',
  required='No', proporder='30', attributes='', quickHelp='', 
  label="Cortical sensory deficits - left side:", context="r",
  list="uds3.common.NoYesNa", style="scale";

insert into viewproperty 
set messageCode='*.udsneuroexam3.cortsenr', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsneuroexam3', property='cortsenr',
  required='No', proporder='31', attributes='', quickHelp='', 
  label="Cortical sensory deficits - right side:", context="r",
  list="uds3.common.NoYesNa", style="scale";

insert into viewproperty 
set messageCode='*.udsneuroexam3.ataxl', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsneuroexam3', property='ataxl',
  required='No', proporder='32', attributes='', quickHelp='', 
  label="Ataxia - left side:", context="r",
  list="uds3.common.NoYesNa", style="scale";

insert into viewproperty 
set messageCode='*.udsneuroexam3.ataxr', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsneuroexam3', property='ataxr',
  required='No', proporder='33', attributes='', quickHelp='', 
  label="Ataxia - right side:", context="r",
  list="uds3.common.NoYesNa", style="scale";

insert into viewproperty 
set messageCode='*.udsneuroexam3.alienlml', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsneuroexam3', property='alienlml',
  required='No', proporder='34', attributes='', quickHelp='', 
  label="Alien limb - left side:", context="r",
  list="uds3.common.NoYesNa", style="scale";

insert into viewproperty 
set messageCode='*.udsneuroexam3.alienlmr', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsneuroexam3', property='alienlmr',
  required='No', proporder='35', attributes='', quickHelp='', 
  label="Alien limb - right side:", context="r",
  list="uds3.common.NoYesNa", style="scale";

insert into viewproperty 
set messageCode='*.udsneuroexam3.dystonl', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsneuroexam3', property='dystonl',
  required='No', proporder='36', attributes='', quickHelp='', 
  label="Dystonia - left side:", context="r",
  list="uds3.common.NoYesNa", style="scale";

insert into viewproperty 
set messageCode='*.udsneuroexam3.dystonr', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsneuroexam3', property='dystonr',
  required='No', proporder='37', attributes='', quickHelp='', 
  label="Dystonia - right side:", context="r",
  list="uds3.common.NoYesNa", style="scale";

insert into viewproperty 
set messageCode='*.udsneuroexam3.myocllt', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsneuroexam3', property='myocllt',
  required='No', proporder='38', attributes='', quickHelp='', 
  label="Myoclonus - left side:", context="r",
  list="uds3.common.NoYesNa", style="scale";

insert into viewproperty 
set messageCode='*.udsneuroexam3.myoclrt', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsneuroexam3', property='myoclrt',
  required='No', proporder='39', attributes='', quickHelp='', 
  label="Myoclonus - right side:", context="r",
  list="uds3.common.NoYesNa", style="scale";

insert into viewproperty 
set messageCode='*.udsneuroexam3.alsfind', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsneuroexam3', property='alsfind',
  required='No', proporder='40', attributes='', quickHelp='', 
  label="Findings suggesting ALS:", context="r",
  list="list.uds3.common.noyes01", style="scale";

insert into viewproperty 
set messageCode='*.udsneuroexam3.gaitnph', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsneuroexam3', property='gaitnph',
  required='No', proporder='41', attributes='', quickHelp='', 
  label="Normal pressure hydrocephalus: Gait apraxia:", context="r",
  list="list.uds3.common.noyes01", style="scale";

insert into viewproperty 
set messageCode='*.udsneuroexam3.othneur', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsneuroexam3', property='othneur',
  required='No', proporder='42', attributes='', quickHelp='', 
  label="Other findings (e.g., cerebella ataxia, chorea, myoclonus) (NOTE: For this question, do not specify symptoms that have already been checked above.):", context="r",
  list="list.uds3.common.noyes01", style="scale";

insert into viewproperty 
set messageCode='*.udsneuroexam3.othneurx', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsneuroexam3', property='othneurx',
  required='No', proporder='43', attributes='', quickHelp='', 
  label="Other findings (specify):", context="r", maxLength="6", style="string";


