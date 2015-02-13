DELETE FROM viewproperty WHERE entity="udshealthhistory3";

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
   
   
-- Add columns to viewproperty table
-- only need metadata for new and recoded properties. properties that have not changed can use UDS 2.0 metadata
-- Add columns to viewproperty table

-- recode  
insert into viewproperty 
set messageCode='*.udshealthhistory3.smokYrs', locale='en', instance='lava', 
  scope='crms-nacc', entity='udshealthhistory3', property='smokYrs',
  required='No', proporder='3', attributes='', quickHelp='', 
  label="Total years smoked:", context="r",
  list="uds.healthhistory3.SMOKYRS", style="scale";

-- recode
insert into viewproperty 
set messageCode='*.udshealthhistory3.packsPer', locale='en', instance='lava', 
  scope='crms-nacc', entity='udshealthhistory3', property='packsPer',
  required='No', proporder='4', attributes='', quickHelp='', 
  label="Average number of packs smoked per day:", context="r",
  list="uds.healthhistory3.PACKSPER", style="scale";

-- new
insert into viewproperty 
set messageCode='*.udshealthhistory3.alcoCcas', locale='en', instance='lava', 
  scope='crms-nacc', entity='udshealthhistory3', property='alcoCcas',
  required='No', proporder='6', attributes='', quickHelp='', 
  label="In the past three months, has the subject consumed any alcohol?:", context="r",
  list="uds.noYesUnknown019", style="scale";

-- new
insert into viewproperty 
set messageCode='*.udshealthhistory3.alcFreq', locale='en', instance='lava', 
  scope='crms-nacc', entity='udshealthhistory3', property='alcFreq',
  required='No', proporder='7', attributes='', quickHelp='', 
  label="During the past three months, how often did the subject have at least one drink of any alcoholic beverage such as wine, beer, malt liquor, or spirits?:", context="r",
  list="uds.healthhistory3.ALCFREQ", style="scale";

-- new
insert into viewproperty 
set messageCode='*.udshealthhistory3.hattMult', locale='en', instance='lava', 
  scope='crms-nacc', entity='udshealthhistory3', property='hattMult',
  required='No', proporder='9', attributes='', quickHelp='', 
  label="More than one heart attack?:", context="r",
  list="uds.noYesUnknown019", style="scale";

-- new
insert into viewproperty 
set messageCode='*.udshealthhistory3.hattYear', locale='en', instance='lava', 
  scope='crms-nacc', entity='udshealthhistory3', property='hattYear',
  required='No', proporder='10', attributes='', quickHelp='', 
  label="Year of most recent heart attack:", context="r",
  list="uds.yearUnknown", style="scale";

-- new
insert into viewproperty 
set messageCode='*.udshealthhistory3.cvPacDef', locale='en', instance='lava', 
  scope='crms-nacc', entity='udshealthhistory3', property='cvPacDef',
  required='No', proporder='14', attributes='', quickHelp='', 
  label="Pacemaker and/or defibrillator:", context="r",
  list="uds.a5.presence4", style="scale";

-- new
insert into viewproperty 
set messageCode='*.udshealthhistory3.cvAngina', locale='en', instance='lava', 
  scope='crms-nacc', entity='udshealthhistory3', property='cvAngina',
  required='No', proporder='16', attributes='', quickHelp='', 
  label="Angina:", context="r",
  list="uds.a5.presence4", style="scale";

-- new
insert into viewproperty 
set messageCode='*.udshealthhistory3.cvHValve', locale='en', instance='lava', 
  scope='crms-nacc', entity='udshealthhistory3', property='cvHValve',
  required='No', proporder='17', attributes='', quickHelp='', 
  label="Heart valve replacement or repair:", context="r",
  list="uds.a5.presence4", style="scale";

-- new
insert into viewproperty 
set messageCode='*.udshealthhistory3.strokMul', locale='en', instance='lava', 
  scope='crms-nacc', entity='udshealthhistory3', property='strokMul',
  required='No', proporder='21', attributes='', quickHelp='', 
  label="More than one stroke?:", context="r", indentLevel="1",
  list="uds.noYesUnknown019", style="scale";

-- new
insert into viewproperty 
set messageCode='*.udshealthhistory3.strokYr', locale='en', instance='lava', 
  scope='crms-nacc', entity='udshealthhistory3', property='strokYr',
  required='No', proporder='22', attributes='', quickHelp='', 
  label="Year of most recent stroke:", context="r", indentLevel="1",
  list="uds.yearUnknown", style="scale";

-- new
insert into viewproperty 
set messageCode='*.udshealthhistory3.tiaMult', locale='en', instance='lava', 
  scope='crms-nacc', entity='udshealthhistory3', property='tiaMult',
  required='No', proporder='24', attributes='', quickHelp='', 
  label="More than one TIA:", context="r", indentLevel="1",
  list="uds.noYesUnknown019", style="scale";

-- new
insert into viewproperty 
set messageCode='*.udshealthhistory3.tiaYear', locale='en', instance='lava', 
  scope='crms-nacc', entity='udshealthhistory3', property='tiaYear',
  required='No', proporder='25', attributes='', quickHelp='', 
  label="Year of most recent TIA:", context="r", indentLevel="1",
  list="uds.yearUnknown", style="scale";

-- new
insert into viewproperty 
set messageCode='*.udshealthhistory3.tbi', locale='en', instance='lava', 
  scope='crms-nacc', entity='udshealthhistory3', property='tbi',
  required='No', proporder='31', attributes='', quickHelp='', 
  label="Traumatic brain injury (TBI):", context="r",
  list="uds.a5.presence4", style="scale";

-- new
insert into viewproperty 
set messageCode='*.udshealthhistory3.tbiBrief', locale='en', instance='lava', 
  scope='crms-nacc', entity='udshealthhistory3', property='tbiBrief',
  required='No', proporder='32', attributes='', quickHelp='',  indentLevel="1",
  label="TBI with brief loss of consciousness (< 5 minutes):", context="r",
  list="uds.healthhistory3.TBI", style="scale";

-- new
insert into viewproperty 
set messageCode='*.udshealthhistory3.tbiExten', locale='en', instance='lava', 
  scope='crms-nacc', entity='udshealthhistory3', property='tbiExten',
  required='No', proporder='33', attributes='', quickHelp='',  indentLevel="1",
  label="TBI with extended loss of consciousness (5 minutes or longer):", context="r",
  list="uds.healthhistory3.TBI", style="scale";

-- new
insert into viewproperty 
set messageCode='*.udshealthhistory3.tbiWolos', locale='en', instance='lava', 
  scope='crms-nacc', entity='udshealthhistory3', property='tbiWolos',
  required='No', proporder='34', attributes='', quickHelp='',  indentLevel="1",
  label="TBI without loss of consciousness (as might result from military detonations or sports injuries)?:", context="r",
  list="uds.healthhistory3.TBI", style="scale";

-- new
insert into viewproperty 
set messageCode='*.udshealthhistory3.tbiYear', locale='en', instance='lava', 
  scope='crms-nacc', entity='udshealthhistory3', property='tbiYear',
  required='No', proporder='35', attributes='', quickHelp='',  indentLevel="1",
  label="Year of most recent TBI:", context="r",
  list="uds.yearUnknown", style="scale";

-- new
insert into viewproperty 
set messageCode='*.udshealthhistory3.diabType', locale='en', instance='lava', 
  scope='crms-nacc', entity='udshealthhistory3', property='diabType',
  required='No', proporder='37', attributes='', quickHelp='',  indentLevel="1",
  label="If Recent/active or Remote/inactive, which type?:", context="r",
  list="uds.healthhistory3.DIABTYPE", style="scale";

-- new
insert into viewproperty 
set messageCode='*.udshealthhistory3.arthrit', locale='en', instance='lava', 
  scope='crms-nacc', entity='udshealthhistory3', property='arthrit',
  required='No', proporder='42', attributes='', quickHelp='', 
  label="Arthritis:", context="r",
  list="uds.a5.presence4", style="scale";

-- new
insert into viewproperty 
set messageCode='*.udshealthhistory3.arthtType', locale='en', instance='lava', 
  scope='crms-nacc', entity='udshealthhistory3', property='arthType',
  required='No', proporder='43', attributes='', quickHelp='',   indentLevel="1",
  label="Type of arthritis:", context="r",
  list="uds.healthhistory3.ARTHTYPE", style="scale";

-- new
insert into viewproperty 
set messageCode='*.udshealthhistory3.arthTypx', locale='en', instance='lava', 
  scope='crms-nacc', entity='udshealthhistory3', property='arthTypx',  indentLevel="1",
  required='No', proporder='44', attributes='onkeypress="UDS_onlyNaccCharactersAllowed(event)', quickHelp='', 
  label="Other (specify):", context="r", maxLength="60", style="string";

-- new
insert into viewproperty 
set messageCode='*.udshealthhistory3.arthUpEx', locale='en', instance='lava', 
  scope='crms-nacc', entity='udshealthhistory3', property='arthUpEx',
  required='No', proporder='45', attributes='', quickHelp='',   indentLevel="1",
  label="Upper extremity", context="r",
  list="uds.noYes01", style="scale";

-- new
insert into viewproperty 
set messageCode='*.udshealthhistory3.arthLoEx', locale='en', instance='lava', 
  scope='crms-nacc', entity='udshealthhistory3', property='arthLoEx',  indentLevel="1",
  required='No', proporder='46', attributes='', quickHelp='', 
  label="Lower extremity", context="r",
  list="uds.noYes01", style="scale";

-- new
insert into viewproperty 
set messageCode='*.udshealthhistory3.arthSpin', locale='en', instance='lava', 
  scope='crms-nacc', entity='udshealthhistory3', property='arthSpin',  indentLevel="1",
  required='No', proporder='47', attributes='', quickHelp='', 
  label="Spine", context="r",
  list="uds.noYes01", style="scale";

-- new
insert into viewproperty 
set messageCode='*.udshealthhistory3.arthUnk', locale='en', instance='lava', 
  scope='crms-nacc', entity='udshealthhistory3', property='arthUnk',  indentLevel="1",
  required='No', proporder='48', attributes='', quickHelp='', 
  label="Unknown", context="r",
  list="uds.noYes01", style="scale";

-- new
insert into viewproperty 
set messageCode='*.udshealthhistory3.apnea', locale='en', instance='lava', 
  scope='crms-nacc', entity='udshealthhistory3', property='apnea',
  required='No', proporder='51', attributes='', quickHelp='', 
  label="Sleep apnea:", context="r",
  list="uds.a5.presence4", style="scale";

-- new
insert into viewproperty 
set messageCode='*.udshealthhistory3.rbd', locale='en', instance='lava', 
  scope='crms-nacc', entity='udshealthhistory3', property='rbd',
  required='No', proporder='52', attributes='', quickHelp='', 
  label="REM sleep behavior disorder (RBD):", context="r",
  list="uds.a5.presence4", style="scale";

-- new
insert into viewproperty 
set messageCode='*.udshealthhistory3.insomn', locale='en', instance='lava', 
  scope='crms-nacc', entity='udshealthhistory3', property='insomn',
  required='No', proporder='53', attributes='', quickHelp='', 
  label="Hyposomnia/insomnia:", context="r",
  list="uds.a5.presence4", style="scale";

-- new
insert into viewproperty 
set messageCode='*.udshealthhistory3.othSleep', locale='en', instance='lava', 
  scope='crms-nacc', entity='udshealthhistory3', property='othSleep',
  required='No', proporder='54', attributes='', quickHelp='', 
  label="Other sleep disorder:", context="r",
  list="uds.a5.presence4", style="scale";

-- new
insert into viewproperty 
set messageCode='*.udshealthhistory3.othSleex', locale='en', instance='lava', 
  scope='crms-nacc', entity='udshealthhistory3', property='othSleex',
  required='No', proporder='55', attributes='onkeypress="UDS_onlyNaccCharactersAllowed(event)', quickHelp='', 
  label="If recent, specify", context="r", maxLength="60", style="string";

-- new
insert into viewproperty 
set messageCode='*.udshealthhistory3.ptsd', locale='en', instance='lava', 
  scope='crms-nacc', entity='udshealthhistory3', property='ptsd',
  required='No', proporder='59', attributes='', quickHelp='', 
  label="Post-traumatic stress disorder (PTSD):", context="r",
  list="uds.a5.presence4", style="scale";

-- new
insert into viewproperty 
set messageCode='*.udshealthhistory3.bipolar', locale='en', instance='lava', 
  scope='crms-nacc', entity='udshealthhistory3', property='bipolar',
  required='No', proporder='60', attributes='', quickHelp='', 
  label="Bipolar disorder:", context="r",
  list="uds.a5.presence4", style="scale";

-- new
insert into viewproperty 
set messageCode='*.udshealthhistory3.schiz', locale='en', instance='lava', 
  scope='crms-nacc', entity='udshealthhistory3', property='schiz',
  required='No', proporder='61', attributes='', quickHelp='', 
  label="Schizophrenia:", context="r",
  list="uds.a5.presence4", style="scale";

-- new
insert into viewproperty 
set messageCode='*.udshealthhistory3.anxiety', locale='en', instance='lava', 
  scope='crms-nacc', entity='udshealthhistory3', property='anxiety',
  required='No', proporder='64', attributes='', quickHelp='', 
  label="Anxiety:", context="r",
  list="uds.a5.presence4", style="scale";

-- new
insert into viewproperty 
set messageCode='*.udshealthhistory3.ocd', locale='en', instance='lava', 
  scope='crms-nacc', entity='udshealthhistory3', property='ocd',
  required='No', proporder='65', attributes='', quickHelp='', 
  label="Obsessive-compulsive disorder (OCD):", context="r",
  list="uds.a5.presence4", style="scale";

-- new
insert into viewproperty 
set messageCode='*.udshealthhistory3.npsydev', locale='en', instance='lava', 
  scope='crms-nacc', entity='udshealthhistory3', property='npsydev',
  required='No', proporder='66', attributes='', quickHelp='', 
  label="Developmental neuropsychiatric disorders (e.g., ASD, ADHD, dyslexia):", context="r",
  list="uds.a5.presence4", style="scale";

   
