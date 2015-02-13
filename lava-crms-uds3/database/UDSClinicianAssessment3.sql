delete instrumentnotes 
from instrumenttracking join instrumentnotes using (InstrID) 
where InstrType="UDS Clinician Assessment 3";

delete instrumentsummary 
from instrumenttracking join instrumentsummary using (InstrID) 
where InstrType="UDS Clinician Assessment 3";

delete udsclinicianassessment3 
from instrumenttracking join udsclinicianassessment3 using (InstrID) 
where InstrType="UDS Clinician Assessment 3";

delete from instrumenttracking 
where InstrType="UDS Clinician Assessment 3";

delete from hibernateproperty where entity="udsclinicianassessment3";
delete from viewproperty where entity="udsclinicianassessment3";
delete from instrument where InstrName="UDS Clinician Assessment 3";
drop table if exists udsclinicianassessment3;



-- Initialize table
CREATE TABLE udsclinicianassessment3 (
  InstrID int(10) NOT NULL,
    `CANCER` smallint(5) DEFAULT NULL,
    `CANCSITE` varchar(60) DEFAULT NULL,
    `DIABET` smallint(5) DEFAULT NULL,
    `MYOINF` smallint(5) DEFAULT NULL,
    `CONGHRT` smallint(5) DEFAULT NULL,
    `AFIBRILL` smallint(5) DEFAULT NULL,
    `HYPERT` smallint(5) DEFAULT NULL,
    `ANGINA` smallint(5) DEFAULT NULL,
    `HYPCHOL` smallint(5) DEFAULT NULL,
    `VB12DEF` smallint(5) DEFAULT NULL,
    `THYDIS` smallint(5) DEFAULT NULL,
    `ARTH` smallint(5) DEFAULT NULL,
    `ARTYPE` smallint(5) DEFAULT NULL,
    `ARTYPEX` varchar(60) DEFAULT NULL,
    `ARTUPEX` smallint(5) DEFAULT NULL,
    `ARTLOEX` smallint(5) DEFAULT NULL,
    `ARTSPIN` smallint(5) DEFAULT NULL,
    `ARTUNKN` smallint(5) DEFAULT NULL,
    `URINEINC` smallint(5) DEFAULT NULL,
    `BOWLINC` smallint(5) DEFAULT NULL,
    `SLEEPAP` smallint(5) DEFAULT NULL,
    `REMDIS` smallint(5) DEFAULT NULL,
    `HYPOSOM` smallint(5) DEFAULT NULL,
    `SLEEPOTH` smallint(5) DEFAULT NULL,
    `SLEEPOTX` varchar(60) DEFAULT NULL,
    `ANGIOCP` smallint(5) DEFAULT NULL,
    `ANGIOPCI` smallint(5) DEFAULT NULL,
    `PACEMAKE` smallint(5) DEFAULT NULL,
    `HVALVE` smallint(5) DEFAULT NULL,
    `ANTIENC` smallint(5) DEFAULT NULL,
    `ANTIENCX` varchar(60) DEFAULT NULL,
    `OTHCOND` smallint(5) DEFAULT NULL,
    `OTHCONDX` varchar(60) DEFAULT NULL,

  PRIMARY KEY (`InstrID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
-- Add to instrument table
insert into instrument 
set InstrName="UDS Clinician Assessment 3", TableName="udsclinicianassessment3", 
  FormName="LavaWebOnly", HasVersion=0;
-- Add columns to viewproperty table
insert into viewproperty 
set messageCode='*.udsclinicianassessment3.cancer', locale='en', instance='lava', 
  scope='ucdlava', entity='udsclinicianassessment3', property='cancer',
  required='No', proporder='1', attributes='', quickHelp='', 
  label="History of cancer (excluding non-melanoma skin cancer), primary or metastatic:", context="r",
  list="uds3.udsclinicianassessment3.CANCER", style="scale";

insert into viewproperty 
set messageCode='*.udsclinicianassessment3.cancsite', locale='en', instance='lava', 
  scope='ucdlava', entity='udsclinicianassessment3', property='cancsite',
  required='No', proporder='2', attributes='', quickHelp='', 
  label="Cancer primary site specification:", context="r", maxLength="6", style="string";

insert into viewproperty 
set messageCode='*.udsclinicianassessment3.diabet', locale='en', instance='lava', 
  scope='ucdlava', entity='udsclinicianassessment3', property='diabet',
  required='No', proporder='3', attributes='', quickHelp='', 
  label="diabetes:", context="r",
  list="uds3.udsclinicianassessment3.DIABET", style="scale";

insert into viewproperty 
set messageCode='*.udsclinicianassessment3.myoinf', locale='en', instance='lava', 
  scope='ucdlava', entity='udsclinicianassessment3', property='myoinf',
  required='No', proporder='4', attributes='', quickHelp='', 
  label="myocardial infarct:", context="r",
  list="uds3.common.NoYesNa", style="scale";

insert into viewproperty 
set messageCode='*.udsclinicianassessment3.conghrt', locale='en', instance='lava', 
  scope='ucdlava', entity='udsclinicianassessment3', property='conghrt',
  required='No', proporder='5', attributes='', quickHelp='', 
  label="congestive heart failure:", context="r",
  list="uds3.common.NoYesNa", style="scale";

insert into viewproperty 
set messageCode='*.udsclinicianassessment3.afibrill', locale='en', instance='lava', 
  scope='ucdlava', entity='udsclinicianassessment3', property='afibrill',
  required='No', proporder='6', attributes='', quickHelp='', 
  label="Atrial fibrillation:", context="r",
  list="uds3.common.NoYesNa", style="scale";

insert into viewproperty 
set messageCode='*.udsclinicianassessment3.hypert', locale='en', instance='lava', 
  scope='ucdlava', entity='udsclinicianassessment3', property='hypert',
  required='No', proporder='7', attributes='', quickHelp='', 
  label="hypertension:", context="r",
  list="uds3.common.NoYesNa", style="scale";

insert into viewproperty 
set messageCode='*.udsclinicianassessment3.angina', locale='en', instance='lava', 
  scope='ucdlava', entity='udsclinicianassessment3', property='angina',
  required='No', proporder='8', attributes='', quickHelp='', 
  label="angina:", context="r",
  list="uds3.common.NoYesNa", style="scale";

insert into viewproperty 
set messageCode='*.udsclinicianassessment3.hypchol', locale='en', instance='lava', 
  scope='ucdlava', entity='udsclinicianassessment3', property='hypchol',
  required='No', proporder='9', attributes='', quickHelp='', 
  label="hypercholesterolemia:", context="r",
  list="uds3.common.NoYesNa", style="scale";

insert into viewproperty 
set messageCode='*.udsclinicianassessment3.vb12def', locale='en', instance='lava', 
  scope='ucdlava', entity='udsclinicianassessment3', property='vb12def',
  required='No', proporder='10', attributes='', quickHelp='', 
  label="B12 deficiency:", context="r",
  list="uds3.common.NoYesNa", style="scale";

insert into viewproperty 
set messageCode='*.udsclinicianassessment3.thydis', locale='en', instance='lava', 
  scope='ucdlava', entity='udsclinicianassessment3', property='thydis',
  required='No', proporder='11', attributes='', quickHelp='', 
  label="thyroid disease:", context="r",
  list="uds3.common.NoYesNa", style="scale";

insert into viewproperty 
set messageCode='*.udsclinicianassessment3.arth', locale='en', instance='lava', 
  scope='ucdlava', entity='udsclinicianassessment3', property='arth',
  required='No', proporder='12', attributes='', quickHelp='', 
  label="arthritis:", context="r",
  list="uds3.common.NoYesNa", style="scale";

insert into viewproperty 
set messageCode='*.udsclinicianassessment3.artype', locale='en', instance='lava', 
  scope='ucdlava', entity='udsclinicianassessment3', property='artype',
  required='No', proporder='13', attributes='', quickHelp='', 
  label="Arthritis type:", context="r",
  list="uds3.udsclinicianassessment3.ARTYPE", style="scale";

insert into viewproperty 
set messageCode='*.udsclinicianassessment3.artypex', locale='en', instance='lava', 
  scope='ucdlava', entity='udsclinicianassessment3', property='artypex',
  required='No', proporder='14', attributes='', quickHelp='', 
  label="Other arthritis type specification:", context="r", maxLength="6", style="string";

insert into viewproperty 
set messageCode='*.udsclinicianassessment3.artupex', locale='en', instance='lava', 
  scope='ucdlava', entity='udsclinicianassessment3', property='artupex',
  required='No', proporder='15', attributes='', quickHelp='', 
  label="Arthritis region affected - upper extremity:", context="r",
  list="uds3.udsclinicianassessment3.ARTUPEX", style="scale";

insert into viewproperty 
set messageCode='*.udsclinicianassessment3.artloex', locale='en', instance='lava', 
  scope='ucdlava', entity='udsclinicianassessment3', property='artloex',
  required='No', proporder='16', attributes='', quickHelp='', 
  label="Arthritis region affected - lower extremity:", context="r",
  list="uds3.udsclinicianassessment3.ARTUPEX", style="scale";

insert into viewproperty 
set messageCode='*.udsclinicianassessment3.artspin', locale='en', instance='lava', 
  scope='ucdlava', entity='udsclinicianassessment3', property='artspin',
  required='No', proporder='17', attributes='', quickHelp='', 
  label="Arthritis region affected - Spine:", context="r",
  list="uds3.udsclinicianassessment3.ARTUPEX", style="scale";

insert into viewproperty 
set messageCode='*.udsclinicianassessment3.artunkn', locale='en', instance='lava', 
  scope='ucdlava', entity='udsclinicianassessment3', property='artunkn',
  required='No', proporder='18', attributes='', quickHelp='', 
  label="Arthritis region affected - unknown:", context="r",
  list="uds3.udsclinicianassessment3.ARTUPEX", style="scale";

insert into viewproperty 
set messageCode='*.udsclinicianassessment3.urineinc', locale='en', instance='lava', 
  scope='ucdlava', entity='udsclinicianassessment3', property='urineinc',
  required='No', proporder='19', attributes='', quickHelp='', 
  label="incontinence, urinary:", context="r",
  list="uds3.common.NoYesNa", style="scale";

insert into viewproperty 
set messageCode='*.udsclinicianassessment3.bowlinc', locale='en', instance='lava', 
  scope='ucdlava', entity='udsclinicianassessment3', property='bowlinc',
  required='No', proporder='20', attributes='', quickHelp='', 
  label="Incontinence, bowel:", context="r",
  list="uds3.common.NoYesNa", style="scale";

insert into viewproperty 
set messageCode='*.udsclinicianassessment3.sleepap', locale='en', instance='lava', 
  scope='ucdlava', entity='udsclinicianassessment3', property='sleepap',
  required='No', proporder='21', attributes='', quickHelp='', 
  label="Sleep apnea:", context="r",
  list="uds3.common.NoYesNa", style="scale";

insert into viewproperty 
set messageCode='*.udsclinicianassessment3.remdis', locale='en', instance='lava', 
  scope='ucdlava', entity='udsclinicianassessment3', property='remdis',
  required='No', proporder='22', attributes='', quickHelp='', 
  label="REM sleep behavior disorder (RBD):", context="r",
  list="uds3.common.NoYesNa", style="scale";

insert into viewproperty 
set messageCode='*.udsclinicianassessment3.hyposom', locale='en', instance='lava', 
  scope='ucdlava', entity='udsclinicianassessment3', property='hyposom',
  required='No', proporder='23', attributes='', quickHelp='', 
  label="hyposomnia/insomnia:", context="r",
  list="uds3.common.NoYesNa", style="scale";

insert into viewproperty 
set messageCode='*.udsclinicianassessment3.sleepoth', locale='en', instance='lava', 
  scope='ucdlava', entity='udsclinicianassessment3', property='sleepoth',
  required='No', proporder='24', attributes='', quickHelp='', 
  label="other sleep disorder:", context="r",
  list="uds3.common.NoYesNa", style="scale";

insert into viewproperty 
set messageCode='*.udsclinicianassessment3.sleepotx', locale='en', instance='lava', 
  scope='ucdlava', entity='udsclinicianassessment3', property='sleepotx',
  required='No', proporder='25', attributes='', quickHelp='', 
  label="Other sleep disorder specification:", context="r", maxLength="6", style="string";

insert into viewproperty 
set messageCode='*.udsclinicianassessment3.angiocp', locale='en', instance='lava', 
  scope='ucdlava', entity='udsclinicianassessment3', property='angiocp',
  required='No', proporder='26', attributes='', quickHelp='', 
  label="Carotid procedure: angioplasty, endarterectomy, or stent:", context="r",
  list="uds3.common.NoYesNa", style="scale";

insert into viewproperty 
set messageCode='*.udsclinicianassessment3.angiopci', locale='en', instance='lava', 
  scope='ucdlava', entity='udsclinicianassessment3', property='angiopci',
  required='No', proporder='27', attributes='', quickHelp='', 
  label="Percutaneous coronary intervention: angioplasty and/or stent:", context="r",
  list="uds3.common.NoYesNa", style="scale";

insert into viewproperty 
set messageCode='*.udsclinicianassessment3.pacemake', locale='en', instance='lava', 
  scope='ucdlava', entity='udsclinicianassessment3', property='pacemake',
  required='No', proporder='28', attributes='', quickHelp='', 
  label="Procedure: pacemaker and/or defibrillator:", context="r",
  list="uds3.common.NoYesNa", style="scale";

insert into viewproperty 
set messageCode='*.udsclinicianassessment3.hvalve', locale='en', instance='lava', 
  scope='ucdlava', entity='udsclinicianassessment3', property='hvalve',
  required='No', proporder='29', attributes='', quickHelp='', 
  label="Procedure: heart valve replacement or repair:", context="r",
  list="uds3.common.NoYesNa", style="scale";

insert into viewproperty 
set messageCode='*.udsclinicianassessment3.antienc', locale='en', instance='lava', 
  scope='ucdlava', entity='udsclinicianassessment3', property='antienc',
  required='No', proporder='30', attributes='', quickHelp='', 
  label="Antibody-mediated encephalopathy:", context="r",
  list="uds3.common.NoYesNa", style="scale";

insert into viewproperty 
set messageCode='*.udsclinicianassessment3.antiencx', locale='en', instance='lava', 
  scope='ucdlava', entity='udsclinicianassessment3', property='antiencx',
  required='No', proporder='31', attributes='', quickHelp='', 
  label="Antibody-mediated encephalopathy, specify:", context="r", maxLength="6", style="string";

insert into viewproperty 
set messageCode='*.udsclinicianassessment3.othcond', locale='en', instance='lava', 
  scope='ucdlava', entity='udsclinicianassessment3', property='othcond',
  required='No', proporder='32', attributes='', quickHelp='', 
  label="Other medical conditions or procedures not listed above:", context="r",
  list="uds3.common.NoYesNa", style="scale";

insert into viewproperty 
set messageCode='*.udsclinicianassessment3.othcondx', locale='en', instance='lava', 
  scope='ucdlava', entity='udsclinicianassessment3', property='othcondx',
  required='No', proporder='33', attributes='', quickHelp='', 
  label="Other medical conditions specification:", context="r", maxLength="6", style="string";


