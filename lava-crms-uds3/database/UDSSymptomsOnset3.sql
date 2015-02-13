delete instrumentnotes 
from instrumenttracking join instrumentnotes using (InstrID) 
where InstrType="UDS Symptoms Onset 3";

delete instrumentsummary 
from instrumenttracking join instrumentsummary using (InstrID) 
where InstrType="UDS Symptoms Onset 3";

delete udssymptomsonset3 
from instrumenttracking join udssymptomsonset3 using (InstrID) 
where InstrType="UDS Symptoms Onset 3";

delete from instrumenttracking 
where InstrType="UDS Symptoms Onset 3";

delete from hibernateproperty where entity="udssymptomsonset3";
delete from viewproperty where entity="udssymptomsonset3";
delete from instrument where InstrName="UDS Symptoms Onset 3";
drop table if exists udssymptomsonset3;



-- Initialize table
CREATE TABLE udssymptomsonset3 (
  InstrID int(10) NOT NULL,
    `DECSUB` smallint(5) DEFAULT NULL,
    `DECIN` smallint(5) DEFAULT NULL,
    `DECCLCOG` smallint(5) DEFAULT NULL,
    `COGMEM` smallint(5) DEFAULT NULL,
    `COGORI` smallint(5) DEFAULT NULL,
    `COGJUDG` smallint(5) DEFAULT NULL,
    `COGLANG` smallint(5) DEFAULT NULL,
    `COGVIS` smallint(5) DEFAULT NULL,
    `COGATTN` smallint(5) DEFAULT NULL,
    `COGFLUC` smallint(5) DEFAULT NULL,
    `COGFLAGO` smallint(5) DEFAULT NULL,
    `COGOTHR` smallint(5) DEFAULT NULL,
    `COGOTHRX` varchar(60) DEFAULT NULL,
    `COGFPRED` smallint(5) DEFAULT NULL,
    `COGFPREX` varchar(60) DEFAULT NULL,
    `COGMODE` smallint(5) DEFAULT NULL,
    `COGMODEX` varchar(60) DEFAULT NULL,
    `DECAGE` smallint(5) DEFAULT NULL,
    `DECCLBE` smallint(5) DEFAULT NULL,
    `BEAPATHY` smallint(5) DEFAULT NULL,
    `BEDEP` smallint(5) DEFAULT NULL,
    `BEVHALL` smallint(5) DEFAULT NULL,
    `BEVWELL` smallint(5) DEFAULT NULL,
    `BEVHAGO` smallint(5) DEFAULT NULL,
    `BEAHALL` smallint(5) DEFAULT NULL,
    `BEDEL` smallint(5) DEFAULT NULL,
    `BEDISIN` smallint(5) DEFAULT NULL,
    `BEIRRIT` smallint(5) DEFAULT NULL,
    `BEAGIT` smallint(5) DEFAULT NULL,
    `BEPERCH` smallint(5) DEFAULT NULL,
    `BEREM` smallint(5) DEFAULT NULL,
    `BEREMAGO` smallint(5) DEFAULT NULL,
    `BEANX` smallint(5) DEFAULT NULL,
    `BEOTHR` smallint(5) DEFAULT NULL,
    `BEOTHRX` varchar(60) DEFAULT NULL,
    `BEFPRED` smallint(5) DEFAULT NULL,
    `BEFPREDX` varchar(60) DEFAULT NULL,
    `BEMODE` smallint(5) DEFAULT NULL,
    `BEMODEX` varchar(60) DEFAULT NULL,
    `BEAGE` smallint(5) DEFAULT NULL,
    `DECCLMOT` smallint(5) DEFAULT NULL,
    `MOGAIT` smallint(5) DEFAULT NULL,
    `MOFALLS` smallint(5) DEFAULT NULL,
    `MOTREM` smallint(5) DEFAULT NULL,
    `MOSLOW` smallint(5) DEFAULT NULL,
    `MOFRST` smallint(5) DEFAULT NULL,
    `MOMODE` smallint(5) DEFAULT NULL,
    `MOMODEX` varchar(60) DEFAULT NULL,
    `MOMOPARK` smallint(5) DEFAULT NULL,
    `PARKAGE` smallint(5) DEFAULT NULL,
    `MOMOALS` smallint(5) DEFAULT NULL,
    `ALSAGE` smallint(5) DEFAULT NULL,
    `MOAGE` smallint(5) DEFAULT NULL,
    `COURSE` smallint(5) DEFAULT NULL,
    `FRSTCHG` smallint(5) DEFAULT NULL,
    `LBDEVAL` smallint(5) DEFAULT NULL,
    `FTLDEVAL` smallint(5) DEFAULT NULL,

  PRIMARY KEY (`InstrID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
-- Add to instrument table
insert into instrument 
set InstrName="UDS Symptoms Onset 3", TableName="udssymptomsonset3", 
  FormName="LavaWebOnly", HasVersion=0;
-- Add columns to viewproperty table
insert into viewproperty 
set messageCode='*.udssymptomsonset3.decsub', locale='en', instance='lava', 
  scope='ucdlava', entity='udssymptomsonset3', property='decsub',
  required='No', proporder='1', attributes='', quickHelp='', 
  label="Does the subject report a decline in memory (relative to previously attained abilities)?:", context="r",
  list="uds3.udssymptomsonset3.DECSUB", style="scale";

insert into viewproperty 
set messageCode='*.udssymptomsonset3.decin', locale='en', instance='lava', 
  scope='ucdlava', entity='udssymptomsonset3', property='decin',
  required='No', proporder='2', attributes='', quickHelp='', 
  label="Does the co-participant report a decline in subject's memory (relative to previously attained abilities)?:", context="r",
  list="uds3.udssymptomsonset3.DECIN", style="scale";

insert into viewproperty 
set messageCode='*.udssymptomsonset3.decclcog', locale='en', instance='lava', 
  scope='ucdlava', entity='udssymptomsonset3', property='decclcog',
  required='No', proporder='3', attributes='', quickHelp='', 
  label="Based on the clinician's judgment, is the subject currently experiencing meaningful impairment in cognition?:", context="r",
  list="list.uds3.common.noyes01", style="scale";

insert into viewproperty 
set messageCode='*.udssymptomsonset3.cogmem', locale='en', instance='lava', 
  scope='ucdlava', entity='udssymptomsonset3', property='cogmem',
  required='No', proporder='4', attributes='', quickHelp='', 
  label="Indicate whether the subject currently is meaningfully impaired, relative to previously attained abilities, in memory:", context="r",
  list="list.uds3.common.noyesunknown", style="scale";

insert into viewproperty 
set messageCode='*.udssymptomsonset3.cogori', locale='en', instance='lava', 
  scope='ucdlava', entity='udssymptomsonset3', property='cogori',
  required='No', proporder='5', attributes='', quickHelp='', 
  label="Indicate whether the subject currently is meaningfully impaired, relative to previously attained abilities, in orientation:", context="r",
  list="list.uds3.common.noyesunknown", style="scale";

insert into viewproperty 
set messageCode='*.udssymptomsonset3.cogjudg', locale='en', instance='lava', 
  scope='ucdlava', entity='udssymptomsonset3', property='cogjudg',
  required='No', proporder='6', attributes='', quickHelp='', 
  label="Indicate whether the subject currently is meaningfully impaired, relative to previously attained abilities, in executive function - judgment, planning, or problem-solving:", context="r",
  list="list.uds3.common.noyesunknown", style="scale";

insert into viewproperty 
set messageCode='*.udssymptomsonset3.coglang', locale='en', instance='lava', 
  scope='ucdlava', entity='udssymptomsonset3', property='coglang',
  required='No', proporder='7', attributes='', quickHelp='', 
  label="Indicate whether the subject currently is meaningfully impaired, relative to previously attained abilities, in language:", context="r",
  list="list.uds3.common.noyesunknown", style="scale";

insert into viewproperty 
set messageCode='*.udssymptomsonset3.cogvis', locale='en', instance='lava', 
  scope='ucdlava', entity='udssymptomsonset3', property='cogvis',
  required='No', proporder='8', attributes='', quickHelp='', 
  label="Indicate whether the subject currently is meaningfully impaired, relative to previously attained abilities, in visuospatial function:", context="r",
  list="list.uds3.common.noyesunknown", style="scale";

insert into viewproperty 
set messageCode='*.udssymptomsonset3.cogattn', locale='en', instance='lava', 
  scope='ucdlava', entity='udssymptomsonset3', property='cogattn',
  required='No', proporder='9', attributes='', quickHelp='', 
  label="Indicate whether the subject currently is meaningfully impaired, relative to previously attained abilities, in attention or concentration:", context="r",
  list="list.uds3.common.noyesunknown", style="scale";

insert into viewproperty 
set messageCode='*.udssymptomsonset3.cogfluc', locale='en', instance='lava', 
  scope='ucdlava', entity='udssymptomsonset3', property='cogfluc',
  required='No', proporder='10', attributes='', quickHelp='', 
  label="Indicate whether the subject currently has fluctuating cognition:", context="r",
  list="list.uds3.common.noyesunknown", style="scale";

insert into viewproperty 
set messageCode='*.udssymptomsonset3.cogflago', locale='en', instance='lava', 
  scope='ucdlava', entity='udssymptomsonset3', property='cogflago',
  required='No', proporder='11', attributes='', quickHelp='', 
  label="At what age did the fluctuating cognition begin?:", context="r",
  list="uds3.udssymptomsonset3.SymptomAge", style="scale";

insert into viewproperty 
set messageCode='*.udssymptomsonset3.cogothr', locale='en', instance='lava', 
  scope='ucdlava', entity='udssymptomsonset3', property='cogothr',
  required='No', proporder='12', attributes='', quickHelp='', 
  label="Indicate whether the subject currently is meaningfully impaired, relative to previously attained abilities, in other cognitive domains:", context="r",
  list="list.uds3.common.noyes01", style="scale";

insert into viewproperty 
set messageCode='*.udssymptomsonset3.cogothrx', locale='en', instance='lava', 
  scope='ucdlava', entity='udssymptomsonset3', property='cogothrx',
  required='No', proporder='13', attributes='', quickHelp='', 
  label="Specification of other cognitive impairment:", context="r", maxLength="6", style="string";

insert into viewproperty 
set messageCode='*.udssymptomsonset3.cogfpred', locale='en', instance='lava', 
  scope='ucdlava', entity='udssymptomsonset3', property='cogfpred',
  required='No', proporder='14', attributes='', quickHelp='', 
  label="Indicate the predominant symptom that was first recognized as a decline in the subject's cognition:", context="r",
  list="uds3.udssymptomsonset3.COGFPRED", style="scale";

insert into viewproperty 
set messageCode='*.udssymptomsonset3.cogfprex', locale='en', instance='lava', 
  scope='ucdlava', entity='udssymptomsonset3', property='cogfprex',
  required='No', proporder='15', attributes='', quickHelp='', 
  label="Specification for Other predominant symptom first recognized as a decline in the subject's cognition:", context="r", maxLength="6", style="string";

insert into viewproperty 
set messageCode='*.udssymptomsonset3.cogmode', locale='en', instance='lava', 
  scope='ucdlava', entity='udssymptomsonset3', property='cogmode',
  required='No', proporder='16', attributes='', quickHelp='', 
  label="Mode of onset of cognitive symptoms:", context="r",
  list="uds3.udssymptomsonset3.MODE", style="scale";

insert into viewproperty 
set messageCode='*.udssymptomsonset3.cogmodex', locale='en', instance='lava', 
  scope='ucdlava', entity='udssymptomsonset3', property='cogmodex',
  required='No', proporder='17', attributes='', quickHelp='', 
  label="Specification for mode of onset of other cognitive symptoms:", context="r", maxLength="6", style="string";

insert into viewproperty 
set messageCode='*.udssymptomsonset3.decage', locale='en', instance='lava', 
  scope='ucdlava', entity='udssymptomsonset3', property='decage',
  required='No', proporder='18', attributes='', quickHelp='', 
  label="Based on clinician's assessment, at what age did the cognitive decline begin? (The clinician must use his/her best judgment to estimate an age of onset.):", context="r",
  list="uds3.udssymptomsonset3.SymptomAge", style="scale";

insert into viewproperty 
set messageCode='*.udssymptomsonset3.decclbe', locale='en', instance='lava', 
  scope='ucdlava', entity='udssymptomsonset3', property='decclbe',
  required='No', proporder='19', attributes='', quickHelp='', 
  label="Based on clinician's judgment, is the subject currently experiencing any kind of behavioral symptoms?:", context="r",
  list="list.uds3.common.noyes01", style="scale";

insert into viewproperty 
set messageCode='*.udssymptomsonset3.beapathy', locale='en', instance='lava', 
  scope='ucdlava', entity='udssymptomsonset3', property='beapathy',
  required='No', proporder='20', attributes='', quickHelp='', 
  label="Subject currently manifests meaningful change in behavior - Apathy, withdrawal:", context="r",
  list="list.uds3.common.noyesunknown", style="scale";

insert into viewproperty 
set messageCode='*.udssymptomsonset3.bedep', locale='en', instance='lava', 
  scope='ucdlava', entity='udssymptomsonset3', property='bedep',
  required='No', proporder='21', attributes='', quickHelp='', 
  label="Subject currently manifests meaningful change in behavior - Depressed mood:", context="r",
  list="list.uds3.common.noyesunknown", style="scale";

insert into viewproperty 
set messageCode='*.udssymptomsonset3.bevhall', locale='en', instance='lava', 
  scope='ucdlava', entity='udssymptomsonset3', property='bevhall',
  required='No', proporder='22', attributes='', quickHelp='', 
  label="Subject currently manifests meaningful change in behavior - Psychosis - Visual hallucinations:", context="r",
  list="list.uds3.common.noyesunknown", style="scale";

insert into viewproperty 
set messageCode='*.udssymptomsonset3.bevwell', locale='en', instance='lava', 
  scope='ucdlava', entity='udssymptomsonset3', property='bevwell',
  required='No', proporder='23', attributes='', quickHelp='', 
  label="If yes, are the hallucinations well-formed and detailed?:", context="r",
  list="list.uds3.common.noyesunknown", style="scale";

insert into viewproperty 
set messageCode='*.udssymptomsonset3.bevhago', locale='en', instance='lava', 
  scope='ucdlava', entity='udssymptomsonset3', property='bevhago',
  required='No', proporder='24', attributes='', quickHelp='', 
  label="If well-formed, clear-cut visual hallucinations, at what age did these hallucinations begin?:", context="r",
  list="uds3.udssymptomsonset3.BEVHAGO", style="scale";

insert into viewproperty 
set messageCode='*.udssymptomsonset3.beahall', locale='en', instance='lava', 
  scope='ucdlava', entity='udssymptomsonset3', property='beahall',
  required='No', proporder='25', attributes='', quickHelp='', 
  label="Subject currently manifests meaningful change in behavior - Psychosis - Auditory hallucinations:", context="r",
  list="list.uds3.common.noyesunknown", style="scale";

insert into viewproperty 
set messageCode='*.udssymptomsonset3.bedel', locale='en', instance='lava', 
  scope='ucdlava', entity='udssymptomsonset3', property='bedel',
  required='No', proporder='26', attributes='', quickHelp='', 
  label="Subject currently manifests meaningful change in behavior - Psychosis - Abnormal, false, or delusional beliefs:", context="r",
  list="list.uds3.common.noyesunknown", style="scale";

insert into viewproperty 
set messageCode='*.udssymptomsonset3.bedisin', locale='en', instance='lava', 
  scope='ucdlava', entity='udssymptomsonset3', property='bedisin',
  required='No', proporder='27', attributes='', quickHelp='', 
  label="Subject currently manifests meaningful change in behavior - Disinhibition:", context="r",
  list="list.uds3.common.noyesunknown", style="scale";

insert into viewproperty 
set messageCode='*.udssymptomsonset3.beirrit', locale='en', instance='lava', 
  scope='ucdlava', entity='udssymptomsonset3', property='beirrit',
  required='No', proporder='28', attributes='', quickHelp='', 
  label="Subject currently manifests meaningful change in behavior - Irritability:", context="r",
  list="list.uds3.common.noyesunknown", style="scale";

insert into viewproperty 
set messageCode='*.udssymptomsonset3.beagit', locale='en', instance='lava', 
  scope='ucdlava', entity='udssymptomsonset3', property='beagit',
  required='No', proporder='29', attributes='', quickHelp='', 
  label="Subject currently manifests meaningful change in behavior - Agitation:", context="r",
  list="list.uds3.common.noyesunknown", style="scale";

insert into viewproperty 
set messageCode='*.udssymptomsonset3.beperch', locale='en', instance='lava', 
  scope='ucdlava', entity='udssymptomsonset3', property='beperch',
  required='No', proporder='30', attributes='', quickHelp='', 
  label="Subject currently manifests meaningful change in behavior - Personality change:", context="r",
  list="list.uds3.common.noyesunknown", style="scale";

insert into viewproperty 
set messageCode='*.udssymptomsonset3.berem', locale='en', instance='lava', 
  scope='ucdlava', entity='udssymptomsonset3', property='berem',
  required='No', proporder='31', attributes='', quickHelp='', 
  label="Subject currently manifests meaningful change in behavior - REM sleep behavior disorder:", context="r",
  list="list.uds3.common.noyesunknown", style="scale";

insert into viewproperty 
set messageCode='*.udssymptomsonset3.beremago', locale='en', instance='lava', 
  scope='ucdlava', entity='udssymptomsonset3', property='beremago',
  required='No', proporder='32', attributes='', quickHelp='', 
  label="If Yes, at what age did the REM sleep behavior disorder begin? (The clinician must use his/her best judgment to estimate an age of onset.):", context="r",
  list="uds3.udssymptomsonset3.SymptomAge", style="scale";

insert into viewproperty 
set messageCode='*.udssymptomsonset3.beanx', locale='en', instance='lava', 
  scope='ucdlava', entity='udssymptomsonset3', property='beanx',
  required='No', proporder='33', attributes='', quickHelp='', 
  label="Subject currently manifests meaningful change in behavior - Anxiety:", context="r",
  list="list.uds3.common.noyesunknown", style="scale";

insert into viewproperty 
set messageCode='*.udssymptomsonset3.beothr', locale='en', instance='lava', 
  scope='ucdlava', entity='udssymptomsonset3', property='beothr',
  required='No', proporder='34', attributes='', quickHelp='', 
  label="Subject currently manifests meaningful change in behavior - Other:", context="r",
  list="list.uds3.common.noyes01", style="scale";

insert into viewproperty 
set messageCode='*.udssymptomsonset3.beothrx', locale='en', instance='lava', 
  scope='ucdlava', entity='udssymptomsonset3', property='beothrx',
  required='No', proporder='35', attributes='', quickHelp='', 
  label="Subject currently manifests meaningful change in behavior - Other, specify:", context="r", maxLength="6", style="string";

insert into viewproperty 
set messageCode='*.udssymptomsonset3.befpred', locale='en', instance='lava', 
  scope='ucdlava', entity='udssymptomsonset3', property='befpred',
  required='No', proporder='36', attributes='', quickHelp='', 
  label="Indicate the predominant symptom that was first recognized as a decline in the subject's behavior:", context="r",
  list="uds3.udssymptomsonset3.BEFPRED", style="scale";

insert into viewproperty 
set messageCode='*.udssymptomsonset3.befpredx', locale='en', instance='lava', 
  scope='ucdlava', entity='udssymptomsonset3', property='befpredx',
  required='No', proporder='37', attributes='', quickHelp='', 
  label="Specification of other predominant symptom that was first recognized as a decline in the subject's behavior:", context="r", maxLength="6", style="string";

insert into viewproperty 
set messageCode='*.udssymptomsonset3.bemode', locale='en', instance='lava', 
  scope='ucdlava', entity='udssymptomsonset3', property='bemode',
  required='No', proporder='38', attributes='', quickHelp='', 
  label="Mode of onset of behavioral symptoms:", context="r",
  list="uds3.udssymptomsonset3.MODE", style="scale";

insert into viewproperty 
set messageCode='*.udssymptomsonset3.bemodex', locale='en', instance='lava', 
  scope='ucdlava', entity='udssymptomsonset3', property='bemodex',
  required='No', proporder='39', attributes='', quickHelp='', 
  label="Specification of other mode of onset of behavioral symptoms:", context="r", maxLength="6", style="string";

insert into viewproperty 
set messageCode='*.udssymptomsonset3.beage', locale='en', instance='lava', 
  scope='ucdlava', entity='udssymptomsonset3', property='beage',
  required='No', proporder='40', attributes='', quickHelp='', 
  label="Based on the clinician's assessment, at what age did the behavioral symptoms begin? (The clinician must use his/her best judgment to estimate an age of onset.):", context="r",
  list="uds3.udssymptomsonset3.SymptomAge", style="scale";

insert into viewproperty 
set messageCode='*.udssymptomsonset3.decclmot', locale='en', instance='lava', 
  scope='ucdlava', entity='udssymptomsonset3', property='decclmot',
  required='No', proporder='41', attributes='', quickHelp='', 
  label="Based on clinician's judgement, is the subject currently experiencing any motor symptoms?:", context="r",
  list="list.uds3.common.noyes01", style="scale";

insert into viewproperty 
set messageCode='*.udssymptomsonset3.mogait', locale='en', instance='lava', 
  scope='ucdlava', entity='udssymptomsonset3', property='mogait',
  required='No', proporder='42', attributes='', quickHelp='', 
  label="Indicate whether the subject currently has meaningful changes in motor function - Gait disorder:", context="r",
  list="list.uds3.common.noyesunknown", style="scale";

insert into viewproperty 
set messageCode='*.udssymptomsonset3.mofalls', locale='en', instance='lava', 
  scope='ucdlava', entity='udssymptomsonset3', property='mofalls',
  required='No', proporder='43', attributes='', quickHelp='', 
  label="Indicate whether the subject currently has meaningful changes in motor function - Falls:", context="r",
  list="list.uds3.common.noyesunknown", style="scale";

insert into viewproperty 
set messageCode='*.udssymptomsonset3.motrem', locale='en', instance='lava', 
  scope='ucdlava', entity='udssymptomsonset3', property='motrem',
  required='No', proporder='44', attributes='', quickHelp='', 
  label="Indicate whether the subject currently has meaningful changes in motor function - Tremor:", context="r",
  list="list.uds3.common.noyesunknown", style="scale";

insert into viewproperty 
set messageCode='*.udssymptomsonset3.moslow', locale='en', instance='lava', 
  scope='ucdlava', entity='udssymptomsonset3', property='moslow',
  required='No', proporder='45', attributes='', quickHelp='', 
  label="Indicate whether the subject currently has meaningful changes in motor function - Slowness:", context="r",
  list="list.uds3.common.noyesunknown", style="scale";

insert into viewproperty 
set messageCode='*.udssymptomsonset3.mofrst', locale='en', instance='lava', 
  scope='ucdlava', entity='udssymptomsonset3', property='mofrst',
  required='No', proporder='46', attributes='', quickHelp='', 
  label="Indicate the predominant symptom that was first recognized as a decline in the subject's motor function:", context="r",
  list="uds3.udssymptomsonset3.MOFRST", style="scale";

insert into viewproperty 
set messageCode='*.udssymptomsonset3.momode', locale='en', instance='lava', 
  scope='ucdlava', entity='udssymptomsonset3', property='momode',
  required='No', proporder='47', attributes='', quickHelp='', 
  label="Mode of onset of motor symptoms:", context="r",
  list="uds3.udssymptomsonset3.MODE", style="scale";

insert into viewproperty 
set messageCode='*.udssymptomsonset3.momodex', locale='en', instance='lava', 
  scope='ucdlava', entity='udssymptomsonset3', property='momodex',
  required='No', proporder='48', attributes='', quickHelp='', 
  label="Specification for other mode of onset of motor symptoms:", context="r", maxLength="6", style="string";

insert into viewproperty 
set messageCode='*.udssymptomsonset3.momopark', locale='en', instance='lava', 
  scope='ucdlava', entity='udssymptomsonset3', property='momopark',
  required='No', proporder='49', attributes='', quickHelp='', 
  label="Were changes in motor function suggestive of parkinsonism?:", context="r",
  list="list.uds3.common.noyesunknown", style="scale";

insert into viewproperty 
set messageCode='*.udssymptomsonset3.parkage', locale='en', instance='lava', 
  scope='ucdlava', entity='udssymptomsonset3', property='parkage',
  required='No', proporder='50', attributes='', quickHelp='', 
  label="If yes, at what age did the motor symptoms suggestive of parkinsonism begin:", context="r",
  list="uds3.udssymptomsonset3.SymptomAge", style="scale";

insert into viewproperty 
set messageCode='*.udssymptomsonset3.momoals', locale='en', instance='lava', 
  scope='ucdlava', entity='udssymptomsonset3', property='momoals',
  required='No', proporder='51', attributes='', quickHelp='', 
  label="Were changes in motor function suggestive of amyotrophic lateral sclerosis?:", context="r",
  list="list.uds3.common.noyesunknown", style="scale";

insert into viewproperty 
set messageCode='*.udssymptomsonset3.alsage', locale='en', instance='lava', 
  scope='ucdlava', entity='udssymptomsonset3', property='alsage',
  required='No', proporder='52', attributes='', quickHelp='', 
  label="If yes, at what age did the motor symptoms suggestive of ALS begin?:", context="r",
  list="uds3.udssymptomsonset3.SymptomAge", style="scale";

insert into viewproperty 
set messageCode='*.udssymptomsonset3.moage', locale='en', instance='lava', 
  scope='ucdlava', entity='udssymptomsonset3', property='moage',
  required='No', proporder='53', attributes='', quickHelp='', 
  label="Based on clinician's assessment, at what age did the motor changes begin? (The clinician must use his/her best judgement to estimate an age of onset.):", context="r",
  list="uds3.udssymptomsonset3.SymptomAge", style="scale";

insert into viewproperty 
set messageCode='*.udssymptomsonset3.course', locale='en', instance='lava', 
  scope='ucdlava', entity='udssymptomsonset3', property='course',
  required='No', proporder='54', attributes='', quickHelp='', 
  label="Overall course of decline of cognitive/behavioral/ motor syndrome:", context="r",
  list="uds3.udssymptomsonset3.COURSE", style="scale";

insert into viewproperty 
set messageCode='*.udssymptomsonset3.frstchg', locale='en', instance='lava', 
  scope='ucdlava', entity='udssymptomsonset3', property='frstchg',
  required='No', proporder='55', attributes='', quickHelp='', 
  label="Indicate the predominant domain that was first recognized as changed in the subject:", context="r",
  list="uds3.udssymptomsonset3.FRSTCHG", style="scale";

insert into viewproperty 
set messageCode='*.udssymptomsonset3.lbdeval', locale='en', instance='lava', 
  scope='ucdlava', entity='udssymptomsonset3', property='lbdeval',
  required='No', proporder='56', attributes='', quickHelp='', 
  label="Is the subject a potential candidate for further evaluation for Lewy body disease?:", context="r",
  list="list.uds3.common.noyes01", style="scale";

insert into viewproperty 
set messageCode='*.udssymptomsonset3.ftldeval', locale='en', instance='lava', 
  scope='ucdlava', entity='udssymptomsonset3', property='ftldeval',
  required='No', proporder='57', attributes='', quickHelp='', 
  label="Is the subject a potential candidate for further evaluation for frontotemporal lobar degeneration?:", context="r",
  list="list.uds3.common.noyes01", style="scale";


