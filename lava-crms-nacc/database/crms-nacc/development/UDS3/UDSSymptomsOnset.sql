ALTER TABLE udssymptomsonset
	ADD DECCLCOG SMALLINT,
	ADD COGORI SMALLINT,
	ADD COGFLAGO SMALLINT,
	ADD COGFPRED SMALLINT,
	ADD COGFPREX VARCHAR(60),
	ADD DECCLBE SMALLINT,
	ADD BEVHAGO SMALLINT,
	ADD BEREMAGO SMALLINT,
	ADD BEANX SMALLINT,
	ADD BEFPRED SMALLINT,
	ADD BEFPREDX VARCHAR(60),
	ADD BEAGE SMALLINT,
	ADD DECCLMOT SMALLINT,
	ADD PARKAGE SMALLINT,
	ADD MOMOALS SMALLINT,
	ADD ALSAGE SMALLINT,
	ADD MOAGE SMALLINT,
	ADD LBDEVAL SMALLINT,
	ADD FTLDEVAL SMALLINT;

DELETE FROM viewproperty WHERE entity="udssymptomsonset3";

insert into viewproperty 
set messageCode='*.udssymptomsonset3.decSub', locale='en', instance='lava', 
  scope='crms-nacc', entity='udssymptomsonset3', property='decSub',
  required='No', proporder='1', attributes='', quickHelp='', 
  label="1. Does the subject report a decline in memory (relative to previously attained abilities)?", context="r",
  list="uds.symptomsonset3.DECSUB", style="scale";

insert into viewproperty 
set messageCode='*.udssymptomsonset3.decIn', locale='en', instance='lava', 
  scope='crms-nacc', entity='udssymptomsonset3', property='decIn',
  required='No', proporder='2', attributes='', quickHelp='', 
  label="2. Does the co-participant report a decline in subject's memory (relative to previously attained abilities)?", context="r",
  list="uds.symptomsonset3.DECIN", style="scale";

insert into viewproperty 
set messageCode='*.udssymptomsonset3.decClCog', locale='en', instance='lava', 
  scope='crms-nacc', entity='udssymptomsonset3', property='decClCog',
  required='No', proporder='3', attributes='', quickHelp='', 
  label="3. Based on the clinician's judgment, is the subject currently experiencing meaningful impairment in cognition?", context="r",
  list="uds.noYes01", style="scale";

insert into viewproperty 
set messageCode='*.udssymptomsonset3.cogMem', locale='en', instance='lava', 
  scope='crms-nacc', entity='udssymptomsonset3', property='cogMem',
  required='No', proporder='4', attributes='', quickHelp='', 
  label="4a. Memory", context="r",
  list="uds.noYesUnknown019", style="scale";

insert into viewproperty 
set messageCode='*.udssymptomsonset3.cogOri', locale='en', instance='lava', 
  scope='crms-nacc', entity='udssymptomsonset3', property='cogOri',
  required='No', proporder='5', attributes='', quickHelp='', 
  label="4b. Orientation", context="r",
  list="uds.noYesUnknown019", style="scale";

insert into viewproperty 
set messageCode='*.udssymptomsonset3.cogJudg', locale='en', instance='lava', 
  scope='crms-nacc', entity='udssymptomsonset3', property='cogJudg',
  required='No', proporder='6', attributes='', quickHelp='', 
  label="4c. Executive function - judgment, planning, problem-solving", context="r",
  list="uds.noYesUnknown019", style="scale";

insert into viewproperty 
set messageCode='*.udssymptomsonset3.cogLang', locale='en', instance='lava', 
  scope='crms-nacc', entity='udssymptomsonset3', property='cogLang',
  required='No', proporder='7', attributes='', quickHelp='', 
  label="4d. Language", context="r",
  list="uds.noYesUnknown019", style="scale";

insert into viewproperty 
set messageCode='*.udssymptomsonset3.cogVis', locale='en', instance='lava', 
  scope='crms-nacc', entity='udssymptomsonset3', property='cogVis',
  required='No', proporder='8', attributes='', quickHelp='', 
  label="4e. Visuospatial function", context="r",
  list="uds.noYesUnknown019", style="scale";

insert into viewproperty 
set messageCode='*.udssymptomsonset3.cogAttn', locale='en', instance='lava', 
  scope='crms-nacc', entity='udssymptomsonset3', property='cogAttn',
  required='No', proporder='9', attributes='', quickHelp='', 
  label="4f. Attention, concentration", context="r",
  list="uds.noYesUnknown019", style="scale";

insert into viewproperty 
set messageCode='*.udssymptomsonset3.cogFluc', locale='en', instance='lava', 
  scope='crms-nacc', entity='udssymptomsonset3', property='cogFluc',
  required='No', proporder='10', attributes='', quickHelp='', 
  label="4g. Fluctuating cognition", context="r",
  list="uds.noYesUnknown019", style="scale";

insert into viewproperty 
set messageCode='*.udssymptomsonset3.cogFlAgO', locale='en', instance='lava', 
  scope='crms-nacc', entity='udssymptomsonset3', property='cogFlAgO',
  required='No', proporder='11', attributes='', quickHelp='', indentLevel=1, 
  label="4g1. At what age did the fluctuating cognition begin?", context="r",
  list="uds.symptomsonset3.ageOfOnsetI", style="scale";

insert into viewproperty 
set messageCode='followup.udssymptomsonset3.cogFlAgO', locale='en', instance='lava', 
  scope='crms-nacc', prefix='followup', entity='udssymptomsonset3', property='cogFlAgO',
  required='No', proporder='11', attributes='', quickHelp='', indentLevel=1,
  label="4g1. At what age did the fluctuating cognition begin? (777 = Provided at Prior Visit)", context="r",
  list="uds.symptomsonset3.ageOfOnsetF", style="scale";

insert into viewproperty 
set messageCode='*.udssymptomsonset3.cogOthr', locale='en', instance='lava', 
  scope='crms-nacc', entity='udssymptomsonset3', property='cogOthr',
  required='No', proporder='12', attributes='', quickHelp='', 
  label="4h. Other", context="r",
  list="uds.noYes01", style="scale";

insert into viewproperty 
set messageCode='*.udssymptomsonset3.cogOthrx', locale='en', instance='lava', 
  scope='crms-nacc', entity='udssymptomsonset3', property='cogOthrx',
  required='No', proporder='13', attributes='onkeypress="UDS_onlyNaccCharactersAllowed(event)"', quickHelp='', indentLevel=1,
  label="Other, specify", context="i", maxLength="60", size="60", style="string";

insert into viewproperty 
set messageCode='*.udssymptomsonset3.cogFPred', locale='en', instance='lava', 
  scope='crms-nacc', entity='udssymptomsonset3', property='cogFPred',
  required='No', proporder='14', attributes='', quickHelp='', 
  label="5. Indicate the predominant symptom that was first recognized as a decline in the subject's cognition", context="r",
  list="uds.symptomsonset3.COGFPREDI", style="scale";

insert into viewproperty 
set messageCode='followup.udssymptomsonset3.cogFPred', locale='en', instance='lava', 
  scope='crms-nacc', prefix="followup", entity='udssymptomsonset3', property='cogFPred',
  required='No', proporder='14', attributes='', quickHelp='', 
  label="5. Indicate the predominant symptom that was first recognized as a decline in the subject's cognition", context="r",
  list="uds.symptomsonset3.COGFPREDF", style="scale";

insert into viewproperty 
set messageCode='*.udssymptomsonset3.cogFPrex', locale='en', instance='lava', 
  scope='crms-nacc', entity='udssymptomsonset3', property='cogFPrex', indentLevel=1,
  required='No', proporder='15', attributes='onkeypress="UDS_onlyNaccCharactersAllowed(event)"', quickHelp='', 
  label="Other, specify", context="i", maxLength="60", size="60", style="string";

insert into viewproperty 
set messageCode='*.udssymptomsonset3.cogMode', locale='en', instance='lava', 
  scope='crms-nacc', entity='udssymptomsonset3', property='cogMode',
  required='No', proporder='16', attributes='', quickHelp='', 
  label="6. Mode of onset of cognitive symptoms", context="r",
  list="uds.symptomsonset3.MODE", style="scale";

insert into viewproperty 
set messageCode='*.udssymptomsonset3.cogModex', locale='en', instance='lava', 
  scope='crms-nacc', entity='udssymptomsonset3', property='cogModex', indentLevel=1,
  required='No', proporder='17', attributes='onkeypress="UDS_onlyNaccCharactersAllowed(event)"', quickHelp='', 
  label="Other, specify", context="i", maxLength="60", size="60", style="string";

insert into viewproperty 
set messageCode='*.udssymptomsonset3.decAge', locale='en', instance='lava', 
  scope='crms-nacc', entity='udssymptomsonset3', property='decAge',
  required='No', proporder='18', attributes='', quickHelp='', 
  label="7. Based on clinician's assessment, at what age did the cognitive decline begin? (The clinician must use his/her best judgment to estimate an age of onset.)", context="r",
  list="uds.symptomsonset3.ageOfOnsetI", style="scale";

insert into viewproperty 
set messageCode='followup.udssymptomsonset3.decAge', locale='en', instance='lava', 
  scope='crms-nacc', prefix='followup', entity='udssymptomsonset3', property='decAge',
  required='No', proporder='18', attributes='', quickHelp='', 
  label="7. Based on clinician's assessment, at what age did the cognitive decline begin? (The clinician must use his/her best judgment to estimate an age of onset.)  (777 = Provided at Prior Visit)", context="r",
  list="uds.symptomsonset3.ageOfOnsetF", style="scale";

insert into viewproperty 
set messageCode='*.udssymptomsonset3.decClBe', locale='en', instance='lava', 
  scope='crms-nacc', entity='udssymptomsonset3', property='decClBe',
  required='No', proporder='19', attributes='', quickHelp='', 
  label="8. Based on clinician's judgment, is the subject currently experiencing any kind of behavioral symptoms?", context="r",
  list="uds.noYes01", style="scale";

insert into viewproperty 
set messageCode='*.udssymptomsonset3.beApathy', locale='en', instance='lava', 
  scope='crms-nacc', entity='udssymptomsonset3', property='beApathy',
  required='No', proporder='20', attributes='', quickHelp='', 
  label="9a. Apathy, withdrawal", context="r",
  list="uds.noYesUnknown019", style="scale";

insert into viewproperty 
set messageCode='*.udssymptomsonset3.beDep', locale='en', instance='lava', 
  scope='crms-nacc', entity='udssymptomsonset3', property='beDep',
  required='No', proporder='21', attributes='', quickHelp='', 
  label="9b. Depressed mood", context="r",
  list="uds.noYesUnknown019", style="scale";

insert into viewproperty 
set messageCode='*.udssymptomsonset3.beVHall', locale='en', instance='lava', 
  scope='crms-nacc', entity='udssymptomsonset3', property='beVHall',
  required='No', proporder='22', attributes='', quickHelp='', 
  label="9c1. Visual hallucinations", context="r",
  list="uds.noYesUnknown019", style="scale";

insert into viewproperty 
set messageCode='*.udssymptomsonset3.beVWell', locale='en', instance='lava', 
  scope='crms-nacc', entity='udssymptomsonset3', property='beVWell',
  required='No', proporder='23', attributes='', quickHelp='', indentLevel=1,
  label="9c1a. If yes, are the hallucinations well-formed and detailed?", context="r",
  list="uds.noYesUnknown019", style="scale";

insert into viewproperty 
set messageCode='*.udssymptomsonset3.beVHAgO', locale='en', instance='lava', 
  scope='crms-nacc', entity='udssymptomsonset3', property='beVHAgO',
  required='No', proporder='24', attributes='', quickHelp='', indentLevel=1,
  label="9c1b. If well-formed, clear-cut visual hallucinations, at what age did these hallucinations begin? (888 = N/A, not well-formed)", context="r",
  list="uds.symptomsonset3.BEVHAGOI", style="scale";

insert into viewproperty 
set messageCode='followup.udssymptomsonset3.beVHAgO', locale='en', instance='lava', 
  scope='crms-nacc', prefix='followup', entity='udssymptomsonset3', property='beVHAgO',
  required='No', proporder='24', attributes='', quickHelp='', indentLevel=1,
  label="9c1b. If well-formed, clear-cut visual hallucinations, at what age did these hallucinations begin?  (777 = Provided at Prior Visit, 888 = N/A, not well-formed)", context="r",
  list="uds.symptomsonset3.BEVHAGOF", style="scale";

insert into viewproperty 
set messageCode='*.udssymptomsonset3.beAHall', locale='en', instance='lava', 
  scope='crms-nacc', entity='udssymptomsonset3', property='beAHall',
  required='No', proporder='25', attributes='', quickHelp='', 
  label="9c2. Auditory hallucinations", context="r",
  list="uds.noYesUnknown019", style="scale";

insert into viewproperty 
set messageCode='*.udssymptomsonset3.beDel', locale='en', instance='lava', 
  scope='crms-nacc', entity='udssymptomsonset3', property='beDel',
  required='No', proporder='26', attributes='', quickHelp='', 
  label="9c3. Abnormal, false, or delusional beliefs", context="r",
  list="uds.noYesUnknown019", style="scale";

insert into viewproperty 
set messageCode='*.udssymptomsonset3.beDisin', locale='en', instance='lava', 
  scope='crms-nacc', entity='udssymptomsonset3', property='beDisin',
  required='No', proporder='27', attributes='', quickHelp='', 
  label="9d. Disinhibition", context="r",
  list="uds.noYesUnknown019", style="scale";

insert into viewproperty 
set messageCode='*.udssymptomsonset3.beIrrit', locale='en', instance='lava', 
  scope='crms-nacc', entity='udssymptomsonset3', property='beIrrit',
  required='No', proporder='28', attributes='', quickHelp='', 
  label="9e. Irritability", context="r",
  list="uds.noYesUnknown019", style="scale";

insert into viewproperty 
set messageCode='*.udssymptomsonset3.beAgit', locale='en', instance='lava', 
  scope='crms-nacc', entity='udssymptomsonset3', property='beAgit',
  required='No', proporder='29', attributes='', quickHelp='', 
  label="9f. Agitation", context="r",
  list="uds.noYesUnknown019", style="scale";

insert into viewproperty 
set messageCode='*.udssymptomsonset3.bePerCh', locale='en', instance='lava', 
  scope='crms-nacc', entity='udssymptomsonset3', property='bePerCh',
  required='No', proporder='30', attributes='', quickHelp='', 
  label="9g. Personality change", context="r",
  list="uds.noYesUnknown019", style="scale";

insert into viewproperty 
set messageCode='*.udssymptomsonset3.beRem', locale='en', instance='lava', 
  scope='crms-nacc', entity='udssymptomsonset3', property='beRem',
  required='No', proporder='31', attributes='', quickHelp='', 
  label="9h. REM sleep behavior disorder", context="r",
  list="uds.noYesUnknown019", style="scale";

insert into viewproperty 
set messageCode='*.udssymptomsonset3.beRemAgO', locale='en', instance='lava', 
  scope='crms-nacc', entity='udssymptomsonset3', property='beRemAgO',
  required='No', proporder='32', attributes='', quickHelp='', indentLevel=1,
  label="9h1. REM sleep behavior disorder, age of onset", context="r",
  list="uds.symptomsonset3.ageOfOnsetI", style="scale";

insert into viewproperty 
set messageCode='followup.udssymptomsonset3.beRemAgO', locale='en', instance='lava', 
  scope='crms-nacc', prefix='followup', entity='udssymptomsonset3', property='beRemAgO',
  required='No', proporder='32', attributes='', quickHelp='', indentLevel=1,
  label="9h1. REM sleep behavior disorder, age of onset (777 = Provided at Prior Visit)", context="r",
  list="uds.symptomsonset3.ageOfOnsetF", style="scale";

insert into viewproperty 
set messageCode='*.udssymptomsonset3.beAnx', locale='en', instance='lava', 
  scope='crms-nacc', entity='udssymptomsonset3', property='beAnx',
  required='No', proporder='33', attributes='', quickHelp='', 
  label="9i Anxiety", context="r",
  list="uds.noYesUnknown019", style="scale";

insert into viewproperty 
set messageCode='*.udssymptomsonset3.beOthr', locale='en', instance='lava', 
  scope='crms-nacc', entity='udssymptomsonset3', property='beOthr',
  required='No', proporder='34', attributes='', quickHelp='', 
  label="9j. Other", context="r",
  list="uds.noYes01", style="scale";

insert into viewproperty 
set messageCode='*.udssymptomsonset3.beOthrx', locale='en', instance='lava', 
  scope='crms-nacc', entity='udssymptomsonset3', property='beOthrx', indentLevel=1,
  required='No', proporder='35', attributes='onkeypress="UDS_onlyNaccCharactersAllowed(event)"', quickHelp='', 
  label="Other, specify", context="i", maxLength="60", size="60", style="string";

insert into viewproperty 
set messageCode='*.udssymptomsonset3.beFPred', locale='en', instance='lava', 
  scope='crms-nacc', entity='udssymptomsonset3', property='beFPred',
  required='No', proporder='36', attributes='', quickHelp='', 
  label="10. Indicate the predominant symptom that was first recognized as a decline in the subject's behavior", context="r",
  list="uds.symptomsonset3.BEFPREDI", style="scale";

insert into viewproperty 
set messageCode='followup.udssymptomsonset3.beFPred', locale='en', instance='lava', 
  scope='crms-nacc', prefix='followup', entity='udssymptomsonset3', property='beFPred',
  required='No', proporder='36', attributes='', quickHelp='', 
  label="10. Indicate the predominant symptom that was first recognized as a decline in the subject's behavior", context="r",
  list="uds.symptomsonset3.BEFPREDF", style="scale";

insert into viewproperty 
set messageCode='*.udssymptomsonset3.beFPredx', locale='en', instance='lava', 
  scope='crms-nacc', entity='udssymptomsonset3', property='beFPredx', indentLevel=1,
  required='No', proporder='37', attributes='onkeypress="UDS_onlyNaccCharactersAllowed(event)"', quickHelp='', 
  label="Other, specify", context="i", maxLength="60", size="60", style="string";

insert into viewproperty 
set messageCode='*.udssymptomsonset3.beMode', locale='en', instance='lava', 
  scope='crms-nacc', entity='udssymptomsonset3', property='beMode',
  required='No', proporder='38', attributes='', quickHelp='', 
  label="11. Mode of onset of behavioral symptoms", context="r",
  list="uds.symptomsonset3.MODE", style="scale";

insert into viewproperty 
set messageCode='*.udssymptomsonset3.beModex', locale='en', instance='lava', 
  scope='crms-nacc', entity='udssymptomsonset3', property='beModex', indentLevel=1,
  required='No', proporder='39', attributes='onkeypress="UDS_onlyNaccCharactersAllowed(event)"', quickHelp='', 
  label="Other, specify", context="i", maxLength="60", size="60", style="string";

insert into viewproperty 
set messageCode='*.udssymptomsonset3.beAge', locale='en', instance='lava', 
  scope='crms-nacc', entity='udssymptomsonset3', property='beAge',
  required='No', proporder='40', attributes='', quickHelp='', 
  label="12. Based on the clinician's assessment, at what age did the behavioral symptoms begin? (The clinician must use his/her best judgment to estimate an age of onset.)", context="r",
  list="uds.symptomsonset3.ageOfOnsetI", style="scale";

insert into viewproperty 
set messageCode='followup.udssymptomsonset3.beAge', locale='en', instance='lava', 
  scope='crms-nacc', prefix='followup', entity='udssymptomsonset3', property='beAge',
  required='No', proporder='40', attributes='', quickHelp='', 
  label="12. Based on the clinician's assessment, at what age did the behavioral symptoms begin? (The clinician must use his/her best judgment to estimate an age of onset.) (777 = Provided at Prior Visit)", context="r",
  list="uds.symptomsonset3.ageOfOnsetF", style="scale";

insert into viewproperty 
set messageCode='*.udssymptomsonset3.decClMot', locale='en', instance='lava', 
  scope='crms-nacc', entity='udssymptomsonset3', property='decClMot',
  required='No', proporder='41', attributes='', quickHelp='', 
  label="13. Based on clinician's judgement, is the subject currently experiencing any motor symptoms?", context="r",
  list="uds.noYes01", style="scale";

insert into viewproperty 
set messageCode='*.udssymptomsonset3.moGait', locale='en', instance='lava', 
  scope='crms-nacc', entity='udssymptomsonset3', property='moGait',
  required='No', proporder='42', attributes='', quickHelp='', 
  label="14a. Gait disorder", context="r",
  list="uds.noYesUnknown019", style="scale";

insert into viewproperty 
set messageCode='*.udssymptomsonset3.moFalls', locale='en', instance='lava', 
  scope='crms-nacc', entity='udssymptomsonset3', property='moFalls',
  required='No', proporder='43', attributes='', quickHelp='', 
  label="14b. Falls", context="r",
  list="uds.noYesUnknown019", style="scale";

insert into viewproperty 
set messageCode='*.udssymptomsonset3.moTrem', locale='en', instance='lava', 
  scope='crms-nacc', entity='udssymptomsonset3', property='moTrem',
  required='No', proporder='44', attributes='', quickHelp='', 
  label="14c. Tremor", context="r",
  list="uds.noYesUnknown019", style="scale";

insert into viewproperty 
set messageCode='*.udssymptomsonset3.moSlow', locale='en', instance='lava', 
  scope='crms-nacc', entity='udssymptomsonset3', property='moSlow',
  required='No', proporder='45', attributes='', quickHelp='', 
  label="14d. Slowness", context="r",
  list="uds.noYesUnknown019", style="scale";

insert into viewproperty 
set messageCode='*.udssymptomsonset3.moFrst', locale='en', instance='lava', 
  scope='crms-nacc', entity='udssymptomsonset3', property='moFrst',
  required='No', proporder='46', attributes='', quickHelp='', 
  label="15. Indicate the predominant symptom that was first recognized as a decline in the subject's motor function", context="r",
  list="uds.symptomsonset3.MOFRSTI", style="scale";

insert into viewproperty 
set messageCode='followup.udssymptomsonset3.moFrst', locale='en', instance='lava', 
  scope='crms-nacc', prefix="followup", entity='udssymptomsonset3', property='moFrst',
  required='No', proporder='46', attributes='', quickHelp='', 
  label="15. Indicate the predominant symptom that was first recognized as a decline in the subject's motor function", context="r",
  list="uds.symptomsonset3.MOFRSTF", style="scale";

insert into viewproperty 
set messageCode='*.udssymptomsonset3.moMode', locale='en', instance='lava', 
  scope='crms-nacc', entity='udssymptomsonset3', property='moMode',
  required='No', proporder='47', attributes='', quickHelp='', 
  label="16. Mode of onset of motor symptoms", context="r",
  list="uds.symptomsonset3.MODE", style="scale";

insert into viewproperty 
set messageCode='*.udssymptomsonset3.moModex', locale='en', instance='lava', 
  scope='crms-nacc', entity='udssymptomsonset3', property='moModex', indentLevel=1,
  required='No', proporder='48', attributes='onkeypress="UDS_onlyNaccCharactersAllowed(event)"', quickHelp='', 
  label="Other, specify", context="i", maxLength="60", size="60", style="string";

insert into viewproperty 
set messageCode='*.udssymptomsonset3.moMoPark', locale='en', instance='lava', 
  scope='crms-nacc', entity='udssymptomsonset3', property='moMoPark',
  required='No', proporder='49', attributes='', quickHelp='', 
  label="17. Were changes in motor function suggestive of parkinsonism?", context="r",
  list="uds.noYesUnknown019", style="scale";

insert into viewproperty 
set messageCode='*.udssymptomsonset3.parkAge', locale='en', instance='lava', 
  scope='crms-nacc', entity='udssymptomsonset3', property='parkAge',
  required='No', proporder='50', attributes='', quickHelp='', indentLevel=1,
  label="17a. If yes, at what age did the motor symptoms suggestive of parkinsonism begin?", context="r",
  list="uds.symptomsonset3.ageOfOnsetI", style="scale";

insert into viewproperty 
set messageCode='followup.udssymptomsonset3.parkAge', locale='en', instance='lava', 
  scope='crms-nacc', prefix='followup', entity='udssymptomsonset3', property='parkAge',
  required='No', proporder='50', attributes='', quickHelp='', indentLevel=1,
  label="17a. If yes, at what age did the motor symptoms suggestive of parkinsonism begin? (777 = Provided at Prior Visit)", context="r",
  list="uds.symptomsonset3.ageOfOnsetF", style="scale";

insert into viewproperty 
set messageCode='*.udssymptomsonset3.moMoAls', locale='en', instance='lava', 
  scope='crms-nacc', entity='udssymptomsonset3', property='moMoAls',
  required='No', proporder='51', attributes='', quickHelp='', 
  label="18. Were changes in motor function suggestive of amyotrophic lateral sclerosis?", context="r",
  list="uds.noYesUnknown019", style="scale";

insert into viewproperty 
set messageCode='*.udssymptomsonset3.alsAge', locale='en', instance='lava', 
  scope='crms-nacc', entity='udssymptomsonset3', property='alsAge',
  required='No', proporder='52', attributes='', quickHelp='', indentLevel=1,
  label="18a. If yes, at what age did the motor symptoms suggestive of ALS begin?", context="r",
  list="uds.symptomsonset3.ageOfOnsetI", style="scale";

insert into viewproperty 
set messageCode='followup.udssymptomsonset3.alsAge', locale='en', instance='lava', 
  scope='crms-nacc', prefix="followup", entity='udssymptomsonset3', property='alsAge',
  required='No', proporder='52', attributes='', quickHelp='', indentLevel=1,
  label="18a. If yes, at what age did the motor symptoms suggestive of ALS begin? (777 = Provided at Prior Visit)", context="r",
  list="uds.symptomsonset3.ageOfOnsetF", style="scale";

insert into viewproperty 
set messageCode='*.udssymptomsonset3.moAge', locale='en', instance='lava', 
  scope='crms-nacc', entity='udssymptomsonset3', property='moAge',
  required='No', proporder='53', attributes='', quickHelp='', 
  label="19. Based on clinician's assessment, at what age did the motor changes begin? (The clinician must use his/her best judgement to estimate an age of onset.)", context="r",
  list="uds.symptomsonset3.ageOfOnsetI", style="scale";

insert into viewproperty 
set messageCode='followup.udssymptomsonset3.moAge', locale='en', instance='lava', 
  scope='crms-nacc', prefix="followup", entity='udssymptomsonset3', property='moAge',
  required='No', proporder='53', attributes='', quickHelp='', 
  label="19. Based on clinician's assessment, at what age did the motor changes begin? (The clinician must use his/her best judgement to estimate an age of onset.) (777 = Provided at Prior Visit)", context="r",
  list="uds.symptomsonset3.ageOfOnsetF", style="scale";

insert into viewproperty 
set messageCode='*.udssymptomsonset3.course', locale='en', instance='lava', 
  scope='crms-nacc', entity='udssymptomsonset3', property='course',
  required='No', proporder='54', attributes='', quickHelp='', 
  label="20. Overall course of decline of cognitive/behavioral/ motor syndrome", context="r",
  list="uds.symptomsonset3.COURSE", style="scale";

insert into viewproperty 
set messageCode='*.udssymptomsonset3.frstChg', locale='en', instance='lava', 
  scope='crms-nacc', entity='udssymptomsonset3', property='frstChg',
  required='No', proporder='55', attributes='', quickHelp='', 
  label="21. Indicate the predominant domain that was first recognized as changed in the subject", context="r",
  list="uds.symptomsonset3.FRSTCHG", style="scale";

insert into viewproperty 
set messageCode='*.udssymptomsonset3.lbdEval', locale='en', instance='lava', 
  scope='crms-nacc', entity='udssymptomsonset3', property='lbdEval',
  required='No', proporder='56', attributes='', quickHelp='', 
  label="22. Is the subject a potential candidate for further evaluation for Lewy body disease?", context="r",
  list="uds.noYes01", style="scale";

insert into viewproperty 
set messageCode='*.udssymptomsonset3.ftldEval', locale='en', instance='lava', 
  scope='crms-nacc', entity='udssymptomsonset3', property='ftldEval',
  required='No', proporder='57', attributes='', quickHelp='', 
  label="23. Is the subject a potential candidate for further evaluation for frontotemporal lobar degeneration?", context="r",
  list="uds.noYes01", style="scale";


