ALTER TABLE udshealthhistory
   MODIFY COLUMN TOBAC30 SMALLINT AFTER INSTRID,
   MODIFY COLUMN TOBAC100 SMALLINT AFTER TOBAC30,
   MODIFY COLUMN SMOKYRS SMALLINT AFTER TOBAC100,
   MODIFY COLUMN PACKSPER SMALLINT AFTER SMOKYRS,
   MODIFY COLUMN QUITSMOK SMALLINT AFTER PACKSPER,
   ADD ALCOCCAS SMALLINT AFTER QUITSMOK,
   ADD ALCFREQ SMALLINT AFTER ALCOCCAS,
   ADD HATTMULT SMALLINT AFTER CVHATT,
   ADD HATTYEAR SMALLINT AFTER HATTMULT,
   ADD CVPACDEF SMALLINT AFTER CVPACE,
   ADD CVANGINA SMALLINT AFTER CVCHF,
   ADD CVHVALVE SMALLINT AFTER CVANGINA,
   ADD STROKMUL SMALLINT AFTER STROK6YR,
   ADD STROKYR SMALLINT AFTER STROKMUL,
   ADD TIAMULT SMALLINT AFTER TIA6YR,
   ADD TIAYEAR SMALLINT AFTER TIAMULT,
   ADD TBI SMALLINT AFTER TRAUMCHR,
   ADD TBIBRIEF SMALLINT AFTER TBI,
   ADD TBIEXTEN SMALLINT AFTER TBIBRIEF,
   ADD TBIWOLOS SMALLINT AFTER TBIEXTEN,
   ADD TBIYEAR SMALLINT AFTER TBIWOLOS,
   ADD DIABTYPE SMALLINT AFTER DIABETES,
   ADD ARTHRIT SMALLINT AFTER THYROID,
   ADD ARTHTYPE SMALLINT AFTER ARTHRIT,
   ADD ARTHTYPX VARCHAR(60) AFTER ARTHTYPE,
   ADD ARTHUPEX SMALLINT AFTER ARTHTYPX,
   ADD ARTHLOEX SMALLINT AFTER ARTHUPEX,
   ADD ARTHSPIN SMALLINT AFTER ARTHLOEX,
   ADD ARTHUNK SMALLINT AFTER ARTHSPIN,
   ADD APNEA SMALLINT AFTER INCONTF,
   ADD RBD SMALLINT AFTER APNEA,
   ADD INSOMN SMALLINT AFTER RBD,
   ADD OTHSLEEP SMALLINT AFTER INSOMN,
   ADD OTHSLEEX VARCHAR(60) AFTER OTHSLEEP,
   MODIFY COLUMN ALCOHOL SMALLINT AFTER OTHSLEEX,
   MODIFY COLUMN ABUSOTHR SMALLINT AFTER ALCOHOL,
   MODIFY COLUMN ABUSX VARCHAR(60) AFTER ABUSOTHR,
   ADD PTSD SMALLINT AFTER ABUSX,
   ADD BIPOLAR SMALLINT AFTER PTSD,
   ADD SCHIZ SMALLINT AFTER BIPOLAR,
   ADD ANXIETY SMALLINT AFTER DEPOTHR,
   ADD OCD SMALLINT AFTER ANXIETY,
   ADD NPSYDEV SMALLINT AFTER OCD;
   

  
DELETE FROM viewproperty WHERE entity="udshealthhistory3";

insert into viewproperty 
set messageCode='*.udshealthhistory3.tobac30', locale='en', instance='lava', 
  scope='crms-nacc', entity='udshealthhistory3', property='tobac30',
  required='No', proporder='1', attributes='', quickHelp='', 
  label="1a. Has subject smoked within the last 30 days?", context="r",
  list="uds.noYesUnknown019", style="scale";

insert into viewproperty 
set messageCode='*.udshealthhistory3.tobac100', locale='en', instance='lava', 
  scope='crms-nacc', entity='udshealthhistory3', property='tobac100',
  required='No', proporder='2', attributes='', quickHelp='', 
  label="1b. Has subject smoked more than 100 cigarettes in his/her life?", context="r",
  list="uds.noYesUnknown019", style="scale";



-- recode  
insert into viewproperty 
set messageCode='*.udshealthhistory3.smokYrs', locale='en', instance='lava', 
  scope='crms-nacc', entity='udshealthhistory3', property='smokYrs',
  required='No', proporder='3', attributes='', quickHelp='', 
  label="1c. Total years smoked (99 = unknown)", context="r",
  list="uds.healthhistory3.SMOKYRS", style="scale";

-- recode
insert into viewproperty 
set messageCode='*.udshealthhistory3.packsPer', locale='en', instance='lava', 
  scope='crms-nacc', entity='udshealthhistory3', property='packsPer',
  required='No', proporder='4', attributes='', quickHelp='', 
  label="1d. Average number of packs smoked per day", context="r",
  list="uds.healthhistory3.PACKSPER", style="scale";

insert into viewproperty 
set messageCode='*.udshealthhistory3.quitSmok', locale='en', instance='lava', 
  scope='crms-nacc', entity='udshealthhistory3', property='quitSmok',
  required='No', proporder='5', attributes='', quickHelp='', 
  label="1e. If the subject quit smoking, specify age at which he/she last smoked (i.e., quit) (888 = N/A, 999 = unknown)", context="r",
  list="uds.ageNAUnknown", style="scale";
 
-- new
insert into viewproperty 
set messageCode='*.udshealthhistory3.alcoCcas', locale='en', instance='lava', 
  scope='crms-nacc', entity='udshealthhistory3', property='alcoCcas',
  required='No', proporder='6', attributes='', quickHelp='', 
  label="1f. In the past three months, has the subject consumed any alcohol?", context="r",
  list="uds.noYesUnknown019", style="scale";

-- new
insert into viewproperty 
set messageCode='*.udshealthhistory3.alcFreq', locale='en', instance='lava', 
  scope='crms-nacc', entity='udshealthhistory3', property='alcFreq',
  required='No', proporder='7', attributes='', quickHelp='', 
  label="1g. During the past three months, how often did the subject have at least one drink of any alcoholic beverage such as wine, beer, malt liquor, or spirits?", context="r",
  list="uds.healthhistory3.ALCFREQ", style="scale";

insert into viewproperty 
set messageCode='*.udshealthhistory3.cvHAtt', locale='en', instance='lava', 
  scope='crms-nacc', entity='udshealthhistory3', property='cvHAtt',
  required='No', proporder='8', attributes='', quickHelp='', 
  label="2a. Heart attack/cardiac arrest", context="r",
  list="uds.a5.presence4", style="scale";

-- new
insert into viewproperty 
set messageCode='*.udshealthhistory3.hattMult', locale='en', instance='lava', 
  scope='crms-nacc', entity='udshealthhistory3', property='hattMult',
  required='No', proporder='9', attributes='', quickHelp='', 
  label="2a1. More than one heart attack?", context="r", indentLevel=1,
  list="uds.noYesUnknown019", style="scale";

-- new
insert into viewproperty 
set messageCode='*.udshealthhistory3.hattYear', locale='en', instance='lava', 
  scope='crms-nacc', entity='udshealthhistory3', property='hattYear',
  required='No', proporder='10', attributes='', quickHelp='', 
  label="2a2. Year of most recent heart attack (9999 = unknown)", context="r", indentLevel=1,
  list="uds.yearUnknown", style="scale";

insert into viewproperty 
set messageCode='*.udshealthhistory3.cvAFib', locale='en', instance='lava', 
  scope='crms-nacc', entity='udshealthhistory3', property='cvAFib',
  required='No', proporder='11', attributes='', quickHelp='', 
  label="2b. Atrial fibrillation", context="r",
  list="uds.a5.presence4", style="scale";

insert into viewproperty 
set messageCode='*.udshealthhistory3.cvAngio', locale='en', instance='lava', 
  scope='crms-nacc', entity='udshealthhistory3', property='cvAngio',
  required='No', proporder='12', attributes='', quickHelp='', 
  label="2c. Angioplasty/endarterectomy/stent", context="r",
  list="uds.a5.presence4", style="scale";

insert into viewproperty 
set messageCode='*.udshealthhistory3.cvBypass', locale='en', instance='lava', 
  scope='crms-nacc', entity='udshealthhistory3', property='cvBypass',
  required='No', proporder='13', attributes='', quickHelp='', 
  label="2d. Cardiac bypass procedure", context="r",
  list="uds.a5.presence4", style="scale";

-- new
insert into viewproperty 
set messageCode='*.udshealthhistory3.cvPacDef', locale='en', instance='lava', 
  scope='crms-nacc', entity='udshealthhistory3', property='cvPacDef',
  required='No', proporder='14', attributes='', quickHelp='', 
  label="2e. Pacemaker and/or defibrillator", context="r",
  list="uds.a5.presence4", style="scale";

insert into viewproperty 
set messageCode='*.udshealthhistory3.cvChf', locale='en', instance='lava', 
  scope='crms-nacc', entity='udshealthhistory3', property='cvChf',
  required='No', proporder='15', attributes='', quickHelp='', 
  label="2f. Congestive heart failure", context="r",
  list="uds.a5.presence4", style="scale";

-- new
insert into viewproperty 
set messageCode='*.udshealthhistory3.cvAngina', locale='en', instance='lava', 
  scope='crms-nacc', entity='udshealthhistory3', property='cvAngina',
  required='No', proporder='16', attributes='', quickHelp='', 
  label="2g. Angina", context="r",
  list="uds.a5.presence4", style="scale";

-- new
insert into viewproperty 
set messageCode='*.udshealthhistory3.cvHValve', locale='en', instance='lava', 
  scope='crms-nacc', entity='udshealthhistory3', property='cvHValve',
  required='No', proporder='17', attributes='', quickHelp='', 
  label="2h. Heart valve replacement or repair", context="r",
  list="uds.a5.presence4", style="scale";

insert into viewproperty 
set messageCode='*.udshealthhistory3.cvOthr', locale='en', instance='lava', 
  scope='crms-nacc', entity='udshealthhistory3', property='cvOthr',
  required='No', proporder='18', attributes='', quickHelp='', 
  label="2i. Other cardiovascular disease", context="r",
  list="uds.a5.presence4", style="scale";

insert into viewproperty 
set messageCode='*.udshealthhistory3.cvOthrx', locale='en', instance='lava', 
  scope='crms-nacc', entity='udshealthhistory3', property='cvOthrx', indentLevel=1,
  required='No', proporder='19', attributes='onkeypress="UDS_onlyNaccCharactersAllowed(event)"', quickHelp='', 
  label="Other cardiovascular disease (specify)", context="i", maxLength="60", size="60", style="string";

insert into viewproperty 
set messageCode='*.udshealthhistory3.cbStroke', locale='en', instance='lava', 
  scope='crms-nacc', entity='udshealthhistory3', property='cbStroke',
  required='No', proporder='20', attributes='', quickHelp='', 
  label="3a. Stroke - by history, not exam (imaging is not required)", context="r",
  list="uds.a5.presence4", style="scale";

-- new
insert into viewproperty 
set messageCode='*.udshealthhistory3.strokMul', locale='en', instance='lava', 
  scope='crms-nacc', entity='udshealthhistory3', property='strokMul',
  required='No', proporder='21', attributes='', quickHelp='', 
  label="3a1. More than one stroke?", context="r", indentLevel="1",
  list="uds.noYesUnknown019", style="scale";

-- new
insert into viewproperty 
set messageCode='*.udshealthhistory3.strokYr', locale='en', instance='lava', 
  scope='crms-nacc', entity='udshealthhistory3', property='strokYr',
  required='No', proporder='22', attributes='', quickHelp='', 
  label="3a2. Year of most recent stroke (9999 = unknown)", context="r", indentLevel="1",
  list="uds.yearUnknown", style="scale";

insert into viewproperty 
set messageCode='*.udshealthhistory3.cbTia', locale='en', instance='lava', 
  scope='crms-nacc', entity='udshealthhistory3', property='cbTia',
  required='No', proporder='23', attributes='', quickHelp='', 
  label="3b. Transient ischemic attack (TIA)", context="r",
  list="uds.a5.presence4", style="scale";

-- new
insert into viewproperty 
set messageCode='*.udshealthhistory3.tiaMult', locale='en', instance='lava', 
  scope='crms-nacc', entity='udshealthhistory3', property='tiaMult',
  required='No', proporder='24', attributes='', quickHelp='', 
  label="3b1. More than one TIA", context="r", indentLevel="1",
  list="uds.noYesUnknown019", style="scale";

-- new
insert into viewproperty 
set messageCode='*.udshealthhistory3.tiaYear', locale='en', instance='lava', 
  scope='crms-nacc', entity='udshealthhistory3', property='tiaYear',
  required='No', proporder='25', attributes='', quickHelp='', 
  label="3b2. Year of most recent TIA (9999 = unknown)", context="r", indentLevel="1",
  list="uds.yearUnknown", style="scale";

insert into viewproperty 
set messageCode='*.udshealthhistory3.pd', locale='en', instance='lava', 
  scope='crms-nacc', entity='udshealthhistory3', property='pd',
  required='No', proporder='26', attributes='', quickHelp='', 
  label="4a. Parkinson's disease (PD)", context="r",
  list="uds.a5.presence3", style="scale";

insert into viewproperty 
set messageCode='*.udshealthhistory3.pdYr', locale='en', instance='lava', 
  scope='crms-nacc', entity='udshealthhistory3', property='pdYr',
  required='No', proporder='27', attributes='', quickHelp='', 
  label="4a1. Year of PD diagnosis (9999 = unknown)", context="r", indentLevel=1,
  list="uds.yearUnknown", style="scale";

insert into viewproperty 
set messageCode='*.udshealthhistory3.pdOthr', locale='en', instance='lava', 
  scope='crms-nacc', entity='udshealthhistory3', property='pdOthr',
  required='No', proporder='28', attributes='', quickHelp='', 
  label="4b. Other parkinsonian disorder (e.g. PSP, CBD)", context="r",
  list="uds.a5.presence3", style="scale";

insert into viewproperty 
set messageCode='*.udshealthhistory3.pdOthrYr', locale='en', instance='lava', 
  scope='crms-nacc', entity='udshealthhistory3', property='pdOthrYr',
  required='No', proporder='29', attributes='', quickHelp='', indentLevel=1,
  label="4b1. Year of parkinsonian disorder diagnosis (9999 = unknown)", context="r",
  list="uds.yearUnknown", style="scale";

insert into viewproperty 
set messageCode='*.udshealthhistory3.seizures', locale='en', instance='lava', 
  scope='crms-nacc', entity='udshealthhistory3', property='seizures',
  required='No', proporder='30', attributes='', quickHelp='', 
  label="4c. Seizures", context="r",
  list="uds.a5.presence4", style="scale";

-- new
insert into viewproperty 
set messageCode='*.udshealthhistory3.tbi', locale='en', instance='lava', 
  scope='crms-nacc', entity='udshealthhistory3', property='tbi',
  required='No', proporder='31', attributes='', quickHelp='', 
  label="4d. Traumatic brain injury (TBI)", context="r",
  list="uds.a5.presence4", style="scale";

-- new
insert into viewproperty 
set messageCode='*.udshealthhistory3.tbiBrief', locale='en', instance='lava', 
  scope='crms-nacc', entity='udshealthhistory3', property='tbiBrief',
  required='No', proporder='32', attributes='', quickHelp='',  indentLevel="1",
  label="4d1. TBI with brief loss of consciousness (< 5 minutes)", context="r",
  list="uds.healthhistory3.TBI", style="scale";

-- new
insert into viewproperty 
set messageCode='*.udshealthhistory3.tbiExten', locale='en', instance='lava', 
  scope='crms-nacc', entity='udshealthhistory3', property='tbiExten',
  required='No', proporder='33', attributes='', quickHelp='',  indentLevel="1",
  label="4d2. TBI with extended loss of consciousness (5 minutes or longer)", context="r",
  list="uds.healthhistory3.TBI", style="scale";

-- new
insert into viewproperty 
set messageCode='*.udshealthhistory3.tbiWolos', locale='en', instance='lava', 
  scope='crms-nacc', entity='udshealthhistory3', property='tbiWolos',
  required='No', proporder='34', attributes='', quickHelp='',  indentLevel="1",
  label="4d3. TBI without loss of consciousness (as might result from military detonations or sports injuries)?", context="r",
  list="uds.healthhistory3.TBI", style="scale";

-- new
insert into viewproperty 
set messageCode='*.udshealthhistory3.tbiYear', locale='en', instance='lava', 
  scope='crms-nacc', entity='udshealthhistory3', property='tbiYear',
  required='No', proporder='35', attributes='', quickHelp='',  indentLevel="1",
  label="4d4. Year of most recent TBI (9999 = unknown)", context="r",
  list="uds.yearUnknown", style="scale";

insert into viewproperty 
set messageCode='*.udshealthhistory3.diabetes', locale='en', instance='lava', 
  scope='crms-nacc', entity='udshealthhistory3', property='diabetes',
  required='No', proporder='36', attributes='', quickHelp='', 
  label="5a. Diabetes", context="r",
  list="uds.a5.presence4", style="scale";

-- new
insert into viewproperty 
set messageCode='*.udshealthhistory3.diabType', locale='en', instance='lava', 
  scope='crms-nacc', entity='udshealthhistory3', property='diabType',
  required='No', proporder='37', attributes='', quickHelp='',  indentLevel="1",
  label="5a1. If Recent/active or Remote/inactive, which type?", context="r",
  list="uds.healthhistory3.DIABTYPE", style="scale";

insert into viewproperty 
set messageCode='*.udshealthhistory3.hyperten', locale='en', instance='lava', 
  scope='crms-nacc', entity='udshealthhistory3', property='hyperten',
  required='No', proporder='38', attributes='', quickHelp='', 
  label="5b. Hypertension", context="r",
  list="uds.a5.presence4", style="scale";

insert into viewproperty 
set messageCode='*.udshealthhistory3.hyperCho', locale='en', instance='lava', 
  scope='crms-nacc', entity='udshealthhistory3', property='hyperCho',
  required='No', proporder='39', attributes='', quickHelp='', 
  label="5c. Hypercholesterolemia", context="r",
  list="uds.a5.presence4", style="scale";

insert into viewproperty 
set messageCode='*.udshealthhistory3.b12Def', locale='en', instance='lava', 
  scope='crms-nacc', entity='udshealthhistory3', property='b12Def',
  required='No', proporder='40', attributes='', quickHelp='', 
  label="5d. B12 deficiency", context="r",
  list="uds.a5.presence4", style="scale";

insert into viewproperty 
set messageCode='*.udshealthhistory3.thyroid', locale='en', instance='lava', 
  scope='crms-nacc', entity='udshealthhistory3', property='thyroid',
  required='No', proporder='41', attributes='', quickHelp='', 
  label="5e. Thyroid disease", context="r",
  list="uds.a5.presence4", style="scale";
  
-- new
insert into viewproperty 
set messageCode='*.udshealthhistory3.arthrit', locale='en', instance='lava', 
  scope='crms-nacc', entity='udshealthhistory3', property='arthrit',
  required='No', proporder='42', attributes='', quickHelp='', 
  label="5f. Arthritis", context="r",
  list="uds.a5.presence4", style="scale";

-- new
insert into viewproperty 
set messageCode='*.udshealthhistory3.arthType', locale='en', instance='lava', 
  scope='crms-nacc', entity='udshealthhistory3', property='arthType',
  required='No', proporder='43', attributes='', quickHelp='',   indentLevel="1",
  label="5f1. Type of arthritis", context="r",
  list="uds.healthhistory3.ARTHTYPE", style="scale";

-- new
insert into viewproperty 
set messageCode='*.udshealthhistory3.arthTypx', locale='en', instance='lava', 
  scope='crms-nacc', entity='udshealthhistory3', property='arthTypx',  indentLevel="1",
  required='No', proporder='44', attributes='onkeypress="UDS_onlyNaccCharactersAllowed(event)"', quickHelp='', 
  label="Other (specify)", context="i", maxLength="60", size="60", style="string";

-- new
insert into viewproperty 
set messageCode='*.udshealthhistory3.arthUpEx', locale='en', instance='lava', 
  scope='crms-nacc', entity='udshealthhistory3', property='arthUpEx',
  required='No', proporder='45', attributes='', quickHelp='',   indentLevel="1",
  label="5f2a. Upper extremity", context="r",
  list="uds.noYes01", style="scale";

-- new
insert into viewproperty 
set messageCode='*.udshealthhistory3.arthLoEx', locale='en', instance='lava', 
  scope='crms-nacc', entity='udshealthhistory3', property='arthLoEx',  indentLevel="1",
  required='No', proporder='46', attributes='', quickHelp='', 
  label="5f2b. Lower extremity", context="r",
  list="uds.noYes01", style="scale";

-- new
insert into viewproperty 
set messageCode='*.udshealthhistory3.arthSpin', locale='en', instance='lava', 
  scope='crms-nacc', entity='udshealthhistory3', property='arthSpin',  indentLevel="1",
  required='No', proporder='47', attributes='', quickHelp='', 
  label="5f2c. Spine", context="r",
  list="uds.noYes01", style="scale";

-- new
insert into viewproperty 
set messageCode='*.udshealthhistory3.arthUnk', locale='en', instance='lava', 
  scope='crms-nacc', entity='udshealthhistory3', property='arthUnk',  indentLevel="1",
  required='No', proporder='48', attributes='', quickHelp='', 
  label="5f2d. Unknown", context="r",
  list="uds.noYes01", style="scale";

insert into viewproperty 
set messageCode='*.udshealthhistory3.incontU', locale='en', instance='lava', 
  scope='crms-nacc', entity='udshealthhistory3', property='incontU',
  required='No', proporder='49', attributes='', quickHelp='', 
  label="5g. Incontinence - Urinary", context="r",
  list="uds.a5.presence4", style="scale";

insert into viewproperty 
set messageCode='*.udshealthhistory3.incontF', locale='en', instance='lava', 
  scope='crms-nacc', entity='udshealthhistory3', property='incontF',
  required='No', proporder='50', attributes='', quickHelp='', 
  label="5h. Incontinence - Bowel", context="r",
  list="uds.a5.presence4", style="scale";

-- new
insert into viewproperty 
set messageCode='*.udshealthhistory3.apnea', locale='en', instance='lava', 
  scope='crms-nacc', entity='udshealthhistory3', property='apnea',
  required='No', proporder='51', attributes='', quickHelp='', 
  label="5i. Sleep apnea", context="r",
  list="uds.a5.presence4", style="scale";

-- new
insert into viewproperty 	
set messageCode='*.udshealthhistory3.rbd', locale='en', instance='lava', 
  scope='crms-nacc', entity='udshealthhistory3', property='rbd',
  required='No', proporder='52', attributes='', quickHelp='', 
  label="5j. REM sleep behavior disorder (RBD)", context="r",
  list="uds.a5.presence4", style="scale";

-- new
insert into viewproperty 
set messageCode='*.udshealthhistory3.insomn', locale='en', instance='lava', 
  scope='crms-nacc', entity='udshealthhistory3', property='insomn',
  required='No', proporder='53', attributes='', quickHelp='', 
  label="5k. Hyposomnia/insomnia", context="r",
  list="uds.a5.presence4", style="scale";

-- new
insert into viewproperty 
set messageCode='*.udshealthhistory3.othSleep', locale='en', instance='lava', 
  scope='crms-nacc', entity='udshealthhistory3', property='othSleep',
  required='No', proporder='54', attributes='', quickHelp='', 
  label="5l. Other sleep disorder", context="r",
  list="uds.a5.presence4", style="scale";

-- new
insert into viewproperty 
set messageCode='*.udshealthhistory3.othSleex', locale='en', instance='lava', 
  scope='crms-nacc', entity='udshealthhistory3', property='othSleex', indentLevel=1,
  required='No', proporder='55', attributes='onkeypress="UDS_onlyNaccCharactersAllowed(event)"', quickHelp='', 
  label="If recent, specify", context="i", maxLength="60", size="60", style="string";

insert into viewproperty 
set messageCode='*.udshealthhistory3.alcohol', locale='en', instance='lava', 
  scope='crms-nacc', entity='udshealthhistory3', property='alcohol',
  required='No', proporder='56', attributes='', quickHelp='', 
  label="6a. Alcohol abuse: Clinically significant impairment occuring over a 12-month period manifested in one of the following areas: work, driving, legal, or social", context="r",
  list="uds.a5.presence4", style="scale";

insert into viewproperty 
set messageCode='*.udshealthhistory3.abusOthr', locale='en', instance='lava', 
  scope='crms-nacc', entity='udshealthhistory3', property='abusOthr',
  required='No', proporder='57', attributes='', quickHelp='', 
  label="6b. Other abused substances: Clinically significant impairment occuring over a 12-month period manifested in one of the following areas: work, driving, legal, or social", context="r",
  list="uds.a5.presence4", style="scale";

insert into viewproperty 
set messageCode='*.udshealthhistory3.abusx', locale='en', instance='lava', 
  scope='crms-nacc', entity='udshealthhistory3', property='abusx', indentLevel=1,
  required='No', proporder='58', attributes='onkeypress="UDS_onlyNaccCharactersAllowed(event)"', quickHelp='', 
  label="6b1. If Question 6b = 1 (Recent/active) or 2 (Remote/ inactive), then specify abused substance(s)", context="i", maxLength="60", size="60", style="string";

-- new
insert into viewproperty 
set messageCode='*.udshealthhistory3.ptsd', locale='en', instance='lava', 
  scope='crms-nacc', entity='udshealthhistory3', property='ptsd',
  required='No', proporder='59', attributes='', quickHelp='', 
  label="7a. Post-traumatic stress disorder (PTSD)", context="r",
  list="uds.a5.presence4", style="scale";

-- new
insert into viewproperty 
set messageCode='*.udshealthhistory3.bipolar', locale='en', instance='lava', 
  scope='crms-nacc', entity='udshealthhistory3', property='bipolar',
  required='No', proporder='60', attributes='', quickHelp='', 
  label="7b. Bipolar disorder", context="r",
  list="uds.a5.presence4", style="scale";

-- new
insert into viewproperty 
set messageCode='*.udshealthhistory3.schiz', locale='en', instance='lava', 
  scope='crms-nacc', entity='udshealthhistory3', property='schiz',
  required='No', proporder='61', attributes='', quickHelp='', 
  label="7c. Schizophrenia", context="r",
  list="uds.a5.presence4", style="scale";

insert into viewproperty 
set messageCode='*.udshealthhistory3.dep2Yrs', locale='en', instance='lava', 
  scope='crms-nacc', entity='udshealthhistory3', property='dep2Yrs',
  required='No', proporder='62', attributes='', quickHelp='', 
  label="7d1. Active depression in the last two years", context="r",
  list="uds.noYesUnknown019", style="scale";

insert into viewproperty 
set messageCode='*.udshealthhistory3.depOthr', locale='en', instance='lava', 
  scope='crms-nacc', entity='udshealthhistory3', property='depOthr',
  required='No', proporder='63', attributes='', quickHelp='', 
  label="7d2. Depression episodes more than two years ago", context="r",
  list="uds.noYesUnknown019", style="scale";

-- new
insert into viewproperty 
set messageCode='*.udshealthhistory3.anxiety', locale='en', instance='lava', 
  scope='crms-nacc', entity='udshealthhistory3', property='anxiety',
  required='No', proporder='64', attributes='', quickHelp='', 
  label="7e. Anxiety", context="r",
  list="uds.a5.presence4", style="scale";

-- new
insert into viewproperty 
set messageCode='*.udshealthhistory3.ocd', locale='en', instance='lava', 
  scope='crms-nacc', entity='udshealthhistory3', property='ocd',
  required='No', proporder='65', attributes='', quickHelp='', 
  label="7f. Obsessive-compulsive disorder (OCD)", context="r",
  list="uds.a5.presence4", style="scale";

-- new
insert into viewproperty 
set messageCode='*.udshealthhistory3.npsyDev', locale='en', instance='lava', 
  scope='crms-nacc', entity='udshealthhistory3', property='npsyDev',
  required='No', proporder='66', attributes='', quickHelp='', 
  label="7g. Developmental neuropsychiatric disorders (e.g., ASD, ADHD, dyslexia)", context="r",
  list="uds.a5.presence4", style="scale";

insert into viewproperty 
set messageCode='*.udshealthhistory3.psycDis', locale='en', instance='lava', 
  scope='crms-nacc', entity='udshealthhistory3', property='psycDis',
  required='No', proporder='67', attributes='', quickHelp='', 
  label="7h. Other psychiatric disorders", context="r",
  list="uds.a5.presence4", style="scale";

insert into viewproperty 
set messageCode='*.udshealthhistory3.psycDisx', locale='en', instance='lava', 
  scope='crms-nacc', entity='udshealthhistory3', property='psycDisx', indentLevel=1,
  required='No', proporder='68', attributes='onkeypress="UDS_onlyNaccCharactersAllowed(event)"', quickHelp='', 
  label="7h1. If recent/active or remote/ inactive, specify disorder", context="i", maxLength="60", size="60", style="string";

   
