delete from hibernateproperty where entity="udshealthhistory3";
delete from viewproperty where entity="udshealthhistory3";
delete from instrument where InstrName="UDS Health History 3";
drop table if exists udshealthhistory3;



-- Initialize table
CREATE TABLE udshealthhistory3 (
  InstrID int(10) NOT NULL,
    `TOBAC30` UNMAPPED TYPE
    `TOBAC100` UNMAPPED TYPE
    `SMOKYRS` UNMAPPED TYPE
    `PACKSPER` UNMAPPED TYPE
    `QUITSMOK` UNMAPPED TYPE
    `ALCOCCAS` UNMAPPED TYPE
    `ALCFREQ` UNMAPPED TYPE
    `CVHATT` UNMAPPED TYPE
    `HATTMULT` UNMAPPED TYPE
    `HATTYEAR` UNMAPPED TYPE
    `CVAFIB` UNMAPPED TYPE
    `CVANGIO` UNMAPPED TYPE
    `CVBYPASS` UNMAPPED TYPE
    `CVPACDEF` UNMAPPED TYPE
    `CVCHF` UNMAPPED TYPE
    `CVANGINA` UNMAPPED TYPE
    `CVHVALVE` UNMAPPED TYPE
    `CVOTHR` UNMAPPED TYPE
    `CVOTHRX` varchar(60) DEFAULT NULL,
    `CBSTROKE` UNMAPPED TYPE
    `STROKMUL` UNMAPPED TYPE
    `STROKYR` UNMAPPED TYPE
    `CBTIA` UNMAPPED TYPE
    `TIAMULT` UNMAPPED TYPE
    `TIAYEAR` UNMAPPED TYPE
    `PD` UNMAPPED TYPE
    `PDYR` UNMAPPED TYPE
    `PDOTHR` UNMAPPED TYPE
    `PDOTHRYR` UNMAPPED TYPE
    `SEIZURES` UNMAPPED TYPE
    `TBI` UNMAPPED TYPE
    `TBIBRIEF` UNMAPPED TYPE
    `TBIEXTEN` UNMAPPED TYPE
    `TBIWOLOS` UNMAPPED TYPE
    `TBIYEAR` UNMAPPED TYPE
    `DIABETES` UNMAPPED TYPE
    `DIABTYPE` UNMAPPED TYPE
    `HYPERTEN` UNMAPPED TYPE
    `HYPERCHO` UNMAPPED TYPE
    `B12DEF` UNMAPPED TYPE
    `THYROID` UNMAPPED TYPE
    `ARTHRIT` UNMAPPED TYPE
    `ARTHTYPE` UNMAPPED TYPE
    `ARTHTYPX` varchar(60) DEFAULT NULL,
    `ARTHUPEX` UNMAPPED TYPE
    `ARTHLOEX` UNMAPPED TYPE
    `ARTHSPIN` UNMAPPED TYPE
    `ARTHUNK` UNMAPPED TYPE
    `INCONTU` UNMAPPED TYPE
    `INCONTF` UNMAPPED TYPE
    `APNEA` UNMAPPED TYPE
    `RBD` UNMAPPED TYPE
    `INSOMN` UNMAPPED TYPE
    `OTHSLEEP` UNMAPPED TYPE
    `OTHSLEEX` varchar(60) DEFAULT NULL,
    `ALCOHOL` UNMAPPED TYPE
    `ABUSOTHR` UNMAPPED TYPE
    `ABUSX` varchar(60) DEFAULT NULL,
    `PTSD` UNMAPPED TYPE
    `BIPOLAR` UNMAPPED TYPE
    `SCHIZ` UNMAPPED TYPE
    `DEP2YRS` UNMAPPED TYPE
    `DEPOTHR` UNMAPPED TYPE
    `ANXIETY` UNMAPPED TYPE
    `OCD` UNMAPPED TYPE
    `NPSYDEV` UNMAPPED TYPE
    `PSYCDIS` UNMAPPED TYPE
    `PSYCDISX` varchar(60) DEFAULT NULL,

  PRIMARY KEY (`InstrID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
-- Add to instrument table
insert into instrument 
set InstrName="UDS Health History 3", TableName="udshealthhistory3", 
  FormName="LavaWebOnly", HasVersion=0;
-- Add columns to viewproperty table
insert into viewproperty 
set messageCode='*.udshealthhistory3.tobac30', locale='en', instance='lava', 
  scope='ucdlava', entity='udshealthhistory3', property='tobac30',
  required='No', proporder='1', attributes='', quickHelp='', 
  label="Has subject smoked within the last 30 days?:", context="r",
  list="list.uds3.common.noyesunknown", style="scale";

insert into viewproperty 
set messageCode='*.udshealthhistory3.tobac100', locale='en', instance='lava', 
  scope='ucdlava', entity='udshealthhistory3', property='tobac100',
  required='No', proporder='2', attributes='', quickHelp='', 
  label="Has subject smoked more than 100 cigarettes in his/her life?:", context="r",
  list="list.uds3.common.noyesunknown", style="scale";

insert into viewproperty 
set messageCode='*.udshealthhistory3.smokyrs', locale='en', instance='lava', 
  scope='ucdlava', entity='udshealthhistory3', property='smokyrs',
  required='No', proporder='3', attributes='', quickHelp='', 
  label="Total years smoked:", context="r",
  list="uds3.udshealthhistory3.SMOKYRS", style="scale";

insert into viewproperty 
set messageCode='*.udshealthhistory3.packsper', locale='en', instance='lava', 
  scope='ucdlava', entity='udshealthhistory3', property='packsper',
  required='No', proporder='4', attributes='', quickHelp='', 
  label="Average number of packs smoked per day:", context="r",
  list="uds3.udshealthhistory3.PACKSPER", style="scale";

insert into viewproperty 
set messageCode='*.udshealthhistory3.quitsmok', locale='en', instance='lava', 
  scope='ucdlava', entity='udshealthhistory3', property='quitsmok',
  required='No', proporder='5', attributes='', quickHelp='', 
  label="If the subject quit smoking, specify age at which he/she last smoked (i.e., quit):", context="r",
  list="uds3.udshealthhistory3.QUITSMOK", style="scale";

insert into viewproperty 
set messageCode='*.udshealthhistory3.alcoccas', locale='en', instance='lava', 
  scope='ucdlava', entity='udshealthhistory3', property='alcoccas',
  required='No', proporder='6', attributes='', quickHelp='', 
  label="In the past three months, has the subject consumed any alcohol?:", context="r",
  list="list.uds3.common.noyesunknown", style="scale";

insert into viewproperty 
set messageCode='*.udshealthhistory3.alcfreq', locale='en', instance='lava', 
  scope='ucdlava', entity='udshealthhistory3', property='alcfreq',
  required='No', proporder='7', attributes='', quickHelp='', 
  label="During the past three months, how often did the subject have at least one drink of any alcoholic beverage such as wine, beer, malt liquor, or spirits?:", context="r",
  list="uds3.udshealthhistory3.ALCFREQ", style="scale";

insert into viewproperty 
set messageCode='*.udshealthhistory3.cvhatt', locale='en', instance='lava', 
  scope='ucdlava', entity='udshealthhistory3', property='cvhatt',
  required='No', proporder='8', attributes='', quickHelp='', 
  label="Heart attack/cardiac arrest:", context="r",
  list="uds3.udshealthhistory3.CondPresence", style="scale";

insert into viewproperty 
set messageCode='*.udshealthhistory3.hattmult', locale='en', instance='lava', 
  scope='ucdlava', entity='udshealthhistory3', property='hattmult',
  required='No', proporder='9', attributes='', quickHelp='', 
  label="More than one heart attack?:", context="r",
  list="list.uds3.common.noyesunknown", style="scale";

insert into viewproperty 
set messageCode='*.udshealthhistory3.hattyear', locale='en', instance='lava', 
  scope='ucdlava', entity='udshealthhistory3', property='hattyear',
  required='No', proporder='10', attributes='', quickHelp='', 
  label="Year of most recent heart attack:", context="r",
  list="uds3.common.year", style="scale";

insert into viewproperty 
set messageCode='*.udshealthhistory3.cvafib', locale='en', instance='lava', 
  scope='ucdlava', entity='udshealthhistory3', property='cvafib',
  required='No', proporder='11', attributes='', quickHelp='', 
  label="Atrial fibrillation:", context="r",
  list="uds3.udshealthhistory3.CondPresence", style="scale";

insert into viewproperty 
set messageCode='*.udshealthhistory3.cvangio', locale='en', instance='lava', 
  scope='ucdlava', entity='udshealthhistory3', property='cvangio',
  required='No', proporder='12', attributes='', quickHelp='', 
  label="Angioplasty/endarterectomy/stent:", context="r",
  list="uds3.udshealthhistory3.CondPresence", style="scale";

insert into viewproperty 
set messageCode='*.udshealthhistory3.cvbypass', locale='en', instance='lava', 
  scope='ucdlava', entity='udshealthhistory3', property='cvbypass',
  required='No', proporder='13', attributes='', quickHelp='', 
  label="Cardiac bypass procedure:", context="r",
  list="uds3.udshealthhistory3.CondPresence", style="scale";

insert into viewproperty 
set messageCode='*.udshealthhistory3.cvpacdef', locale='en', instance='lava', 
  scope='ucdlava', entity='udshealthhistory3', property='cvpacdef',
  required='No', proporder='14', attributes='', quickHelp='', 
  label="Pacemaker and/or defibrillator:", context="r",
  list="uds3.udshealthhistory3.CondPresence", style="scale";

insert into viewproperty 
set messageCode='*.udshealthhistory3.cvchf', locale='en', instance='lava', 
  scope='ucdlava', entity='udshealthhistory3', property='cvchf',
  required='No', proporder='15', attributes='', quickHelp='', 
  label="Congestive heart failure:", context="r",
  list="uds3.udshealthhistory3.CondPresence", style="scale";

insert into viewproperty 
set messageCode='*.udshealthhistory3.cvangina', locale='en', instance='lava', 
  scope='ucdlava', entity='udshealthhistory3', property='cvangina',
  required='No', proporder='16', attributes='', quickHelp='', 
  label="Angina:", context="r",
  list="uds3.udshealthhistory3.CondPresence", style="scale";

insert into viewproperty 
set messageCode='*.udshealthhistory3.cvhvalve', locale='en', instance='lava', 
  scope='ucdlava', entity='udshealthhistory3', property='cvhvalve',
  required='No', proporder='17', attributes='', quickHelp='', 
  label="Heart valve replacement or repair:", context="r",
  list="uds3.udshealthhistory3.CondPresence", style="scale";

insert into viewproperty 
set messageCode='*.udshealthhistory3.cvothr', locale='en', instance='lava', 
  scope='ucdlava', entity='udshealthhistory3', property='cvothr',
  required='No', proporder='18', attributes='', quickHelp='', 
  label="Other cardiovascular disease:", context="r",
  list="uds3.udshealthhistory3.CondPresence", style="scale";

insert into viewproperty 
set messageCode='*.udshealthhistory3.cvothrx', locale='en', instance='lava', 
  scope='ucdlava', entity='udshealthhistory3', property='cvothrx',
  required='No', proporder='19', attributes='', quickHelp='', 
  label="Other cardiovascular disease (specify)::", context="r", maxLength="6", style="string";

insert into viewproperty 
set messageCode='*.udshealthhistory3.cbstroke', locale='en', instance='lava', 
  scope='ucdlava', entity='udshealthhistory3', property='cbstroke',
  required='No', proporder='20', attributes='', quickHelp='', 
  label="Stroke - by history, not exam (imaging is not required):", context="r",
  list="uds3.udshealthhistory3.CondPresence", style="scale";

insert into viewproperty 
set messageCode='*.udshealthhistory3.strokmul', locale='en', instance='lava', 
  scope='ucdlava', entity='udshealthhistory3', property='strokmul',
  required='No', proporder='21', attributes='', quickHelp='', 
  label="More than one stroke?:", context="r",
  list="list.uds3.common.noyesunknown", style="scale";

insert into viewproperty 
set messageCode='*.udshealthhistory3.strokyr', locale='en', instance='lava', 
  scope='ucdlava', entity='udshealthhistory3', property='strokyr',
  required='No', proporder='22', attributes='', quickHelp='', 
  label="Year of most recent stroke:", context="r",
  list="uds3.common.year", style="scale";

insert into viewproperty 
set messageCode='*.udshealthhistory3.cbtia', locale='en', instance='lava', 
  scope='ucdlava', entity='udshealthhistory3', property='cbtia',
  required='No', proporder='23', attributes='', quickHelp='', 
  label="Transient ischemic attack (TIA):", context="r",
  list="uds3.udshealthhistory3.CondPresence", style="scale";

insert into viewproperty 
set messageCode='*.udshealthhistory3.tiamult', locale='en', instance='lava', 
  scope='ucdlava', entity='udshealthhistory3', property='tiamult',
  required='No', proporder='24', attributes='', quickHelp='', 
  label="More than one TIA:", context="r",
  list="list.uds3.common.noyesunknown", style="scale";

insert into viewproperty 
set messageCode='*.udshealthhistory3.tiayear', locale='en', instance='lava', 
  scope='ucdlava', entity='udshealthhistory3', property='tiayear',
  required='No', proporder='25', attributes='', quickHelp='', 
  label="Year of most recent TIA:", context="r",
  list="uds3.common.year", style="scale";

insert into viewproperty 
set messageCode='*.udshealthhistory3.pd', locale='en', instance='lava', 
  scope='ucdlava', entity='udshealthhistory3', property='pd',
  required='No', proporder='26', attributes='', quickHelp='', 
  label="Parkinson’s disease (PD):", context="r",
  list="uds3.udshealthhistory3.PD", style="scale";

insert into viewproperty 
set messageCode='*.udshealthhistory3.pdyr', locale='en', instance='lava', 
  scope='ucdlava', entity='udshealthhistory3', property='pdyr',
  required='No', proporder='27', attributes='', quickHelp='', 
  label="Year of PD diagnosis:", context="r",
  list="uds3.common.year", style="scale";

insert into viewproperty 
set messageCode='*.udshealthhistory3.pdothr', locale='en', instance='lava', 
  scope='ucdlava', entity='udshealthhistory3', property='pdothr',
  required='No', proporder='28', attributes='', quickHelp='', 
  label="Other parkinsonian disorder:", context="r",
  list="uds3.udshealthhistory3.PD", style="scale";

insert into viewproperty 
set messageCode='*.udshealthhistory3.pdothryr', locale='en', instance='lava', 
  scope='ucdlava', entity='udshealthhistory3', property='pdothryr',
  required='No', proporder='29', attributes='', quickHelp='', 
  label="Year of parkinsonian disorder diagnosis:", context="r",
  list="uds3.common.year", style="scale";

insert into viewproperty 
set messageCode='*.udshealthhistory3.seizures', locale='en', instance='lava', 
  scope='ucdlava', entity='udshealthhistory3', property='seizures',
  required='No', proporder='30', attributes='', quickHelp='', 
  label="Seizures:", context="r",
  list="uds3.udshealthhistory3.CondPresence", style="scale";

insert into viewproperty 
set messageCode='*.udshealthhistory3.tbi', locale='en', instance='lava', 
  scope='ucdlava', entity='udshealthhistory3', property='tbi',
  required='No', proporder='31', attributes='', quickHelp='', 
  label="Traumatic brain injury (TBI):", context="r",
  list="uds3.udshealthhistory3.CondPresence", style="scale";

insert into viewproperty 
set messageCode='*.udshealthhistory3.tbibrief', locale='en', instance='lava', 
  scope='ucdlava', entity='udshealthhistory3', property='tbibrief',
  required='No', proporder='32', attributes='', quickHelp='', 
  label="TBI with brief loss of consciousness (< 5 minutes):", context="r",
  list="uds3.udshealthhistory3.TBIBRIEF", style="scale";

insert into viewproperty 
set messageCode='*.udshealthhistory3.tbiexten', locale='en', instance='lava', 
  scope='ucdlava', entity='udshealthhistory3', property='tbiexten',
  required='No', proporder='33', attributes='', quickHelp='', 
  label="TBI with extended loss of consciousness (5 minutes or longer):", context="r",
  list="uds3.udshealthhistory3.TBIBRIEF", style="scale";

insert into viewproperty 
set messageCode='*.udshealthhistory3.tbiwolos', locale='en', instance='lava', 
  scope='ucdlava', entity='udshealthhistory3', property='tbiwolos',
  required='No', proporder='34', attributes='', quickHelp='', 
  label="TBI without loss of consciousness (as might result from military detonations or sports injuries)?:", context="r",
  list="uds3.udshealthhistory3.TBIBRIEF", style="scale";

insert into viewproperty 
set messageCode='*.udshealthhistory3.tbiyear', locale='en', instance='lava', 
  scope='ucdlava', entity='udshealthhistory3', property='tbiyear',
  required='No', proporder='35', attributes='', quickHelp='', 
  label="Year of most recent TBI:", context="r",
  list="uds3.common.year", style="scale";

insert into viewproperty 
set messageCode='*.udshealthhistory3.diabetes', locale='en', instance='lava', 
  scope='ucdlava', entity='udshealthhistory3', property='diabetes',
  required='No', proporder='36', attributes='', quickHelp='', 
  label="Diabetes:", context="r",
  list="uds3.udshealthhistory3.CondPresence", style="scale";

insert into viewproperty 
set messageCode='*.udshealthhistory3.diabtype', locale='en', instance='lava', 
  scope='ucdlava', entity='udshealthhistory3', property='diabtype',
  required='No', proporder='37', attributes='', quickHelp='', 
  label="If Recent/active or Remote/inactive, which type?:", context="r",
  list="uds3.udshealthhistory3.DIABTYPE", style="scale";

insert into viewproperty 
set messageCode='*.udshealthhistory3.hyperten', locale='en', instance='lava', 
  scope='ucdlava', entity='udshealthhistory3', property='hyperten',
  required='No', proporder='38', attributes='', quickHelp='', 
  label="Hypertension:", context="r",
  list="uds3.udshealthhistory3.CondPresence", style="scale";

insert into viewproperty 
set messageCode='*.udshealthhistory3.hypercho', locale='en', instance='lava', 
  scope='ucdlava', entity='udshealthhistory3', property='hypercho',
  required='No', proporder='39', attributes='', quickHelp='', 
  label="Hypercholesterolemia:", context="r",
  list="uds3.udshealthhistory3.CondPresence", style="scale";

insert into viewproperty 
set messageCode='*.udshealthhistory3.b12def', locale='en', instance='lava', 
  scope='ucdlava', entity='udshealthhistory3', property='b12def',
  required='No', proporder='40', attributes='', quickHelp='', 
  label="B12 deficiency:", context="r",
  list="uds3.udshealthhistory3.CondPresence", style="scale";

insert into viewproperty 
set messageCode='*.udshealthhistory3.thyroid', locale='en', instance='lava', 
  scope='ucdlava', entity='udshealthhistory3', property='thyroid',
  required='No', proporder='41', attributes='', quickHelp='', 
  label="Thyroid disease:", context="r",
  list="uds3.udshealthhistory3.CondPresence", style="scale";

insert into viewproperty 
set messageCode='*.udshealthhistory3.arthrit', locale='en', instance='lava', 
  scope='ucdlava', entity='udshealthhistory3', property='arthrit',
  required='No', proporder='42', attributes='', quickHelp='', 
  label="Arthritis:", context="r",
  list="uds3.udshealthhistory3.CondPresence", style="scale";

insert into viewproperty 
set messageCode='*.udshealthhistory3.arthtype', locale='en', instance='lava', 
  scope='ucdlava', entity='udshealthhistory3', property='arthtype',
  required='No', proporder='43', attributes='', quickHelp='', 
  label="Type of arthritis:", context="r",
  list="uds3.udshealthhistory3.ARTHTYPE", style="scale";

insert into viewproperty 
set messageCode='*.udshealthhistory3.arthtypx', locale='en', instance='lava', 
  scope='ucdlava', entity='udshealthhistory3', property='arthtypx',
  required='No', proporder='44', attributes='', quickHelp='', 
  label="Other arthritis (specify):", context="r", maxLength="6", style="string";

insert into viewproperty 
set messageCode='*.udshealthhistory3.arthupex', locale='en', instance='lava', 
  scope='ucdlava', entity='udshealthhistory3', property='arthupex',
  required='No', proporder='45', attributes='', quickHelp='', 
  label="Region affected: upper extremity:", context="r",
  list="uds3.udshealthhistory3.ARTHUPEX", style="scale";

insert into viewproperty 
set messageCode='*.udshealthhistory3.arthloex', locale='en', instance='lava', 
  scope='ucdlava', entity='udshealthhistory3', property='arthloex',
  required='No', proporder='46', attributes='', quickHelp='', 
  label="Region affected: lower extremity:", context="r",
  list="uds3.udshealthhistory3.ARTHLOEX", style="scale";

insert into viewproperty 
set messageCode='*.udshealthhistory3.arthspin', locale='en', instance='lava', 
  scope='ucdlava', entity='udshealthhistory3', property='arthspin',
  required='No', proporder='47', attributes='', quickHelp='', 
  label="Region affected: spine:", context="r",
  list="uds3.udshealthhistory3.ARTHSPIN", style="scale";

insert into viewproperty 
set messageCode='*.udshealthhistory3.arthunk', locale='en', instance='lava', 
  scope='ucdlava', entity='udshealthhistory3', property='arthunk',
  required='No', proporder='48', attributes='', quickHelp='', 
  label="Region affected: unknown:", context="r",
  list="uds3.udshealthhistory3.ARTHUNK", style="scale";

insert into viewproperty 
set messageCode='*.udshealthhistory3.incontu', locale='en', instance='lava', 
  scope='ucdlava', entity='udshealthhistory3', property='incontu',
  required='No', proporder='49', attributes='', quickHelp='', 
  label="Incontinence —- Urinary:", context="r",
  list="uds3.udshealthhistory3.CondPresence", style="scale";

insert into viewproperty 
set messageCode='*.udshealthhistory3.incontf', locale='en', instance='lava', 
  scope='ucdlava', entity='udshealthhistory3', property='incontf',
  required='No', proporder='50', attributes='', quickHelp='', 
  label="Incontinence — Bowel:", context="r",
  list="uds3.udshealthhistory3.CondPresence", style="scale";

insert into viewproperty 
set messageCode='*.udshealthhistory3.apnea', locale='en', instance='lava', 
  scope='ucdlava', entity='udshealthhistory3', property='apnea',
  required='No', proporder='51', attributes='', quickHelp='', 
  label="Sleep apnea:", context="r",
  list="uds3.udshealthhistory3.CondPresence", style="scale";

insert into viewproperty 
set messageCode='*.udshealthhistory3.rbd', locale='en', instance='lava', 
  scope='ucdlava', entity='udshealthhistory3', property='rbd',
  required='No', proporder='52', attributes='', quickHelp='', 
  label="REM sleep behavior disorder (RBD):", context="r",
  list="uds3.udshealthhistory3.CondPresence", style="scale";

insert into viewproperty 
set messageCode='*.udshealthhistory3.insomn', locale='en', instance='lava', 
  scope='ucdlava', entity='udshealthhistory3', property='insomn',
  required='No', proporder='53', attributes='', quickHelp='', 
  label="Hyposomnia/insomnia:", context="r",
  list="uds3.udshealthhistory3.CondPresence", style="scale";

insert into viewproperty 
set messageCode='*.udshealthhistory3.othsleep', locale='en', instance='lava', 
  scope='ucdlava', entity='udshealthhistory3', property='othsleep',
  required='No', proporder='54', attributes='', quickHelp='', 
  label="Other sleep disorder:", context="r",
  list="uds3.udshealthhistory3.CondPresence", style="scale";

insert into viewproperty 
set messageCode='*.udshealthhistory3.othsleex', locale='en', instance='lava', 
  scope='ucdlava', entity='udshealthhistory3', property='othsleex',
  required='No', proporder='55', attributes='', quickHelp='', 
  label="Other sleep disorder (specify):", context="r", maxLength="6", style="string";

insert into viewproperty 
set messageCode='*.udshealthhistory3.alcohol', locale='en', instance='lava', 
  scope='ucdlava', entity='udshealthhistory3', property='alcohol',
  required='No', proporder='56', attributes='', quickHelp='', 
  label="Alcohol abuse: Clinically significant impairment occuring over a 12-month period manifested in one of the following areas: work, driving, legal, or social:", context="r",
  list="uds3.udshealthhistory3.CondPresence", style="scale";

insert into viewproperty 
set messageCode='*.udshealthhistory3.abusothr', locale='en', instance='lava', 
  scope='ucdlava', entity='udshealthhistory3', property='abusothr',
  required='No', proporder='57', attributes='', quickHelp='', 
  label="Other abused substances: Clinically significant impairment occuring over a 12-month period manifested in one of the following areas: work, driving, legal, or social:", context="r",
  list="uds3.udshealthhistory3.CondPresence", style="scale";

insert into viewproperty 
set messageCode='*.udshealthhistory3.abusx', locale='en', instance='lava', 
  scope='ucdlava', entity='udshealthhistory3', property='abusx',
  required='No', proporder='58', attributes='', quickHelp='', 
  label="If Question 6b = 1 (Recent/active) or 2 (Remote/ inactive), then specify abused substance(s):", context="r", maxLength="6", style="string";

insert into viewproperty 
set messageCode='*.udshealthhistory3.ptsd', locale='en', instance='lava', 
  scope='ucdlava', entity='udshealthhistory3', property='ptsd',
  required='No', proporder='59', attributes='', quickHelp='', 
  label="Post-traumatic stress disorder (PTSD):", context="r",
  list="uds3.udshealthhistory3.CondPresence", style="scale";

insert into viewproperty 
set messageCode='*.udshealthhistory3.bipolar', locale='en', instance='lava', 
  scope='ucdlava', entity='udshealthhistory3', property='bipolar',
  required='No', proporder='60', attributes='', quickHelp='', 
  label="Bipolar disorder:", context="r",
  list="uds3.udshealthhistory3.CondPresence", style="scale";

insert into viewproperty 
set messageCode='*.udshealthhistory3.schiz', locale='en', instance='lava', 
  scope='ucdlava', entity='udshealthhistory3', property='schiz',
  required='No', proporder='61', attributes='', quickHelp='', 
  label="Schizophrenia:", context="r",
  list="uds3.udshealthhistory3.CondPresence", style="scale";

insert into viewproperty 
set messageCode='*.udshealthhistory3.dep2yrs', locale='en', instance='lava', 
  scope='ucdlava', entity='udshealthhistory3', property='dep2yrs',
  required='No', proporder='62', attributes='', quickHelp='', 
  label="Active depression in the last two years:", context="r",
  list="list.uds3.common.noyesunknown", style="scale";

insert into viewproperty 
set messageCode='*.udshealthhistory3.depothr', locale='en', instance='lava', 
  scope='ucdlava', entity='udshealthhistory3', property='depothr',
  required='No', proporder='63', attributes='', quickHelp='', 
  label="Depression episodes more than two years ago:", context="r",
  list="list.uds3.common.noyesunknown", style="scale";

insert into viewproperty 
set messageCode='*.udshealthhistory3.anxiety', locale='en', instance='lava', 
  scope='ucdlava', entity='udshealthhistory3', property='anxiety',
  required='No', proporder='64', attributes='', quickHelp='', 
  label="Anxiety:", context="r",
  list="uds3.udshealthhistory3.CondPresence", style="scale";

insert into viewproperty 
set messageCode='*.udshealthhistory3.ocd', locale='en', instance='lava', 
  scope='ucdlava', entity='udshealthhistory3', property='ocd',
  required='No', proporder='65', attributes='', quickHelp='', 
  label="Obsessive-compulsive disorder (OCD):", context="r",
  list="uds3.udshealthhistory3.CondPresence", style="scale";

insert into viewproperty 
set messageCode='*.udshealthhistory3.npsydev', locale='en', instance='lava', 
  scope='ucdlava', entity='udshealthhistory3', property='npsydev',
  required='No', proporder='66', attributes='', quickHelp='', 
  label="Developmental neuropsychiatric disorders (e.g., autism spectrum disorder [ASD], attention-deficit hyperactivity disorder [ADHD], dyslexia):", context="r",
  list="uds3.udshealthhistory3.CondPresence", style="scale";

insert into viewproperty 
set messageCode='*.udshealthhistory3.psycdis', locale='en', instance='lava', 
  scope='ucdlava', entity='udshealthhistory3', property='psycdis',
  required='No', proporder='67', attributes='', quickHelp='', 
  label="Other psychiatric disordersl:", context="r",
  list="uds3.udshealthhistory3.CondPresence", style="scale";

insert into viewproperty 
set messageCode='*.udshealthhistory3.psycdisx', locale='en', instance='lava', 
  scope='ucdlava', entity='udshealthhistory3', property='psycdisx',
  required='No', proporder='68', attributes='', quickHelp='', 
  label="If recent/active or remote/ inactive, specify disorder:", context="r", maxLength="6", style="string";


