update viewproperty set list='uds.rangeUnknown0_20' where list='uds.range0_20' and (entity like 'uds%1' or entity like 'uds%2');
update viewproperty set list='uds.rangeNAUnknown0_30' where list='uds.range0_30' and (entity like 'uds%1' or entity like 'uds%2');
update viewproperty set list='uds.rangeNAUnknown0_80' where list='uds.range0_80' and (entity like 'uds%1' or entity like 'uds%2');
update viewproperty set size=25 where entity='instrument' and property='instrType';
update viewproperty set size=25 where entity='instrument' and property='visit_id';


-- A1
DELETE FROM viewproperty WHERE entity="udssubjectdemo3";

insert into viewproperty 
set messageCode='*.udssubjectdemo3.reason', locale='en', instance='lava', 
  scope='crms-nacc', entity='udssubjectdemo3', property='reason',
  required='No', proporder='1', attributes='', quickHelp='', 
  label="1. Primary reason for coming to ADC", context="r",
  list="uds.a1.reason", style="scale";

insert into viewproperty 
set messageCode='*.udssubjectdemo3.referSc', locale='en', instance='lava', 
  scope='crms-nacc', entity='udssubjectdemo3', property='referSc',
  required='No', proporder='2', attributes='', quickHelp='', 
  label="2a. Principal referral source", context="r",
  list="uds.a1.refersc", style="scale";

insert into viewproperty 
set messageCode='*.udssubjectdemo3.learned', locale='en', instance='lava', 
  scope='crms-nacc', entity='udssubjectdemo3', property='learned',
  required='No', proporder='3', attributes='', quickHelp='', 
  label="2b. If the referral source was self-referral or a non-professional contact, how did the referral source learn of the ADC?:", context="r",
  list="uds.a1.learned", style="scale";

insert into viewproperty 
set messageCode='*.udssubjectdemo3.preStat', locale='en', instance='lava', 
  scope='crms-nacc', entity='udssubjectdemo3', property='preStat',
  required='No', proporder='4', attributes='', quickHelp='', 
  label="3. Presumed disease status at enrollment", context="r",
  list="uds.a1.presDis", style="scale";

-- fix typo in list  
update listvalues set valuedesc = 'Initial evaluation only' where valuekey = '1' and listid in 
(select listid from list where listname = 'udsa1prespart');
  
insert into viewproperty 
set messageCode='*.udssubjectdemo3.presPart', locale='en', instance='lava', 
  scope='crms-nacc', entity='udssubjectdemo3', property='presPart',
  required='No', proporder='5', attributes='', quickHelp='', 
  label="4. Presumed participation", context="r",
  list="uds.a1.presPart", style="scale";
  
insert into viewproperty 
set messageCode='*.udssubjectdemo3.sourceNw', locale='en', instance='lava', 
  scope='crms-nacc', entity='udssubjectdemo3', property='sourceNw',
  required='No', proporder='6', attributes='', quickHelp='', 
  label="5. ADC enrollment type", context="r",
  list="uds.a1.sourcenw", style="scale";
  
insert into viewproperty 
set messageCode='*.udssubjectdemo3.birthMo', locale='en', instance='lava', 
  scope='crms-nacc', entity='udssubjectdemo3', property='birthMo',
  required='No', proporder='7', attributes='', quickHelp='', 
  label="6. Subjects month and year of birth", context="r", size="3",
  list="uds.a1.birthMo", style="scale";

insert into viewproperty 
set messageCode='followup.udssubjectdemo3.birthMo', locale='en', instance='lava', 
  scope='crms-nacc', prefix='followup', entity='udssubjectdemo3', property='birthMo',
  required='No', proporder='7', attributes='', quickHelp='', 
  label="1. Subjects month and year of birth", context="r", size="3",
  list="uds.a1.birthMo", style="scale";

insert into viewproperty 
set messageCode='*.udssubjectdemo3.birthYr', locale='en', instance='lava', 
  scope='crms-nacc', entity='udssubjectdemo3', property='birthYr',
  required='No', proporder='8', attributes='', quickHelp='', 
  label="6. Subjects year of birth", context="r", size="5",
  list="uds.a1.birthYr", style="scale";

insert into viewproperty 
set messageCode='followup.udssubjectdemo3.birthYr', locale='en', instance='lava', 
  scope='crms-nacc', prefix='followup', entity='udssubjectdemo3', property='birthYr',
  required='No', proporder='8', attributes='', quickHelp='', 
  label="1. Subjects year of birth", context="r", size="5",
  list="uds.a1.birthYr", style="scale";
  
insert into viewproperty 
set messageCode='*.udssubjectdemo3.sex', locale='en', instance='lava', 
  scope='crms-nacc', entity='udssubjectdemo3', property='sex',
  required='No', proporder='9', attributes='', quickHelp='', 
  label="7. Subjects sex", context="r",
  list="uds.gender", style="scale";

insert into viewproperty 
set messageCode='followup.udssubjectdemo3.sex', locale='en', instance='lava', 
  scope='crms-nacc', prefix='followup', entity='udssubjectdemo3', property='sex',
  required='No', proporder='9', attributes='', quickHelp='', 
  label="3. Subjects sex", context="r",
  list="uds.gender", style="scale";
  
insert into viewproperty 
set messageCode='*.udssubjectdemo3.hispanic', locale='en', instance='lava', 
  scope='crms-nacc', entity='udssubjectdemo3', property='hispanic',
  required='No', proporder='10', attributes='', quickHelp='', 
  label="8. Does the subject report being of Hispanic/Latino ethnicity (i.e., having origins from a mainly Spanish-speaking Latin American country), regardless of race?", context="r",
  list="uds.noYesUnknown019", style="scale";

insert into viewproperty 
set messageCode='*.udssubjectdemo3.hispOr', locale='en', instance='lava', 
  scope='crms-nacc', entity='udssubjectdemo3', property='hispOr',
  required='No', proporder='11', attributes='', quickHelp='', 
  label="8a. If yes, what are the subjects reported origins?", context="r",
  list="uds.a1.hispanic", style="scale";

insert into viewproperty 
set messageCode='*.udssubjectdemo3.hispOrx', locale='en', instance='lava', 
  scope='crms-nacc', entity='udssubjectdemo3', property='hispOrx',
  required='No', proporder='12', attributes='onkeypress="UDS_onlyNaccCharactersAllowed(event)"', quickHelp='', 
  label="Other (specify)", context="i", maxLength="60", size="60", style="text";

insert into viewproperty 
set messageCode='*.udssubjectdemo3.race', locale='en', instance='lava', 
  scope='crms-nacc', entity='udssubjectdemo3', property='race',
  required='No', proporder='13', attributes='', quickHelp='', 
  label="9. What does the subject report as his or her race?", context="r",
  list="uds.a1.race", style="scale";

insert into viewproperty 
set messageCode='*.udssubjectdemo3.racex', locale='en', instance='lava', 
  scope='crms-nacc', entity='udssubjectdemo3', property='racex',
  required='No', proporder='14', attributes='onkeypress="UDS_onlyNaccCharactersAllowed(event)"', quickHelp='', 
  label="Other (specify)", context="i", maxLength="60", size="60", style="text";

insert into viewproperty 
set messageCode='*.udssubjectdemo3.raceSec', locale='en', instance='lava', 
  scope='crms-nacc', entity='udssubjectdemo3', property='raceSec',
  required='No', proporder='15', attributes='', quickHelp='', 
  label="10. What additional race does subject report?", context="r",
  list="uds.a1.race2", style="scale";

insert into viewproperty 
set messageCode='*.udssubjectdemo3.raceSecx', locale='en', instance='lava', 
  scope='crms-nacc', entity='udssubjectdemo3', property='raceSecx',
  required='No', proporder='16', attributes='onkeypress="UDS_onlyNaccCharactersAllowed(event)"', quickHelp='', 
  label="Other (specify)", context="i", maxLength="60", size="60", style="text";

insert into viewproperty 
set messageCode='*.udssubjectdemo3.raceTer', locale='en', instance='lava', 
  scope='crms-nacc', entity='udssubjectdemo3', property='raceTer',
  required='No', proporder='17', attributes='', quickHelp='', 
  label="11. What additional race, beyond those reported in Questions 9 and 10, does subject report?", context="r",
  list="uds.a1.race2", style="scale";

insert into viewproperty 
set messageCode='*.udssubjectdemo3.raceTerx', locale='en', instance='lava', 
  scope='crms-nacc', entity='udssubjectdemo3', property='raceTerx',
  required='No', proporder='18', attributes='onkeypress="UDS_onlyNaccCharactersAllowed(event)"', quickHelp='', 
  label="Other (specify)", context="i", maxLength="60", size="60", style="text";

insert into viewproperty 
set messageCode='*.udssubjectdemo3.primLang', locale='en', instance='lava', 
  scope='crms-nacc', entity='udssubjectdemo3', property='primLang',
  required='No', proporder='19', attributes='', quickHelp='', 
  label="Subjects primary language", context="r",
  list="uds.a1.lang", style="scale";

insert into viewproperty 
set messageCode='*.udssubjectdemo3.primLanx', locale='en', instance='lava', 
  scope='crms-nacc', entity='udssubjectdemo3', property='primLanx',
  required='No', proporder='20', attributes='onkeypress="UDS_onlyNaccCharactersAllowed(event)"', quickHelp='', 
  label="Other (specify)", context="i", maxLength="60", size="60", style="text";

insert into viewproperty 
set messageCode='*.udssubjectdemo3.educ', locale='en', instance='lava', 
  scope='crms-nacc', entity='udssubjectdemo3', property='educ',
  required='No', proporder='21', attributes='', quickHelp='', 
  label="13. Subjects years of education, use the codes below to report the level achieved; if an attempted level is not completed, enter the number of years completed: 12 = high school or GED, 16 = bachelor’s degree, 18 = master’s degree, 20 = doctorate, 99 = unknown", context="r",
  list="uds.range0_30", style="scale";
  
insert into viewproperty 
set messageCode='*.udssubjectdemo3.mariStat', locale='en', instance='lava', 
  scope='crms-nacc', entity='udssubjectdemo3', property='mariStat',
  required='No', proporder='22', attributes='', quickHelp='', 
  label="14. Subjects current marital status", context="r",
  list="uds.a1.maristat", style="scale";

insert into viewproperty 
set messageCode='followup.udssubjectdemo3.mariStat', locale='en', instance='lava', 
  scope='crms-nacc', prefix='followup', entity='udssubjectdemo3', property='mariStat',
  required='No', proporder='22', attributes='', quickHelp='', 
  label="2. Subjects current marital status", context="r",
  list="uds.a1.maristat", style="scale";

insert into viewproperty 
set messageCode='*.udssubjectdemo3.livSitua', locale='en', instance='lava', 
  scope='crms-nacc', entity='udssubjectdemo3', property='livSitua',
  required='No', proporder='23', attributes='', quickHelp='', 
  label="15. What is the subjects living situation?", context="r",
  list="uds.a1.livsitua", style="scale";

insert into viewproperty 
set messageCode='followup.udssubjectdemo3.livSitua', locale='en', instance='lava', 
  scope='crms-nacc', prefix='followup', entity='udssubjectdemo3', property='livSitua',
  required='No', proporder='23', attributes='', quickHelp='', 
  label="4. What is the subjects living situation?", context="r",
  list="uds.a1.livsitua", style="scale";
  
insert into viewproperty 
set messageCode='*.udssubjectdemo3.independ', locale='en', instance='lava', 
  scope='crms-nacc', entity='udssubjectdemo3', property='independ',
  required='No', proporder='24', attributes='', quickHelp='', 
  label="16. What is the subjects level of independence?", context="r",
  list="uds.a1.indepd", style="scale";

insert into viewproperty 
set messageCode='followup.udssubjectdemo3.independ', locale='en', instance='lava', 
  scope='crms-nacc', prefix='followup', entity='udssubjectdemo3', property='independ',
  required='No', proporder='24', attributes='', quickHelp='', 
  label="5. What is the subjects level of independence?", context="r",
  list="uds.a1.indepd", style="scale";

insert into viewproperty 
set messageCode='*.udssubjectdemo3.residenc', locale='en', instance='lava', 
  scope='crms-nacc', entity='udssubjectdemo3', property='residenc',
  required='No', proporder='25', attributes='', quickHelp='', 
  label="17. What is the subjects primary type of residence?", context="r",
  list="uds.a1.residenc", style="scale";

insert into viewproperty 
set messageCode='followup.udssubjectdemo3.residenc', locale='en', instance='lava', 
  scope='crms-nacc', prefix='followup', entity='udssubjectdemo3', property='residenc',
  required='No', proporder='25', attributes='', quickHelp='', 
  label="6. What is the subjects primary type of residence?", context="r",
  list="uds.a1.residenc", style="scale";

insert into viewproperty 
set messageCode='*.udssubjectdemo3.zip', locale='en', instance='lava', 
  scope='crms-nacc', entity='udssubjectdemo3', property='zip',
  required='No', proporder='26', attributes='onkeypress="onlyNumsAllowed(event)"', quickHelp='',  size="3",
  label="18. ZIP Code (first three digits) of subjects primary residence", context="r", maxLength="3", style="string";

insert into viewproperty 
set messageCode='followup.udssubjectdemo3.zip', locale='en', instance='lava', 
  scope='crms-nacc', prefix='followup', entity='udssubjectdemo3', property='zip',
  required='No', proporder='26', attributes='onkeypress="onlyNumsAllowed(event)"', quickHelp='', size="3",
  label="7. ZIP Code (first three digits) of subjects primary residence", context="r", maxLength="3", style="string";

insert into viewproperty 
set messageCode='*.udssubjectdemo3.handed', locale='en', instance='lava', 
  scope='crms-nacc', entity='udssubjectdemo3', property='handed',
  required='No', proporder='27', attributes='', quickHelp='', 
  label="19. Is the subject left- or right-handed (for example, which hand would s/ he normally use to write or throw a ball)?", context="r",
  list="uds.a1.handed", style="scale";

  
  
-- A2  
DELETE FROM viewproperty where entity= 'udsinformantdemo3';

insert into viewproperty 
set messageCode='*.udsinformantdemo3.inBirMo', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsinformantdemo3', property='inBirMo',
  required='No', proporder='1', attributes='', quickHelp='', size="3",
  label="1. Co-participant's month and year of birth (MM/YYYY) (99/9999 = unknown)", context="r",
  list="uds.a1.birthMo", style="scale";

insert into viewproperty 
set messageCode='*.udsinformantdemo3.inBirYr', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsinformantdemo3', property='inBirYr',
  required='No', proporder='2', attributes='', quickHelp='', 
  label="1. Co-participant's year of birth", context="r", size="3",
  list="uds.a1.birthYr", style="scale";

insert into viewproperty 
set messageCode='*.udsinformantdemo3.inSex', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsinformantdemo3', property='inSex',
  required='No', proporder='3', attributes='', quickHelp='', 
  label="2. Co-participant's sex", context="r",
  list="uds.gender", style="scale";

insert into viewproperty 
set messageCode='*.udsinformantdemo3.newInf', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsinformantdemo3', property='newInf',
  required='No', proporder='4', attributes='', quickHelp='', 
  label="Is this a new co-participant - i.e., one who was not a co-participant at any past UDS visit?", context="h",
  list="uds.noYes01", style="scale";

insert into viewproperty 
set messageCode='*.udsinformantdemo3.inHisp', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsinformantdemo3', property='inHisp',
  required='No', proporder='5', attributes='', quickHelp='', 
  label="3. Does the co-participant report being of Hispanic/ Latino ethnicity (i.e., having origins from mainly Spanish-speaking Latin American country), regardless of race?", context="r",
  list="uds.noYesUnknown019", style="scale";

insert into viewproperty 
set messageCode='*.udsinformantdemo3.inHispOr', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsinformantdemo3', property='inHispOr',
  required='No', proporder='6', attributes='', quickHelp='', 
  label="3a. If yes, what are the co-participant's reported origins?", context="r",
  list="uds.a1.hispanic", style="scale";

insert into viewproperty 
set messageCode='*.udsinformantdemo3.inHispOx', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsinformantdemo3', property='inHispOx',
  required='No', proporder='7', attributes='onkeypress="UDS_onlyNaccCharactersAllowed(event)"', quickHelp='', 
  label="Other (specify)", context="i", maxLength="60", size="60", style="string";

insert into viewproperty 
set messageCode='*.udsinformantdemo3.inRace', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsinformantdemo3', property='inRace',
  required='No', proporder='8', attributes='', quickHelp='', 
  label="4. What does the co-participant report as his or her race?", context="r",
  list="uds.a1.race", style="scale";

insert into viewproperty 
set messageCode='*.udsinformantdemo3.inRacex', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsinformantdemo3', property='inRacex',
  required='No', proporder='9', attributes='onkeypress="UDS_onlyNaccCharactersAllowed(event)"', quickHelp='', 
  label="Other (specify)", context="i", maxLength="60", size="60", style="string";

insert into viewproperty 
set messageCode='*.udsinformantdemo3.inRaSec', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsinformantdemo3', property='inRaSec',
  required='No', proporder='10', attributes='', quickHelp='', 
  label="5. What additional race does co-participant report?", context="r",
  list="uds.a1.raceNone", style="scale";

insert into viewproperty 
set messageCode='*.udsinformantdemo3.inRaSecx', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsinformantdemo3', property='inRaSecx',
  required='No', proporder='11', attributes='onkeypress="UDS_onlyNaccCharactersAllowed(event)"', quickHelp='', 
  label="Other (specify)", context="i", maxLength="60", size="60", style="string";

insert into viewproperty 
set messageCode='*.udsinformantdemo3.inRaTer', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsinformantdemo3', property='inRaTer',
  required='No', proporder='12', attributes='', quickHelp='', 
  label="6. What additional race, beyond those reported in Questions 4 and 5, does the co-participant report?", context="r",
  list="uds.a1.raceNone", style="scale";

insert into viewproperty 
set messageCode='*.udsinformantdemo3.inRaTerx', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsinformantdemo3', property='inRaTerx',
  required='No', proporder='13', attributes='onkeypress="UDS_onlyNaccCharactersAllowed(event)"', quickHelp='', 
  label="Other (specify)", context="i", maxLength="60", size="60", style="string";

insert into viewproperty 
set messageCode='*.udsinformantdemo3.inEduc', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsinformantdemo3', property='inEduc',
  required='No', proporder='14', attributes='', quickHelp='', 
  label="7. Co-participant's years of education", context="r",
  list="uds.range0_30", style="scale";

insert into viewproperty 
set messageCode='*.udsinformantdemo3.inRelTo', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsinformantdemo3', property='inRelTo',
  required='No', proporder='15', attributes='', quickHelp='', 
  label="8. What is co-participant's relationship to subject?", context="r",
  list="uds.a2.relation3", style="scale";

insert into viewproperty 
set messageCode='*.udsinformantdemo3.inKnown', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsinformantdemo3', property='inKnown',
  required='No', proporder='16', attributes='', quickHelp='', 
  label="8a. How long has the co-participant known the subject?", context="r",
  list="uds.a2.inKnown", style="scale";

insert into viewproperty 
set messageCode='*.udsinformantdemo3.inLivWth', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsinformantdemo3', property='inLivWth',
  required='No', proporder='17', attributes='', quickHelp='', 
  label="9. Does the co-participant live with the subject?", context="r",
  list="uds.noYes01", style="scale";

insert into viewproperty 
set messageCode='*.udsinformantdemo3.inVisits', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsinformantdemo3', property='inVisits',
  required='No', proporder='18', attributes='', quickHelp='', 
  label="9a. If no, approximate frequency of in-person visits?", context="r",
  list="uds.a2.freq", style="scale";

insert into viewproperty 
set messageCode='*.udsinformantdemo3.inCalls', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsinformantdemo3', property='inCalls',
  required='No', proporder='19', attributes='', quickHelp='', 
  label="9b. If no, approximate frequency of telephone contact?", context="r",
  list="uds.a2.freq", style="scale";

insert into viewproperty 
set messageCode='*.udsinformantdemo3.inRely', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsinformantdemo3', property='inRely',
  required='No', proporder='20', attributes='', quickHelp='', 
  label="10. Is there a question about the co-participant's reliability?", context="r",
  list="uds.noYes01", style="scale";

-- followup metadata (item numbering differs, a little text differs, newInf is not hidden)
insert into viewproperty 
set messageCode='followup.udsinformantdemo3.inBirMo', locale='en', instance='lava', 
  scope='crms-nacc', prefix='followup', entity='udsinformantdemo3', property='inBirMo',
  required='No', proporder='1', attributes='', quickHelp='', size="3", 
  label="1. Co-participant's month and year of birth (MM/YYYY) (99/9999 = unknown)", context="r",
  list="uds.a1.birthMo", style="scale";

insert into viewproperty 
set messageCode='followup.udsinformantdemo3.inBirYr', locale='en', instance='lava', 
  scope='crms-nacc', prefix='followup', entity='udsinformantdemo3', property='inBirYr',
  required='No', proporder='2', attributes='', quickHelp='',  size="3",
  label="Co-participant's year of birth", context="r",
  list="uds.a1.birthYr", style="scale";

insert into viewproperty 
set messageCode='followup.udsinformantdemo3.inSex', locale='en', instance='lava', 
  scope='crms-nacc', prefix='followup', entity='udsinformantdemo3', property='inSex',
  required='No', proporder='3', attributes='', quickHelp='', 
  label="2. Co-participant's sex", context="r",
  list="uds.gender", style="scale";

insert into viewproperty 
set messageCode='followup.udsinformantdemo3.newInf', locale='en', instance='lava', 
  scope='crms-nacc', prefix='followup', entity='udsinformantdemo3', property='newInf',
  required='No', proporder='4', attributes='', quickHelp='', 
  label="3. Is this a new co-participant - i.e., one who was not a co-participant at any past UDS visit?", context="r",
  list="uds.noYes01", style="scale";

insert into viewproperty 
set messageCode='followup.udsinformantdemo3.inHisp', locale='en', instance='lava', 
  scope='crms-nacc', prefix='followup', entity='udsinformantdemo3', property='inHisp',
  required='No', proporder='5', attributes='', quickHelp='', 
  label="4. Does the co-participant report being of Hispanic/ Latino ethnicity (i.e., having origins from mainly Spanish-speaking Latin American country), regardless of race?", context="r",
  list="uds.noYesUnknown019", style="scale";

insert into viewproperty 
set messageCode='followup.udsinformantdemo3.inHispOr', locale='en', instance='lava', 
  scope='crms-nacc', prefix='followup', entity='udsinformantdemo3', property='inHispOr',
  required='No', proporder='6', attributes='', quickHelp='', 
  label="4a. If yes, what are the co-participant's reported origins?", context="r",
  list="uds.a1.hispanic", style="scale";

insert into viewproperty 
set messageCode='followup.udsinformantdemo3.inHispOx', locale='en', instance='lava', 
  scope='crms-nacc', prefix='followup', entity='udsinformantdemo3', property='inHispOx',
  required='No', proporder='7', attributes='onkeypress="UDS_onlyNaccCharactersAllowed(event)"', quickHelp='', 
  label="Other (specify)", context="i", maxLength="60", size="60", style="string";

insert into viewproperty 
set messageCode='followup.udsinformantdemo3.inRace', locale='en', instance='lava', 
  scope='crms-nacc', prefix='followup', entity='udsinformantdemo3', property='inRace',
  required='No', proporder='8', attributes='', quickHelp='', 
  label="5. What does the co-participant report as his or her race?", context="r",
  list="uds.a1.race", style="scale";

insert into viewproperty 
set messageCode='followup.udsinformantdemo3.inRacex', locale='en', instance='lava', 
  scope='crms-nacc', prefix='followup', entity='udsinformantdemo3', property='inRacex',
  required='No', proporder='9', attributes='onkeypress="UDS_onlyNaccCharactersAllowed(event)"', quickHelp='', 
  label="Other (specify)", context="i", maxLength="60", size="60", style="string";

insert into viewproperty 
set messageCode='followup.udsinformantdemo3.inRaSec', locale='en', instance='lava', 
  scope='crms-nacc', prefix='followup', entity='udsinformantdemo3', property='inRaSec',
  required='No', proporder='10', attributes='', quickHelp='', 
  label="6. What additional race does co-participant report?", context="r",
  list="uds.a1.raceNone", style="scale";

insert into viewproperty 
set messageCode='followup.udsinformantdemo3.inRaSecx', locale='en', instance='lava', 
  scope='crms-nacc', prefix='followup', entity='udsinformantdemo3', property='inRaSecx',
  required='No', proporder='11', attributes='onkeypress="UDS_onlyNaccCharactersAllowed(event)"', quickHelp='', 
  label="Other (specify)", context="i", maxLength="60", size="60", style="string";

insert into viewproperty 
set messageCode='followup.udsinformantdemo3.inRaTer', locale='en', instance='lava', 
  scope='crms-nacc', prefix='followup', entity='udsinformantdemo3', property='inRaTer',
  required='No', proporder='12', attributes='', quickHelp='', 
  label="7. What additional race, beyond those reported in Questions 5 and 6, does the co-participant report?", context="r",
  list="uds.a1.raceNone", style="scale";

insert into viewproperty 
set messageCode='followup.udsinformantdemo3.inRaTerx', locale='en', instance='lava', 
  scope='crms-nacc', prefix='followup', entity='udsinformantdemo3', property='inRaTerx',
  required='No', proporder='13', attributes='onkeypress="UDS_onlyNaccCharactersAllowed(event)"', quickHelp='', 
  label="Other (specify)", context="i", maxLength="60", size="60", style="string";

insert into viewproperty 
set messageCode='followup.udsinformantdemo3.inEduc', locale='en', instance='lava', 
  scope='crms-nacc', prefix='followup', entity='udsinformantdemo3', property='inEduc',
  required='No', proporder='14', attributes='', quickHelp='', 
  label="8. Co-participant's years of education", context="r",
  list="uds.range0_30", style="scale";

insert into viewproperty 
set messageCode='followup.udsinformantdemo3.inRelTo', locale='en', instance='lava', 
  scope='crms-nacc', prefix='followup', entity='udsinformantdemo3', property='inRelTo',
  required='No', proporder='15', attributes='', quickHelp='', 
  label="9. What is co-participant's relationship to subject?", context="r",
  list="uds.a2.relation3", style="scale";

insert into viewproperty 
set messageCode='followup.udsinformantdemo3.inKnown', locale='en', instance='lava', 
  scope='crms-nacc', prefix='followup', entity='udsinformantdemo3', property='inKnown',
  required='No', proporder='16', attributes='', quickHelp='', 
  label="9a. How long has the co-participant known the subject?", context="r",
  list="uds.a2.inKnown", style="scale";

insert into viewproperty 
set messageCode='followup.udsinformantdemo3.inLivWth', locale='en', instance='lava', 
  scope='crms-nacc', prefix='followup', entity='udsinformantdemo3', property='inLivWth',
  required='No', proporder='17', attributes='', quickHelp='', 
  label="10. Does the co-participant live with the subject?", context="r",
  list="uds.noYes01", style="scale";

insert into viewproperty 
set messageCode='followup.udsinformantdemo3.inVisits', locale='en', instance='lava', 
  scope='crms-nacc', prefix='followup', entity='udsinformantdemo3', property='inVisits',
  required='No', proporder='18', attributes='', quickHelp='', 
  label="10a. If no, approximate frequency of in-person visits?", context="r",
  list="uds.a2.freq", style="scale";

insert into viewproperty 
set messageCode='followup.udsinformantdemo3.inCalls', locale='en', instance='lava', 
  scope='crms-nacc', prefix='followup', entity='udsinformantdemo3', property='inCalls',
  required='No', proporder='19', attributes='', quickHelp='', 
  label="10b. If no, approximate frequency of telephone contact?", context="r",
  list="uds.a2.freq", style="scale";

insert into viewproperty 
set messageCode='followup.udsinformantdemo3.inRely', locale='en', instance='lava', 
  scope='crms-nacc', prefix='followup', entity='udsinformantdemo3', property='inRely',
  required='No', proporder='20', attributes='', quickHelp='', 
  label="11. Is there a question about the co-participant's reliability?", context="r",
  list="uds.noYes01", style="scale";
  

  
-- A3
-- creating new table for UDS 3.0 as no overlap in variables from 2.0   
DROP TABLE IF EXISTS udsfamilyhistory3;

CREATE TABLE udsfamilyhistory3 (
  InstrID int(10) NOT NULL,
    `AFFFAMM` SMALLINT NULL DEFAULT NULL,
    `NWINFMUT` SMALLINT NULL DEFAULT NULL,
    `FADMUT` SMALLINT NULL DEFAULT NULL,
    `FADMUTX` varchar(60) NULL DEFAULT NULL,
    `FADMUSO` SMALLINT NULL DEFAULT NULL,
    `FADMUSOX` varchar(60) NULL DEFAULT NULL,
    `FFTDMUT` SMALLINT NULL DEFAULT NULL,
    `FFTDMUTX` varchar(60) NULL DEFAULT NULL,
    `FFTDMUSO` SMALLINT NULL DEFAULT NULL,
    `FFTDMUSX` varchar(60) NULL DEFAULT NULL,
    `FOTHMUT` SMALLINT NULL DEFAULT NULL,
    `FOTHMUTX` varchar(60) NULL DEFAULT NULL,
    `FOTHMUSO` SMALLINT NULL DEFAULT NULL,
    `FOTHMUSX` varchar(60) NULL DEFAULT NULL,
    `NWINFPAR` SMALLINT NULL DEFAULT NULL,
    `MOMMOB` SMALLINT NULL DEFAULT NULL,
    `MOMYOB` SMALLINT NULL DEFAULT NULL,
    `MOMDAGE` SMALLINT NULL DEFAULT NULL,
    `MOMNEUR` SMALLINT NULL DEFAULT NULL,
    `MOMPRDX` SMALLINT NULL DEFAULT NULL,
    `MOMMOE` SMALLINT NULL DEFAULT NULL,
    `MOMAGEO` SMALLINT NULL DEFAULT NULL,
    `DADMOB` SMALLINT NULL DEFAULT NULL,
    `DADYOB` SMALLINT NULL DEFAULT NULL,
    `DADDAGE` SMALLINT NULL DEFAULT NULL,
    `DADNEUR` SMALLINT NULL DEFAULT NULL,
    `DADPRDX` SMALLINT NULL DEFAULT NULL,
    `DADMOE` SMALLINT NULL DEFAULT NULL,
    `DADAGEO` SMALLINT NULL DEFAULT NULL,
    `SIBS` SMALLINT NULL DEFAULT NULL,
    `NWINFSIB` SMALLINT NULL DEFAULT NULL,
    `SIB1MOB` SMALLINT NULL DEFAULT NULL,
    `SIB1YOB` SMALLINT NULL DEFAULT NULL,
    `SIB1AGD` SMALLINT NULL DEFAULT NULL,
    `SIB1NEU` SMALLINT NULL DEFAULT NULL,
    `SIB1PDX` SMALLINT NULL DEFAULT NULL,
    `SIB1MOE` SMALLINT NULL DEFAULT NULL,
    `SIB1AGO` SMALLINT NULL DEFAULT NULL,
    `SIB2MOB` SMALLINT NULL DEFAULT NULL,
    `SIB2YOB` SMALLINT NULL DEFAULT NULL,
    `SIB2AGD` SMALLINT NULL DEFAULT NULL,
    `SIB2NEU` SMALLINT NULL DEFAULT NULL,
    `SIB2PDX` SMALLINT NULL DEFAULT NULL,
    `SIB2MOE` SMALLINT NULL DEFAULT NULL,
    `SIB2AGO` SMALLINT NULL DEFAULT NULL,
    `SIB3MOB` SMALLINT NULL DEFAULT NULL,
    `SIB3YOB` SMALLINT NULL DEFAULT NULL,
    `SIB3AGD` SMALLINT NULL DEFAULT NULL,
    `SIB3NEU` SMALLINT NULL DEFAULT NULL,
    `SIB3PDX` SMALLINT NULL DEFAULT NULL,
    `SIB3MOE` SMALLINT NULL DEFAULT NULL,
    `SIB3AGO` SMALLINT NULL DEFAULT NULL,
    `SIB4MOB` SMALLINT NULL DEFAULT NULL,
    `SIB4YOB` SMALLINT NULL DEFAULT NULL,
    `SIB4AGD` SMALLINT NULL DEFAULT NULL,
    `SIB4NEU` SMALLINT NULL DEFAULT NULL,
    `SIB4PDX` SMALLINT NULL DEFAULT NULL,
    `SIB4MOE` SMALLINT NULL DEFAULT NULL,
    `SIB4AGO` SMALLINT NULL DEFAULT NULL,
    `SIB5MOB` SMALLINT NULL DEFAULT NULL,
    `SIB5YOB` SMALLINT NULL DEFAULT NULL,
    `SIB5AGD` SMALLINT NULL DEFAULT NULL,
    `SIB5NEU` SMALLINT NULL DEFAULT NULL,
    `SIB5PDX` SMALLINT NULL DEFAULT NULL,
    `SIB5MOE` SMALLINT NULL DEFAULT NULL,
    `SIB5AGO` SMALLINT NULL DEFAULT NULL,
    `SIB6MOB` SMALLINT NULL DEFAULT NULL,
    `SIB6YOB` SMALLINT NULL DEFAULT NULL,
    `SIB6AGD` SMALLINT NULL DEFAULT NULL,
    `SIB6NEU` SMALLINT NULL DEFAULT NULL,
    `SIB6PDX` SMALLINT NULL DEFAULT NULL,
    `SIB6MOE` SMALLINT NULL DEFAULT NULL,
    `SIB6AGO` SMALLINT NULL DEFAULT NULL,
    `SIB7MOB` SMALLINT NULL DEFAULT NULL,
    `SIB7YOB` SMALLINT NULL DEFAULT NULL,
    `SIB7AGD` SMALLINT NULL DEFAULT NULL,
    `SIB7NEU` SMALLINT NULL DEFAULT NULL,
    `SIB7PDX` SMALLINT NULL DEFAULT NULL,
    `SIB7MOE` SMALLINT NULL DEFAULT NULL,
    `SIB7AGO` SMALLINT NULL DEFAULT NULL,
    `SIB8MOB` SMALLINT NULL DEFAULT NULL,
    `SIB8YOB` SMALLINT NULL DEFAULT NULL,
    `SIB8AGD` SMALLINT NULL DEFAULT NULL,
    `SIB8NEU` SMALLINT NULL DEFAULT NULL,
    `SIB8PDX` SMALLINT NULL DEFAULT NULL,
    `SIB8MOE` SMALLINT NULL DEFAULT NULL,
    `SIB8AGO` SMALLINT NULL DEFAULT NULL,
    `SIB9MOB` SMALLINT NULL DEFAULT NULL,
    `SIB9YOB` SMALLINT NULL DEFAULT NULL,
    `SIB9AGD` SMALLINT NULL DEFAULT NULL,
    `SIB9NEU` SMALLINT NULL DEFAULT NULL,
    `SIB9PDX` SMALLINT NULL DEFAULT NULL,
    `SIB9MOE` SMALLINT NULL DEFAULT NULL,
    `SIB9AGO` SMALLINT NULL DEFAULT NULL,
    `SIB10MOB` SMALLINT NULL DEFAULT NULL,
    `SIB10YOB` SMALLINT NULL DEFAULT NULL,
    `SIB10AGD` SMALLINT NULL DEFAULT NULL,
    `SIB10NEU` SMALLINT NULL DEFAULT NULL,
    `SIB10PDX` SMALLINT NULL DEFAULT NULL,
    `SIB10MOE` SMALLINT NULL DEFAULT NULL,
    `SIB10AGO` SMALLINT NULL DEFAULT NULL,
    `SIB11MOB` SMALLINT NULL DEFAULT NULL,
    `SIB11YOB` SMALLINT NULL DEFAULT NULL,
    `SIB11AGD` SMALLINT NULL DEFAULT NULL,
    `SIB11NEU` SMALLINT NULL DEFAULT NULL,
    `SIB11PDX` SMALLINT NULL DEFAULT NULL,
    `SIB11MOE` SMALLINT NULL DEFAULT NULL,
    `SIB11AGO` SMALLINT NULL DEFAULT NULL,
    `SIB12MOB` SMALLINT NULL DEFAULT NULL,
    `SIB12YOB` SMALLINT NULL DEFAULT NULL,
    `SIB12AGD` SMALLINT NULL DEFAULT NULL,
    `SIB12NEU` SMALLINT NULL DEFAULT NULL,
    `SIB12PDX` SMALLINT NULL DEFAULT NULL,
    `SIB12MOE` SMALLINT NULL DEFAULT NULL,
    `SIB12AGO` SMALLINT NULL DEFAULT NULL,
    `SIB13MOB` SMALLINT NULL DEFAULT NULL,
    `SIB13YOB` SMALLINT NULL DEFAULT NULL,
    `SIB13AGD` SMALLINT NULL DEFAULT NULL,
    `SIB13NEU` SMALLINT NULL DEFAULT NULL,
    `SIB13PDX` SMALLINT NULL DEFAULT NULL,
    `SIB13MOE` SMALLINT NULL DEFAULT NULL,
    `SIB13AGO` SMALLINT NULL DEFAULT NULL,
    `SIB14MOB` SMALLINT NULL DEFAULT NULL,
    `SIB14YOB` SMALLINT NULL DEFAULT NULL,
    `SIB14AGD` SMALLINT NULL DEFAULT NULL,
    `SIB14NEU` SMALLINT NULL DEFAULT NULL,
    `SIB14PDX` SMALLINT NULL DEFAULT NULL,
    `SIB14MOE` SMALLINT NULL DEFAULT NULL,
    `SIB14AGO` SMALLINT NULL DEFAULT NULL,
    `SIB15MOB` SMALLINT NULL DEFAULT NULL,
    `SIB15YOB` SMALLINT NULL DEFAULT NULL,
    `SIB15AGD` SMALLINT NULL DEFAULT NULL,
    `SIB15NEU` SMALLINT NULL DEFAULT NULL,
    `SIB15PDX` SMALLINT NULL DEFAULT NULL,
    `SIB15MOE` SMALLINT NULL DEFAULT NULL,
    `SIB15AGO` SMALLINT NULL DEFAULT NULL,
    `SIB16MOB` SMALLINT NULL DEFAULT NULL,
    `SIB16YOB` SMALLINT NULL DEFAULT NULL,
    `SIB16AGD` SMALLINT NULL DEFAULT NULL,
    `SIB16NEU` SMALLINT NULL DEFAULT NULL,
    `SIB16PDX` SMALLINT NULL DEFAULT NULL,
    `SIB16MOE` SMALLINT NULL DEFAULT NULL,
    `SIB16AGO` SMALLINT NULL DEFAULT NULL,
    `SIB17MOB` SMALLINT NULL DEFAULT NULL,
    `SIB17YOB` SMALLINT NULL DEFAULT NULL,
    `SIB17AGD` SMALLINT NULL DEFAULT NULL,
    `SIB17NEU` SMALLINT NULL DEFAULT NULL,
    `SIB17PDX` SMALLINT NULL DEFAULT NULL,
    `SIB17MOE` SMALLINT NULL DEFAULT NULL,
    `SIB17AGO` SMALLINT NULL DEFAULT NULL,
    `SIB18MOB` SMALLINT NULL DEFAULT NULL,
    `SIB18YOB` SMALLINT NULL DEFAULT NULL,
    `SIB18AGD` SMALLINT NULL DEFAULT NULL,
    `SIB18NEU` SMALLINT NULL DEFAULT NULL,
    `SIB18PDX` SMALLINT NULL DEFAULT NULL,
    `SIB18MOE` SMALLINT NULL DEFAULT NULL,
    `SIB18AGO` SMALLINT NULL DEFAULT NULL,
    `SIB19MOB` SMALLINT NULL DEFAULT NULL,
    `SIB19YOB` SMALLINT NULL DEFAULT NULL,
    `SIB19AGD` SMALLINT NULL DEFAULT NULL,
    `SIB19NEU` SMALLINT NULL DEFAULT NULL,
    `SIB19PDX` SMALLINT NULL DEFAULT NULL,
    `SIB19MOE` SMALLINT NULL DEFAULT NULL,
    `SIB19AGO` SMALLINT NULL DEFAULT NULL,
    `SIB20MOB` SMALLINT NULL DEFAULT NULL,
    `SIB20YOB` SMALLINT NULL DEFAULT NULL,
    `SIB20AGD` SMALLINT NULL DEFAULT NULL,
    `SIB20NEU` SMALLINT NULL DEFAULT NULL,
    `SIB20PDX` SMALLINT NULL DEFAULT NULL,
    `SIB20MOE` SMALLINT NULL DEFAULT NULL,
    `SIB20AGO` SMALLINT NULL DEFAULT NULL,
    `KIDS` SMALLINT NULL DEFAULT NULL,
    `NWINFKID` SMALLINT NULL DEFAULT NULL,
    `KID1MOB` SMALLINT NULL DEFAULT NULL,
    `KID1YOB` SMALLINT NULL DEFAULT NULL,
    `KID1AGD` SMALLINT NULL DEFAULT NULL,
    `KID1NEU` SMALLINT NULL DEFAULT NULL,
    `KID1PDX` SMALLINT NULL DEFAULT NULL,
    `KID1MOE` SMALLINT NULL DEFAULT NULL,
    `KID1AGO` SMALLINT NULL DEFAULT NULL,
    `KID2MOB` SMALLINT NULL DEFAULT NULL,
    `KID2YOB` SMALLINT NULL DEFAULT NULL,
    `KID2AGD` SMALLINT NULL DEFAULT NULL,
    `KID2NEU` SMALLINT NULL DEFAULT NULL,
    `KID2PDX` SMALLINT NULL DEFAULT NULL,
    `KID2MOE` SMALLINT NULL DEFAULT NULL,
    `KID2AGO` SMALLINT NULL DEFAULT NULL,
    `KID3MOB` SMALLINT NULL DEFAULT NULL,
    `KID3YOB` SMALLINT NULL DEFAULT NULL,
    `KID3AGD` SMALLINT NULL DEFAULT NULL,
    `KID3NEU` SMALLINT NULL DEFAULT NULL,
    `KID3PDX` SMALLINT NULL DEFAULT NULL,
    `KID3MOE` SMALLINT NULL DEFAULT NULL,
    `KID3AGO` SMALLINT NULL DEFAULT NULL,
    `KID4MOB` SMALLINT NULL DEFAULT NULL,
    `KID4YOB` SMALLINT NULL DEFAULT NULL,
    `KID4AGD` SMALLINT NULL DEFAULT NULL,
    `KID4NEU` SMALLINT NULL DEFAULT NULL,
    `KID4PDX` SMALLINT NULL DEFAULT NULL,
    `KID4MOE` SMALLINT NULL DEFAULT NULL,
    `KID4AGO` SMALLINT NULL DEFAULT NULL,
    `KID5MOB` SMALLINT NULL DEFAULT NULL,
    `KID5YOB` SMALLINT NULL DEFAULT NULL,
    `KID5AGD` SMALLINT NULL DEFAULT NULL,
    `KID5NEU` SMALLINT NULL DEFAULT NULL,
    `KID5PDX` SMALLINT NULL DEFAULT NULL,
    `KID5MOE` SMALLINT NULL DEFAULT NULL,
    `KID5AGO` SMALLINT NULL DEFAULT NULL,
    `KID6MOB` SMALLINT NULL DEFAULT NULL,
    `KID6YOB` SMALLINT NULL DEFAULT NULL,
    `KID6AGD` SMALLINT NULL DEFAULT NULL,
    `KID6NEU` SMALLINT NULL DEFAULT NULL,
    `KID6PDX` SMALLINT NULL DEFAULT NULL,
    `KID6MOE` SMALLINT NULL DEFAULT NULL,
    `KID6AGO` SMALLINT NULL DEFAULT NULL,
    `KID7MOB` SMALLINT NULL DEFAULT NULL,
    `KID7YOB` SMALLINT NULL DEFAULT NULL,
    `KID7AGD` SMALLINT NULL DEFAULT NULL,
    `KID7NEU` SMALLINT NULL DEFAULT NULL,
    `KID7PDX` SMALLINT NULL DEFAULT NULL,
    `KID7MOE` SMALLINT NULL DEFAULT NULL,
    `KID7AGO` SMALLINT NULL DEFAULT NULL,
    `KID8MOB` SMALLINT NULL DEFAULT NULL,
    `KID8YOB` SMALLINT NULL DEFAULT NULL,
    `KID8AGD` SMALLINT NULL DEFAULT NULL,
    `KID8NEU` SMALLINT NULL DEFAULT NULL,
    `KID8PDX` SMALLINT NULL DEFAULT NULL,
    `KID8MOE` SMALLINT NULL DEFAULT NULL,
    `KID8AGO` SMALLINT NULL DEFAULT NULL,
    `KID9MOB` SMALLINT NULL DEFAULT NULL,
    `KID9YOB` SMALLINT NULL DEFAULT NULL,
    `KID9AGD` SMALLINT NULL DEFAULT NULL,
    `KID9NEU` SMALLINT NULL DEFAULT NULL,
    `KID9PDX` SMALLINT NULL DEFAULT NULL,
    `KID9MOE` SMALLINT NULL DEFAULT NULL,
    `KID9AGO` SMALLINT NULL DEFAULT NULL,
    `KID10MOB` SMALLINT NULL DEFAULT NULL,
    `KID10YOB` SMALLINT NULL DEFAULT NULL,
    `KID10AGD` SMALLINT NULL DEFAULT NULL,
    `KID10NEU` SMALLINT NULL DEFAULT NULL,
    `KID10PDX` SMALLINT NULL DEFAULT NULL,
    `KID10MOE` SMALLINT NULL DEFAULT NULL,
    `KID10AGO` SMALLINT NULL DEFAULT NULL,
    `KID11MOB` SMALLINT NULL DEFAULT NULL,
    `KID11YOB` SMALLINT NULL DEFAULT NULL,
    `KID11AGD` SMALLINT NULL DEFAULT NULL,
    `KID11NEU` SMALLINT NULL DEFAULT NULL,
    `KID11PDX` SMALLINT NULL DEFAULT NULL,
    `KID11MOE` SMALLINT NULL DEFAULT NULL,
    `KID11AGO` SMALLINT NULL DEFAULT NULL,
    `KID12MOB` SMALLINT NULL DEFAULT NULL,
    `KID12YOB` SMALLINT NULL DEFAULT NULL,
    `KID12AGD` SMALLINT NULL DEFAULT NULL,
    `KID12NEU` SMALLINT NULL DEFAULT NULL,
    `KID12PDX` SMALLINT NULL DEFAULT NULL,
    `KID12MOE` SMALLINT NULL DEFAULT NULL,
    `KID12AGO` SMALLINT NULL DEFAULT NULL,
    `KID13MOB` SMALLINT NULL DEFAULT NULL,
    `KID13YOB` SMALLINT NULL DEFAULT NULL,
    `KID13AGD` SMALLINT NULL DEFAULT NULL,
    `KID13NEU` SMALLINT NULL DEFAULT NULL,
    `KID13PDX` SMALLINT NULL DEFAULT NULL,
    `KID13MOE` SMALLINT NULL DEFAULT NULL,
    `KID13AGO` SMALLINT NULL DEFAULT NULL,
    `KID14MOB` SMALLINT NULL DEFAULT NULL,
    `KID14YOB` SMALLINT NULL DEFAULT NULL,
    `KID14AGD` SMALLINT NULL DEFAULT NULL,
    `KID14NEU` SMALLINT NULL DEFAULT NULL,
    `KID14PDX` SMALLINT NULL DEFAULT NULL,
    `KID14MOE` SMALLINT NULL DEFAULT NULL,
    `KID14AGO` SMALLINT NULL DEFAULT NULL,
    `KID15MOB` SMALLINT NULL DEFAULT NULL,
    `KID15YOB` SMALLINT NULL DEFAULT NULL,
    `KID15AGD` SMALLINT NULL DEFAULT NULL,
    `KID15NEU` SMALLINT NULL DEFAULT NULL,
    `KID15PDX` SMALLINT NULL DEFAULT NULL,
    `KID15MOE` SMALLINT NULL DEFAULT NULL,
    `KID15AGO` SMALLINT NULL DEFAULT NULL,
PRIMARY KEY (`InstrID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;

delete from viewproperty where entity="udsfamilyhistory3";

-- Add columns to viewproperty table
insert into viewproperty 
set messageCode='*.udsfamilyhistory3.afffamm', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='afffamm',
  required='No', proporder='1', attributes='', quickHelp='', 
  label="1. Are there affected first-order relatives?", context="r",
  list="uds.noYesUnknown019", style="scale";

-- hidden version for initial visit  
insert into viewproperty 
set messageCode='initial.udsfamilyhistory3.nwinfmut', locale='en', instance='lava', 
  scope='crms-nacc', prefix='initial', entity='udsfamilyhistory3', property='nwinfmut',
  required='No', proporder='1', attributes='', quickHelp='', 
  context="h",
  style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.nwinfmut', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='newinfmut',
  required='No', proporder='1', attributes='', quickHelp='', 
  label="1. Since the last visit, is new information available concerning genetic mutations?", context="r",
  list="uds.noYesUnknown019", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.fadmut', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='fadmut',
  required='No', proporder='2', attributes='', quickHelp='', 
  label="2a. In this family, is there evidence for an AD mutation? If Yes, select predominant mutation.", context="r",
  list="uds.a3.fadmut", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.fadmutx', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='fadmutx', indentLevel=1,
  required='No', proporder='3', attributes='onkeypress="UDS_onlyNaccCharactersAllowed(event)"', quickHelp='', 
  label="If Yes, Other (specify):", context="i", size="60", maxLength="60", style="string";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.fadmuso', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='fadmuso',
  required='No', proporder='4', attributes='', quickHelp='', 
  label="2b. Source of evidence for AD mutation", context="r",
  list="uds.a3.fadmuso", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.fadmusox', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='fadmusox', indentLevel=1,
  required='No', proporder='5', attributes='onkeypress="UDS_onlyNaccCharactersAllowed(event)"', quickHelp='', 
  label="If other, specify:", context="i", maxLength="60", size="60", style="string";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.fftdmut', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='fftdmut',
  required='No', proporder='6', attributes='', quickHelp='', 
  label="3a. In this family, is there evidence for an FTLD mutation? If Yes, select predominant mutation.", context="r",
  list="uds.a3.fftdmut", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.fftdmutx', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='fftdmutx', indentLevel=1,
  required='No', proporder='7', attributes='onkeypress="UDS_onlyNaccCharactersAllowed(event)"', quickHelp='', 
  label="If Yes, Other (specify)", context="i", maxLength="60", size="60", style="string";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.fftdmuso', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='fftdmuso',
  required='No', proporder='8', attributes='', quickHelp='', 
  label="3b. Source of evidence for FTLD mutation", context="r",
  list="uds.a3.fadmuso", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.fftdmusx', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='fftdmusx', indentLevel=1,
  required='No', proporder='9', attributes='onkeypress="UDS_onlyNaccCharactersAllowed(event)"', quickHelp='',
  label="If other, specify", context="i", maxLength="60", size="60", style="string";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.fothmut', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='fothmut',
  required='No', proporder='10', attributes='', quickHelp='', 
  label="4a. In this family, is there evidence for a mutation other than an AD or FTLD mutation?", context="r",
  list="uds.noYesUnknown019", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.fothmutx', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='fothmutx', indentLevel=1,
  required='No', proporder='11', attributes='onkeypress="UDS_onlyNaccCharactersAllowed(event)"', quickHelp='', 
  label="If Yes, specify", context="i", maxLength="60", size="60", style="string";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.fothmuso', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='fothmuso',
  required='No', proporder='12', attributes='', quickHelp='', 
  label="4b. Source of evidence for other mutation", context="r",
  list="uds.a3.fadmuso", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.fothmusx', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='fothmusx', indentLevel=1,
  required='No', proporder='13', attributes='onkeypress="UDS_onlyNaccCharactersAllowed(event)"', quickHelp='', 
  label="If other, specify", context="i", maxLength="60", size="60", style="string";

-- hidden version for initial visit  
insert into viewproperty 
set messageCode='initial.udsfamilyhistory3.nwinfpar', locale='en', instance='lava', 
  scope='crms-nacc', prefix='initial', entity='udsfamilyhistory3', property='nwinfpar',
  required='No', proporder='1', attributes='', quickHelp='', 
  context="h",
  style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.nwinfpar', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='newinfpar',
  required='No', proporder='1', attributes='', quickHelp='', 
  label="Since the last visit, is new information available concerning the status of the subject's biological mother or father?", context="r",
  list="uds.noYes01", style="scale";
  
insert into viewproperty 
set messageCode='*.udsfamilyhistory3.mommob', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='mommob',
  required='No', proporder='14', attributes='', quickHelp='', 
  label="Mother Birth month and year", context="r", size="5",
  list="uds.m1.month", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.momyob', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='momyob',
  required='No', proporder='15', attributes='', quickHelp='', 
  label="Mother Birth year", context="r", size="5",
  list="uds.yearUnknown", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.momdage', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='momdage',
  required='No', proporder='16', attributes='', quickHelp='', 
  label="Mother Age at death", context="r", size="7",
  list="uds.a3.ageOfDeath", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.momneur', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='momneur',
  required='No', proporder='17', attributes='', quickHelp='', 
  label="Mother Neurological problem", context="r", size="17",
  list="uds.a3.neurprob", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.momprdx', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='momprdx',
  required='No', proporder='18', attributes='', quickHelp='', 
  label="Mother Primary diagnosis", context="r", size="17",
  list="uds.a3.primDx", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.mommoe', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='mommoe',
  required='No', proporder='19', attributes='', quickHelp='', 
  label="Mother Method of evaluation", context="r", size="17",
  list="uds.a3.evalMethod", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.momageo', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='momageo',
  required='No', proporder='20', attributes='', quickHelp='', 
  label="Mother Age of onset", context="r", size="7",
  list="uds.a3.famAgeOfOnset", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.dadmob', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='dadmob',
  required='No', proporder='21', attributes='', quickHelp='', 
  label="Father Birth month and year", context="r", size="5",
  list="uds.m1.month", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.dadyob', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='dadyob',
  required='No', proporder='22', attributes='', quickHelp='', 
  label="Father Birth year", context="r", size="5",
  list="uds.yearUnknown", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.daddage', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='daddage',
  required='No', proporder='23', attributes='', quickHelp='', 
  label="Father Age at death", context="r", size="7",
  list="uds.a3.ageOfDeath", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.dadneur', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='dadneur',
  required='No', proporder='24', attributes='', quickHelp='', 
  label="Father Neurological problem", context="r", size="17",
  list="uds.a3.neurprob", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.dadprdx', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='dadprdx',
  required='No', proporder='25', attributes='', quickHelp='', 
  label="Father Primary diagnosis", context="r", size="17",
  list="uds.a3.primDx", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.dadmoe', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='dadmoe',
  required='No', proporder='26', attributes='', quickHelp='', 
  label="Father Method of evaluation", context="r", size="17",
  list="uds.a3.evalMethod", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.dadageo', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='dadageo',
  required='No', proporder='27', attributes='', quickHelp='', 
  label="Father Age of onset", context="r", size="7",
  list="uds.a3.famAgeOfOnset", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sibs', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='sibs',
  required='No', proporder='28', attributes='', quickHelp='', 
  label="Number of full siblings?", context="r",
  list="uds.a3.sibs", style="scale";

-- hidden version for initial visit  
insert into viewproperty 
set messageCode='initial.udsfamilyhistory3.nwinfsib', locale='en', instance='lava', 
  scope='crms-nacc', prefix='initial', entity='udsfamilyhistory3', property='nwinfsib',
  required='No', proporder='1', attributes='', quickHelp='', 
  context="h",
  style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.nwinfsib', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='newinfsib',
  required='No', proporder='1', attributes='', quickHelp='', 
  label="Since the last visit, is new information available concerning the status of the subject's siblings?", context="r",
  list="uds.noYes01", style="scale";
  
insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib1mob', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='sib1mob',
  required='No', proporder='29', attributes='', quickHelp='', 
  label="Sibling 1 Birth month:", context="r", size="5",
  list="uds.m1.month", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib1yob', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='sib1yob',
  required='No', proporder='30', attributes='', quickHelp='', 
  label="Sibling 1 Birth year:", context="r", size="5",
  list="uds.yearUnknown", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib1agd', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='sib1agd',
  required='No', proporder='31', attributes='', quickHelp='', 
  label="Sibling 1 Age at death:", context="r", size="7",
  list="uds.a3.ageOfDeath", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib1neu', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='sib1neu',
  required='No', proporder='32', attributes='', quickHelp='', 
  label="Sibling 1 Neurological problem:", context="r", size="17",
  list="uds.a3.neurprob", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib1pdx', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='sib1pdx',
  required='No', proporder='33', attributes='', quickHelp='', 
  label="Sibling 1 Primary diagnosis:", context="r", size="17",
  list="uds.a3.primDx", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib1moe', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='sib1moe',
  required='No', proporder='34', attributes='', quickHelp='', 
  label="Sibling 1 Method of evaluation:", context="r", size="17",
  list="uds.a3.evalMethod", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib1ago', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='sib1ago',
  required='No', proporder='35', attributes='', quickHelp='', 
  label="Sibling 1 Age of onset:", context="r", size="7",
  list="uds.a3.famAgeOfOnset", style="scale";
  
insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib2mob', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='sib2mob',
  required='No', proporder='36', attributes='', quickHelp='', 
  label="Sibling 2 Birth month:", context="r", size="5",
  list="uds.m1.month", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib2yob', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='sib2yob',
  required='No', proporder='37', attributes='', quickHelp='', 
  label="Sibling 2 Birth year:", context="r", size="5",
  list="uds.yearUnknown", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib2agd', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='sib2agd',
  required='No', proporder='38', attributes='', quickHelp='', 
  label="Sibling 2 Age at death:", context="r", size="7",
  list="uds.a3.ageOfDeath", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib2neu', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='sib2neu',
  required='No', proporder='39', attributes='', quickHelp='', 
  label="Sibling 2 Neurological problem:", context="r", size="17",
  list="uds.a3.neurprob", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib2pdx', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='sib2pdx',
  required='No', proporder='40', attributes='', quickHelp='', 
  label="Sibling 2 Primary diagnosis:", context="r", size="17",
  list="uds.a3.primDx", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib2moe', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='sib2moe',
  required='No', proporder='41', attributes='', quickHelp='', 
  label="Sibling 2 Method of evaluation:", context="r", size="17",
  list="uds.a3.evalMethod", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib2ago', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='sib2ago',
  required='No', proporder='42', attributes='', quickHelp='', 
  label="Sibling 2 Age of onset:", context="r", size="7",
  list="uds.a3.famAgeOfOnset", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib3mob', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='sib3mob',
  required='No', proporder='43', attributes='', quickHelp='', 
  label="Sibling 3 Birth month:", context="r", size="5",
  list="uds.m1.month", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib3yob', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='sib3yob',
  required='No', proporder='44', attributes='', quickHelp='', 
  label="Sibling 3 Birth year:", context="r", size="5",
  list="uds.yearUnknown", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib3agd', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='sib3agd',
  required='No', proporder='45', attributes='', quickHelp='', 
  label="Sibling 3 Age at death:", context="r", size="7",
  list="uds.a3.ageOfDeath", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib3neu', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='sib3neu',
  required='No', proporder='46', attributes='', quickHelp='', 
  label="Sibling 3 Neurological problem:", context="r", size="17",
  list="uds.a3.neurprob", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib3pdx', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='sib3pdx',
  required='No', proporder='47', attributes='', quickHelp='', 
  label="Sibling 3 Primary diagnosis:", context="r", size="17",
  list="uds.a3.primDx", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib3moe', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='sib3moe',
  required='No', proporder='48', attributes='', quickHelp='', 
  label="Sibling 3 Method of evaluation:", context="r", size="17",
  list="uds.a3.evalMethod", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib3ago', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='sib3ago',
  required='No', proporder='49', attributes='', quickHelp='', 
  label="Sibling 3 Age of onset:", context="r", size="7",
  list="uds.a3.famAgeOfOnset", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib4mob', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='sib4mob',
  required='No', proporder='50', attributes='', quickHelp='', 
  label="Sibling 4 Birth month:", context="r", size="5",
  list="uds.m1.month", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib4yob', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='sib4yob',
  required='No', proporder='51', attributes='', quickHelp='', 
  label="Sibling 4 Birth year:", context="r", size="5",
  list="uds.yearUnknown", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib4agd', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='sib4agd',
  required='No', proporder='52', attributes='', quickHelp='', 
  label="Sibling 4 Age at death:", context="r", size="7",
  list="uds.a3.ageOfDeath", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib4neu', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='sib4neu',
  required='No', proporder='53', attributes='', quickHelp='', 
  label="Sibling 4 Neurological problem:", context="r", size="17",
  list="uds.a3.neurprob", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib4pdx', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='sib4pdx',
  required='No', proporder='54', attributes='', quickHelp='', 
  label="Sibling 4 Primary diagnosis:", context="r", size="17",
  list="uds.a3.primDx", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib4moe', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='sib4moe',
  required='No', proporder='55', attributes='', quickHelp='', 
  label="Sibling 4 Method of evaluation:", context="r", size="17",
  list="uds.a3.evalMethod", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib4ago', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='sib4ago',
  required='No', proporder='56', attributes='', quickHelp='', 
  label="Sibling 4 Age of onset:", context="r", size="7",
  list="uds.a3.famAgeOfOnset", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib5mob', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='sib5mob',
  required='No', proporder='57', attributes='', quickHelp='', 
  label="Sibling 5 Birth month:", context="r", size="5",
  list="uds.m1.month", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib5yob', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='sib5yob',
  required='No', proporder='58', attributes='', quickHelp='', 
  label="Sibling 5 Birth year:", context="r", size="5",
  list="uds.yearUnknown", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib5agd', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='sib5agd',
  required='No', proporder='59', attributes='', quickHelp='', 
  label="Sibling 5 Age at death:", context="r", size="7",
  list="uds.a3.ageOfDeath", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib5neu', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='sib5neu',
  required='No', proporder='60', attributes='', quickHelp='', 
  label="Sibling 5 Neurological problem:", context="r", size="17",
  list="uds.a3.neurprob", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib5pdx', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='sib5pdx',
  required='No', proporder='61', attributes='', quickHelp='', 
  label="Sibling 5 Primary diagnosis:", context="r", size="17",
  list="uds.a3.primDx", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib5moe', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='sib5moe',
  required='No', proporder='62', attributes='', quickHelp='', 
  label="Sibling 5 Method of evaluation:", context="r", size="17",
  list="uds.a3.evalMethod", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib5ago', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='sib5ago',
  required='No', proporder='63', attributes='', quickHelp='', 
  label="Sibling 5 Age of onset:", context="r", size="7",
  list="uds.a3.famAgeOfOnset", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib6mob', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='sib6mob',
  required='No', proporder='64', attributes='', quickHelp='', 
  label="Sibling 6 Birth month:", context="r", size="5",
  list="uds.m1.month", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib6yob', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='sib6yob',
  required='No', proporder='65', attributes='', quickHelp='', 
  label="Sibling 6 Birth year:", context="r", size="5",
  list="uds.yearUnknown", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib6agd', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='sib6agd',
  required='No', proporder='66', attributes='', quickHelp='', 
  label="Sibling 6 Age at death:", context="r", size="7",
  list="uds.a3.ageOfDeath", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib6neu', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='sib6neu',
  required='No', proporder='67', attributes='', quickHelp='', 
  label="Sibling 6 Neurological problem:", context="r", size="17",
  list="uds.a3.neurprob", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib6pdx', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='sib6pdx',
  required='No', proporder='68', attributes='', quickHelp='', 
  label="Sibling 6 Primary diagnosis:", context="r", size="17",
  list="uds.a3.primDx", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib6moe', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='sib6moe',
  required='No', proporder='69', attributes='', quickHelp='', 
  label="Sibling 6 Method of evaluation:", context="r", size="17",
  list="uds.a3.evalMethod", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib6ago', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='sib6ago',
  required='No', proporder='70', attributes='', quickHelp='', 
  label="Sibling 6 Age of onset:", context="r", size="7",
  list="uds.a3.famAgeOfOnset", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib7mob', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='sib7mob',
  required='No', proporder='71', attributes='', quickHelp='', 
  label="Sibling 7 Birth month:", context="r", size="5",
  list="uds.m1.month", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib7yob', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='sib7yob',
  required='No', proporder='72', attributes='', quickHelp='', 
  label="Sibling 7 Birth year:", context="r", size="5",
  list="uds.yearUnknown", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib7agd', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='sib7agd',
  required='No', proporder='73', attributes='', quickHelp='', 
  label="Sibling 7 Age at death:", context="r", size="7",
  list="uds.a3.ageOfDeath", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib7neu', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='sib7neu',
  required='No', proporder='74', attributes='', quickHelp='', 
  label="Sibling 7 Neurological problem:", context="r", size="17",
  list="uds.a3.neurprob", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib7pdx', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='sib7pdx',
  required='No', proporder='75', attributes='', quickHelp='', 
  label="Sibling 7 Primary diagnosis:", context="r", size="17",
  list="uds.a3.primDx", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib7moe', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='sib7moe',
  required='No', proporder='76', attributes='', quickHelp='', 
  label="Sibling 7 Method of evaluation:", context="r", size="17",
  list="uds.a3.evalMethod", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib7ago', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='sib7ago',
  required='No', proporder='77', attributes='', quickHelp='', 
  label="Sibling 7 Age of onset:", context="r",  size="7",
  list="uds.a3.famAgeOfOnset", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib8mob', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='sib8mob',
  required='No', proporder='78', attributes='', quickHelp='', 
  label="Sibling 8 Birth month:", context="r", size="5",
  list="uds.m1.month", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib8yob', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='sib8yob',
  required='No', proporder='79', attributes='', quickHelp='', 
  label="Sibling 8 Birth year:", context="r", size="5",
  list="uds.yearUnknown", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib8agd', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='sib8agd',
  required='No', proporder='80', attributes='', quickHelp='', 
  label="Sibling 8 Age at death:", context="r", size="7",
  list="uds.a3.ageOfDeath", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib8neu', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='sib8neu',
  required='No', proporder='81', attributes='', quickHelp='', 
  label="Sibling 8 Neurological problem:", context="r", size="17",
  list="uds.a3.neurprob", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib8pdx', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='sib8pdx',
  required='No', proporder='82', attributes='', quickHelp='', 
  label="Sibling 8 Primary diagnosis:", context="r", size="17",
  list="uds.a3.primDx", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib8moe', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='sib8moe',
  required='No', proporder='83', attributes='', quickHelp='', 
  label="Sibling 8 Method of evaluation:", context="r", size="17",
  list="uds.a3.evalMethod", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib8ago', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='sib8ago',
  required='No', proporder='84', attributes='', quickHelp='', 
  label="Sibling 8 Age of onset:", context="r", size="7",
  list="uds.a3.famAgeOfOnset", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib9mob', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='sib9mob',
  required='No', proporder='85', attributes='', quickHelp='', 
  label="Sibling 9 Birth month:", context="r", size="5",
  list="uds.m1.month", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib9yob', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='sib9yob',
  required='No', proporder='86', attributes='', quickHelp='', 
  label="Sibling 9 Birth year:", context="r", size="5",
  list="uds.yearUnknown", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib9agd', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='sib9agd',
  required='No', proporder='87', attributes='', quickHelp='', 
  label="Sibling 9 Age at death:", context="r", size="7",
  list="uds.a3.ageOfDeath", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib9neu', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='sib9neu',
  required='No', proporder='88', attributes='', quickHelp='', 
  label="Sibling 9 Neurological problem:", context="r", size="17",
  list="uds.a3.neurprob", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib9pdx', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='sib9pdx',
  required='No', proporder='89', attributes='', quickHelp='', 
  label="Sibling 9 Primary diagnosis:", context="r", size="17",
  list="uds.a3.primDx", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib9moe', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='sib9moe',
  required='No', proporder='90', attributes='', quickHelp='', 
  label="Sibling 9 Method of evaluation:", context="r", size="17",
  list="uds.a3.evalMethod", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib9ago', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='sib9ago',
  required='No', proporder='91', attributes='', quickHelp='', 
  label="Sibling 9 Age of onset:", context="r", size="7",
  list="uds.a3.famAgeOfOnset", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib10mob', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='sib10mob',
  required='No', proporder='92', attributes='', quickHelp='', 
  label="Sibling 10 Birth month:", context="r", size="5",
  list="uds.m1.month", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib10yob', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='sib10yob',
  required='No', proporder='93', attributes='', quickHelp='', 
  label="Sibling 10 Birth year:", context="r", size="5",
  list="uds.yearUnknown", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib10agd', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='sib10agd',
  required='No', proporder='94', attributes='', quickHelp='', 
  label="Sibling 10 Age at death:", context="r", size="7",
  list="uds.a3.ageOfDeath", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib10neu', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='sib10neu',
  required='No', proporder='95', attributes='', quickHelp='', 
  label="Sibling 10 Neurological problem:", context="r", size="17",
  list="uds.a3.neurprob", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib10pdx', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='sib10pdx',
  required='No', proporder='96', attributes='', quickHelp='', 
  label="Sibling 10 Primary diagnosis:", context="r", size="17",
  list="uds.a3.primDx", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib10moe', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='sib10moe',
  required='No', proporder='97', attributes='', quickHelp='', 
  label="Sibling 10 Method of evaluation:", context="r", size="17",
  list="uds.a3.evalMethod", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib10ago', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='sib10ago',
  required='No', proporder='98', attributes='', quickHelp='', 
  label="Sibling 10 Age of onset:", context="r", size="7",
  list="uds.a3.famAgeOfOnset", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib11mob', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='sib11mob',
  required='No', proporder='99', attributes='', quickHelp='', 
  label="Sibling 11 Birth month:", context="r", size="5",
  list="uds.m1.month", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib11yob', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='sib11yob',
  required='No', proporder='100', attributes='', quickHelp='', 
  label="Sibling 11 Birth year:", context="r", size="5",
  list="uds.yearUnknown", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib11agd', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='sib11agd',
  required='No', proporder='101', attributes='', quickHelp='', 
  label="Sibling 11 Age at death:", context="r", size="7",
  list="uds.a3.ageOfDeath", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib11neu', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='sib11neu',
  required='No', proporder='102', attributes='', quickHelp='', 
  label="Sibling 11 Neurological problem:", context="r", size="17",
  list="uds.a3.neurprob", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib11pdx', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='sib11pdx',
  required='No', proporder='103', attributes='', quickHelp='', 
  label="Sibling 11 Primary diagnosis:", context="r", size="17",
  list="uds.a3.primDx", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib11moe', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='sib11moe',
  required='No', proporder='104', attributes='', quickHelp='', 
  label="Sibling 11 Method of evaluation:", context="r", size="17",
  list="uds.a3.evalMethod", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib11ago', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='sib11ago',
  required='No', proporder='105', attributes='', quickHelp='', 
  label="Sibling 11 Age of onset:", context="r", size="7",
  list="uds.a3.famAgeOfOnset", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib12mob', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='sib12mob',
  required='No', proporder='106', attributes='', quickHelp='', 
  label="Sibling 12 Birth month:", context="r", size="5",
  list="uds.m1.month", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib12yob', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='sib12yob',
  required='No', proporder='107', attributes='', quickHelp='', 
  label="Sibling 12 Birth year:", context="r", size="5",
  list="uds.yearUnknown", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib12agd', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='sib12agd',
  required='No', proporder='108', attributes='', quickHelp='', 
  label="Sibling 12 Age at death:", context="r", size="7",
  list="uds.a3.ageOfDeath", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib12neu', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='sib12neu',
  required='No', proporder='109', attributes='', quickHelp='', 
  label="Sibling 12 Neurological problem:", context="r", size="17",
  list="uds.a3.neurprob", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib12pdx', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='sib12pdx',
  required='No', proporder='110', attributes='', quickHelp='', 
  label="Sibling 12 Primary diagnosis:", context="r", size="17",
  list="uds.a3.primDx", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib12moe', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='sib12moe',
  required='No', proporder='111', attributes='', quickHelp='', 
  label="Sibling 12 Method of evaluation:", context="r", size="17",
  list="uds.a3.evalMethod", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib12ago', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='sib12ago',
  required='No', proporder='112', attributes='', quickHelp='', 
  label="Sibling 12 Age of onset:", context="r", size="7",
  list="uds.a3.famAgeOfOnset", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib13mob', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='sib13mob',
  required='No', proporder='113', attributes='', quickHelp='', 
  label="Sibling 13 Birth month:", context="r", size="5",
  list="uds.m1.month", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib13yob', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='sib13yob',
  required='No', proporder='114', attributes='', quickHelp='', 
  label="Sibling 13 Birth year:", context="r", size="5",
  list="uds.yearUnknown", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib13agd', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='sib13agd',
  required='No', proporder='115', attributes='', quickHelp='', 
  label="Sibling 13 Age at death:", context="r", size="7",
  list="uds.a3.ageOfDeath", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib13neu', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='sib13neu',
  required='No', proporder='116', attributes='', quickHelp='', 
  label="Sibling 13 Neurological problem:", context="r", size="17",
  list="uds.a3.neurprob", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib13pdx', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='sib13pdx',
  required='No', proporder='117', attributes='', quickHelp='', 
  label="Sibling 13 Primary diagnosis:", context="r", size="17",
  list="uds.a3.primDx", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib13moe', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='sib13moe',
  required='No', proporder='118', attributes='', quickHelp='', 
  label="Sibling 13 Method of evaluation:", context="r", size="17",
  list="uds.a3.evalMethod", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib13ago', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='sib13ago',
  required='No', proporder='119', attributes='', quickHelp='', 
  label="Sibling 13 Age of onset:", context="r", size="7",
  list="uds.a3.famAgeOfOnset", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib14mob', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='sib14mob',
  required='No', proporder='120', attributes='', quickHelp='', 
  label="Sibling 14 Birth month:", context="r", size="5",
  list="uds.m1.month", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib14yob', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='sib14yob',
  required='No', proporder='121', attributes='', quickHelp='', 
  label="Sibling 14 Birth year:", context="r", size="5",
  list="uds.yearUnknown", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib14agd', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='sib14agd',
  required='No', proporder='122', attributes='', quickHelp='', 
  label="Sibling 14 Age at death:", context="r", size="7",
  list="uds.a3.ageOfDeath", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib14neu', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='sib14neu',
  required='No', proporder='123', attributes='', quickHelp='', 
  label="Sibling 14 Neurological problem:", context="r", size="17",
  list="uds.a3.neurprob", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib14pdx', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='sib14pdx',
  required='No', proporder='124', attributes='', quickHelp='', 
  label="Sibling 14 Primary diagnosis:", context="r", size="17",
  list="uds.a3.primDx", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib14moe', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='sib14moe',
  required='No', proporder='125', attributes='', quickHelp='', 
  label="Sibling 14 Method of evaluation:", context="r", size="17",
  list="uds.a3.evalMethod", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib14ago', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='sib14ago',
  required='No', proporder='126', attributes='', quickHelp='', 
  label="Sibling 14 Age of onset:", context="r", size="7",
  list="uds.a3.famAgeOfOnset", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib15mob', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='sib15mob',
  required='No', proporder='127', attributes='', quickHelp='', 
  label="Sibling 15 Birth month:", context="r", size="5",
  list="uds.m1.month", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib15yob', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='sib15yob',
  required='No', proporder='128', attributes='', quickHelp='', 
  label="Sibling 15 Birth year:", context="r", size="5",
  list="uds.yearUnknown", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib15agd', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='sib15agd',
  required='No', proporder='129', attributes='', quickHelp='', 
  label="Sibling 15 Age at death:", context="r", size="7",
  list="uds.a3.ageOfDeath", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib15neu', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='sib15neu',
  required='No', proporder='130', attributes='', quickHelp='', 
  label="Sibling 15 Neurological problem:", context="r", size="17",
  list="uds.a3.neurprob", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib15pdx', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='sib15pdx',
  required='No', proporder='131', attributes='', quickHelp='', 
  label="Sibling 15 Primary diagnosis:", context="r", size="17",
  list="uds.a3.primDx", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib15moe', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='sib15moe',
  required='No', proporder='132', attributes='', quickHelp='', 
  label="Sibling 15 Method of evaluation:", context="r", size="17",
  list="uds.a3.evalMethod", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib15ago', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='sib15ago',
  required='No', proporder='133', attributes='', quickHelp='', 
  label="Sibling 15 Age of onset:", context="r", size="7",
  list="uds.a3.famAgeOfOnset", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib16mob', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='sib16mob',
  required='No', proporder='134', attributes='', quickHelp='', 
  label="Sibling 16 Birth month:", context="r", size="5",
  list="uds.m1.month", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib16yob', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='sib16yob',
  required='No', proporder='135', attributes='', quickHelp='', 
  label="Sibling 16 Birth year:", context="r", size="5",
  list="uds.yearUnknown", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib16agd', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='sib16agd',
  required='No', proporder='136', attributes='', quickHelp='', 
  label="Sibling 16 Age at death:", context="r", size="7",
  list="uds.a3.ageOfDeath", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib16neu', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='sib16neu',
  required='No', proporder='137', attributes='', quickHelp='', 
  label="Sibling 16 Neurological problem:", context="r", size="17",
  list="uds.a3.neurprob", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib16pdx', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='sib16pdx',
  required='No', proporder='138', attributes='', quickHelp='', 
  label="Sibling 16 Primary diagnosis:", context="r", size="17",
  list="uds.a3.primDx", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib16moe', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='sib16moe',
  required='No', proporder='139', attributes='', quickHelp='', 
  label="Sibling 16 Method of evaluation:", context="r", size="17",
  list="uds.a3.evalMethod", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib16ago', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='sib16ago',
  required='No', proporder='140', attributes='', quickHelp='', 
  label="Sibling 16 Age of onset:", context="r", size="7",
  list="uds.a3.famAgeOfOnset", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib17mob', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='sib17mob',
  required='No', proporder='141', attributes='', quickHelp='', 
  label="Sibling 17 Birth month:", context="r", size="5",
  list="uds.m1.month", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib17yob', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='sib17yob',
  required='No', proporder='142', attributes='', quickHelp='', 
  label="Sibling 17 Birth year:", context="r", size="5",
  list="uds.yearUnknown", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib17agd', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='sib17agd',
  required='No', proporder='143', attributes='', quickHelp='', 
  label="Sibling 17 Age at death:", context="r", size="7",
  list="uds.a3.ageOfDeath", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib17neu', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='sib17neu',
  required='No', proporder='144', attributes='', quickHelp='', 
  label="Sibling 17 Neurological problem:", context="r", size="17",
  list="uds.a3.neurprob", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib17pdx', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='sib17pdx',
  required='No', proporder='145', attributes='', quickHelp='', 
  label="Sibling 17 Primary diagnosis:", context="r", size="17",
  list="uds.a3.primDx", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib17moe', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='sib17moe',
  required='No', proporder='146', attributes='', quickHelp='', 
  label="Sibling 17 Method of evaluation:", context="r", size="17",
  list="uds.a3.evalMethod", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib17ago', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='sib17ago',
  required='No', proporder='147', attributes='', quickHelp='', 
  label="Sibling 17 Age of onset:", context="r", size="7",
  list="uds.a3.famAgeOfOnset", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib18mob', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='sib18mob',
  required='No', proporder='148', attributes='', quickHelp='', 
  label="Sibling 18 Birth month:", context="r", size="5",
  list="uds.m1.month", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib18yob', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='sib18yob',
  required='No', proporder='149', attributes='', quickHelp='', 
  label="Sibling 18 Birth year:", context="r", size="5",
  list="uds.yearUnknown", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib18agd', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='sib18agd',
  required='No', proporder='150', attributes='', quickHelp='', 
  label="Sibling 18 Age at death:", context="r", size="7",
  list="uds.a3.ageOfDeath", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib18neu', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='sib18neu',
  required='No', proporder='151', attributes='', quickHelp='', 
  label="Sibling 18 Neurological problem:", context="r", size="17",
  list="uds.a3.neurprob", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib18pdx', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='sib18pdx',
  required='No', proporder='152', attributes='', quickHelp='', 
  label="Sibling 18 Primary diagnosis:", context="r", size="17",
  list="uds.a3.primDx", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib18moe', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='sib18moe',
  required='No', proporder='153', attributes='', quickHelp='', 
  label="Sibling 18 Method of evaluation:", context="r", size="17",
  list="uds.a3.evalMethod", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib18ago', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='sib18ago',
  required='No', proporder='154', attributes='', quickHelp='', 
  label="Sibling 18 Age of onset:", context="r", size="7",
  list="uds.a3.famAgeOfOnset", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib19mob', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='sib19mob',
  required='No', proporder='155', attributes='', quickHelp='', 
  label="Sibling 19 Birth month:", context="r", size="5",
  list="uds.m1.month", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib19yob', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='sib19yob',
  required='No', proporder='156', attributes='', quickHelp='', 
  label="Sibling 19 Birth year:", context="r", size="5",
  list="uds.yearUnknown", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib19agd', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='sib19agd',
  required='No', proporder='157', attributes='', quickHelp='', 
  label="Sibling 19 Age at death:", context="r", size="7",
  list="uds.a3.ageOfDeath", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib19neu', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='sib19neu',
  required='No', proporder='158', attributes='', quickHelp='', 
  label="Sibling 19 Neurological problem:", context="r", size="17",
  list="uds.a3.neurprob", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib19pdx', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='sib19pdx',
  required='No', proporder='159', attributes='', quickHelp='', 
  label="Sibling 19 Primary diagnosis:", context="r", size="17",
  list="uds.a3.primDx", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib19moe', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='sib19moe',
  required='No', proporder='160', attributes='', quickHelp='', 
  label="Sibling 19 Method of evaluation:", context="r", size="17",
  list="uds.a3.evalMethod", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib19ago', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='sib19ago',
  required='No', proporder='161', attributes='', quickHelp='', 
  label="Sibling 19 Age of onset:", context="r", size="7",
  list="uds.a3.famAgeOfOnset", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib20mob', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='sib20mob',
  required='No', proporder='162', attributes='', quickHelp='', 
  label="Sibling 20 Birth month:", context="r", size="5",
  list="uds.m1.month", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib20yob', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='sib20yob',
  required='No', proporder='163', attributes='', quickHelp='', 
  label="Sibling 20 Birth year:", context="r", size="5",
  list="uds.yearUnknown", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib20agd', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='sib20agd',
  required='No', proporder='164', attributes='', quickHelp='', 
  label="Sibling 20 Age at death:", context="r", size="7",
  list="uds.a3.ageOfDeath", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib20neu', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='sib20neu',
  required='No', proporder='165', attributes='', quickHelp='', 
  label="Sibling 20 Neurological problem:", context="r", size="17",
  list="uds.a3.neurprob", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib20pdx', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='sib20pdx',
  required='No', proporder='166', attributes='', quickHelp='', 
  label="Sibling 20 Primary diagnosis:", context="r", size="17",
  list="uds.a3.primDx", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib20moe', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='sib20moe',
  required='No', proporder='167', attributes='', quickHelp='', 
  label="Sibling 20 Method of evaluation:", context="r", size="17",
  list="uds.a3.evalMethod", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib20ago', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='sib20ago',
  required='No', proporder='168', attributes='', quickHelp='', 
  label="Sibling 20 Age of onset:", context="r", size="7",
  list="uds.a3.famAgeOfOnset", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kids', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='kids',
  required='No', proporder='169', attributes='', quickHelp='', 
  label="Number of biological children?:", context="r",
  list="uds.a3.kids", style="scale";

-- hidden version for initial visit  
insert into viewproperty 
set messageCode='initial.udsfamilyhistory3.nwinfkid', locale='en', instance='lava', 
  scope='crms-nacc', prefix='initial', entity='udsfamilyhistory3', property='nwinfkid',
  required='No', proporder='1', attributes='', quickHelp='', 
  context="h",
  style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.nwinfkid', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='newinfkid',
  required='No', proporder='1', attributes='', quickHelp='', 
  label="Since the last visit, is new information available concerning the status of the subject's biological children?", context="r",
  list="uds.noYes01", style="scale";
  
insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid1mob', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='kid1mob',
  required='No', proporder='170', attributes='', quickHelp='', 
  label="Child 1 Birth month:", context="r", size="5",
  list="uds.m1.month", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid1yob', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='kid1yob',
  required='No', proporder='171', attributes='', quickHelp='', 
  label="Child 1 Birth year:", context="r", size="5",
  list="uds.yearUnknown", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid1agd', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='kid1agd',
  required='No', proporder='172', attributes='', quickHelp='', 
  label="Child 1 Age at death:", context="r", size="7",
  list="uds.a3.ageOfDeath", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid1neu', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='kid1neu',
  required='No', proporder='173', attributes='', quickHelp='', 
  label="Child 1 Neurological problem:", context="r", size="17",
  list="uds.a3.neurprob", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid1pdx', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='kid1pdx',
  required='No', proporder='174', attributes='', quickHelp='', 
  label="Child 1 Primary diagnosis:", context="r", size="17",
  list="uds.a3.primDx", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid1moe', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='kid1moe',
  required='No', proporder='175', attributes='', quickHelp='', 
  label="Child 1 Method of evaluation:", context="r", size="17",
  list="uds.a3.evalMethod", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid1ago', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='kid1ago',
  required='No', proporder='176', attributes='', quickHelp='', 
  label="Child 1 Age of onset:", context="r", size="7",
  list="uds.a3.famAgeOfOnset", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid2mob', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='kid2mob',
  required='No', proporder='177', attributes='', quickHelp='', 
  label="Child 2 Birth month:", context="r", size="5",
  list="uds.m1.month", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid2yob', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='kid2yob',
  required='No', proporder='178', attributes='', quickHelp='', 
  label="Child 2 Birth year:", context="r", size="5",
  list="uds.yearUnknown", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid2agd', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='kid2agd',
  required='No', proporder='179', attributes='', quickHelp='', 
  label="Child 2 Age at death:", context="r", size="7",
  list="uds.a3.ageOfDeath", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid2neu', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='kid2neu',
  required='No', proporder='180', attributes='', quickHelp='', 
  label="Child 2 Neurological problem:", context="r", size="17",
  list="uds.a3.neurprob", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid2pdx', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='kid2pdx',
  required='No', proporder='181', attributes='', quickHelp='', 
  label="Child 2 Primary diagnosis:", context="r", size="17",
  list="uds.a3.primDx", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid2moe', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='kid2moe',
  required='No', proporder='182', attributes='', quickHelp='', 
  label="Child 2 Method of evaluation:", context="r", size="17",
  list="uds.a3.evalMethod", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid2ago', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='kid2ago',
  required='No', proporder='183', attributes='', quickHelp='', 
  label="Child 2 Age of onset:", context="r", size="7",
  list="uds.a3.famAgeOfOnset", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid3mob', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='kid3mob',
  required='No', proporder='184', attributes='', quickHelp='', 
  label="Child 3 Birth month:", context="r", size="5",
  list="uds.m1.month", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid3yob', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='kid3yob',
  required='No', proporder='185', attributes='', quickHelp='', 
  label="Child 3 Birth year:", context="r", size="5",
  list="uds.yearUnknown", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid3agd', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='kid3agd',
  required='No', proporder='186', attributes='', quickHelp='', 
  label="Child 3 Age at death:", context="r", size="7",
  list="uds.a3.ageOfDeath", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid3neu', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='kid3neu',
  required='No', proporder='187', attributes='', quickHelp='', 
  label="Child 3 Neurological problem:", context="r", size="17",
  list="uds.a3.neurprob", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid3pdx', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='kid3pdx',
  required='No', proporder='188', attributes='', quickHelp='', 
  label="Child 3 Primary diagnosis:", context="r", size="17",
  list="uds.a3.primDx", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid3moe', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='kid3moe',
  required='No', proporder='189', attributes='', quickHelp='', 
  label="Child 3 Method of evaluation:", context="r", size="17",
  list="uds.a3.evalMethod", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid3ago', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='kid3ago',
  required='No', proporder='190', attributes='', quickHelp='', 
  label="Child 3 Age of onset:", context="r", size="7",
  list="uds.a3.famAgeOfOnset", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid4mob', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='kid4mob',
  required='No', proporder='191', attributes='', quickHelp='', 
  label="Child 4 Birth month:", context="r", size="5",
  list="uds.m1.month", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid4yob', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='kid4yob',
  required='No', proporder='192', attributes='', quickHelp='', 
  label="Child 4 Birth year:", context="r", size="5",
  list="uds.yearUnknown", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid4agd', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='kid4agd',
  required='No', proporder='193', attributes='', quickHelp='', 
  label="Child 4 Age at death:", context="r", size="7",
  list="uds.a3.ageOfDeath", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid4neu', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='kid4neu',
  required='No', proporder='194', attributes='', quickHelp='', 
  label="Child 4 Neurological problem:", context="r", size="17",
  list="uds.a3.neurprob", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid4pdx', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='kid4pdx',
  required='No', proporder='195', attributes='', quickHelp='', 
  label="Child 4 Primary diagnosis:", context="r", size="17",
  list="uds.a3.primDx", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid4moe', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='kid4moe',
  required='No', proporder='196', attributes='', quickHelp='', 
  label="Child 4 Method of evaluation:", context="r", size="17",
  list="uds.a3.evalMethod", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid4ago', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='kid4ago',
  required='No', proporder='197', attributes='', quickHelp='', 
  label="Child 4 Age of onset:", context="r", size="7",
  list="uds.a3.famAgeOfOnset", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid5mob', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='kid5mob',
  required='No', proporder='198', attributes='', quickHelp='', 
  label="Child 5 Birth month:", context="r", size="5",
  list="uds.m1.month", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid5yob', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='kid5yob',
  required='No', proporder='199', attributes='', quickHelp='', 
  label="Child 5 Birth year:", context="r", size="5",
  list="uds.yearUnknown", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid5agd', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='kid5agd',
  required='No', proporder='200', attributes='', quickHelp='', 
  label="Child 5 Age at death:", context="r", size="7",
  list="uds.a3.ageOfDeath", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid5neu', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='kid5neu',
  required='No', proporder='201', attributes='', quickHelp='', 
  label="Child 5 Neurological problem:", context="r", size="17",
  list="uds.a3.neurprob", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid5pdx', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='kid5pdx',
  required='No', proporder='202', attributes='', quickHelp='', 
  label="Child 5 Primary diagnosis:", context="r", size="17",
  list="uds.a3.primDx", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid5moe', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='kid5moe',
  required='No', proporder='203', attributes='', quickHelp='', 
  label="Child 5 Method of evaluation:", context="r", size="17",
  list="uds.a3.evalMethod", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid5ago', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='kid5ago',
  required='No', proporder='204', attributes='', quickHelp='', 
  label="Child 5 Age of onset:", context="r", size="7",
  list="uds.a3.famAgeOfOnset", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid6mob', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='kid6mob',
  required='No', proporder='205', attributes='', quickHelp='', 
  label="Child 6 Birth month:", context="r", size="5",
  list="uds.m1.month", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid6yob', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='kid6yob',
  required='No', proporder='206', attributes='', quickHelp='', 
  label="Child 6 Birth year:", context="r", size="5",
  list="uds.yearUnknown", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid6agd', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='kid6agd',
  required='No', proporder='207', attributes='', quickHelp='', 
  label="Child 6 Age at death:", context="r", size="7",
  list="uds.a3.ageOfDeath", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid6neu', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='kid6neu',
  required='No', proporder='208', attributes='', quickHelp='', 
  label="Child 6 Neurological problem:", context="r", size="17",
  list="uds.a3.neurprob", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid6pdx', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='kid6pdx',
  required='No', proporder='209', attributes='', quickHelp='', 
  label="Child 6 Primary diagnosis:", context="r", size="17",
  list="uds.a3.primDx", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid6moe', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='kid6moe',
  required='No', proporder='210', attributes='', quickHelp='', 
  label="Child 6 Method of evaluation:", context="r", size="17",
  list="uds.a3.evalMethod", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid6ago', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='kid6ago',
  required='No', proporder='211', attributes='', quickHelp='', 
  label="Child 6 Age of onset:", context="r", size="7",
  list="uds.a3.famAgeOfOnset", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid7mob', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='kid7mob',
  required='No', proporder='212', attributes='', quickHelp='', 
  label="Child 7 Birth month:", context="r", size="5",
  list="uds.m1.month", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid7yob', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='kid7yob',
  required='No', proporder='213', attributes='', quickHelp='', 
  label="Child 7 Birth year:", context="r", size="5",
  list="uds.yearUnknown", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid7agd', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='kid7agd',
  required='No', proporder='214', attributes='', quickHelp='', 
  label="Child 7 Age at death:", context="r", size="7",
  list="uds.a3.ageOfDeath", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid7neu', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='kid7neu',
  required='No', proporder='215', attributes='', quickHelp='', 
  label="Child 7 Neurological problem:", context="r", size="17",
  list="uds.a3.neurprob", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid7pdx', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='kid7pdx',
  required='No', proporder='216', attributes='', quickHelp='', 
  label="Child 7 Primary diagnosis:", context="r", size="17",
  list="uds.a3.primDx", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid7moe', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='kid7moe',
  required='No', proporder='217', attributes='', quickHelp='', 
  label="Child 7 Method of evaluation:", context="r", size="17",
  list="uds.a3.evalMethod", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid7ago', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='kid7ago',
  required='No', proporder='218', attributes='', quickHelp='', 
  label="Child 7 Age of onset:", context="r", size="7",
  list="uds.a3.famAgeOfOnset", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid8mob', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='kid8mob',
  required='No', proporder='219', attributes='', quickHelp='', 
  label="Child 8 Birth month:", context="r", size="5",
  list="uds.m1.month", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid8yob', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='kid8yob',
  required='No', proporder='220', attributes='', quickHelp='', 
  label="Child 8 Birth year:", context="r", size="5",
  list="uds.yearUnknown", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid8agd', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='kid8agd',
  required='No', proporder='221', attributes='', quickHelp='', 
  label="Child 8 Age at death:", context="r", size="7",
  list="uds.a3.ageOfDeath", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid8neu', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='kid8neu',
  required='No', proporder='222', attributes='', quickHelp='', 
  label="Child 8 Neurological problem:", context="r", size="17",
  list="uds.a3.neurprob", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid8pdx', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='kid8pdx',
  required='No', proporder='223', attributes='', quickHelp='', 
  label="Child 8 Primary diagnosis:", context="r", size="17",
  list="uds.a3.primDx", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid8moe', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='kid8moe',
  required='No', proporder='224', attributes='', quickHelp='', 
  label="Child 8 Method of evaluation:", context="r", size="17",
  list="uds.a3.evalMethod", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid8ago', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='kid8ago',
  required='No', proporder='225', attributes='', quickHelp='', 
  label="Child 8 Age of onset:", context="r", size="7",
  list="uds.a3.famAgeOfOnset", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid9mob', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='kid9mob',
  required='No', proporder='226', attributes='', quickHelp='', 
  label="Child 9 Birth month:", context="r", size="5",
  list="uds.m1.month", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid9yob', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='kid9yob',
  required='No', proporder='227', attributes='', quickHelp='', 
  label="Child 9 Birth year:", context="r", size="5",
  list="uds.yearUnknown", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid9agd', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='kid9agd',
  required='No', proporder='228', attributes='', quickHelp='', 
  label="Child 9 Age at death:", context="r", size="7",
  list="uds.a3.ageOfDeath", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid9neu', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='kid9neu',
  required='No', proporder='229', attributes='', quickHelp='', 
  label="Child 9 Neurological problem:", context="r", size="17",
  list="uds.a3.neurprob", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid9pdx', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='kid9pdx',
  required='No', proporder='230', attributes='', quickHelp='', 
  label="Child 9 Primary diagnosis:", context="r", size="17",
  list="uds.a3.primDx", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid9moe', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='kid9moe',
  required='No', proporder='231', attributes='', quickHelp='', 
  label="Child 9 Method of evaluation:", context="r", size="17",
  list="uds.a3.evalMethod", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid9ago', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='kid9ago',
  required='No', proporder='232', attributes='', quickHelp='', 
  label="Child 9 Age of onset:", context="r", size="7",
  list="uds.a3.famAgeOfOnset", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid10mob', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='kid10mob',
  required='No', proporder='233', attributes='', quickHelp='', 
  label="Child 10 Birth month:", context="r", size="5",
  list="uds.m1.month", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid10yob', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='kid10yob',
  required='No', proporder='234', attributes='', quickHelp='', 
  label="Child 10 Birth year:", context="r", size="5",
  list="uds.yearUnknown", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid10agd', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='kid10agd',
  required='No', proporder='235', attributes='', quickHelp='', 
  label="Child 10 Age at death:", context="r", size="7",
  list="uds.a3.ageOfDeath", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid10neu', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='kid10neu',
  required='No', proporder='236', attributes='', quickHelp='', 
  label="Child 10 Neurological problem:", context="r", size="17",
  list="uds.a3.neurprob", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid10pdx', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='kid10pdx',
  required='No', proporder='237', attributes='', quickHelp='', 
  label="Child 10 Primary diagnosis:", context="r", size="17",
  list="uds.a3.primDx", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid10moe', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='kid10moe',
  required='No', proporder='238', attributes='', quickHelp='', 
  label="Child 10 Method of evaluation:", context="r", size="17",
  list="uds.a3.evalMethod", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid10ago', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='kid10ago',
  required='No', proporder='239', attributes='', quickHelp='', 
  label="Child 10 Age of onset:", context="r", size="7",
  list="uds.a3.famAgeOfOnset", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid11mob', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='kid11mob',
  required='No', proporder='240', attributes='', quickHelp='', 
  label="Child 11 Birth month:", context="r", size="5",
  list="uds.m1.month", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid11yob', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='kid11yob',
  required='No', proporder='241', attributes='', quickHelp='', 
  label="Child 11 Birth year:", context="r", size="5",
  list="uds.yearUnknown", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid11agd', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='kid11agd',
  required='No', proporder='242', attributes='', quickHelp='', 
  label="Child 11 Age at death:", context="r", size="7",
  list="uds.a3.ageOfDeath", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid11neu', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='kid11neu',
  required='No', proporder='243', attributes='', quickHelp='', 
  label="Child 11 Neurological problem:", context="r", size="17",
  list="uds.a3.neurprob", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid11pdx', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='kid11pdx',
  required='No', proporder='244', attributes='', quickHelp='', 
  label="Child 11 Primary diagnosis:", context="r", size="17",
  list="uds.a3.primDx", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid11moe', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='kid11moe',
  required='No', proporder='245', attributes='', quickHelp='', 
  label="Child 11 Method of evaluation:", context="r", size="17",
  list="uds.a3.evalMethod", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid11ago', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='kid11ago',
  required='No', proporder='246', attributes='', quickHelp='', 
  label="Child 11 Age of onset:", context="r", size="7",
  list="uds.a3.famAgeOfOnset", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid12mob', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='kid12mob',
  required='No', proporder='247', attributes='', quickHelp='', 
  label="Child 12 Birth month:", context="r", size="5",
  list="uds.m1.month", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid12yob', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='kid12yob',
  required='No', proporder='248', attributes='', quickHelp='', 
  label="Child 12 Birth year:", context="r", size="5",
  list="uds.yearUnknown", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid12agd', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='kid12agd',
  required='No', proporder='249', attributes='', quickHelp='', 
  label="Child 12 Age at death:", context="r", size="7",
  list="uds.a3.ageOfDeath", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid12neu', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='kid12neu',
  required='No', proporder='250', attributes='', quickHelp='', 
  label="Child 12 Neurological problem:", context="r", size="17",
  list="uds.a3.neurprob", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid12pdx', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='kid12pdx',
  required='No', proporder='251', attributes='', quickHelp='', 
  label="Child 12 Primary diagnosis:", context="r", size="17",
  list="uds.a3.primDx", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid12moe', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='kid12moe',
  required='No', proporder='252', attributes='', quickHelp='', 
  label="Child 12 Method of evaluation:", context="r", size="17",
  list="uds.a3.evalMethod", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid12ago', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='kid12ago',
  required='No', proporder='253', attributes='', quickHelp='', 
  label="Child 12 Age of onset:", context="r", size="7",
  list="uds.a3.famAgeOfOnset", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid13mob', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='kid13mob',
  required='No', proporder='254', attributes='', quickHelp='', 
  label="Child 13 Birth month:", context="r", size="5",
  list="uds.m1.month", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid13yob', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='kid13yob',
  required='No', proporder='255', attributes='', quickHelp='', 
  label="Child 13 Birth year:", context="r", size="5",
  list="uds.yearUnknown", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid13agd', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='kid13agd',
  required='No', proporder='256', attributes='', quickHelp='', 
  label="Child 13 Age at death:", context="r", size="7",
  list="uds.a3.ageOfDeath", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid13neu', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='kid13neu',
  required='No', proporder='257', attributes='', quickHelp='', 
  label="Child 13 Neurological problem:", context="r", size="17",
  list="uds.a3.neurprob", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid13pdx', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='kid13pdx',
  required='No', proporder='258', attributes='', quickHelp='', 
  label="Child 13 Primary diagnosis:", context="r", size="17",
  list="uds.a3.primDx", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid13moe', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='kid13moe',
  required='No', proporder='259', attributes='', quickHelp='', 
  label="Child 13 Method of evaluation:", context="r", size="17",
  list="uds.a3.evalMethod", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid13ago', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='kid13ago',
  required='No', proporder='260', attributes='', quickHelp='', 
  label="Child 13 Age of onset:", context="r", size="7",
  list="uds.a3.famAgeOfOnset", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid14mob', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='kid14mob',
  required='No', proporder='261', attributes='', quickHelp='', 
  label="Child 14 Birth month:", context="r", size="5",
  list="uds.m1.month", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid14yob', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='kid14yob',
  required='No', proporder='262', attributes='', quickHelp='', 
  label="Child 14 Birth year:", context="r", size="5",
  list="uds.yearUnknown", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid14agd', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='kid14agd',
  required='No', proporder='263', attributes='', quickHelp='', 
  label="Child 14 Age at death:", context="r", size="7",
  list="uds.a3.ageOfDeath", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid14neu', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='kid14neu',
  required='No', proporder='264', attributes='', quickHelp='', 
  label="Child 14 Neurological problem:", context="r", size="17",
  list="uds.a3.neurprob", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid14pdx', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='kid14pdx',
  required='No', proporder='265', attributes='', quickHelp='', 
  label="Child 14 Primary diagnosis:", context="r", size="17",
  list="uds.a3.primDx", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid14moe', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='kid14moe',
  required='No', proporder='266', attributes='', quickHelp='', 
  label="Child 14 Method of evaluation:", context="r", size="17",
  list="uds.a3.evalMethod", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid14ago', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='kid14ago',
  required='No', proporder='267', attributes='', quickHelp='', 
  label="Child 14 Age of onset:", context="r", size="7",
  list="uds.a3.famAgeOfOnset", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid15mob', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='kid15mob',
  required='No', proporder='268', attributes='', quickHelp='', 
  label="Child 15 Birth month:", context="r", size="5",
  list="uds.m1.month", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid15yob', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='kid15yob',
  required='No', proporder='269', attributes='', quickHelp='', 
  label="Child 15 Birth year:", context="r", size="5",
  list="uds.yearUnknown", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid15agd', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='kid15agd',
  required='No', proporder='270', attributes='', quickHelp='', 
  label="Child 15 Age at death:", context="r", size="7",
  list="uds.a3.ageOfDeath", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid15neu', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='kid15neu',
  required='No', proporder='271', attributes='', quickHelp='', 
  label="Child 15 Neurological problem:", context="r", size="17",
  list="uds.a3.neurprob", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid15pdx', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='kid15pdx',
  required='No', proporder='272', attributes='', quickHelp='', 
  label="Child 15 Primary diagnosis:", context="r", size="17",
  list="uds.a3.primDx", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid15moe', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='kid15moe',
  required='No', proporder='273', attributes='', quickHelp='', 
  label="Child 15 Method of evaluation:", context="r", size="17",
  list="uds.a3.evalMethod", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid15ago', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsfamilyhistory3', property='kid15ago',
  required='No', proporder='274', attributes='', quickHelp='', 
  label="Child 15 Age of onset:", context="r", size="7",
  list="uds.a3.famAgeOfOnset", style="scale";


  
  
  
-- A4 Medications
-- no table changes
DELETE from viewproperty where entity = 'udsmedications3';
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsmedications3.drugId','en','lava','crms-nacc',NULL,'udsmedications3','drugId','','r','numeric','Yes','Drug Id',NULL,NULL,NULL,0,'','',NULL,4,'Multum Drug ID','2009-01-24 21:28:51');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsmedications3.generic','en','lava','crms-nacc',NULL,'udsmedications3','generic','','r','string','No','Generic ',NULL,50,NULL,0,'readonly tabindex="10000"','',NULL,5,'Generic Name of the medication','2009-01-24 21:28:51');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsmedications3.brand','en','lava','crms-nacc',NULL,'udsmedications3','brand','','r','string','No','Brand Name',NULL,50,NULL,0,'readonly tabindex="10000"','',NULL,6,'Brand Name of the medication (optional)','2009-01-24 21:28:51');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsmedications3.notListed','en','lava','crms-nacc',NULL,'udsmedications3','notListed','','r','string','No','Not Listed',NULL,50,NULL,0,NULL,'',NULL,7,'Not Listed Description','2009-01-24 21:28:51');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsmedications3.drugLookup','en','lava','crms-nacc',NULL,'udsmedications3','drugLookup','','r','range','no','Lookup (00000=clear,99999=Not Listed)',NULL,100,NULL,0,'','nacc.drugLookup',NULL,40,'Lookup medication by brand or generic name','2009-01-24 21:28:51');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsmedications3.drugLookupClone','en','lava','crms-nacc',NULL,'udsmedications3','drugLookupClone','','r','range','no','Lookup (00000=clear,99999=Not Listed)',NULL,100,NULL,0,'','',NULL,40,'Lookup medication by brand or generic name','2009-01-24 21:28:51');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsmedications3.anyMeds','en','lava','crms-nacc',NULL,'udsmedications3','anyMeds','','r','range','Yes','Any Meds',NULL,NULL,NULL,0,'','uds.noYes01',NULL,56,'Is the subject currently taking any medications?','2009-01-24 21:28:51');



-- A5  
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
  list="uds.a5.smokYrs", style="scale";

-- recode
insert into viewproperty 
set messageCode='*.udshealthhistory3.packsPer', locale='en', instance='lava', 
  scope='crms-nacc', entity='udshealthhistory3', property='packsPer',
  required='No', proporder='4', attributes='', quickHelp='', 
  label="1d. Average number of packs smoked per day", context="r",
  list="uds.a5.packsPer", style="scale";

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
  list="uds.a5.alcFreq", style="scale";

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
  list="uds.a5.tbi", style="scale";

-- new
insert into viewproperty 
set messageCode='*.udshealthhistory3.tbiExten', locale='en', instance='lava', 
  scope='crms-nacc', entity='udshealthhistory3', property='tbiExten',
  required='No', proporder='33', attributes='', quickHelp='',  indentLevel="1",
  label="4d2. TBI with extended loss of consciousness (5 minutes or longer)", context="r",
  list="uds.a5.tbi", style="scale";

-- new
insert into viewproperty 
set messageCode='*.udshealthhistory3.tbiWolos', locale='en', instance='lava', 
  scope='crms-nacc', entity='udshealthhistory3', property='tbiWolos',
  required='No', proporder='34', attributes='', quickHelp='',  indentLevel="1",
  label="4d3. TBI without loss of consciousness (as might result from military detonations or sports injuries)?", context="r",
  list="uds.a5.tbi", style="scale";

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
  list="uds.a5.diabType", style="scale";

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
  list="uds.a5.arthType", style="scale";

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

 
  


-- B1
DELETE from viewproperty where entity = 'udsphysical3';

insert into viewproperty 
set messageCode='*.udsphysical3.height', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsphysical3', property='height',
  required='No', proporder='1', attributes='', quickHelp='', size=4,
  label="1. Subject height (inches) (88.8 = not assessed)", context="r", 
  list="uds.b1.height", style="scale";

insert into viewproperty 
set messageCode='*.udsphysical3.weight', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsphysical3', property='weight',
  required='No', proporder='2', attributes='', quickHelp='', size=4,
  label="2. Subject weight (lbs) (888 = not assessed)", context="r",
  list="uds.b1.weight", style="scale";

insert into viewproperty 
set messageCode='*.udsphysical3.bpSys', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsphysical3', property='bpSys',
  required='No', proporder='3', attributes='', quickHelp='', size=4,
  label="3a/3b. Subject blood pressure - systolic/diastolic (888/888 = not assessed)", context="r",
  list="uds.b1.bpSys", style="scale";

insert into viewproperty 
set messageCode='*.udsphysical3.bpDias', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsphysical3', property='bpDias',
  required='No', proporder='4', attributes='', quickHelp='', size=4,
  label="3b. Subject blood pressure - diastolic (888 = not assessed)", context="r",
  list="uds.b1.bpDias", style="scale";

insert into viewproperty 
set messageCode='*.udsphysical3.hrate', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsphysical3', property='hrate',
  required='No', proporder='5', attributes='', quickHelp='', size=4,
  label="4. Subject resting heart rate (pulse) (888 = not assessed)", context="r",
  list="uds.b1.hRate", style="scale";

insert into viewproperty 
set messageCode='*.udsphysical3.vision', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsphysical3', property='vision',
  required='No', proporder='6', attributes='', quickHelp='', 
  label="5. Without corrective lenses, is the subject''s vision functionally normal?", context="r",
  list="uds.noYesUnknown019", style="scale";

insert into viewproperty 
set messageCode='*.udsphysical3.visCorr', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsphysical3', property='visCorr',
  required='No', proporder='7', attributes='', quickHelp='', 
  label="6. Does the subject usually wear corrective lenses?", context="r",
  list="uds.noYesUnknown019", style="scale";

insert into viewproperty 
set messageCode='*.udsphysical3.visWCorr', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsphysical3', property='visWCorr',
  required='No', proporder='8', attributes='', quickHelp='', indentLevel=1,
  label="6a. If yes, is the subject''s vision functionally normal with corrective lenses?", context="r",
  list="uds.noYesUnknown019", style="scale";

insert into viewproperty 
set messageCode='*.udsphysical3.hearing', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsphysical3', property='hearing',
  required='No', proporder='9', attributes='', quickHelp='', 
  label="7. Without a hearing aid(s), is the subject''s hearing functionally normal?", context="r",
  list="uds.noYesUnknown019", style="scale";

insert into viewproperty 
set messageCode='*.udsphysical3.hearAid', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsphysical3', property='hearAid',
  required='No', proporder='10', attributes='', quickHelp='', 
  label="8. Does the subject usually wear a hearing aid(s)?", context="r",
  list="uds.noYesUnknown019", style="scale";

insert into viewproperty 
set messageCode='*.udsphysical3.hearWAid', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsphysical3', property='hearWAid',
  required='No', proporder='11', attributes='', quickHelp='', indentLevel=1,
  label="8a. If yes, is the subject''s hearing functionally normal with a hearing aid(s)?", context="r",
  list="uds.noYesUnknown019", style="scale";



  
-- B4
DELETE from viewproperty where entity='udscdr3';
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udscdr3.memory','en','lava','crms-nacc',NULL,'udscdr3','memory','Clinical Dementia Rating (CDR)','r','scale','No','1. Memory',NULL,NULL,NULL,0,'','uds.b4.cdrScale',NULL,4,'','2009-01-24 21:28:51');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udscdr3.orient','en','lava','crms-nacc',NULL,'udscdr3','orient','Clinical Dementia Rating (CDR)','r','scale','No','2. Orientation',NULL,NULL,NULL,0,'','uds.b4.cdrScale',NULL,5,'','2009-01-24 21:28:51');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udscdr3.judgement','en','lava','crms-nacc',NULL,'udscdr3','judgement','Clinical Dementia Rating (CDR)','r','scale','No','3. Judgment and Problem Solving',NULL,NULL,NULL,0,'','uds.b4.cdrScale',NULL,6,'','2009-01-24 21:28:51');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udscdr3.commun','en','lava','crms-nacc',NULL,'udscdr3','commun','Clinical Dementia Rating (CDR)','r','scale','No','4. Community Affairs',NULL,NULL,NULL,0,'','uds.b4.cdrScale',NULL,7,'','2009-01-24 21:28:51');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udscdr3.homeHobb','en','lava','crms-nacc',NULL,'udscdr3','homeHobb','Clinical Dementia Rating (CDR)','r','scale','No','5. Home and Hobbies',NULL,NULL,NULL,0,'','uds.b4.cdrScale',NULL,8,'','2009-01-24 21:28:51');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udscdr3.persCare','en','lava','crms-nacc',NULL,'udscdr3','persCare','Clinical Dementia Rating (CDR)','r','scale','No','6. Personal Care',NULL,NULL,NULL,0,'','uds.b4.cdrScaleNoPointFive',NULL,9,'','2009-01-24 21:28:51');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udscdr3.cdrSum','en','lava','crms-nacc',NULL,'udscdr3','cdrSum','Clinical Dementia Rating (CDR)','r','range','No','7. CDR Sum of Boxes (-5 = Cannot Total)',NULL,NULL,NULL,0,'disabled','ref.totalErrorCodeDecimal',NULL,10,'','2009-01-24 21:28:51');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udscdr3.cdrGlob','en','lava','crms-nacc',NULL,'udscdr3','cdrGlob','Clinical Dementia Rating (CDR)','r','range','No','8. Global CDR: Total (-5 = Cannot Total)',NULL,NULL,NULL,0,'disabled','ref.totalErrorCodeDecimal',NULL,11,'','2009-01-24 21:28:51');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udscdr3.comport','en','lava','crms-nacc',NULL,'udscdr3','comport','Supplemental CDR','r','scale','No','9. Behavior, Comportment and Personality',NULL,NULL,NULL,0,'','uds.b4.cdrScale',NULL,12,'','2009-01-24 21:28:51');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udscdr3.cdrLang','en','lava','crms-nacc',NULL,'udscdr3','cdrLang','Supplemental CDR','r','scale','No','10. Language',NULL,NULL,NULL,0,'','uds.b4.cdrScale',NULL,13,'','2009-01-24 21:28:51');



-- B5
DELETE from viewproperty where entity='udsnpi3';
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsnpi3.npiqInf','en','lava','crms-nacc',NULL,'udsnpi3','npiqInf','Informant','r','scale','No','1. NPI Informant:',NULL,NULL,NULL,0,'','uds.b5.informant',NULL,4,'','2009-01-24 21:28:51');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsnpi3.npiqInfx','en','lava','crms-nacc',NULL,'udsnpi3','npiqInfx','Informant','i','string','No','(if other, specify):',NULL,NULL,NULL,0,'onkeypress="UDS_onlyNaccCharactersAllowed(event)"','',NULL,5,'','2009-01-24 21:28:51');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsnpi3.del','en','lava','crms-nacc',NULL,'udsnpi3','del','Symptoms','r','scale','No','2.a Delusions: Does the patient believe that others are stealing from him or her, or planning to harm him or her in some way?',NULL,NULL,NULL,0,'','uds.noYesUnknown019',NULL,6,'','2009-01-24 21:28:51');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsnpi3.delSev','en','lava','crms-nacc',NULL,'udsnpi3','delSev','Symptoms','r','scale','No','2.b Severity',NULL,NULL,NULL,1,'','uds.b5.severity',NULL,7,'','2009-01-24 21:28:51');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsnpi3.hall','en','lava','crms-nacc',NULL,'udsnpi3','hall','Symptoms','r','scale','No','3.a Hallucinations: Does the patient act as if he or she hears voices? Does he or she talk to people who are not there?',NULL,NULL,NULL,0,'','uds.noYesUnknown019',NULL,8,'','2009-01-24 21:28:51');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsnpi3.hallSev','en','lava','crms-nacc',NULL,'udsnpi3','hallSev','Symptoms','r','scale','No','3.b Severity',NULL,NULL,NULL,1,'','uds.b5.severity',NULL,9,'','2009-01-24 21:28:51');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsnpi3.agit','en','lava','crms-nacc',NULL,'udsnpi3','agit','Symptoms','r','scale','No','4.a Agitation or Aggression: Is the patient stubborn and resistive to help from others?',NULL,NULL,NULL,0,'','uds.noYesUnknown019',NULL,10,'','2009-01-24 21:28:51');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsnpi3.agitSev','en','lava','crms-nacc',NULL,'udsnpi3','agitSev','Symptoms','r','scale','No','4.b Severity',NULL,NULL,NULL,1,'','uds.b5.severity',NULL,11,'','2009-01-24 21:28:51');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsnpi3.depD','en','lava','crms-nacc',NULL,'udsnpi3','depD','Symptoms','r','scale','No','5.a Depression or Dysphoria: Does the patient act as if he or she is sad or in low spirits? Does he or she cry?',NULL,NULL,NULL,0,'','uds.noYesUnknown019',NULL,12,'','2009-01-24 21:28:51');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsnpi3.depDSev','en','lava','crms-nacc',NULL,'udsnpi3','depDSev','Symptoms','r','scale','No','5.b Severity',NULL,NULL,NULL,1,'','uds.b5.severity',NULL,13,'','2009-01-24 21:28:51');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsnpi3.anx','en','lava','crms-nacc',NULL,'udsnpi3','anx','Symptoms','r','scale','No','6.a Anxiety: Does the patient become upset when seperated from you? Does he or she have any other signs of nervousness?',NULL,NULL,NULL,0,'','uds.noYesUnknown019',NULL,14,'','2009-01-24 21:28:51');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsnpi3.anxSev','en','lava','crms-nacc',NULL,'udsnpi3','anxSev','Symptoms','r','scale','No','6.b Severity',NULL,NULL,NULL,1,'','uds.b5.severity',NULL,15,'','2009-01-24 21:28:51');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsnpi3.elat','en','lava','crms-nacc',NULL,'udsnpi3','elat','Symptoms','r','scale','No','7.a Elation or Euphoria: Does the patient appear to feel too good or act excessively happy?',NULL,NULL,NULL,0,'','uds.noYesUnknown019',NULL,16,'','2009-01-24 21:28:51');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsnpi3.elatSev','en','lava','crms-nacc',NULL,'udsnpi3','elatSev','Symptoms','r','scale','No','7.b Severity',NULL,NULL,NULL,1,'','uds.b5.severity',NULL,17,'','2009-01-24 21:28:51');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsnpi3.apa','en','lava','crms-nacc',NULL,'udsnpi3','apa','Symptoms','r','scale','No','8.a Apathy or Indifference: Does the patient seem less interested in his or her usual activities and in the activities and plans of others?',NULL,NULL,NULL,0,'','uds.noYesUnknown019',NULL,18,'','2009-01-24 21:28:51');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsnpi3.apaSev','en','lava','crms-nacc',NULL,'udsnpi3','apaSev','Symptoms','r','scale','No','8.b Severity',NULL,NULL,NULL,1,'','uds.b5.severity',NULL,19,'','2009-01-24 21:28:51');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsnpi3.disn','en','lava','crms-nacc',NULL,'udsnpi3','disn','Symptoms','r','scale','No','9.a Disinhibition: Does the patient seem to act impulsively?',NULL,NULL,NULL,0,'','uds.noYesUnknown019',NULL,20,'','2009-01-24 21:28:51');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsnpi3.disnSev','en','lava','crms-nacc',NULL,'udsnpi3','disnSev','Symptoms','r','scale','No','9.b Severity',NULL,NULL,NULL,1,'','uds.b5.severity',NULL,21,'','2009-01-24 21:28:51');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsnpi3.irr','en','lava','crms-nacc',NULL,'udsnpi3','irr','Symptoms','r','scale','No','10.a Irritability or Lability: Is the patient impatient or cranky? Does he or she have trouble coping with delays or waiting for planned activities?',NULL,NULL,NULL,0,'','uds.noYesUnknown019',NULL,22,'','2009-01-24 21:28:51');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsnpi3.irrSev','en','lava','crms-nacc',NULL,'udsnpi3','irrSev','Symptoms','r','scale','No','10.b Severity',NULL,NULL,NULL,1,'','uds.b5.severity',NULL,23,'','2009-01-24 21:28:51');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsnpi3.mot','en','lava','crms-nacc',NULL,'udsnpi3','mot','Symptoms','r','scale','No','11.a Motor Disturbance: Does the patient engage in repetitive activites (e.g. pacing around the house, wrapping string, handling buttons, etc.)?',NULL,NULL,NULL,0,'','uds.noYesUnknown019',NULL,24,'','2009-01-24 21:28:51');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsnpi3.motSev','en','lava','crms-nacc',NULL,'udsnpi3','motSev','Symptoms','r','scale','No','11.b Severity',NULL,NULL,NULL,1,'','uds.b5.severity',NULL,25,'','2009-01-24 21:28:51');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsnpi3.nite','en','lava','crms-nacc',NULL,'udsnpi3','nite','Symptoms','r','scale','No','12.a Nighttime Behaviors: Does the patient awaken you during the night, rise too early in the morning, or take excessive naps during the day?',NULL,NULL,NULL,0,'','uds.noYesUnknown019',NULL,26,'','2009-01-24 21:28:51');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsnpi3.niteSev','en','lava','crms-nacc',NULL,'udsnpi3','niteSev','Symptoms','r','scale','No','12.b Severity',NULL,NULL,NULL,1,'','uds.b5.severity',NULL,27,'','2009-01-24 21:28:51');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsnpi3.app','en','lava','crms-nacc',NULL,'udsnpi3','app','Symptoms','r','scale','No','13.a Appetite and Eating: Has the patient lost or gained weight, or had a change in the food he or she likes?',NULL,NULL,NULL,0,'','uds.noYesUnknown019',NULL,28,'','2009-01-24 21:28:51');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsnpi3.appSev','en','lava','crms-nacc',NULL,'udsnpi3','appSev','Symptoms','r','scale','No','13.b Severity',NULL,NULL,NULL,1,'','uds.b5.severity',NULL,29,'','2009-01-24 21:28:51');





-- B6
DELETE from viewproperty where entity = 'udsgds3';
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsgds3.noGds','en','lava','crms-nacc',NULL,'udsgds3','noGds','GDS (15 questions)','r','scale','No','If the subject is not able to complete the GDS, please mark box as \'Unable to Complete\'',NULL,NULL,NULL,0,'','uds.b6.noGds',NULL,4,'','2009-01-24 21:28:51');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsgds3.satis','en','lava','crms-nacc',NULL,'udsgds3','satis','GDS (15 questions)','r','scale','No','1. Are you basically satisfied with your life?',NULL,NULL,NULL,0,'','uds.b6.yesNoUnkScale_NoCorrect',NULL,5,'','2009-01-24 21:28:51');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsgds3.dropAct','en','lava','crms-nacc',NULL,'udsgds3','dropAct','GDS (15 questions)','r','scale','No','2. Have you dropped many of your activities and interests?',NULL,NULL,NULL,0,'','uds.b6.yesNoUnkScale_YesCorrect',NULL,6,'','2009-01-24 21:28:51');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsgds3.empty','en','lava','crms-nacc',NULL,'udsgds3','empty','GDS (15 questions)','r','scale','No','3. Do you feel that your life is empty?',NULL,NULL,NULL,0,'','uds.b6.yesNoUnkScale_YesCorrect',NULL,7,'','2009-01-24 21:28:51');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsgds3.bored','en','lava','crms-nacc',NULL,'udsgds3','bored','GDS (15 questions)','r','scale','No','4. Do you often get bored?',NULL,NULL,NULL,0,'','uds.b6.yesNoUnkScale_YesCorrect',NULL,8,'','2009-01-24 21:28:51');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsgds3.spirits','en','lava','crms-nacc',NULL,'udsgds3','spirits','GDS (15 questions)','r','scale','No','5. Are you in good spirits most of the time?',NULL,NULL,NULL,0,'','uds.b6.yesNoUnkScale_NoCorrect',NULL,9,'','2009-01-24 21:28:51');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsgds3.afraid','en','lava','crms-nacc',NULL,'udsgds3','afraid','GDS (15 questions)','r','scale','No','6. Are you afraid that something bad is going to happen to you?',NULL,NULL,NULL,0,'','uds.b6.yesNoUnkScale_YesCorrect',NULL,10,'','2009-01-24 21:28:51');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsgds3.happy','en','lava','crms-nacc',NULL,'udsgds3','happy','GDS (15 questions)','r','scale','No','7. Do you feel happy most of the time?',NULL,NULL,NULL,0,'','uds.b6.yesNoUnkScale_NoCorrect',NULL,11,'','2009-01-24 21:28:51');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsgds3.helpless','en','lava','crms-nacc',NULL,'udsgds3','helpless','GDS (15 questions)','r','scale','No','8. Do you often feel helpless?',NULL,NULL,NULL,0,'','uds.b6.yesNoUnkScale_YesCorrect',NULL,12,'','2009-01-24 21:28:51');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsgds3.stayhome','en','lava','crms-nacc',NULL,'udsgds3','stayhome','GDS (15 questions)','r','scale','No','9. Do you prefer to stay home rather than go out and doing new things?',NULL,NULL,NULL,0,'','uds.b6.yesNoUnkScale_YesCorrect',NULL,13,'','2009-01-24 21:28:51');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsgds3.memprob','en','lava','crms-nacc',NULL,'udsgds3','memprob','GDS (15 questions)','r','scale','No','10. Do you feel that you have more problems with memory than most?',NULL,NULL,NULL,0,'','uds.b6.yesNoUnkScale_YesCorrect',NULL,14,'','2009-01-24 21:28:51');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsgds3.wondrful','en','lava','crms-nacc',NULL,'udsgds3','wondrful','GDS (15 questions)','r','scale','No','11. Do you think it is wonderful to be alive now?',NULL,NULL,NULL,0,'','uds.b6.yesNoUnkScale_NoCorrect',NULL,15,'','2009-01-24 21:28:51');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsgds3.wrthless','en','lava','crms-nacc',NULL,'udsgds3','wrthless','GDS (15 questions)','r','scale','No','12. Do you feel pretty worthless the way you are now?',NULL,NULL,NULL,0,'','uds.b6.yesNoUnkScale_YesCorrect',NULL,16,'','2009-01-24 21:28:51');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsgds3.energy','en','lava','crms-nacc',NULL,'udsgds3','energy','GDS (15 questions)','r','scale','No','13. Do you feel full of energy?',NULL,NULL,NULL,0,'','uds.b6.yesNoUnkScale_NoCorrect',NULL,17,'','2009-01-24 21:28:51');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsgds3.hopeless','en','lava','crms-nacc',NULL,'udsgds3','hopeless','GDS (15 questions)','r','scale','No','14. Do you feel that your situation is hopeless?',NULL,NULL,NULL,0,'','uds.b6.yesNoUnkScale_YesCorrect',NULL,18,'','2009-01-24 21:28:51');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsgds3.better','en','lava','crms-nacc',NULL,'udsgds3','better','GDS (15 questions)','r','scale','No','15. Do you think that most people are better off than you are?',NULL,NULL,NULL,0,'','uds.b6.yesNoUnkScale_YesCorrect',NULL,19,'','2009-01-24 21:28:51');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsgds3.gds','en','lava','crms-nacc',NULL,'udsgds3','gds','GDS (15 questions)','r','range','No','16. GDS Total (max score=15, did not complete=88)',NULL,NULL,NULL,0,'disabled','uds.b6.total',NULL,20,'','2009-01-24 21:28:51');




-- B7
DELETE from viewproperty where entity = 'udsfaq3';
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsfaq3.bills','en','lava','crms-nacc',NULL,'udsfaq3','bills','','r','scale','No','1. Writing checks, paying bills, balancing a checkbook.',NULL,NULL,NULL,0,'','uds.b7.diffUnk',NULL,4,'','2009-01-24 21:28:51');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsfaq3.taxes','en','lava','crms-nacc',NULL,'udsfaq3','taxes','','r','scale','No','2. Assembling tax records, business affairs, papers.',NULL,NULL,NULL,0,'','uds.b7.diffUnk',NULL,5,'','2009-01-24 21:28:51');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsfaq3.shopping','en','lava','crms-nacc',NULL,'udsfaq3','shopping','','r','scale','No','3. Shopping alone for clothes, household necessities, or groceries.',NULL,NULL,NULL,0,'','uds.b7.diffUnk',NULL,6,'','2009-01-24 21:28:51');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsfaq3.games','en','lava','crms-nacc',NULL,'udsfaq3','games','','r','scale','No','4. Playing a game or skill, working on a hobby.',NULL,NULL,NULL,0,'','uds.b7.diffUnk',NULL,7,'','2009-01-24 21:28:51');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsfaq3.stove','en','lava','crms-nacc',NULL,'udsfaq3','stove','','r','scale','No','5. Heating water, making a cup of coffee, turning off the stove.',NULL,NULL,NULL,0,'','uds.b7.diffUnk',NULL,8,'','2009-01-24 21:28:51');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsfaq3.mealPrep','en','lava','crms-nacc',NULL,'udsfaq3','mealPrep','','r','scale','No','6. Preparing a balanced meal.',NULL,NULL,NULL,0,'','uds.b7.diffUnk',NULL,9,'','2009-01-24 21:28:51');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsfaq3.events','en','lava','crms-nacc',NULL,'udsfaq3','events','','r','scale','No','7. Keeping track of current events.',NULL,NULL,NULL,0,'','uds.b7.diffUnk',NULL,10,'','2009-01-24 21:28:51');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsfaq3.payAttn','en','lava','crms-nacc',NULL,'udsfaq3','payAttn','','r','scale','No','8. Paying attention to, understanding, discussing TV, book, magazine.',NULL,NULL,NULL,0,'','uds.b7.diffUnk',NULL,11,'','2009-01-24 21:28:51');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsfaq3.remDates','en','lava','crms-nacc',NULL,'udsfaq3','remDates','','r','scale','No','9. Remebering appointments, family occasions, holidays, medication.',NULL,NULL,NULL,0,'','uds.b7.diffUnk',NULL,12,'','2009-01-24 21:28:51');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsfaq3.travel','en','lava','crms-nacc',NULL,'udsfaq3','travel','','r','scale','No','10. Traveling out of neighborhood, driving, arranging to take buses.',NULL,NULL,NULL,0,'','uds.b7.diffUnk',NULL,13,'','2009-01-24 21:28:51');




-- B8
DELETE FROM viewproperty WHERE entity= 'udsappraisal3';

insert into viewproperty 
set messageCode='*.udsappraisal3.normexam', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsappraisal3', property='normexam',
  required='No', proporder='1', attributes='', quickHelp='', 
  label="1. Were there abnormal neurological exam findings?", context="r",
  list="uds.b8.normExam", style="scale";

insert into viewproperty 
set messageCode='*.udsappraisal3.parksign', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsappraisal3', property='parksign',
  required='No', proporder='2', attributes='', quickHelp='', 
  label="2. Parkinsonian signs", context="r",
  list="uds.noYes01", style="scale";

insert into viewproperty 
set messageCode='*.udsappraisal3.resttrl', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsappraisal3', property='resttrl',
  required='No', proporder='3', attributes='', quickHelp='', 
  label="2a. Resting tremor - left arm", context="r",
  list="uds.b8.signs", style="scale";

insert into viewproperty 
set messageCode='*.udsappraisal3.resttrr', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsappraisal3', property='resttrr',
  required='No', proporder='4', attributes='', quickHelp='', 
  label="2a. Resting tremor - right arm", context="r",
  list="uds.b8.signs", style="scale";

insert into viewproperty 
set messageCode='*.udsappraisal3.slowingl', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsappraisal3', property='slowingl',
  required='No', proporder='5', attributes='', quickHelp='', 
  label="2b. Slowing of fine motor movements - left side", context="r",
  list="uds.b8.signs", style="scale";

insert into viewproperty 
set messageCode='*.udsappraisal3.slowingr', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsappraisal3', property='slowingr',
  required='No', proporder='6', attributes='', quickHelp='', 
  label="2b. Slowing of fine motor movements - right side", context="r",
  list="uds.b8.signs", style="scale";

insert into viewproperty 
set messageCode='*.udsappraisal3.rigidl', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsappraisal3', property='rigidl',
  required='No', proporder='7', attributes='', quickHelp='', 
  label="2c. Rigidity - left arm", context="r",
  list="uds.b8.signs", style="scale";

insert into viewproperty 
set messageCode='*.udsappraisal3.rigidr', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsappraisal3', property='rigidr',
  required='No', proporder='8', attributes='', quickHelp='', 
  label="2c. Rigidity - right arm", context="r",
  list="uds.b8.signs", style="scale";

insert into viewproperty 
set messageCode='*.udsappraisal3.brady', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsappraisal3', property='brady',
  required='No', proporder='9', attributes='', quickHelp='', 
  label="2d. Bradykinesia", context="r",
  list="uds.b8.signs", style="scale";

insert into viewproperty 
set messageCode='*.udsappraisal3.parkgait', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsappraisal3', property='parkgait',
  required='No', proporder='10', attributes='', quickHelp='', 
  label="2e. Parkinsonian gait disorder", context="r",
  list="uds.b8.signs", style="scale";

insert into viewproperty 
set messageCode='*.udsappraisal3.postinst', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsappraisal3', property='postinst',
  required='No', proporder='11', attributes='', quickHelp='', 
  label="2f. Postural instability", context="r",
  list="uds.b8.signs", style="scale";

insert into viewproperty 
set messageCode='*.udsappraisal3.cvdsigns', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsappraisal3', property='cvdsigns',
  required='No', proporder='12', attributes='', quickHelp='', 
  label="3. Neurological sign considered by examiner to be most likely consistent with cerebrovascular disease", context="r",
  list="uds.noYes01", style="scale";

insert into viewproperty 
set messageCode='*.udsappraisal3.cortdef', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsappraisal3', property='cortdef',
  required='No', proporder='13', attributes='', quickHelp='', 
  label="3a. Cortical cognitive deficit (e.g., aphasia, apraxia, neglect)", context="r",
  list="uds.b8.signs", style="scale";

insert into viewproperty 
set messageCode='*.udsappraisal3.sivdfind', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsappraisal3', property='sivdfind',
  required='No', proporder='14', attributes='', quickHelp='', 
  label="3b. Focal or other neurological findings consistend with SIVD", context="r",
  list="uds.b8.signs", style="scale";

insert into viewproperty 
set messageCode='*.udsappraisal3.cvdmotl', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsappraisal3', property='cvdmotl',
  required='No', proporder='15', attributes='', quickHelp='', 
  label="3c. Motor (may include weakness of combination of face, arm, and leg; reflex changes, etc.) - left side", context="r",
  list="uds.b8.signs", style="scale";

insert into viewproperty 
set messageCode='*.udsappraisal3.cvdmotr', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsappraisal3', property='cvdmotr',
  required='No', proporder='16', attributes='', quickHelp='', 
  label="3c. Motor (may include weakness of combination of face, arm, and leg; reflex changes, etc.) - right side", context="r",
  list="uds.b8.signs", style="scale";

insert into viewproperty 
set messageCode='*.udsappraisal3.cortvisl', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsappraisal3', property='cortvisl',
  required='No', proporder='17', attributes='', quickHelp='', 
  label="3d. Cortical visual field loss - left side", context="r",
  list="uds.b8.signs", style="scale";

insert into viewproperty 
set messageCode='*.udsappraisal3.cortvisr', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsappraisal3', property='cortvisr',
  required='No', proporder='18', attributes='', quickHelp='', 
  label="3d. Cortical visual field loss - right side", context="r",
  list="uds.b8.signs", style="scale";

insert into viewproperty 
set messageCode='*.udsappraisal3.somatl', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsappraisal3', property='somatl',
  required='No', proporder='19', attributes='', quickHelp='', 
  label="3e. Somatosensory loss - left side", context="r",
  list="uds.b8.signs", style="scale";

insert into viewproperty 
set messageCode='*.udsappraisal3.somatr', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsappraisal3', property='somatr',
  required='No', proporder='20', attributes='', quickHelp='', 
  label="3e. Somatosensory loss - right side", context="r",
  list="uds.b8.signs", style="scale";

insert into viewproperty 
set messageCode='*.udsappraisal3.postcort', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsappraisal3', property='postcort',
  required='No', proporder='21', attributes='', quickHelp='', 
  label="4. Higher cortical visual problem suggesting posterior cortical atrophy (e.g., prosopagnosia, simultagnosia, Balint’s syndrome) or apraxia of gaze", context="r",
  list="uds.noYes01", style="scale";

insert into viewproperty 
set messageCode='*.udsappraisal3.pspcbs', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsappraisal3', property='pspcbs',
  required='No', proporder='22', attributes='', quickHelp='', 
  label="5. Findings suggestive of progressive supranuclear palsy (PSP), corticobasal syndrome, or other related disorders", context="r",
  list="uds.noYes01", style="scale";

insert into viewproperty 
set messageCode='*.udsappraisal3.eyepsp', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsappraisal3', property='eyepsp',
  required='No', proporder='23', attributes='', quickHelp='', 
  label="5a. Eye movement changes consistent with PSP", context="r",
  list="uds.b8.signs", style="scale";

insert into viewproperty 
set messageCode='*.udsappraisal3.dyspsp', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsappraisal3', property='dyspsp',
  required='No', proporder='24', attributes='', quickHelp='', 
  label="5b. Dysarthria consistent with PSP", context="r",
  list="uds.b8.signs", style="scale";

insert into viewproperty 
set messageCode='*.udsappraisal3.axialpsp', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsappraisal3', property='axialpsp',
  required='No', proporder='25', attributes='', quickHelp='', 
  label="5c. Axial rigidity consistent with PSP", context="r",
  list="uds.b8.signs", style="scale";

insert into viewproperty 
set messageCode='*.udsappraisal3.gaitpsp', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsappraisal3', property='gaitpsp',
  required='No', proporder='26', attributes='', quickHelp='', 
  label="5d. Gait disorder consistent with PSP", context="r",
  list="uds.b8.signs", style="scale";

insert into viewproperty 
set messageCode='*.udsappraisal3.apraxsp', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsappraisal3', property='apraxsp',
  required='No', proporder='27', attributes='', quickHelp='', 
  label="5e. Apraxia of speech", context="r",
  list="uds.b8.signs", style="scale";

insert into viewproperty 
set messageCode='*.udsappraisal3.apraxl', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsappraisal3', property='apraxl',
  required='No', proporder='28', attributes='', quickHelp='', 
  label="5f. Apraxia - left side", context="r",
  list="uds.b8.signs", style="scale";

insert into viewproperty 
set messageCode='*.udsappraisal3.apraxr', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsappraisal3', property='apraxr',
  required='No', proporder='29', attributes='', quickHelp='', 
  label="5f. Apraxia - right side", context="r",
  list="uds.b8.signs", style="scale";

insert into viewproperty 
set messageCode='*.udsappraisal3.cortsenl', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsappraisal3', property='cortsenl',
  required='No', proporder='30', attributes='', quickHelp='', 
  label="5g. Cortical sensory deficits - left side", context="r",
  list="uds.b8.signs", style="scale";

insert into viewproperty 
set messageCode='*.udsappraisal3.cortsenr', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsappraisal3', property='cortsenr',
  required='No', proporder='31', attributes='', quickHelp='', 
  label="5g. Cortical sensory deficits - right side", context="r",
  list="uds.b8.signs", style="scale";

insert into viewproperty 
set messageCode='*.udsappraisal3.ataxl', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsappraisal3', property='ataxl',
  required='No', proporder='32', attributes='', quickHelp='', 
  label="5h. Ataxia - left side", context="r",
  list="uds.b8.signs", style="scale";

insert into viewproperty 
set messageCode='*.udsappraisal3.ataxr', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsappraisal3', property='ataxr',
  required='No', proporder='33', attributes='', quickHelp='', 
  label="5h. Ataxia - right side", context="r",
  list="uds.b8.signs", style="scale";

insert into viewproperty 
set messageCode='*.udsappraisal3.alienlml', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsappraisal3', property='alienlml',
  required='No', proporder='34', attributes='', quickHelp='', 
  label="5i. Alien limb - left side", context="r",
  list="uds.b8.signs", style="scale";

insert into viewproperty 
set messageCode='*.udsappraisal3.alienlmr', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsappraisal3', property='alienlmr',
  required='No', proporder='35', attributes='', quickHelp='', 
  label="5i. Alien limb - right side", context="r",
  list="uds.b8.signs", style="scale";

insert into viewproperty 
set messageCode='*.udsappraisal3.dystonl', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsappraisal3', property='dystonl',
  required='No', proporder='36', attributes='', quickHelp='', 
  label="5j. Dystonia - left side", context="r",
  list="uds.b8.signs", style="scale";

insert into viewproperty 
set messageCode='*.udsappraisal3.dystonr', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsappraisal3', property='dystonr',
  required='No', proporder='37', attributes='', quickHelp='', 
  label="5j. Dystonia - right side", context="r",
  list="uds.b8.signs", style="scale";

insert into viewproperty 
set messageCode='*.udsappraisal3.myocllt', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsappraisal3', property='myocllt',
  required='No', proporder='38', attributes='', quickHelp='', 
  label="5k. Myoclonus - left side", context="r",
  list="uds.b8.signs", style="scale";

insert into viewproperty 
set messageCode='*.udsappraisal3.myoclrt', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsappraisal3', property='myoclrt',
  required='No', proporder='39', attributes='', quickHelp='', 
  label="5k. Myoclonus - right side", context="r",
  list="uds.b8.signs", style="scale";

insert into viewproperty 
set messageCode='*.udsappraisal3.alsfind', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsappraisal3', property='alsfind',
  required='No', proporder='40', attributes='', quickHelp='', 
  label="6. Findings suggesting ALS", context="r",
  list="uds.noYes01", style="scale";

insert into viewproperty 
set messageCode='*.udsappraisal3.gaitnph', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsappraisal3', property='gaitnph',
  required='No', proporder='41', attributes='', quickHelp='', 
  label="7. Normal pressure hydrocephalus: Gait apraxia", context="r",
  list="uds.noYes01", style="scale";

insert into viewproperty 
set messageCode='*.udsappraisal3.othneur', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsappraisal3', property='othneur',
  required='No', proporder='42', attributes='', quickHelp='', 
  label="8. Other findings (e.g., cerebella ataxia, chorea, myoclonus) (NOTE: For this question, do not specify symptoms that have already been checked above.)", context="r",
  list="uds.noYes01", style="scale";

insert into viewproperty 
set messageCode='*.udsappraisal3.othneurx', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsappraisal3', property='othneurx', indentLevel=1,
  required='No', proporder='43', attributes='onkeypress="UDS_onlyNaccCharactersAllowed(event)"', quickHelp='', 
  label="Other findings (specify)", context="i", maxLength="60", size="60", style="string";




  
-- B9
DELETE FROM viewproperty WHERE entity="udssymptomsonset3";

insert into viewproperty 
set messageCode='*.udssymptomsonset3.decSub', locale='en', instance='lava', 
  scope='crms-nacc', entity='udssymptomsonset3', property='decSub',
  required='No', proporder='1', attributes='', quickHelp='', 
  label="1. Does the subject report a decline in memory (relative to previously attained abilities)?", context="r",
  list="uds.b9.decSub", style="scale";

insert into viewproperty 
set messageCode='*.udssymptomsonset3.decIn', locale='en', instance='lava', 
  scope='crms-nacc', entity='udssymptomsonset3', property='decIn',
  required='No', proporder='2', attributes='', quickHelp='', 
  label="2. Does the co-participant report a decline in subject's memory (relative to previously attained abilities)?", context="r",
  list="uds.b9.decIn", style="scale";

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
  list="uds.b9.ageOfOnsetI", style="scale";

insert into viewproperty 
set messageCode='followup.udssymptomsonset3.cogFlAgO', locale='en', instance='lava', 
  scope='crms-nacc', prefix='followup', entity='udssymptomsonset3', property='cogFlAgO',
  required='No', proporder='11', attributes='', quickHelp='', indentLevel=1,
  label="4g1. At what age did the fluctuating cognition begin? (777 = Provided at Prior Visit)", context="r",
  list="uds.b9.ageOfOnsetF", style="scale";

insert into viewproperty 
set messageCode='*.udssymptomsonset3.cogOther', locale='en', instance='lava', 
  scope='crms-nacc', entity='udssymptomsonset3', property='cogOther',
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
  list="uds.b9.cogFPredI", style="scale";

insert into viewproperty 
set messageCode='followup.udssymptomsonset3.cogFPred', locale='en', instance='lava', 
  scope='crms-nacc', prefix="followup", entity='udssymptomsonset3', property='cogFPred',
  required='No', proporder='14', attributes='', quickHelp='', 
  label="5. Indicate the predominant symptom that was first recognized as a decline in the subject's cognition", context="r",
  list="uds.b9.cogFPredF", style="scale";

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
  list="uds.b9.modeNoNA", style="scale";

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
  list="uds.b9.ageOfOnsetI", style="scale";

insert into viewproperty 
set messageCode='followup.udssymptomsonset3.decAge', locale='en', instance='lava', 
  scope='crms-nacc', prefix='followup', entity='udssymptomsonset3', property='decAge',
  required='No', proporder='18', attributes='', quickHelp='', 
  label="7. Based on clinician's assessment, at what age did the cognitive decline begin? (The clinician must use his/her best judgment to estimate an age of onset.)  (777 = Provided at Prior Visit)", context="r",
  list="uds.b9.ageOfOnsetF", style="scale";

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
  list="uds.b9.bevAgOI", style="scale";

insert into viewproperty 
set messageCode='followup.udssymptomsonset3.beVHAgO', locale='en', instance='lava', 
  scope='crms-nacc', prefix='followup', entity='udssymptomsonset3', property='beVHAgO',
  required='No', proporder='24', attributes='', quickHelp='', indentLevel=1,
  label="9c1b. If well-formed, clear-cut visual hallucinations, at what age did these hallucinations begin?  (777 = Provided at Prior Visit, 888 = N/A, not well-formed)", context="r",
  list="uds.b9.bevAgOF", style="scale";

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
  list="uds.b9.ageOfOnsetI", style="scale";

insert into viewproperty 
set messageCode='followup.udssymptomsonset3.beRemAgO', locale='en', instance='lava', 
  scope='crms-nacc', prefix='followup', entity='udssymptomsonset3', property='beRemAgO',
  required='No', proporder='32', attributes='', quickHelp='', indentLevel=1,
  label="9h1. REM sleep behavior disorder, age of onset (777 = Provided at Prior Visit)", context="r",
  list="uds.b9.ageOfOnsetF", style="scale";

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
  list="uds.b9.beFPredI", style="scale";

insert into viewproperty 
set messageCode='followup.udssymptomsonset3.beFPred', locale='en', instance='lava', 
  scope='crms-nacc', prefix='followup', entity='udssymptomsonset3', property='beFPred',
  required='No', proporder='36', attributes='', quickHelp='', 
  label="10. Indicate the predominant symptom that was first recognized as a decline in the subject's behavior", context="r",
  list="uds.b9.beFPredF", style="scale";

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
  list="uds.b9.modeNoNA", style="scale";

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
  list="uds.b9.ageOfOnsetI", style="scale";

insert into viewproperty 
set messageCode='followup.udssymptomsonset3.beAge', locale='en', instance='lava', 
  scope='crms-nacc', prefix='followup', entity='udssymptomsonset3', property='beAge',
  required='No', proporder='40', attributes='', quickHelp='', 
  label="12. Based on the clinician's assessment, at what age did the behavioral symptoms begin? (The clinician must use his/her best judgment to estimate an age of onset.) (777 = Provided at Prior Visit)", context="r",
  list="uds.b9.ageOfOnsetF", style="scale";

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
  list="uds.b9.moFrstI", style="scale";

insert into viewproperty 
set messageCode='followup.udssymptomsonset3.moFrst', locale='en', instance='lava', 
  scope='crms-nacc', prefix="followup", entity='udssymptomsonset3', property='moFrst',
  required='No', proporder='46', attributes='', quickHelp='', 
  label="15. Indicate the predominant symptom that was first recognized as a decline in the subject's motor function", context="r",
  list="uds.b9.moFrstF", style="scale";

insert into viewproperty 
set messageCode='*.udssymptomsonset3.moMode', locale='en', instance='lava', 
  scope='crms-nacc', entity='udssymptomsonset3', property='moMode',
  required='No', proporder='47', attributes='', quickHelp='', 
  label="16. Mode of onset of motor symptoms", context="r",
  list="uds.b9.modeNoNA", style="scale";

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
  list="uds.b9.ageOfOnsetI", style="scale";

insert into viewproperty 
set messageCode='followup.udssymptomsonset3.parkAge', locale='en', instance='lava', 
  scope='crms-nacc', prefix='followup', entity='udssymptomsonset3', property='parkAge',
  required='No', proporder='50', attributes='', quickHelp='', indentLevel=1,
  label="17a. If yes, at what age did the motor symptoms suggestive of parkinsonism begin? (777 = Provided at Prior Visit)", context="r",
  list="uds.b9.ageOfOnsetF", style="scale";

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
  list="uds.b9.ageOfOnsetI", style="scale";

insert into viewproperty 
set messageCode='followup.udssymptomsonset3.alsAge', locale='en', instance='lava', 
  scope='crms-nacc', prefix="followup", entity='udssymptomsonset3', property='alsAge',
  required='No', proporder='52', attributes='', quickHelp='', indentLevel=1,
  label="18a. If yes, at what age did the motor symptoms suggestive of ALS begin? (777 = Provided at Prior Visit)", context="r",
  list="uds.b9.ageOfOnsetF", style="scale";

insert into viewproperty 
set messageCode='*.udssymptomsonset3.moAge', locale='en', instance='lava', 
  scope='crms-nacc', entity='udssymptomsonset3', property='moAge',
  required='No', proporder='53', attributes='', quickHelp='', 
  label="19. Based on clinician's assessment, at what age did the motor changes begin? (The clinician must use his/her best judgement to estimate an age of onset.)", context="r",
  list="uds.b9.ageOfOnsetI", style="scale";

insert into viewproperty 
set messageCode='followup.udssymptomsonset3.moAge', locale='en', instance='lava', 
  scope='crms-nacc', prefix="followup", entity='udssymptomsonset3', property='moAge',
  required='No', proporder='53', attributes='', quickHelp='', 
  label="19. Based on clinician's assessment, at what age did the motor changes begin? (The clinician must use his/her best judgement to estimate an age of onset.) (777 = Provided at Prior Visit)", context="r",
  list="uds.b9.ageOfOnsetF", style="scale";

insert into viewproperty 
set messageCode='*.udssymptomsonset3.course', locale='en', instance='lava', 
  scope='crms-nacc', entity='udssymptomsonset3', property='course',
  required='No', proporder='54', attributes='', quickHelp='', 
  label="20. Overall course of decline of cognitive/behavioral/ motor syndrome", context="r",
  list="uds.b9.course", style="scale";

insert into viewproperty 
set messageCode='*.udssymptomsonset3.frstChg', locale='en', instance='lava', 
  scope='crms-nacc', entity='udssymptomsonset3', property='frstChg',
  required='No', proporder='55', attributes='', quickHelp='', 
  label="21. Indicate the predominant domain that was first recognized as changed in the subject", context="r",
  list="uds.b9.frstChg", style="scale";

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




-- C1 UDS Diagnosis
DELETE from datadictionary where instance='lava' and scope='crms-nacc' and entity='udsdiagnosis3';

DELETE from viewproperty where instance='lava' and scope='crms-nacc' and entity='udsdiagnosis3';

DELETE from hibernateproperty where instance='lava' and scope='crms-nacc' and entity='udsdiagnosis3';

INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3',1,'dxmethod','1. Diagnosis method - Responses in this form are based on diagnosis by:','','',1,'udsdiagnosis','DXMETHOD',1,'smallint','',1,'null','Diagnosis method - Responses in this form are based on diagnosis by:','1.','2015-02-26 19:36:52');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3',2,'normCog','2. Does the subject have normal cognition (global CDR=0 and/or neuropsychological testing withing normal range) and normal behavior (i.e., the subject does not exhibit behavior sufficient to diagnose MCI or dementia due to FTLD or LBD)?','','',1,'udsdiagnosis','NORMCOG',2,'smallint','',1,'null','Does the subject have normal cognition (global CDR=0 and/or neuropsychological testing withing normal range) and normal behavior (i.e., the subject does not exhibit behavior sufficient to diagnose MCI or dementia due to FTLD or LBD)?','2.','2015-02-26 19:36:52');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3',3,'demented','3. Does the subject meet criteria for dementia?','','',1,'udsdiagnosis','DEMENTED',3,'smallint','',1,'null','Does the subject meet criteria for dementia?','3.','2015-02-26 19:36:52');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3',4,'amndem','4a. Amnestic multidomain dementia syndrome','','',1,'udsdiagnosis','AMNDEM',4,'smallint','',1,'null','Amnestic multidomain dementia syndrome','4a.','2015-02-26 19:36:52');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3',5,'pca','4b. Posterior cortical atrophy syndrome (or primary visual presentation)','','',1,'udsdiagnosis','PCA',5,'smallint','',1,'null','Posterior cortical atrophy syndrome (or primary visual presentation)','4b.','2015-02-26 19:36:52');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3',6,'ppasyn','4c. Primary progressive aphasia (PPA) syndrome','','',1,'udsdiagnosis','PPASYN',6,'smallint','',1,'null','Primary progressive aphasia (PPA) syndrome','4c.','2015-02-26 19:36:52');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3',7,'ppasynt','4c1. If PPA present','','',1,'udsdiagnosis','PPASYNT',7,'smallint','',1,'null','If PPA present','4c1.','2015-02-26 19:36:52');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3',8,'ftdsyn','4d. Behavioral variant FTD (bvFTD) syndrome','','',1,'udsdiagnosis','FTDSYN',8,'smallint','',1,'null','Behavioral variant FTD (bvFTD) syndrome','4d.','2015-02-26 19:36:52');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3',9,'lbdsyn','4e. Lewy body dementia syndrome','','',1,'udsdiagnosis','LBDSYN',9,'smallint','',1,'null','Lewy body dementia syndrome','4e.','2015-02-26 19:36:52');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3',10,'namndem','4f. Non-amnestic multidomain dementia, not PCA, PPA, bvFTD, or DLB syndrome','','',1,'udsdiagnosis','NAMNDEM',10,'smallint','',1,'null','Non-amnestic multidomain dementia, not PCA, PPA, bvFTD, or DLB syndrome','4f.','2015-02-26 19:36:52');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3',11,'mciaMem','5a. Amnestic MCI, single domain (aMCI SD)','','',1,'udsdiagnosis','MCIAMEM',11,'smallint','',1,'null','Amnestic MCI, single domain (aMCI SD)','5a.','2015-02-26 19:36:52');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3',12,'mciaPlus','5b. Amnestic MCI, multiple domains (aMCI MD)','','',1,'udsdiagnosis','MCIAPLUS',12,'smallint','',1,'null','Amnestic MCI, multiple domains (aMCI MD)','5b.','2015-02-26 19:36:52');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3',13,'mciaPLan','5b1. Amnestic MCI, multiple domains - Language','','',1,'udsdiagnosis','MCIAPLAN',13,'smallint','',1,'null','Amnestic MCI, multiple domains - Language','5b1.','2015-02-26 19:36:52');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3',14,'mciaPAtt','5b2. Amnestic MCI, multiple domains - Attention','','',1,'udsdiagnosis','MCIAPATT',14,'smallint','',1,'null','Amnestic MCI, multiple domains - Attention','5b2.','2015-02-26 19:36:52');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3',15,'mciaPEx','5b3. Amnestic MCI, multiple domains - Executive','','',1,'udsdiagnosis','MCIAPEX',15,'smallint','',1,'null','Amnestic MCI, multiple domains - Executive','5b3.','2015-02-26 19:36:52');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3',16,'mciaPVis','5b4. Amnestic MCI, multiple domains - Visuospatial','','',1,'udsdiagnosis','MCIAPVIS',16,'smallint','',1,'null','Amnestic MCI, multiple domains - Visuospatial','5b4.','2015-02-26 19:36:52');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3',17,'mciNon1','5c. Non-amnestic MCI, single domain (naMCI SD)','','',1,'udsdiagnosis','MCINON1',17,'smallint','',1,'null','Non-amnestic MCI, single domain (naMCI SD)','5c.','2015-02-26 19:36:52');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3',18,'mciN1Lan','5c1. Non-amnestic MCI, single domain - Language','','',1,'udsdiagnosis','MCIN1LAN',18,'smallint','',1,'null','Non-amnestic MCI, single domain - Language','5c1.','2015-02-26 19:36:52');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3',19,'mciN1Att','5c2. Non-amnestic MCI, single domain - Attention','','',1,'udsdiagnosis','MCIN1ATT',19,'smallint','',1,'null','Non-amnestic MCI, single domain - Attention','5c2.','2015-02-26 19:36:52');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3',20,'mciN1Ex','5c3. Non-amnestic MCI, single domain - Executive','','',1,'udsdiagnosis','MCIN1EX',20,'smallint','',1,'null','Non-amnestic MCI, single domain - Executive','5c3.','2015-02-26 19:36:52');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3',21,'mciN1Vis','5c4. Non-amnestic MCI, single domain - Visuospatial','','',1,'udsdiagnosis','MCIN1VIS',21,'smallint','',1,'null','Non-amnestic MCI, single domain - Visuospatial','5c4.','2015-02-26 19:36:52');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3',22,'mciNon2','5d. Non-amnestic MCI, multiple domains (naMCI MD)','','',1,'udsdiagnosis','MCINON2',22,'smallint','',1,'null','Non-amnestic MCI, multiple domains (naMCI MD)','5d.','2015-02-26 19:36:52');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3',23,'mciN2Lan','5d1. Non-amnestic MCI, multiple domains - Language','','',1,'udsdiagnosis','MCIN2LAN',23,'smallint','',1,'null','Non-amnestic MCI, multiple domains - Language','5d1.','2015-02-26 19:36:52');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3',24,'mciN2Att','5d2. Non-amnestic MCI, multiple domains - Attention','','',1,'udsdiagnosis','MCIN2ATT',24,'smallint','',1,'null','Non-amnestic MCI, multiple domains - Attention','5d2.','2015-02-26 19:36:52');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3',25,'mciN2Ex','5d3. Non-amnestic MCI, multiple domains - Executive','','',1,'udsdiagnosis','MCIN2EX',25,'smallint','',1,'null','Non-amnestic MCI, multiple domains - Executive','5d3.','2015-02-26 19:36:52');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3',26,'mciN2Vis','5d4. Non-amnestic MCI, multiple domains - Visuospatial','','',1,'udsdiagnosis','MCIN2VIS',26,'smallint','',1,'null','Non-amnestic MCI, multiple domains - Visuospatial','5d4.','2015-02-26 19:36:52');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3',27,'impNoMci','5e. Cognitively impaired, not MCI','','',1,'udsdiagnosis','IMPNOMCI',27,'smallint','',1,'null','Cognitively impaired, not MCI','5e.','2015-02-26 19:36:52');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3',28,'amylpet','6a. Biomarker findings - Abnormally elevated amyloid on PET','','',1,'udsdiagnosis','AMYLPET',28,'smallint','',1,'null','Biomarker findings - Abnormally elevated amyloid on PET','6a.','2015-02-26 19:36:52');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3',29,'amylcsf','6b. Biomarker findings - Abnormally low amyloid in CSF','','',1,'udsdiagnosis','AMYLCSF',29,'smallint','',1,'null','Biomarker findings - Abnormally low amyloid in CSF','6b.','2015-02-26 19:36:52');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3',30,'fdgad','6c. Biomarker findings - FDG-PET pattern of AD','','',1,'udsdiagnosis','FDGAD',30,'smallint','',1,'null','Biomarker findings - FDG-PET pattern of AD','6c.','2015-02-26 19:36:52');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3',31,'hippatr','6d. Biomarker findings - Hippocampal atrophy','','',1,'udsdiagnosis','HIPPATR',31,'smallint','',1,'null','Biomarker findings - Hippocampal atrophy','6d.','2015-02-26 19:36:52');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3',32,'taupetad','6e. Biomarker findings - Tau PET evidence for AD','','',1,'udsdiagnosis','TAUPETAD',32,'smallint','',1,'null','Biomarker findings - Tau PET evidence for AD','6e.','2015-02-26 19:36:52');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3',33,'csftau','6f. Biomarker findings - Abnormally elevated CSF Tau or pTau','','',1,'udsdiagnosis','CSFTAU',33,'smallint','',1,'null','Biomarker findings - Abnormally elevated CSF Tau or pTau','6f.','2015-02-26 19:36:52');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3',34,'fdgftld','6g. Biomarker findings - FDG-PET evidence for frontal or anterior temporal hypometabolism for FTLD','','',1,'udsdiagnosis','FDGFTLD',34,'smallint','',1,'null','Biomarker findings - FDG-PET evidence for frontal or anterior temporal hypometabolism for FTLD','6g.','2015-02-26 19:36:52');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3',35,'tpetftld','6h. Biomarker findings - Tau PET evidence for FTLD','','',1,'udsdiagnosis','TPETFTLD',35,'smallint','',1,'null','Biomarker findings - Tau PET evidence for FTLD','6h.','2015-02-26 19:36:52');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3',36,'mrftld','6i. Biomarker findings - Structural MR evidence for frontal or anterior temporal atrophy for FTLD','','',1,'udsdiagnosis','MRFTLD',36,'smallint','',1,'null','Biomarker findings - Structural MR evidence for frontal or anterior temporal atrophy for FTLD','6i.','2015-02-26 19:36:52');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3',37,'datscan','6j. Biomarker findings - Dopamine transporter scan (DATscan) evidence for Lewy body disease','','',1,'udsdiagnosis','DATSCAN',37,'smallint','',1,'null','Biomarker findings - Dopamine transporter scan (DATscan) evidence for Lewy body disease','6j.','2015-02-26 19:36:52');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3',38,'othbiom','6k. Biomarker findings - Other','','',1,'udsdiagnosis','OTHBIOM',38,'smallint','',1,'null','Biomarker findings - Other','6k.','2015-02-26 19:36:52');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3',39,'othbiomx','6k1. Biomarker findings - Other (SPECIFY)','','',1,'udsdiagnosis','OTHBIOMX',39,'varchar','60',1,'null','Biomarker findings - Other (SPECIFY)','6k1.','2015-02-26 19:36:52');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3',40,'imaglinf','7a. Imaging findings - Large vessel infarct(s)','','',1,'udsdiagnosis','IMAGLINF',40,'smallint','',1,'null','Imaging findings - Large vessel infarct(s)','7a.','2015-02-26 19:36:52');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3',41,'imaglac','7b. Imaging findings - Lacunar infarct(s)','','',1,'udsdiagnosis','IMAGLAC',41,'smallint','',1,'null','Imaging findings - Lacunar infarct(s)','7b.','2015-02-26 19:36:52');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3',42,'imagmach','7c. Imaging findings - Macrohemorrhage(s)','','',1,'udsdiagnosis','IMAGMACH',42,'smallint','',1,'null','Imaging findings - Macrohemorrhage(s)','7c.','2015-02-26 19:36:52');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3',43,'imagmich','7d. Imaging findings - Microhemorrhage(s)','','',1,'udsdiagnosis','IMAGMICH',43,'smallint','',1,'null','Imaging findings - Microhemorrhage(s)','7d.','2015-02-26 19:36:52');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3',44,'imagmwmh','7e. Imaging findings - Moderate white-matter hyperintensity (CHS score 5-6)','','',1,'udsdiagnosis','IMAGMWMH',44,'smallint','',1,'null','Imaging findings - Moderate white-matter hyperintensity (CHS score 5-6)','7e.','2015-02-26 19:36:52');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3',45,'imagewmh','7f. Imaging findings - Extensive white-matter hyperintensity (CHS score 7-8)','','',1,'udsdiagnosis','IMAGEWMH',45,'smallint','',1,'null','Imaging findings - Extensive white-matter hyperintensity (CHS score 7-8)','7f.','2015-02-26 19:36:52');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3',46,'admut','8. Does the subject have a dominantly inherited AD mutation (PSEN1, PSEN2, APP)?','','',1,'udsdiagnosis','ADMUT',46,'smallint','',1,'null','Does the subject have a dominantly inherited AD mutation (PSEN1, PSEN2, APP)?','8.','2015-02-26 19:36:52');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3',47,'ftldmut','9. Does the subject have a hereditary FTLD mutation (e.g., GRN, VCP, TARBP, FUS, C9orf72, CHMP2B, MAPT)?','','',1,'udsdiagnosis','FTLDMUT',47,'smallint','',1,'null','Does the subject have a hereditary FTLD mutation (e.g., GRN, VCP, TARBP, FUS, C9orf72, CHMP2B, MAPT)?','9.','2015-02-26 19:36:52');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3',48,'othmut','10. Does the subject have a hereditary mutation other than an AD or FTLD mutation?','','',1,'udsdiagnosis','OTHMUT',48,'smallint','',1,'null','Does the subject have a hereditary mutation other than an AD or FTLD mutation?','10.','2015-02-26 19:36:52');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3',49,'othmutx','10a. If yes, specify','','',1,'udsdiagnosis','OTHMUTX',49,'varchar','60',1,'null','If yes, specify','10a.','2015-02-26 19:36:52');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3',50,'alzdis','11. Alzheimer\'s disease','','',1,'udsdiagnosis','ALZDIS',50,'smallint','',1,'null','Alzheimer\'s disease','11.','2015-02-26 19:36:52');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3',51,'alzdisif','11a. Alzheimer\'s disease, primary or contributing','','',1,'udsdiagnosis','ALZDISIF',51,'smallint','',1,'null','Alzheimer\'s disease, primary or contributing','11a.','2015-02-26 19:36:52');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3',52,'lbdis','12. Lewy body disease','','',1,'udsdiagnosis','LBDIS',52,'smallint','',1,'null','Lewy body disease','12.','2015-02-26 19:36:52');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3',53,'lbdif','12a. Lewy body disease, primary or contributing','','',1,'udsdiagnosis','LBDIF',53,'smallint','',1,'null','Lewy body disease, primary or contributing','12a.','2015-02-26 19:36:52');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3',54,'park','12b. Parkinson\'s disease','','',1,'udsdiagnosis','PARK',54,'smallint','',1,'null','Parkinson\'s disease','12b.','2015-02-26 19:36:52');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3',55,'msa','13. Multiple system atrophy','','',1,'udsdiagnosis','MSA',55,'smallint','',1,'null','Multiple system atrophy','13.','2015-02-26 19:36:52');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3',56,'msaif','13a. Multiple system atrophy, primary or contributing','','',1,'udsdiagnosis','MSAIF',56,'smallint','',1,'null','Multiple system atrophy, primary or contributing','13a.','2015-02-26 19:36:52');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3',57,'psp','14a. Progressive supranuclear palsy (PSP)','','',1,'udsdiagnosis','PSP',57,'smallint','',1,'null','Progressive supranuclear palsy (PSP)','14a.','2015-02-26 19:36:52');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3',58,'pspIf','14a1. Progressive supranuclear palsy (PSP), primary or contributing','','',1,'udsdiagnosis','PSPIF',58,'smallint','',1,'null','Progressive supranuclear palsy (PSP), primary or contributing','14a1.','2015-02-26 19:36:53');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3',59,'cort','14b. Corticobasal degeneration (CBD)','','',1,'udsdiagnosis','CORT',59,'smallint','',1,'null','Corticobasal degeneration (CBD)','14b.','2015-02-26 19:36:53');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3',60,'cortIf','14b1. Corticobasal degeneration (CBD), primary or contributing','','',1,'udsdiagnosis','CORTIF',60,'smallint','',1,'null','Corticobasal degeneration (CBD), primary or contributing','14b1.','2015-02-26 19:36:53');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3',61,'ftldmo','14c. FTLD with motor neuron disease','','',1,'udsdiagnosis','FTLDMO',61,'smallint','',1,'null','FTLD with motor neuron disease','14c.','2015-02-26 19:36:53');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3',62,'ftldmoif','14c1. FTLD with motor neuron disease, primary or contributing','','',1,'udsdiagnosis','FTLDMOIF',62,'smallint','',1,'null','FTLD with motor neuron disease, primary or contributing','14c1.','2015-02-26 19:36:53');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3',63,'ftldnos','14d. FTLD NOS','','',1,'udsdiagnosis','FTLDNOS',63,'smallint','',1,'null','FTLD NOS','14d.','2015-02-26 19:36:53');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3',64,'ftldnoif','14d1. FTLD NOS, primary or contributing','','',1,'udsdiagnosis','FTLDNOIF',64,'smallint','',1,'null','FTLD NOS, primary or contributing','14d1.','2015-02-26 19:36:53');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3',65,'ftldsubt','14e. If FTLD (Questions 14a - 14d) are Present, specify FTLD subtype','','',1,'udsdiagnosis','FTLDSUBT',65,'smallint','',1,'null','If FTLD (Questions 14a - 14d) are Present, specify FTLD subtype','14e.','2015-02-26 19:36:53');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3',66,'ftldsubx','14e1. Other FTLD, specify','','',1,'udsdiagnosis','FTLDSUBX',66,'varchar','60',1,'null','Other FTLD, specify','14e1.','2015-02-26 19:36:53');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3',67,'cvd','15. Vascular brain injury (based on clinical and imaging evidence)','','',1,'udsdiagnosis','CVD',67,'smallint','',1,'null','Vascular brain injury (based on clinical and imaging evidence)','15.','2015-02-26 19:36:53');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3',68,'cvdif','15a. Vascular brain injury, primary or contributing','','',1,'udsdiagnosis','CVDIF',68,'smallint','',1,'null','Vascular brain injury, primary or contributing','15a.','2015-02-26 19:36:53');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3',69,'prevstk','15b. Previous symptomatic stroke?','','',1,'udsdiagnosis','PREVSTK',69,'smallint','',1,'null','Previous symptomatic stroke?','15b.','2015-02-26 19:36:53');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3',70,'strokdec','15b1. Temporal relationship between stroke and cognitive decline?','','',1,'udsdiagnosis','STROKDEC',70,'smallint','',1,'null','Temporal relationship between stroke and cognitive decline?','15b1.','2015-02-26 19:36:53');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3',71,'stkimag','15b2. Confirmation of stroke by neuroimaging?','','',1,'udsdiagnosis','STKIMAG',71,'smallint','',1,'null','Confirmation of stroke by neuroimaging?','15b2.','2015-02-26 19:36:53');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3',72,'infnetw','15c. Is there imaging evidence of cystic infarction in cognitive network(s)?','','',1,'udsdiagnosis','INFNETW',72,'smallint','',1,'null','Is there imaging evidence of cystic infarction in cognitive network(s)?','15c.','2015-02-26 19:36:53');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3',73,'infwmh','15d. Is there imaging evidence of cystic infarction, imaging evidence of extensive WMH (CHS grade 7-8), and impairment in executive function?','','',1,'udsdiagnosis','INFWMH',73,'smallint','',1,'null','Is there imaging evidence of cystic infarction, imaging evidence of extensive WMH (CHS grade 7-8), and impairment in executive function?','15d.','2015-02-26 19:36:53');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3',74,'esstrem','16. Essential tremor','','',1,'udsdiagnosis','ESSTREM',74,'smallint','',1,'null','Essential tremor','16.','2015-02-26 19:36:53');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3',75,'esstreif','16a. Essential tremor, primary or contributing','','',1,'udsdiagnosis','ESSTREIF',75,'smallint','',1,'null','Essential tremor, primary or contributing','16a.','2015-02-26 19:36:53');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3',76,'downs','17. Down syndrome','','',1,'udsdiagnosis','DOWNS',76,'smallint','',1,'null','Down syndrome','17.','2015-02-26 19:36:53');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3',77,'downsIf','17a. Down syndrome, primary or contributing','','',1,'udsdiagnosis','DOWNSIF',77,'smallint','',1,'null','Down syndrome, primary or contributing','17a.','2015-02-26 19:36:53');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3',78,'hunt','18. Huntington\'s disease','','',1,'udsdiagnosis','HUNT',78,'smallint','',1,'null','Huntington\'s disease','18.','2015-02-26 19:36:53');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3',79,'huntIf','18a. Huntington\'s disease, primary or contributing','','',1,'udsdiagnosis','HUNTIF',79,'smallint','',1,'null','Huntington\'s disease, primary or contributing','18a.','2015-02-26 19:36:53');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3',80,'prion','19. Prion disease (CJD, other)','','',1,'udsdiagnosis','PRION',80,'smallint','',1,'null','Prion disease (CJD, other)','19.','2015-02-26 19:36:53');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3',81,'prionIf','19a. Prion disease (CJD, other), primary or contributing','','',1,'udsdiagnosis','PRIONIF',81,'smallint','',1,'null','Prion disease (CJD, other), primary or contributing','19a.','2015-02-26 19:36:53');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3',82,'brnInj','20. Traumatic brain injury','','',1,'udsdiagnosis','BRNINJ',82,'smallint','',1,'null','Traumatic brain injury','20.','2015-02-26 19:36:53');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3',83,'brnInjIf','20a. Traumatic brain injury, primary or contributing','','',1,'udsdiagnosis','BRNINJIF',83,'smallint','',1,'null','Traumatic brain injury, primary or contributing','20a.','2015-02-26 19:36:53');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3',84,'brnincte','20b. If Present, does the subject have symptoms consistent with chronic traumatic encephalopathy?','','',1,'udsdiagnosis','BRNINCTE',84,'smallint','',1,'null','If Present, does the subject have symptoms consistent with chronic traumatic encephalopathy?','20b.','2015-02-26 19:36:53');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3',85,'hyceph','21. Normal-pressure hydrocephalus','','',1,'udsdiagnosis','HYCEPH',85,'smallint','',1,'null','Normal-pressure hydrocephalus','21.','2015-02-26 19:36:53');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3',86,'hycephIf','21a. Normal-pressure hydrocephalus, primary or contributing','','',1,'udsdiagnosis','HYCEPHIF',86,'smallint','',1,'null','Normal-pressure hydrocephalus, primary or contributing','21a.','2015-02-26 19:36:53');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3',87,'epilep','22. Epilepsy','','',1,'udsdiagnosis','EPILEP',87,'smallint','',1,'null','Epilepsy','22.','2015-02-26 19:36:53');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3',88,'epilepif','22a. Epilepsy, primary or contributing','','',1,'udsdiagnosis','EPILEPIF',88,'smallint','',1,'null','Epilepsy, primary or contributing','22a.','2015-02-26 19:36:53');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3',89,'neop','23. CNS neoplasm','','',1,'udsdiagnosis','NEOP',89,'smallint','',1,'null','CNS neoplasm','23.','2015-02-26 19:36:53');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3',90,'neopIf','23a. CNS neoplasm, primary or contributing','','',1,'udsdiagnosis','NEOPIF',90,'smallint','',1,'null','CNS neoplasm, primary or contributing','23a.','2015-02-26 19:36:53');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3',91,'neopstat','23b. CNS neoplasm, benign or malignant?','','',1,'udsdiagnosis','NEOPSTAT',91,'smallint','',1,'null','CNS neoplasm, benign or malignant?','23b.','2015-02-26 19:36:53');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3',92,'hiv','24. Human immunodeficiency virus (HIV)','','',1,'udsdiagnosis','HIV',92,'smallint','',1,'null','Human immunodeficiency virus (HIV)','24.','2015-02-26 19:36:53');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3',93,'hivif','24a. Human immunodeficiency virus (HIV), primary or contributing','','',1,'udsdiagnosis','HIVIF',93,'smallint','',1,'null','Human immunodeficiency virus (HIV), primary or contributing','24a.','2015-02-26 19:36:53');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3',94,'othcog','25. Cognitive impairment due to other neurologic, genetic, or infectious conditions not listed above','','',1,'udsdiagnosis','OTHCOG',94,'smallint','',1,'null','Cognitive impairment due to other neurologic, genetic, or infectious conditions not listed above','25.','2015-02-26 19:36:53');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3',95,'othcogif','25a. Cognitive impairment due to other neurologic, genetic, or infectious conditions not listed above, primary or contributing','','',1,'udsdiagnosis','OTHCOGIF',95,'smallint','',1,'null','Cognitive impairment due to other neurologic, genetic, or infectious conditions not listed above, primary or contributing','25a.','2015-02-26 19:36:53');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3',96,'othcogx','25b. Cognitive impairment due to other neurologic, genetic, or infectious conditions not listed above - if Present, specify:','','',1,'udsdiagnosis','OTHCOGX',96,'varchar','60',1,'null','Cognitive impairment due to other neurologic, genetic, or infectious conditions not listed above - if Present, specify:','25b.','2015-02-26 19:36:53');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3',97,'dep','26. Active depression','','',1,'udsdiagnosis','DEP',97,'smallint','',1,'null','Active depression','26.','2015-02-26 19:36:53');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3',98,'depIf','26a. Active depression, primary or contributing','','',1,'udsdiagnosis','DEPIF',98,'smallint','',1,'null','Active depression, primary or contributing','26a.','2015-02-26 19:36:53');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3',99,'deptreat','26b. If Present, select one:','','',1,'udsdiagnosis','DEPTREAT',99,'smallint','',1,'null','If Present, select one:','26b.','2015-02-26 19:36:53');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3',100,'bipoldx','27. Bipolar disorder','','',1,'udsdiagnosis','BIPOLDX',100,'smallint','',1,'null','Bipolar disorder','27.','2015-02-26 19:36:53');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3',101,'bipoldif','27a. Bipolar disorder, primary or contributing','','',1,'udsdiagnosis','BIPOLDIF',101,'smallint','',1,'null','Bipolar disorder, primary or contributing','27a.','2015-02-26 19:36:53');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3',102,'schizop','28. Schizophrenia or other psychosis','','',1,'udsdiagnosis','SCHIZOP',102,'smallint','',1,'null','Schizophrenia or other psychosis','28.','2015-02-26 19:36:53');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3',103,'schizoif','28a. Schizophrenia or other psychosis, primary or contributing','','',1,'udsdiagnosis','SCHIZOIF',103,'smallint','',1,'null','Schizophrenia or other psychosis, primary or contributing','28a.','2015-02-26 19:36:53');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3',104,'anxiet','29. Anxiety disorder','','',1,'udsdiagnosis','ANXIET',104,'smallint','',1,'null','Anxiety disorder','29.','2015-02-26 19:36:53');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3',105,'anxietif','29a. Anxiety disorder, primary or contributing','','',1,'udsdiagnosis','ANXIETIF',105,'smallint','',1,'null','Anxiety disorder, primary or contributing','29a.','2015-02-26 19:36:53');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3',106,'delir','30. Delirium','','',1,'udsdiagnosis','DELIR',106,'smallint','',1,'null','Delirium','30.','2015-02-26 19:36:53');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3',107,'delirif','30a. Delirium, primary or contributing','','',1,'udsdiagnosis','DELIRIF',107,'smallint','',1,'null','Delirium, primary or contributing','30a.','2015-02-26 19:36:53');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3',108,'ptsddx','31. Post-traumatic stress disorder (PTSD)','','',1,'udsdiagnosis','PTSDDX',108,'smallint','',1,'null','Post-traumatic stress disorder (PTSD)','31.','2015-02-26 19:36:53');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3',109,'ptsddxif','31a. Post-traumatic stress disorder (PTSD), primary or contributing','','',1,'udsdiagnosis','PTSDDXIF',109,'smallint','',1,'null','Post-traumatic stress disorder (PTSD), primary or contributing','31a.','2015-02-26 19:36:53');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3',110,'othPsy','32. Other psychiatric disease','','',1,'udsdiagnosis','OTHPSY',110,'smallint','',1,'null','Other psychiatric disease','32.','2015-02-26 19:36:53');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3',111,'othPsyIf','32a. Other psychiatric disease, primary or contributing','','',1,'udsdiagnosis','OTHPSYIF',111,'smallint','',1,'null','Other psychiatric disease, primary or contributing','32a.','2015-02-26 19:36:53');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3',112,'othpsyx','32b. Other psychiatric disease - if Present, specify:','','',1,'udsdiagnosis','OTHPSYX',112,'varchar','60',1,'null','Other psychiatric disease - if Present, specify:','32b.','2015-02-26 19:36:53');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3',113,'alcDem','33. Cognitive impairment due to alcohol abuse','','',1,'udsdiagnosis','ALCDEM',113,'smallint','',1,'null','Cognitive impairment due to alcohol abuse','33.','2015-02-26 19:36:53');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3',114,'alcDemIf','33a. Cognitive impairment due to alcohol abuse, primary or contributing','','',1,'udsdiagnosis','ALCDEMIF',114,'smallint','',1,'null','Cognitive impairment due to alcohol abuse, primary or contributing','33a.','2015-02-26 19:36:53');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3',115,'alcabuse','33b. Current alcohol abuse:','','',1,'udsdiagnosis','ALCABUSE',115,'smallint','',1,'null','Current alcohol abuse:','33b.','2015-02-26 19:36:53');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3',116,'impsub','34. Cognitive impairment due to other substance abuse','','',1,'udsdiagnosis','IMPSUB',116,'smallint','',1,'null','Cognitive impairment due to other substance abuse','34.','2015-02-26 19:36:53');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3',117,'impsubif','34a. Cognitive impairment due to other substance abuse, primary or contributing','','',1,'udsdiagnosis','IMPSUBIF',117,'smallint','',1,'null','Cognitive impairment due to other substance abuse, primary or contributing','34a.','2015-02-26 19:36:53');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3',118,'dysIll','35. Cognitive impairment due to systemic disease/medical illness (as indicated on Form D2)','','',1,'udsdiagnosis','DYSILL',118,'smallint','',1,'null','Cognitive impairment due to systemic disease/medical illness (as indicated on Form D2)','35.','2015-02-26 19:36:53');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3',119,'dysIllIf','35a. Cognitive impairment due to systemic disease/medical illness, primary or contributing','','',1,'udsdiagnosis','DYSILLIF',119,'smallint','',1,'null','Cognitive impairment due to systemic disease/medical illness, primary or contributing','35a.','2015-02-26 19:36:53');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3',120,'meds','36. Cognitive impairment due to medications','','',1,'udsdiagnosis','MEDS',120,'smallint','',1,'null','Cognitive impairment due to medications','36.','2015-02-26 19:36:53');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3',121,'medsIf','36a. Cognitive impairment due to medications, primary or contributing','','',1,'udsdiagnosis','MEDSIF',121,'smallint','',1,'null','Cognitive impairment due to medications, primary or contributing','36a.','2015-02-26 19:36:53');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3',122,'cogOth','37. Cognitive impairment NOS','','',1,'udsdiagnosis','COGOTH',122,'smallint','',1,'null','Cognitive impairment NOS','37.','2015-02-26 19:36:53');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3',123,'cogOthIf','37a. Cognitive impairment NOS, primary or contributing','','',1,'udsdiagnosis','COGOTHIF',123,'smallint','',1,'null','Cognitive impairment NOS, primary or contributing','37a.','2015-02-26 19:36:53');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3',124,'cogOthx','37b. Cognitive impairment NOS - if Present, specify:','','',1,'udsdiagnosis','COGOTHX',124,'varchar','60',1,'null','Cognitive impairment NOS - if Present, specify:','37b.','2015-02-26 19:36:53');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3',125,'cogOth2','38. Cognitive impairment NOS','','',1,'udsdiagnosis','COGOTH2',125,'smallint','',1,'null','Cognitive impairment NOS','38.','2015-02-26 19:36:53');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3',126,'cogOth2If','38a. Cognitive impairment NOS, primary or contributing','','',1,'udsdiagnosis','COGOTH2IF',126,'smallint','',1,'null','Cognitive impairment NOS, primary or contributing','38a.','2015-02-26 19:36:53');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3',127,'cogOth2x','38b. Cognitive impairment NOS - if Present, specify:','','',1,'udsdiagnosis','COGOTH2X',127,'varchar','60',1,'null','Cognitive impairment NOS - if Present, specify:','38b.','2015-02-26 19:36:53');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3',128,'cogOth3','39. Cognitive impairment NOS','','',1,'udsdiagnosis','COGOTH3',128,'smallint','',1,'null','Cognitive impairment NOS','39.','2015-02-26 19:36:53');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3',129,'cogOth3If','39a. Cognitive impairment NOS, primary or contributing','','',1,'udsdiagnosis','COGOTH3IF',129,'smallint','',1,'null','Cognitive impairment NOS, primary or contributing','39a.','2015-02-26 19:36:53');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3',130,'cogOth3x','39b. Cognitive impairment NOS - if Present, specify:','','',1,'udsdiagnosis','COGOTH3X',130,'varchar','60',1,'null','Cognitive impairment NOS - if Present, specify:','39b.','2015-02-26 19:36:53');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsdiagnosis3.dxmethod','en','lava','crms-nacc',NULL,'udsdiagnosis3','dxmethod',NULL,'r','scale','Yes','Diagnosis method - Responses in this form are based on diagnosis by:','1.',NULL,40,0,NULL,'uds.d1.dxmethod',NULL,1,'1. Diagnosis method - Responses in this form are based on diagnosis by:','2015-02-26 20:59:06');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsdiagnosis3.normCog','en','lava','crms-nacc',NULL,'udsdiagnosis3','normCog',NULL,'r','scale','Yes','Does the subject have normal cognition (global CDR=0 and/or neuropsychological testing withing normal range) and normal behavior (i.e., the subject does not exhibit behavior sufficient to diagnose MCI or dementia due to FTLD or LBD)?','2.',NULL,40,0,NULL,'uds.noYes01',NULL,2,'2. Does the subject have normal cognition (global CDR=0 and/or neuropsychological testing withing normal range) and normal behavior (i.e., the subject does not exhibit behavior sufficient to diagnose MCI or dementia due to FTLD or LBD)?','2015-02-26 20:59:06');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsdiagnosis3.demented','en','lava','crms-nacc',NULL,'udsdiagnosis3','demented',NULL,'r','scale','Yes','Does the subject meet criteria for dementia?','3.',NULL,40,0,NULL,'uds.noYes01',NULL,3,'3. Does the subject meet criteria for dementia?','2015-02-26 20:59:06');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsdiagnosis3.amndem','en','lava','crms-nacc',NULL,'udsdiagnosis3','amndem',NULL,'r','scale','Yes','Amnestic multidomain dementia syndrome','4a.',NULL,40,0,NULL,'uds.d1.presAb',NULL,4,'4a. Amnestic multidomain dementia syndrome','2015-02-26 20:59:06');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsdiagnosis3.pca','en','lava','crms-nacc',NULL,'udsdiagnosis3','pca',NULL,'r','scale','Yes','Posterior cortical atrophy syndrome (or primary visual presentation)','4b.',NULL,40,0,NULL,'uds.d1.presAb',NULL,5,'4b. Posterior cortical atrophy syndrome (or primary visual presentation)','2015-02-26 20:59:06');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsdiagnosis3.ppasyn','en','lava','crms-nacc',NULL,'udsdiagnosis3','ppasyn',NULL,'r','scale','Yes','Primary progressive aphasia (PPA) syndrome','4c.',NULL,40,0,NULL,'uds.d1.presAb',NULL,6,'4c. Primary progressive aphasia (PPA) syndrome','2015-02-26 20:59:06');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsdiagnosis3.ppasynt','en','lava','crms-nacc',NULL,'udsdiagnosis3','ppasynt',NULL,'r','scale','Yes','If PPA present','',NULL,40,0,NULL,'uds.d1.ppasynt',NULL,7,'4c1. If PPA present','2015-02-26 20:59:06');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsdiagnosis3.ftdsyn','en','lava','crms-nacc',NULL,'udsdiagnosis3','ftdsyn',NULL,'r','scale','Yes','Behavioral variant FTD (bvFTD) syndrome','4d.',NULL,40,0,NULL,'uds.d1.presAb',NULL,8,'4d. Behavioral variant FTD (bvFTD) syndrome','2015-02-26 20:59:06');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsdiagnosis3.lbdsyn','en','lava','crms-nacc',NULL,'udsdiagnosis3','lbdsyn',NULL,'r','scale','Yes','Lewy body dementia syndrome','4e.',NULL,40,0,NULL,'uds.d1.presAb',NULL,9,'4e. Lewy body dementia syndrome','2015-02-26 20:59:06');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsdiagnosis3.namndem','en','lava','crms-nacc',NULL,'udsdiagnosis3','namndem',NULL,'r','scale','Yes','Non-amnestic multidomain dementia, not PCA, PPA, bvFTD, or DLB syndrome','4f.',NULL,40,0,NULL,'uds.d1.presAb',NULL,10,'4f. Non-amnestic multidomain dementia, not PCA, PPA, bvFTD, or DLB syndrome','2015-02-26 20:59:06');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsdiagnosis3.mciaMem','en','lava','crms-nacc',NULL,'udsdiagnosis3','mciaMem',NULL,'r','scale','Yes','Amnestic MCI, single domain (aMCI SD)','5a.',NULL,40,0,NULL,'uds.d1.presAb',NULL,11,'5a. Amnestic MCI, single domain (aMCI SD)','2015-02-26 20:59:06');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsdiagnosis3.mciaPlus','en','lava','crms-nacc',NULL,'udsdiagnosis3','mciaPlus',NULL,'r','scale','Yes','Amnestic MCI, multiple domains (aMCI MD)','5b.',NULL,40,0,NULL,'uds.d1.presAb',NULL,12,'5b. Amnestic MCI, multiple domains (aMCI MD)','2015-02-26 20:59:06');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsdiagnosis3.mciaPLan','en','lava','crms-nacc',NULL,'udsdiagnosis3','mciaPLan',NULL,'r','scale','Yes','1. Language','',NULL,40,0,NULL,'uds.noYes01',NULL,13,'5b1. Amnestic MCI, multiple domains - Language','2015-02-26 20:59:06');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsdiagnosis3.mciaPAtt','en','lava','crms-nacc',NULL,'udsdiagnosis3','mciaPAtt',NULL,'r','scale','Yes','2. Attention','',NULL,40,0,NULL,'uds.noYes01',NULL,14,'5b2. Amnestic MCI, multiple domains - Attention','2015-02-26 20:59:06');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsdiagnosis3.mciaPEx','en','lava','crms-nacc',NULL,'udsdiagnosis3','mciaPEx',NULL,'r','scale','Yes','3. Executive','',NULL,40,0,NULL,'uds.noYes01',NULL,15,'5b3. Amnestic MCI, multiple domains - Executive','2015-02-26 20:59:06');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsdiagnosis3.mciaPVis','en','lava','crms-nacc',NULL,'udsdiagnosis3','mciaPVis',NULL,'r','scale','Yes','4. Visuospatial','',NULL,40,0,NULL,'uds.noYes01',NULL,16,'5b4. Amnestic MCI, multiple domains - Visuospatial','2015-02-26 20:59:06');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsdiagnosis3.mciNon1','en','lava','crms-nacc',NULL,'udsdiagnosis3','mciNon1',NULL,'r','scale','Yes','Non-amnestic MCI, single domain (naMCI SD)','5c.',NULL,40,0,NULL,'uds.d1.presAb',NULL,17,'5c. Non-amnestic MCI, single domain (naMCI SD)','2015-02-26 20:59:06');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsdiagnosis3.mciN1Lan','en','lava','crms-nacc',NULL,'udsdiagnosis3','mciN1Lan',NULL,'r','scale','Yes','1. Language','',NULL,40,0,NULL,'uds.noYes01',NULL,18,'5c1. Non-amnestic MCI, single domain - Language','2015-02-26 20:59:06');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsdiagnosis3.mciN1Att','en','lava','crms-nacc',NULL,'udsdiagnosis3','mciN1Att',NULL,'r','scale','Yes','2. Attention','',NULL,40,0,NULL,'uds.noYes01',NULL,19,'5c2. Non-amnestic MCI, single domain - Attention','2015-02-26 20:59:06');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsdiagnosis3.mciN1Ex','en','lava','crms-nacc',NULL,'udsdiagnosis3','mciN1Ex',NULL,'r','scale','Yes','3. Executive','',NULL,40,0,NULL,'uds.noYes01',NULL,20,'5c3. Non-amnestic MCI, single domain - Executive','2015-02-26 20:59:06');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsdiagnosis3.mciN1Vis','en','lava','crms-nacc',NULL,'udsdiagnosis3','mciN1Vis',NULL,'r','scale','Yes','4. Visuospatial','',NULL,40,0,NULL,'uds.noYes01',NULL,21,'5c4. Non-amnestic MCI, single domain - Visuospatial','2015-02-26 20:59:06');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsdiagnosis3.mciNon2','en','lava','crms-nacc',NULL,'udsdiagnosis3','mciNon2',NULL,'r','scale','Yes','Non-amnestic MCI, multiple domains (naMCI MD)','5d.',NULL,40,0,NULL,'uds.d1.presAb',NULL,22,'5d. Non-amnestic MCI, multiple domains (naMCI MD)','2015-02-26 20:59:06');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsdiagnosis3.mciN2Lan','en','lava','crms-nacc',NULL,'udsdiagnosis3','mciN2Lan',NULL,'r','scale','Yes','1. Language','',NULL,40,0,NULL,'uds.noYes01',NULL,23,'5d1. Non-amnestic MCI, multiple domains - Language','2015-02-26 20:59:06');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsdiagnosis3.mciN2Att','en','lava','crms-nacc',NULL,'udsdiagnosis3','mciN2Att',NULL,'r','scale','Yes','2. Attention','',NULL,40,0,NULL,'uds.noYes01',NULL,24,'5d2. Non-amnestic MCI, multiple domains - Attention','2015-02-26 20:59:06');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsdiagnosis3.mciN2Ex','en','lava','crms-nacc',NULL,'udsdiagnosis3','mciN2Ex',NULL,'r','scale','Yes','3. Executive','',NULL,40,0,NULL,'uds.noYes01',NULL,25,'5d3. Non-amnestic MCI, multiple domains - Executive','2015-02-26 20:59:06');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsdiagnosis3.mciN2Vis','en','lava','crms-nacc',NULL,'udsdiagnosis3','mciN2Vis',NULL,'r','scale','Yes','4. Visuospatial','',NULL,40,0,NULL,'uds.noYes01',NULL,26,'5d4. Non-amnestic MCI, multiple domains - Visuospatial','2015-02-26 20:59:06');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsdiagnosis3.impNoMci','en','lava','crms-nacc',NULL,'udsdiagnosis3','impNoMci',NULL,'r','scale','Yes','Cognitively impaired, not MCI','5e.',NULL,40,0,NULL,'uds.d1.presAb',NULL,27,'5e. Cognitively impaired, not MCI','2015-02-26 20:59:06');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsdiagnosis3.amylpet','en','lava','crms-nacc',NULL,'udsdiagnosis3','amylpet',NULL,'r','scale','Yes','Biomarker findings - Abnormally elevated amyloid on PET','6a.',NULL,40,0,NULL,'uds.d1.noYesUnknownNotAssessed018',NULL,28,'6a. Biomarker findings - Abnormally elevated amyloid on PET','2015-02-26 20:59:06');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsdiagnosis3.amylcsf','en','lava','crms-nacc',NULL,'udsdiagnosis3','amylcsf',NULL,'r','scale','Yes','Biomarker findings - Abnormally low amyloid in CSF','6b.',NULL,40,0,NULL,'uds.d1.noYesUnknownNotAssessed018',NULL,29,'6b. Biomarker findings - Abnormally low amyloid in CSF','2015-02-26 20:59:06');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsdiagnosis3.fdgad','en','lava','crms-nacc',NULL,'udsdiagnosis3','fdgad',NULL,'r','scale','Yes','Biomarker findings - FDG-PET pattern of AD','6c.',NULL,40,0,NULL,'uds.d1.noYesUnknownNotAssessed018',NULL,30,'6c. Biomarker findings - FDG-PET pattern of AD','2015-02-26 20:59:06');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsdiagnosis3.hippatr','en','lava','crms-nacc',NULL,'udsdiagnosis3','hippatr',NULL,'r','scale','Yes','Biomarker findings - Hippocampal atrophy','6d.',NULL,40,0,NULL,'uds.d1.noYesUnknownNotAssessed018',NULL,31,'6d. Biomarker findings - Hippocampal atrophy','2015-02-26 20:59:06');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsdiagnosis3.taupetad','en','lava','crms-nacc',NULL,'udsdiagnosis3','taupetad',NULL,'r','scale','Yes','Biomarker findings - Tau PET evidence for AD','6e.',NULL,40,0,NULL,'uds.d1.noYesUnknownNotAssessed018',NULL,32,'6e. Biomarker findings - Tau PET evidence for AD','2015-02-26 20:59:06');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsdiagnosis3.csftau','en','lava','crms-nacc',NULL,'udsdiagnosis3','csftau',NULL,'r','scale','Yes','Biomarker findings - Abnormally elevated CSF Tau or pTau','6f.',NULL,40,0,NULL,'uds.d1.noYesUnknownNotAssessed018',NULL,33,'6f. Biomarker findings - Abnormally elevated CSF Tau or pTau','2015-02-26 20:59:06');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsdiagnosis3.fdgftld','en','lava','crms-nacc',NULL,'udsdiagnosis3','fdgftld',NULL,'r','scale','Yes','Biomarker findings - FDG-PET evidence for frontal or anterior temporal hypometabolism for FTLD','6g.',NULL,40,0,NULL,'uds.d1.noYesUnknownNotAssessed018',NULL,34,'6g. Biomarker findings - FDG-PET evidence for frontal or anterior temporal hypometabolism for FTLD','2015-02-26 20:59:06');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsdiagnosis3.tpetftld','en','lava','crms-nacc',NULL,'udsdiagnosis3','tpetftld',NULL,'r','scale','Yes','Biomarker findings - Tau PET evidence for FTLD','6h.',NULL,40,0,NULL,'uds.d1.noYesUnknownNotAssessed018',NULL,35,'6h. Biomarker findings - Tau PET evidence for FTLD','2015-02-26 20:59:06');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsdiagnosis3.mrftld','en','lava','crms-nacc',NULL,'udsdiagnosis3','mrftld',NULL,'r','scale','Yes','Biomarker findings - Structural MR evidence for frontal or anterior temporal atrophy for FTLD','6i.',NULL,40,0,NULL,'uds.d1.noYesUnknownNotAssessed018',NULL,36,'6i. Biomarker findings - Structural MR evidence for frontal or anterior temporal atrophy for FTLD','2015-02-26 20:59:06');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsdiagnosis3.datscan','en','lava','crms-nacc',NULL,'udsdiagnosis3','datscan',NULL,'r','scale','Yes','Biomarker findings - Dopamine transporter scan (DATscan) evidence for Lewy body disease','6j.',NULL,40,0,NULL,'uds.d1.noYesUnknownNotAssessed018',NULL,37,'6j. Biomarker findings - Dopamine transporter scan (DATscan) evidence for Lewy body disease','2015-02-26 20:59:06');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsdiagnosis3.othbiom','en','lava','crms-nacc',NULL,'udsdiagnosis3','othbiom',NULL,'r','scale','Yes','Biomarker findings - Other','6k.',NULL,40,0,NULL,'uds.noYes01',NULL,38,'6k. Biomarker findings - Other','2015-02-26 20:59:06');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsdiagnosis3.othbiomx','en','lava','crms-nacc',NULL,'udsdiagnosis3','othbiomx',NULL,'r','string','Yes','Biomarker findings - Other (SPECIFY)','',60,40,0,'onkeypress="UDS_onlyNaccCharactersAllowed(event)"','',NULL,39,'6k1. Biomarker findings - Other (SPECIFY)','2015-02-26 20:59:06');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsdiagnosis3.imaglinf','en','lava','crms-nacc',NULL,'udsdiagnosis3','imaglinf',NULL,'r','scale','Yes','Imaging findings - Large vessel infarct(s)','7a.',NULL,40,0,NULL,'uds.d1.noYesUnknownNotAssessed018',NULL,40,'7a. Imaging findings - Large vessel infarct(s)','2015-02-26 20:59:06');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsdiagnosis3.imaglac','en','lava','crms-nacc',NULL,'udsdiagnosis3','imaglac',NULL,'r','scale','Yes','Imaging findings - Lacunar infarct(s)','7b.',NULL,40,0,NULL,'uds.d1.noYesUnknownNotAssessed018',NULL,41,'7b. Imaging findings - Lacunar infarct(s)','2015-02-26 20:59:06');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsdiagnosis3.imagmach','en','lava','crms-nacc',NULL,'udsdiagnosis3','imagmach',NULL,'r','scale','Yes','Imaging findings - Macrohemorrhage(s)','7c.',NULL,40,0,NULL,'uds.d1.noYesUnknownNotAssessed018',NULL,42,'7c. Imaging findings - Macrohemorrhage(s)','2015-02-26 20:59:06');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsdiagnosis3.imagmich','en','lava','crms-nacc',NULL,'udsdiagnosis3','imagmich',NULL,'r','scale','Yes','Imaging findings - Microhemorrhage(s)','7d.',NULL,40,0,NULL,'uds.d1.noYesUnknownNotAssessed018',NULL,43,'7d. Imaging findings - Microhemorrhage(s)','2015-02-26 20:59:06');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsdiagnosis3.imagmwmh','en','lava','crms-nacc',NULL,'udsdiagnosis3','imagmwmh',NULL,'r','scale','Yes','Imaging findings - Moderate white-matter hyperintensity (CHS score 5-6)','7e.',NULL,40,0,NULL,'uds.d1.noYesUnknownNotAssessed018',NULL,44,'7e. Imaging findings - Moderate white-matter hyperintensity (CHS score 5-6)','2015-02-26 20:59:06');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsdiagnosis3.imagewmh','en','lava','crms-nacc',NULL,'udsdiagnosis3','imagewmh',NULL,'r','scale','Yes','Imaging findings - Extensive white-matter hyperintensity (CHS score 7-8)','7f.',NULL,40,0,NULL,'uds.d1.noYesUnknownNotAssessed018',NULL,45,'7f. Imaging findings - Extensive white-matter hyperintensity (CHS score 7-8)','2015-02-26 20:59:06');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsdiagnosis3.admut','en','lava','crms-nacc',NULL,'udsdiagnosis3','admut',NULL,'r','scale','Yes','Does the subject have a dominantly inherited AD mutation (PSEN1, PSEN2, APP)?','8.',NULL,40,0,NULL,'uds.d1.noYesUnknownNotAssessed019',NULL,46,'8. Does the subject have a dominantly inherited AD mutation (PSEN1, PSEN2, APP)?','2015-02-26 20:59:06');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsdiagnosis3.ftldmut','en','lava','crms-nacc',NULL,'udsdiagnosis3','ftldmut',NULL,'r','scale','Yes','Does the subject have a hereditary FTLD mutation (e.g., GRN, VCP, TARBP, FUS, C9orf72, CHMP2B, MAPT)?','9.',NULL,40,0,NULL,'uds.d1.noYesUnknownNotAssessed019',NULL,47,'9. Does the subject have a hereditary FTLD mutation (e.g., GRN, VCP, TARBP, FUS, C9orf72, CHMP2B, MAPT)?','2015-02-26 20:59:06');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsdiagnosis3.othmut','en','lava','crms-nacc',NULL,'udsdiagnosis3','othmut',NULL,'r','scale','Yes','Does the subject have a hereditary mutation other than an AD or FTLD mutation?','10.',NULL,40,0,NULL,'uds.d1.noYesUnknownNotAssessed019',NULL,48,'10. Does the subject have a hereditary mutation other than an AD or FTLD mutation?','2015-02-26 20:59:06');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsdiagnosis3.othmutx','en','lava','crms-nacc',NULL,'udsdiagnosis3','othmutx',NULL,'r','string','Yes','If yes, specify','',60,40,0,'onkeypress="UDS_onlyNaccCharactersAllowed(event)"','',NULL,49,'10a. If yes, specify','2015-02-26 20:59:06');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsdiagnosis3.alzdis','en','lava','crms-nacc',NULL,'udsdiagnosis3','alzdis',NULL,'r','scale','Yes','Alzheimer\'s disease','11.',NULL,NULL,0,NULL,'uds.d1.presAb',NULL,50,'11. Alzheimer\'s disease','2015-02-26 20:59:06');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsdiagnosis3.alzdisif','en','lava','crms-nacc',NULL,'udsdiagnosis3','alzdisif',NULL,'r','scale','Yes','If present:','11a.',NULL,NULL,0,NULL,'uds.d1.ifPres',NULL,51,'11a. Alzheimer\'s disease, primary or contributing','2015-02-26 20:59:06');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsdiagnosis3.lbdis','en','lava','crms-nacc',NULL,'udsdiagnosis3','lbdis',NULL,'r','scale','Yes','Lewy body disease','12.',NULL,NULL,0,NULL,'uds.d1.presAb',NULL,52,'12. Lewy body disease','2015-02-26 20:59:06');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsdiagnosis3.lbdif','en','lava','crms-nacc',NULL,'udsdiagnosis3','lbdif',NULL,'r','scale','Yes','If present:','12a.',NULL,NULL,0,NULL,'uds.d1.ifPres',NULL,53,'12a. Lewy body disease, primary or contributing','2015-02-26 20:59:06');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsdiagnosis3.park','en','lava','crms-nacc',NULL,'udsdiagnosis3','park',NULL,'r','scale','Yes','b. Parkinson\'s disease','',NULL,NULL,0,NULL,'uds.d1.presAb',NULL,54,'12b. Parkinson\'s disease','2015-02-26 20:59:06');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsdiagnosis3.msa','en','lava','crms-nacc',NULL,'udsdiagnosis3','msa',NULL,'r','scale','Yes','Multiple system atrophy','13.',NULL,NULL,0,NULL,'uds.d1.presAb',NULL,55,'13. Multiple system atrophy','2015-02-26 20:59:06');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsdiagnosis3.msaif','en','lava','crms-nacc',NULL,'udsdiagnosis3','msaif',NULL,'r','scale','Yes','If present:','13a.',NULL,NULL,0,NULL,'uds.d1.ifPres',NULL,56,'13a. Multiple system atrophy, primary or contributing','2015-02-26 20:59:06');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsdiagnosis3.psp','en','lava','crms-nacc',NULL,'udsdiagnosis3','psp',NULL,'r','scale','Yes','Progressive supranuclear palsy (PSP)','14a.',NULL,NULL,0,NULL,'uds.d1.presAb',NULL,57,'14a. Progressive supranuclear palsy (PSP)','2015-02-26 20:59:06');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsdiagnosis3.pspIf','en','lava','crms-nacc',NULL,'udsdiagnosis3','pspIf',NULL,'r','scale','Yes','If present:','14a1.',NULL,NULL,0,NULL,'uds.d1.ifPres',NULL,58,'14a1. Progressive supranuclear palsy (PSP), primary or contributing','2015-02-26 20:59:06');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsdiagnosis3.cort','en','lava','crms-nacc',NULL,'udsdiagnosis3','cort',NULL,'r','scale','Yes','Corticobasal degeneration (CBD)','14b.',NULL,NULL,0,NULL,'uds.d1.presAb',NULL,59,'14b. Corticobasal degeneration (CBD)','2015-02-26 20:59:06');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsdiagnosis3.cortIf','en','lava','crms-nacc',NULL,'udsdiagnosis3','cortIf',NULL,'r','scale','Yes','If present:','14b1.',NULL,NULL,0,NULL,'uds.d1.ifPres',NULL,60,'14b1. Corticobasal degeneration (CBD), primary or contributing','2015-02-26 20:59:06');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsdiagnosis3.ftldmo','en','lava','crms-nacc',NULL,'udsdiagnosis3','ftldmo',NULL,'r','scale','Yes','FTLD with motor neuron disease','14c.',NULL,NULL,0,NULL,'uds.d1.presAb',NULL,61,'14c. FTLD with motor neuron disease','2015-02-26 20:59:06');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsdiagnosis3.ftldmoif','en','lava','crms-nacc',NULL,'udsdiagnosis3','ftldmoif',NULL,'r','scale','Yes','If present:','14c1.',NULL,NULL,0,NULL,'uds.d1.ifPres',NULL,62,'14c1. FTLD with motor neuron disease, primary or contributing','2015-02-26 20:59:06');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsdiagnosis3.ftldnos','en','lava','crms-nacc',NULL,'udsdiagnosis3','ftldnos',NULL,'r','scale','Yes','FTLD NOS','14d.',NULL,NULL,0,NULL,'uds.d1.presAb',NULL,63,'14d. FTLD NOS','2015-02-26 20:59:06');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsdiagnosis3.ftldnoif','en','lava','crms-nacc',NULL,'udsdiagnosis3','ftldnoif',NULL,'r','scale','Yes','If present:','14d1.',NULL,NULL,0,NULL,'uds.d1.ifPres',NULL,64,'14d1. FTLD NOS, primary or contributing','2015-02-26 20:59:06');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsdiagnosis3.ftldsubt','en','lava','crms-nacc',NULL,'udsdiagnosis3','ftldsubt',NULL,'r','scale','Yes','If FTLD (Questions 14a - 14d) are Present, specify FTLD subtype','14e.',NULL,NULL,0,NULL,'uds.d1.ftldsubt',NULL,65,'14e. If FTLD (Questions 14a - 14d) are Present, specify FTLD subtype','2015-02-26 20:59:06');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsdiagnosis3.ftldsubx','en','lava','crms-nacc',NULL,'udsdiagnosis3','ftldsubx',NULL,'r','string','Yes','Other FTLD, specify','',60,NULL,0,'onkeypress="UDS_onlyNaccCharactersAllowed(event)"','',NULL,66,'14e1. Other FTLD, specify','2015-02-26 20:59:06');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsdiagnosis3.cvd','en','lava','crms-nacc',NULL,'udsdiagnosis3','cvd',NULL,'r','scale','Yes','Vascular brain injury (based on clinical and imaging evidence)','15.',NULL,NULL,0,NULL,'uds.d1.presAb',NULL,67,'15. Vascular brain injury (based on clinical and imaging evidence)','2015-02-26 20:59:06');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsdiagnosis3.cvdif','en','lava','crms-nacc',NULL,'udsdiagnosis3','cvdif',NULL,'r','scale','Yes','If present:','15a.',NULL,NULL,0,NULL,'uds.d1.ifPres',NULL,68,'15a. Vascular brain injury, primary or contributing','2015-02-26 20:59:06');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsdiagnosis3.prevstk','en','lava','crms-nacc',NULL,'udsdiagnosis3','prevstk',NULL,'r','scale','Yes','b. Previous symptomatic stroke?','',NULL,NULL,0,NULL,'uds.noYes01',NULL,69,'15b. Previous symptomatic stroke?','2015-02-26 20:59:06');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsdiagnosis3.strokdec','en','lava','crms-nacc',NULL,'udsdiagnosis3','strokdec',NULL,'r','scale','Yes','b1. Temporal relationship between stroke and cognitive decline?','',NULL,NULL,0,NULL,'uds.noYes01',NULL,70,'15b1. Temporal relationship between stroke and cognitive decline?','2015-02-26 20:59:06');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsdiagnosis3.stkimag','en','lava','crms-nacc',NULL,'udsdiagnosis3','stkimag',NULL,'r','scale','Yes','b2. Confirmation of stroke by neuroimaging?','',NULL,NULL,0,NULL,'uds.d1.noYesUnknownNoImaging019',NULL,71,'15b2. Confirmation of stroke by neuroimaging?','2015-02-26 20:59:06');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsdiagnosis3.infnetw','en','lava','crms-nacc',NULL,'udsdiagnosis3','infnetw',NULL,'r','scale','Yes','c. Is there imaging evidence of cystic infarction in cognitive network(s)?','',NULL,NULL,0,NULL,'uds.d1.noYesUnknownNoImaging019',NULL,72,'15c. Is there imaging evidence of cystic infarction in cognitive network(s)?','2015-02-26 20:59:06');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsdiagnosis3.infwmh','en','lava','crms-nacc',NULL,'udsdiagnosis3','infwmh',NULL,'r','scale','Yes','d. Is there imaging evidence of cystic infarction, imaging evidence of extensive WMH (CHS grade 7-8), and impairment in executive function?','',NULL,NULL,0,NULL,'uds.d1.noYesUnknownNoImaging019',NULL,73,'15d. Is there imaging evidence of cystic infarction, imaging evidence of extensive WMH (CHS grade 7-8), and impairment in executive function?','2015-02-26 20:59:06');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsdiagnosis3.esstrem','en','lava','crms-nacc',NULL,'udsdiagnosis3','esstrem',NULL,'r','scale','Yes','Essential tremor','16.',NULL,NULL,0,NULL,'uds.d1.presAb',NULL,74,'16. Essential tremor','2015-02-26 20:59:06');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsdiagnosis3.esstreif','en','lava','crms-nacc',NULL,'udsdiagnosis3','esstreif',NULL,'r','scale','Yes','If present:','16a.',NULL,NULL,0,NULL,'uds.d1.ifPres',NULL,75,'16a. Essential tremor, primary or contributing','2015-02-26 20:59:06');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsdiagnosis3.downs','en','lava','crms-nacc',NULL,'udsdiagnosis3','downs',NULL,'r','scale','Yes','Down syndrome','17.',NULL,NULL,0,NULL,'uds.d1.presAb',NULL,76,'17. Down syndrome','2015-02-26 20:59:06');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsdiagnosis3.downsIf','en','lava','crms-nacc',NULL,'udsdiagnosis3','downsIf',NULL,'r','scale','Yes','If present:','17a.',NULL,NULL,0,NULL,'uds.d1.ifPres',NULL,77,'17a. Down syndrome, primary or contributing','2015-02-26 20:59:06');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsdiagnosis3.hunt','en','lava','crms-nacc',NULL,'udsdiagnosis3','hunt',NULL,'r','scale','Yes','Huntington\'s disease','18.',NULL,NULL,0,NULL,'uds.d1.presAb',NULL,78,'18. Huntington\'s disease','2015-02-26 20:59:06');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsdiagnosis3.huntIf','en','lava','crms-nacc',NULL,'udsdiagnosis3','huntIf',NULL,'r','scale','Yes','If present:','18a.',NULL,NULL,0,NULL,'uds.d1.ifPres',NULL,79,'18a. Huntington\'s disease, primary or contributing','2015-02-26 20:59:06');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsdiagnosis3.prion','en','lava','crms-nacc',NULL,'udsdiagnosis3','prion',NULL,'r','scale','Yes','Prion disease (CJD, other)','19.',NULL,NULL,0,NULL,'uds.d1.presAb',NULL,80,'19. Prion disease (CJD, other)','2015-02-26 20:59:06');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsdiagnosis3.prionIf','en','lava','crms-nacc',NULL,'udsdiagnosis3','prionIf',NULL,'r','scale','Yes','If present:','19a.',NULL,NULL,0,NULL,'uds.d1.ifPres',NULL,81,'19a. Prion disease (CJD, other), primary or contributing','2015-02-26 20:59:06');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsdiagnosis3.brnInj','en','lava','crms-nacc',NULL,'udsdiagnosis3','brnInj',NULL,'r','scale','Yes','Traumatic brain injury','20.',NULL,NULL,0,NULL,'uds.d1.presAb',NULL,82,'20. Traumatic brain injury','2015-02-26 20:59:06');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsdiagnosis3.brnInjIf','en','lava','crms-nacc',NULL,'udsdiagnosis3','brnInjIf',NULL,'r','scale','Yes','If present:','20a.',NULL,NULL,0,NULL,'uds.d1.ifPres',NULL,83,'20a. Traumatic brain injury, primary or contributing','2015-02-26 20:59:06');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsdiagnosis3.brnincte','en','lava','crms-nacc',NULL,'udsdiagnosis3','brnincte',NULL,'r','scale','Yes','If Present, does the subject have symptoms consistent with chronic traumatic encephalopathy?','',NULL,NULL,0,NULL,'uds.d1.noYesUnknownNotAssessed019',NULL,84,'20b. If Present, does the subject have symptoms consistent with chronic traumatic encephalopathy?','2015-02-26 20:59:06');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsdiagnosis3.hyceph','en','lava','crms-nacc',NULL,'udsdiagnosis3','hyceph',NULL,'r','scale','Yes','Normal-pressure hydrocephalus','21.',NULL,NULL,0,NULL,'uds.d1.presAb',NULL,85,'21. Normal-pressure hydrocephalus','2015-02-26 20:59:06');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsdiagnosis3.hycephIf','en','lava','crms-nacc',NULL,'udsdiagnosis3','hycephIf',NULL,'r','scale','Yes','If present:','21a.',NULL,NULL,0,NULL,'uds.d1.ifPres',NULL,86,'21a. Normal-pressure hydrocephalus, primary or contributing','2015-02-26 20:59:06');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsdiagnosis3.epilep','en','lava','crms-nacc',NULL,'udsdiagnosis3','epilep',NULL,'r','scale','Yes','Epilepsy','22.',NULL,NULL,0,NULL,'uds.d1.presAb',NULL,87,'22. Epilepsy','2015-02-26 20:59:06');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsdiagnosis3.epilepif','en','lava','crms-nacc',NULL,'udsdiagnosis3','epilepif',NULL,'r','scale','Yes','If present:','22a.',NULL,NULL,0,NULL,'uds.d1.ifPres',NULL,88,'22a. Epilepsy, primary or contributing','2015-02-26 20:59:06');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsdiagnosis3.neop','en','lava','crms-nacc',NULL,'udsdiagnosis3','neop',NULL,'r','scale','Yes','CNS neoplasm','23.',NULL,NULL,0,NULL,'uds.d1.presAb',NULL,89,'23. CNS neoplasm','2015-02-26 20:59:06');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsdiagnosis3.neopIf','en','lava','crms-nacc',NULL,'udsdiagnosis3','neopIf',NULL,'r','scale','Yes','If present:','23a.',NULL,NULL,0,NULL,'uds.d1.ifPres',NULL,90,'23a. CNS neoplasm, primary or contributing','2015-02-26 20:59:06');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsdiagnosis3.neopstat','en','lava','crms-nacc',NULL,'udsdiagnosis3','neopstat',NULL,'r','scale','Yes','CNS neoplasm, benign or malignant?','',NULL,NULL,0,NULL,'uds.d1.neopstat',NULL,91,'23b. CNS neoplasm, benign or malignant?','2015-02-26 20:59:06');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsdiagnosis3.hiv','en','lava','crms-nacc',NULL,'udsdiagnosis3','hiv',NULL,'r','scale','Yes','Human immunodeficiency virus (HIV)','24.',NULL,NULL,0,NULL,'uds.d1.presAb',NULL,92,'24. Human immunodeficiency virus (HIV)','2015-02-26 20:59:06');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsdiagnosis3.hivif','en','lava','crms-nacc',NULL,'udsdiagnosis3','hivif',NULL,'r','scale','Yes','If present:','24a.',NULL,NULL,0,NULL,'uds.d1.ifPres',NULL,93,'24a. Human immunodeficiency virus (HIV), primary or contributing','2015-02-26 20:59:06');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsdiagnosis3.othcog','en','lava','crms-nacc',NULL,'udsdiagnosis3','othcog',NULL,'r','scale','Yes','Cognitive impairment due to other neurologic, genetic, or infectious conditions not listed above','25.',NULL,NULL,0,NULL,'uds.d1.presAb',NULL,94,'25. Cognitive impairment due to other neurologic, genetic, or infectious conditions not listed above','2015-02-26 20:59:06');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsdiagnosis3.othcogif','en','lava','crms-nacc',NULL,'udsdiagnosis3','othcogif',NULL,'r','scale','Yes','If present:','25a.',NULL,NULL,0,NULL,'uds.d1.ifPres',NULL,95,'25a. Cognitive impairment due to other neurologic, genetic, or infectious conditions not listed above, primary or contributing','2015-02-26 20:59:06');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsdiagnosis3.othcogx','en','lava','crms-nacc',NULL,'udsdiagnosis3','othcogx',NULL,'r','string','Yes','If Present, specify:','',60,NULL,0,'onkeypress="UDS_onlyNaccCharactersAllowed(event)"','',NULL,96,'25b. Cognitive impairment due to other neurologic, genetic, or infectious conditions not listed above - if Present, specify:','2015-02-26 20:59:06');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsdiagnosis3.dep','en','lava','crms-nacc',NULL,'udsdiagnosis3','dep',NULL,'r','scale','Yes','Active depression','26.',NULL,NULL,0,NULL,'uds.d1.presAb',NULL,97,'26. Active depression','2015-02-26 20:59:06');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsdiagnosis3.depIf','en','lava','crms-nacc',NULL,'udsdiagnosis3','depIf',NULL,'r','scale','Yes','If present:','26a.',NULL,NULL,0,NULL,'uds.d1.ifPres',NULL,98,'26a. Active depression, primary or contributing','2015-02-26 20:59:06');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsdiagnosis3.deptreat','en','lava','crms-nacc',NULL,'udsdiagnosis3','deptreat',NULL,'r','scale','Yes','If Present, select one:','',NULL,NULL,0,NULL,'uds.d1.deptreat',NULL,99,'26b. If Present, select one:','2015-02-26 20:59:06');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsdiagnosis3.bipoldx','en','lava','crms-nacc',NULL,'udsdiagnosis3','bipoldx',NULL,'r','scale','Yes','Bipolar disorder','27.',NULL,NULL,0,NULL,'uds.d1.presAb',NULL,100,'27. Bipolar disorder','2015-02-26 20:59:06');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsdiagnosis3.bipoldif','en','lava','crms-nacc',NULL,'udsdiagnosis3','bipoldif',NULL,'r','scale','Yes','If present:','27a.',NULL,NULL,0,NULL,'uds.d1.ifPres',NULL,101,'27a. Bipolar disorder, primary or contributing','2015-02-26 20:59:06');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsdiagnosis3.schizop','en','lava','crms-nacc',NULL,'udsdiagnosis3','schizop',NULL,'r','scale','Yes','Schizophrenia or other psychosis','28.',NULL,NULL,0,NULL,'uds.d1.presAb',NULL,102,'28. Schizophrenia or other psychosis','2015-02-26 20:59:06');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsdiagnosis3.schizoif','en','lava','crms-nacc',NULL,'udsdiagnosis3','schizoif',NULL,'r','scale','Yes','If present:','28a.',NULL,NULL,0,NULL,'uds.d1.ifPres',NULL,103,'28a. Schizophrenia or other psychosis, primary or contributing','2015-02-26 20:59:06');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsdiagnosis3.anxiet','en','lava','crms-nacc',NULL,'udsdiagnosis3','anxiet',NULL,'r','scale','Yes','Anxiety disorder','29.',NULL,NULL,0,NULL,'uds.d1.presAb',NULL,104,'29. Anxiety disorder','2015-02-26 20:59:06');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsdiagnosis3.anxietif','en','lava','crms-nacc',NULL,'udsdiagnosis3','anxietif',NULL,'r','scale','Yes','If present:','29a.',NULL,NULL,0,NULL,'uds.d1.ifPres',NULL,105,'29a. Anxiety disorder, primary or contributing','2015-02-26 20:59:06');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsdiagnosis3.delir','en','lava','crms-nacc',NULL,'udsdiagnosis3','delir',NULL,'r','scale','Yes','Delirium','30.',NULL,NULL,0,NULL,'uds.d1.presAb',NULL,106,'30. Delirium','2015-02-26 20:59:06');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsdiagnosis3.delirif','en','lava','crms-nacc',NULL,'udsdiagnosis3','delirif',NULL,'r','scale','Yes','If present:','30a.',NULL,NULL,0,NULL,'uds.d1.ifPres',NULL,107,'30a. Delirium, primary or contributing','2015-02-26 20:59:06');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsdiagnosis3.ptsddx','en','lava','crms-nacc',NULL,'udsdiagnosis3','ptsddx',NULL,'r','scale','Yes','Post-traumatic stress disorder (PTSD)','31.',NULL,NULL,0,NULL,'uds.d1.presAb',NULL,108,'31. Post-traumatic stress disorder (PTSD)','2015-02-26 20:59:06');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsdiagnosis3.ptsddxif','en','lava','crms-nacc',NULL,'udsdiagnosis3','ptsddxif',NULL,'r','scale','Yes','If present:','31a.',NULL,NULL,0,NULL,'uds.d1.ifPres',NULL,109,'31a. Post-traumatic stress disorder (PTSD), primary or contributing','2015-02-26 20:59:06');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsdiagnosis3.othPsy','en','lava','crms-nacc',NULL,'udsdiagnosis3','othPsy',NULL,'r','scale','Yes','Other psychiatric disease','32.',NULL,NULL,0,NULL,'uds.d1.presAb',NULL,110,'32. Other psychiatric disease','2015-02-26 20:59:06');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsdiagnosis3.othPsyIf','en','lava','crms-nacc',NULL,'udsdiagnosis3','othPsyIf',NULL,'r','scale','Yes','If present:','32a.',NULL,NULL,0,NULL,'uds.d1.ifPres',NULL,111,'32a. Other psychiatric disease, primary or contributing','2015-02-26 20:59:06');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsdiagnosis3.othpsyx','en','lava','crms-nacc',NULL,'udsdiagnosis3','othpsyx',NULL,'r','string','Yes','Other psychiatric disease - if Present, specify:','',60,NULL,0,'onkeypress="UDS_onlyNaccCharactersAllowed(event)"','',NULL,112,'32b. Other psychiatric disease - if Present, specify:','2015-02-26 20:59:06');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsdiagnosis3.alcDem','en','lava','crms-nacc',NULL,'udsdiagnosis3','alcDem',NULL,'r','scale','Yes','Cognitive impairment due to alcohol abuse','33.',NULL,NULL,0,NULL,'uds.d1.presAb',NULL,113,'33. Cognitive impairment due to alcohol abuse','2015-02-26 20:59:06');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsdiagnosis3.alcDemIf','en','lava','crms-nacc',NULL,'udsdiagnosis3','alcDemIf',NULL,'r','scale','Yes','If present:','33a.',NULL,NULL,0,NULL,'uds.d1.ifPresSht',NULL,114,'33a. Cognitive impairment due to alcohol abuse, primary or contributing','2015-02-26 20:59:06');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsdiagnosis3.alcabuse','en','lava','crms-nacc',NULL,'udsdiagnosis3','alcabuse',NULL,'r','scale','Yes','Current alcohol abuse:','',NULL,NULL,0,NULL,'uds.d1.noYesUnknownNotAssessed019',NULL,115,'33b. Current alcohol abuse:','2015-02-26 20:59:06');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsdiagnosis3.impsub','en','lava','crms-nacc',NULL,'udsdiagnosis3','impsub',NULL,'r','scale','Yes','Cognitive impairment due to other substance abuse','34.',NULL,NULL,0,NULL,'uds.d1.presAb',NULL,116,'34. Cognitive impairment due to other substance abuse','2015-02-26 20:59:06');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsdiagnosis3.impsubif','en','lava','crms-nacc',NULL,'udsdiagnosis3','impsubif',NULL,'r','scale','Yes','If present:','34a.',NULL,NULL,0,NULL,'uds.d1.ifPres',NULL,117,'34a. Cognitive impairment due to other substance abuse, primary or contributing','2015-02-26 20:59:06');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsdiagnosis3.dysIll','en','lava','crms-nacc',NULL,'udsdiagnosis3','dysIll',NULL,'r','scale','Yes','Cognitive impairment due to systemic disease/medical illness (as indicated on Form D2)','35.',NULL,NULL,0,NULL,'uds.d1.presAb',NULL,118,'35. Cognitive impairment due to systemic disease/medical illness (as indicated on Form D2)','2015-02-26 20:59:06');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsdiagnosis3.dysIllIf','en','lava','crms-nacc',NULL,'udsdiagnosis3','dysIllIf',NULL,'r','scale','Yes','If present:','35a.',NULL,NULL,0,NULL,'uds.d1.ifPres',NULL,119,'35a. Cognitive impairment due to systemic disease/medical illness, primary or contributing','2015-02-26 20:59:06');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsdiagnosis3.meds','en','lava','crms-nacc',NULL,'udsdiagnosis3','meds',NULL,'r','scale','Yes','Cognitive impairment due to medications','36.',NULL,NULL,0,NULL,'uds.d1.presAb',NULL,120,'36. Cognitive impairment due to medications','2015-02-26 20:59:06');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsdiagnosis3.medsIf','en','lava','crms-nacc',NULL,'udsdiagnosis3','medsIf',NULL,'r','scale','Yes','If present:','36a.',NULL,NULL,0,NULL,'uds.d1.ifPres',NULL,121,'36a. Cognitive impairment due to medications, primary or contributing','2015-02-26 20:59:06');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsdiagnosis3.cogOth','en','lava','crms-nacc',NULL,'udsdiagnosis3','cogOth',NULL,'r','scale','Yes','Cognitive impairment NOS','37.',NULL,NULL,0,NULL,'uds.d1.presAb',NULL,122,'37. Cognitive impairment NOS','2015-02-26 20:59:06');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsdiagnosis3.cogOthIf','en','lava','crms-nacc',NULL,'udsdiagnosis3','cogOthIf',NULL,'r','scale','Yes','If present:','37a.',NULL,NULL,0,NULL,'uds.d1.ifPres',NULL,123,'37a. Cognitive impairment NOS, primary or contributing','2015-02-26 20:59:06');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsdiagnosis3.cogOthx','en','lava','crms-nacc',NULL,'udsdiagnosis3','cogOthx',NULL,'i','string','Yes','Cognitive impairment NOS - if Present, specify:','',60,NULL,0,'onkeypress="UDS_onlyNaccCharactersAllowed(event)"','',NULL,124,'37b. Cognitive impairment NOS - if Present, specify:','2015-02-26 20:59:06');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsdiagnosis3.cogOth2','en','lava','crms-nacc',NULL,'udsdiagnosis3','cogOth2',NULL,'r','scale','Yes','Cognitive impairment NOS','38.',NULL,NULL,0,NULL,'uds.d1.presAb',NULL,125,'38. Cognitive impairment NOS','2015-02-26 20:59:06');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsdiagnosis3.cogOth2If','en','lava','crms-nacc',NULL,'udsdiagnosis3','cogOth2If',NULL,'r','scale','Yes','If present:','38a.',NULL,NULL,0,NULL,'uds.d1.ifPres',NULL,126,'38a. Cognitive impairment NOS, primary or contributing','2015-02-26 20:59:06');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsdiagnosis3.cogOth2x','en','lava','crms-nacc',NULL,'udsdiagnosis3','cogOth2x',NULL,'i','string','Yes','Cognitive impairment NOS - if Present, specify:','',60,NULL,0,'onkeypress="UDS_onlyNaccCharactersAllowed(event)"','',NULL,127,'38b. Cognitive impairment NOS - if Present, specify:','2015-02-26 20:59:06');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsdiagnosis3.cogOth3','en','lava','crms-nacc',NULL,'udsdiagnosis3','cogOth3',NULL,'r','scale','Yes','Cognitive impairment NOS','39.',NULL,NULL,0,NULL,'uds.d1.presAb',NULL,128,'39. Cognitive impairment NOS','2015-02-26 20:59:06');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsdiagnosis3.cogOth3If','en','lava','crms-nacc',NULL,'udsdiagnosis3','cogOth3If',NULL,'r','scale','Yes','If present:','39a.',NULL,NULL,0,NULL,'uds.d1.ifPres',NULL,129,'39a. Cognitive impairment NOS, primary or contributing','2015-02-26 20:59:06');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsdiagnosis3.cogOth3x','en','lava','crms-nacc',NULL,'udsdiagnosis3','cogOth3x',NULL,'i','string','Yes','Cognitive impairment NOS - if Present, specify:','',60,NULL,0,'onkeypress="UDS_onlyNaccCharactersAllowed(event)"','',NULL,130,'39b. Cognitive impairment NOS - if Present, specify:','2015-02-26 20:59:06');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3','normCog','udsdiagnosis','NORMCOG','smallint',NULL,5,0,3,'normCog','short',NULL,'No','2015-02-26 20:59:06');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3','demented','udsdiagnosis','DEMENTED','smallint',NULL,5,0,4,'demented','short',NULL,'No','2015-02-26 20:59:06');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3','mciaMem','udsdiagnosis','MCIAMEM','smallint',NULL,5,0,5,'mciaMem','short',NULL,'No','2015-02-26 20:59:06');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3','mciaPlus','udsdiagnosis','MCIAPLUS','smallint',NULL,5,0,6,'mciaPlus','short',NULL,'No','2015-02-26 20:59:06');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3','mciaPLan','udsdiagnosis','MCIAPLAN','smallint',NULL,5,0,7,'mciaPLan','short',NULL,'No','2015-02-26 20:59:06');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3','mciaPAtt','udsdiagnosis','MCIAPATT','smallint',NULL,5,0,8,'mciaPAtt','short',NULL,'No','2015-02-26 20:59:06');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3','mciaPEx','udsdiagnosis','MCIAPEX','smallint',NULL,5,0,9,'mciaPEx','short',NULL,'No','2015-02-26 20:59:06');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3','mciaPVis','udsdiagnosis','MCIAPVIS','smallint',NULL,5,0,10,'mciaPVis','short',NULL,'No','2015-02-26 20:59:06');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3','mciNon1','udsdiagnosis','MCINON1','smallint',NULL,5,0,11,'mciNon1','short',NULL,'No','2015-02-26 20:59:06');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3','mciN1Lan','udsdiagnosis','MCIN1LAN','smallint',NULL,5,0,12,'mciN1Lan','short',NULL,'No','2015-02-26 20:59:06');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3','mciN1Att','udsdiagnosis','MCIN1ATT','smallint',NULL,5,0,13,'mciN1Att','short',NULL,'No','2015-02-26 20:59:06');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3','mciN1Ex','udsdiagnosis','MCIN1EX','smallint',NULL,5,0,14,'mciN1Ex','short',NULL,'No','2015-02-26 20:59:06');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3','mciN1Vis','udsdiagnosis','MCIN1VIS','smallint',NULL,5,0,15,'mciN1Vis','short',NULL,'No','2015-02-26 20:59:06');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3','mciNon2','udsdiagnosis','MCINON2','smallint',NULL,5,0,16,'mciNon2','short',NULL,'No','2015-02-26 20:59:06');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3','mciN2Lan','udsdiagnosis','MCIN2LAN','smallint',NULL,5,0,17,'mciN2Lan','short',NULL,'No','2015-02-26 20:59:06');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3','mciN2Att','udsdiagnosis','MCIN2ATT','smallint',NULL,5,0,18,'mciN2Att','short',NULL,'No','2015-02-26 20:59:06');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3','mciN2Ex','udsdiagnosis','MCIN2EX','smallint',NULL,5,0,19,'mciN2Ex','short',NULL,'No','2015-02-26 20:59:06');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3','mciN2Vis','udsdiagnosis','MCIN2VIS','smallint',NULL,5,0,20,'mciN2Vis','short',NULL,'No','2015-02-26 20:59:06');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3','impNoMci','udsdiagnosis','IMPNOMCI','smallint',NULL,5,0,21,'impNoMci','short',NULL,'No','2015-02-26 20:59:06');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3','alcDem','udsdiagnosis','ALCDEM','smallint',NULL,5,0,32,'alcDem','short',NULL,'No','2015-02-26 20:59:06');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3','alcDemIf','udsdiagnosis','ALCDEMIF','smallint',NULL,5,0,33,'alcDemIf','short',NULL,'No','2015-02-26 20:59:06');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3','psp','udsdiagnosis','PSP','smallint',NULL,5,0,44,'psp','short',NULL,'No','2015-02-26 20:59:06');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3','pspIf','udsdiagnosis','PSPIF','smallint',NULL,5,0,45,'pspIf','short',NULL,'No','2015-02-26 20:59:06');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3','cort','udsdiagnosis','CORT','smallint',NULL,5,0,46,'cort','short',NULL,'No','2015-02-26 20:59:06');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3','cortIf','udsdiagnosis','CORTIF','smallint',NULL,5,0,47,'cortIf','short',NULL,'No','2015-02-26 20:59:06');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3','hunt','udsdiagnosis','HUNT','smallint',NULL,5,0,48,'hunt','short',NULL,'No','2015-02-26 20:59:06');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3','huntIf','udsdiagnosis','HUNTIF','smallint',NULL,5,0,49,'huntIf','short',NULL,'No','2015-02-26 20:59:06');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3','prion','udsdiagnosis','PRION','smallint',NULL,5,0,50,'prion','short',NULL,'No','2015-02-26 20:59:06');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3','prionIf','udsdiagnosis','PRIONIF','smallint',NULL,5,0,51,'prionIf','short',NULL,'No','2015-02-26 20:59:06');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3','meds','udsdiagnosis','MEDS','smallint',NULL,5,0,52,'meds','short',NULL,'No','2015-02-26 20:59:06');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3','medsIf','udsdiagnosis','MEDSIF','smallint',NULL,5,0,53,'medsIf','short',NULL,'No','2015-02-26 20:59:06');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3','dysIll','udsdiagnosis','DYSILL','smallint',NULL,5,0,54,'dysIll','short',NULL,'No','2015-02-26 20:59:06');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3','dysIllIf','udsdiagnosis','DYSILLIF','smallint',NULL,5,0,55,'dysIllIf','short',NULL,'No','2015-02-26 20:59:06');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3','dep','udsdiagnosis','DEP','smallint',NULL,5,0,56,'dep','short',NULL,'No','2015-02-26 20:59:06');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3','depIf','udsdiagnosis','DEPIF','smallint',NULL,5,0,57,'depIf','short',NULL,'No','2015-02-26 20:59:06');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3','othPsy','udsdiagnosis','OTHPSY','smallint',NULL,5,0,58,'othPsy','short',NULL,'No','2015-02-26 20:59:06');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3','othPsyIf','udsdiagnosis','OTHPSYIF','smallint',NULL,5,0,59,'othPsyIf','short',NULL,'No','2015-02-26 20:59:06');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3','downs','udsdiagnosis','DOWNS','smallint',NULL,5,0,60,'downs','short',NULL,'No','2015-02-26 20:59:06');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3','downsIf','udsdiagnosis','DOWNSIF','smallint',NULL,5,0,61,'downsIf','short',NULL,'No','2015-02-26 20:59:06');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3','park','udsdiagnosis','PARK','smallint',NULL,5,0,62,'park','short',NULL,'No','2015-02-26 20:59:06');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3','hyceph','udsdiagnosis','HYCEPH','smallint',NULL,5,0,66,'hyceph','short',NULL,'No','2015-02-26 20:59:06');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3','hycephIf','udsdiagnosis','HYCEPHIF','smallint',NULL,5,0,67,'hycephIf','short',NULL,'No','2015-02-26 20:59:06');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3','brnInj','udsdiagnosis','BRNINJ','smallint',NULL,5,0,68,'brnInj','short',NULL,'No','2015-02-26 20:59:06');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3','brnInjIf','udsdiagnosis','BRNINJIF','smallint',NULL,5,0,69,'brnInjIf','short',NULL,'No','2015-02-26 20:59:06');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3','neop','udsdiagnosis','NEOP','smallint',NULL,5,0,70,'neop','short',NULL,'No','2015-02-26 20:59:06');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3','neopIf','udsdiagnosis','NEOPIF','smallint',NULL,5,0,71,'neopIf','short',NULL,'No','2015-02-26 20:59:06');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3','cogOth','udsdiagnosis','COGOTH','smallint',NULL,5,0,72,'cogOth','short',NULL,'No','2015-02-26 20:59:06');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3','cogOthIf','udsdiagnosis','COGOTHIF','smallint',NULL,5,0,73,'cogOthIf','short',NULL,'No','2015-02-26 20:59:06');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3','cogOthx','udsdiagnosis','COGOTHX','varchar',60,NULL,NULL,74,'cogOthx','string',NULL,'No','2015-02-26 20:59:06');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3','cogOth2','udsdiagnosis','COGOTH2','smallint',NULL,5,0,75,'cogOth2','short',NULL,'No','2015-02-26 20:59:06');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3','cogOth2If','udsdiagnosis','COGOTH2IF','smallint',NULL,5,0,76,'cogOth2If','short',NULL,'No','2015-02-26 20:59:06');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3','cogOth2x','udsdiagnosis','COGOTH2X','varchar',60,NULL,NULL,77,'cogOth2x','string',NULL,'No','2015-02-26 20:59:06');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3','cogOth3','udsdiagnosis','COGOTH3','smallint',NULL,5,0,78,'cogOth3','short',NULL,'No','2015-02-26 20:59:06');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3','cogOth3If','udsdiagnosis','COGOTH3IF','smallint',NULL,5,0,79,'cogOth3If','short',NULL,'No','2015-02-26 20:59:06');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3','cogOth3x','udsdiagnosis','COGOTH3X','varchar',60,NULL,NULL,80,'cogOth3x','string',NULL,'No','2015-02-26 20:59:06');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3','dxmethod','udsdiagnosis','DXMETHOD','smallint',NULL,5,0,81,'dxmethod','short',NULL,'No','2015-02-26 20:59:06');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3','amndem','udsdiagnosis','AMNDEM','smallint',NULL,5,0,82,'amndem','short',NULL,'No','2015-02-26 20:59:06');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3','pca','udsdiagnosis','PCA','smallint',NULL,5,0,83,'pca','short',NULL,'No','2015-02-26 20:59:06');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3','ppasyn','udsdiagnosis','PPASYN','smallint',NULL,5,0,84,'ppasyn','short',NULL,'No','2015-02-26 20:59:06');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3','ppasynt','udsdiagnosis','PPASYNT','smallint',NULL,5,0,85,'ppasynt','short',NULL,'No','2015-02-26 20:59:06');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3','ftdsyn','udsdiagnosis','FTDSYN','smallint',NULL,5,0,86,'ftdsyn','short',NULL,'No','2015-02-26 20:59:06');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3','lbdsyn','udsdiagnosis','LBDSYN','smallint',NULL,5,0,87,'lbdsyn','short',NULL,'No','2015-02-26 20:59:06');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3','namndem','udsdiagnosis','NAMNDEM','smallint',NULL,5,0,88,'namndem','short',NULL,'No','2015-02-26 20:59:06');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3','amylpet','udsdiagnosis','AMYLPET','smallint',NULL,5,0,89,'amylpet','short',NULL,'No','2015-02-26 20:59:06');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3','amylcsf','udsdiagnosis','AMYLCSF','smallint',NULL,5,0,90,'amylcsf','short',NULL,'No','2015-02-26 20:59:06');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3','fdgad','udsdiagnosis','FDGAD','smallint',NULL,5,0,91,'fdgad','short',NULL,'No','2015-02-26 20:59:06');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3','hippatr','udsdiagnosis','HIPPATR','smallint',NULL,5,0,92,'hippatr','short',NULL,'No','2015-02-26 20:59:06');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3','taupetad','udsdiagnosis','TAUPETAD','smallint',NULL,5,0,93,'taupetad','short',NULL,'No','2015-02-26 20:59:06');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3','csftau','udsdiagnosis','CSFTAU','smallint',NULL,5,0,94,'csftau','short',NULL,'No','2015-02-26 20:59:06');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3','fdgftld','udsdiagnosis','FDGFTLD','smallint',NULL,5,0,95,'fdgftld','short',NULL,'No','2015-02-26 20:59:06');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3','tpetftld','udsdiagnosis','TPETFTLD','smallint',NULL,5,0,96,'tpetftld','short',NULL,'No','2015-02-26 20:59:06');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3','mrftld','udsdiagnosis','MRFTLD','smallint',NULL,5,0,97,'mrftld','short',NULL,'No','2015-02-26 20:59:06');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3','datscan','udsdiagnosis','DATSCAN','smallint',NULL,5,0,98,'datscan','short',NULL,'No','2015-02-26 20:59:06');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3','othbiom','udsdiagnosis','OTHBIOM','smallint',NULL,5,0,99,'othbiom','short',NULL,'No','2015-02-26 20:59:06');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3','othbiomx','udsdiagnosis','OTHBIOMX','varchar',60,NULL,NULL,100,'othbiomx','string',NULL,'No','2015-02-26 20:59:06');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3','imaglinf','udsdiagnosis','IMAGLINF','smallint',NULL,5,0,101,'imaglinf','short',NULL,'No','2015-02-26 20:59:06');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3','imaglac','udsdiagnosis','IMAGLAC','smallint',NULL,5,0,102,'imaglac','short',NULL,'No','2015-02-26 20:59:06');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3','imagmach','udsdiagnosis','IMAGMACH','smallint',NULL,5,0,103,'imagmach','short',NULL,'No','2015-02-26 20:59:06');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3','imagmich','udsdiagnosis','IMAGMICH','smallint',NULL,5,0,104,'imagmich','short',NULL,'No','2015-02-26 20:59:06');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3','imagmwmh','udsdiagnosis','IMAGMWMH','smallint',NULL,5,0,105,'imagmwmh','short',NULL,'No','2015-02-26 20:59:06');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3','imagewmh','udsdiagnosis','IMAGEWMH','smallint',NULL,5,0,106,'imagewmh','short',NULL,'No','2015-02-26 20:59:06');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3','admut','udsdiagnosis','ADMUT','smallint',NULL,5,0,107,'admut','short',NULL,'No','2015-02-26 20:59:06');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3','ftldmut','udsdiagnosis','FTLDMUT','smallint',NULL,5,0,108,'ftldmut','short',NULL,'No','2015-02-26 20:59:06');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3','othmut','udsdiagnosis','OTHMUT','smallint',NULL,5,0,109,'othmut','short',NULL,'No','2015-02-26 20:59:06');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3','othmutx','udsdiagnosis','OTHMUTX','varchar',60,NULL,NULL,110,'othmutx','string',NULL,'No','2015-02-26 20:59:06');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3','alzdis','udsdiagnosis','ALZDIS','smallint',NULL,5,0,111,'alzdis','short',NULL,'No','2015-02-26 20:59:06');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3','alzdisif','udsdiagnosis','ALZDISIF','smallint',NULL,5,0,112,'alzdisif','short',NULL,'No','2015-02-26 20:59:06');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3','lbdis','udsdiagnosis','LBDIS','smallint',NULL,5,0,113,'lbdis','short',NULL,'No','2015-02-26 20:59:06');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3','lbdif','udsdiagnosis','LBDIF','smallint',NULL,5,0,114,'lbdif','short',NULL,'No','2015-02-26 20:59:06');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3','msa','udsdiagnosis','MSA','smallint',NULL,5,0,115,'msa','short',NULL,'No','2015-02-26 20:59:06');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3','msaif','udsdiagnosis','MSAIF','smallint',NULL,5,0,116,'msaif','short',NULL,'No','2015-02-26 20:59:06');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3','ftldmo','udsdiagnosis','FTLDMO','smallint',NULL,5,0,117,'ftldmo','short',NULL,'No','2015-02-26 20:59:06');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3','ftldmoif','udsdiagnosis','FTLDMOIF','smallint',NULL,5,0,118,'ftldmoif','short',NULL,'No','2015-02-26 20:59:06');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3','ftldnos','udsdiagnosis','FTLDNOS','smallint',NULL,5,0,119,'ftldnos','short',NULL,'No','2015-02-26 20:59:06');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3','ftldnoif','udsdiagnosis','FTLDNOIF','smallint',NULL,5,0,120,'ftldnoif','short',NULL,'No','2015-02-26 20:59:06');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3','ftldsubt','udsdiagnosis','FTLDSUBT','smallint',NULL,5,0,121,'ftldsubt','short',NULL,'No','2015-02-26 20:59:06');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3','ftldsubx','udsdiagnosis','FTLDSUBX','varchar',60,NULL,NULL,122,'ftldsubx','string',NULL,'No','2015-02-26 20:59:06');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3','cvd','udsdiagnosis','CVD','smallint',NULL,5,0,123,'cvd','short',NULL,'No','2015-02-26 20:59:06');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3','cvdif','udsdiagnosis','CVDIF','smallint',NULL,5,0,124,'cvdif','short',NULL,'No','2015-02-26 20:59:06');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3','prevstk','udsdiagnosis','PREVSTK','smallint',NULL,5,0,125,'prevstk','short',NULL,'No','2015-02-26 20:59:06');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3','strokdec','udsdiagnosis','STROKDEC','smallint',NULL,5,0,126,'strokdec','short',NULL,'No','2015-02-26 20:59:06');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3','stkimag','udsdiagnosis','STKIMAG','smallint',NULL,5,0,127,'stkimag','short',NULL,'No','2015-02-26 20:59:06');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3','infnetw','udsdiagnosis','INFNETW','smallint',NULL,5,0,128,'infnetw','short',NULL,'No','2015-02-26 20:59:06');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3','infwmh','udsdiagnosis','INFWMH','smallint',NULL,5,0,129,'infwmh','short',NULL,'No','2015-02-26 20:59:06');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3','esstrem','udsdiagnosis','ESSTREM','smallint',NULL,5,0,130,'esstrem','short',NULL,'No','2015-02-26 20:59:06');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3','esstreif','udsdiagnosis','ESSTREIF','smallint',NULL,5,0,131,'esstreif','short',NULL,'No','2015-02-26 20:59:06');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3','brnincte','udsdiagnosis','BRNINCTE','smallint',NULL,5,0,132,'brnincte','short',NULL,'No','2015-02-26 20:59:06');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3','epilep','udsdiagnosis','EPILEP','smallint',NULL,5,0,133,'epilep','short',NULL,'No','2015-02-26 20:59:06');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3','epilepif','udsdiagnosis','EPILEPIF','smallint',NULL,5,0,134,'epilepif','short',NULL,'No','2015-02-26 20:59:06');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3','neopstat','udsdiagnosis','NEOPSTAT','smallint',NULL,5,0,135,'neopstat','short',NULL,'No','2015-02-26 20:59:06');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3','hiv','udsdiagnosis','HIV','smallint',NULL,5,0,136,'hiv','short',NULL,'No','2015-02-26 20:59:06');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3','hivif','udsdiagnosis','HIVIF','smallint',NULL,5,0,137,'hivif','short',NULL,'No','2015-02-26 20:59:06');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3','othcog','udsdiagnosis','OTHCOG','smallint',NULL,5,0,138,'othcog','short',NULL,'No','2015-02-26 20:59:06');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3','othcogif','udsdiagnosis','OTHCOGIF','smallint',NULL,5,0,139,'othcogif','short',NULL,'No','2015-02-26 20:59:06');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3','othcogx','udsdiagnosis','OTHCOGX','varchar',60,NULL,NULL,140,'othcogx','string',NULL,'No','2015-02-26 20:59:06');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3','deptreat','udsdiagnosis','DEPTREAT','smallint',NULL,5,0,141,'deptreat','short',NULL,'No','2015-02-26 20:59:06');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3','bipoldx','udsdiagnosis','BIPOLDX','smallint',NULL,5,0,142,'bipoldx','short',NULL,'No','2015-02-26 20:59:06');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3','bipoldif','udsdiagnosis','BIPOLDIF','smallint',NULL,5,0,143,'bipoldif','short',NULL,'No','2015-02-26 20:59:06');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3','schizop','udsdiagnosis','SCHIZOP','smallint',NULL,5,0,144,'schizop','short',NULL,'No','2015-02-26 20:59:06');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3','schizoif','udsdiagnosis','SCHIZOIF','smallint',NULL,5,0,145,'schizoif','short',NULL,'No','2015-02-26 20:59:06');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3','anxiet','udsdiagnosis','ANXIET','smallint',NULL,5,0,146,'anxiet','short',NULL,'No','2015-02-26 20:59:06');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3','anxietif','udsdiagnosis','ANXIETIF','smallint',NULL,5,0,147,'anxietif','short',NULL,'No','2015-02-26 20:59:06');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3','delir','udsdiagnosis','DELIR','smallint',NULL,5,0,148,'delir','short',NULL,'No','2015-02-26 20:59:06');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3','delirif','udsdiagnosis','DELIRIF','smallint',NULL,5,0,149,'delirif','short',NULL,'No','2015-02-26 20:59:06');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3','ptsddx','udsdiagnosis','PTSDDX','smallint',NULL,5,0,150,'ptsddx','short',NULL,'No','2015-02-26 20:59:06');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3','ptsddxif','udsdiagnosis','PTSDDXIF','smallint',NULL,5,0,151,'ptsddxif','short',NULL,'No','2015-02-26 20:59:06');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3','othpsyx','udsdiagnosis','OTHPSYX','varchar',60,NULL,NULL,152,'othpsyx','string',NULL,'No','2015-02-26 20:59:06');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3','alcabuse','udsdiagnosis','ALCABUSE','smallint',NULL,5,0,153,'alcabuse','short',NULL,'No','2015-02-26 20:59:06');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3','impsub','udsdiagnosis','IMPSUB','smallint',NULL,5,0,154,'impsub','short',NULL,'No','2015-02-26 20:59:06');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsdiagnosis3','impsubif','udsdiagnosis','IMPSUBIF','smallint',NULL,5,0,155,'impsubif','short',NULL,'No','2015-02-26 20:59:06');



-- Z1 UDS Form Checklist
DELETE from viewproperty where instance='lava' and scope='crms-nacc' and entity='udsformchecklist3';

INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsformchecklist3.a2Sub','en','lava','crms-nacc',NULL,'udsformchecklist3','a2Sub','Form Checklist','r','scale','No','',NULL,NULL,7,0,'','uds.noYes01',NULL,1,'','2009-01-24 21:28:51');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsformchecklist3.a2Not','en','lava','crms-nacc',NULL,'udsformchecklist3','a2Not','Form Checklist','r','scale','No','',NULL,NULL,20,0,'','uds.z1Reason',NULL,2,'','2009-01-24 21:28:51');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsformchecklist3.a2Comm','en','lava','crms-nacc',NULL,'udsformchecklist3','a2Comm','Form Checklist','i','string','No','',NULL,NULL,20,0,'onkeypress="UDS_onlyNaccCharactersAllowed(event)"','',NULL,3,'','2009-01-24 21:28:51');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsformchecklist3.a3Sub','en','lava','crms-nacc',NULL,'udsformchecklist3','a3Sub','Form Checklist','r','scale','No','',NULL,NULL,7,0,'','uds.noYes01',NULL,4,'','2009-01-24 21:28:51');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsformchecklist3.a3Not','en','lava','crms-nacc',NULL,'udsformchecklist3','a3Not','Form Checklist','r','scale','No','',NULL,NULL,20,0,'','uds.z1Reason',NULL,5,'','2009-01-24 21:28:51');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsformchecklist3.a3Comm','en','lava','crms-nacc',NULL,'udsformchecklist3','a3Comm','Form Checklist','i','string','No','',NULL,NULL,20,0,'onkeypress="UDS_onlyNaccCharactersAllowed(event)"','',NULL,6,'','2009-01-24 21:28:51');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsformchecklist3.a4Sub','en','lava','crms-nacc',NULL,'udsformchecklist3','a4Sub','Form Checklist','r','scale','No','',NULL,NULL,7,0,'','uds.noYes01',NULL,7,'','2009-01-24 21:28:51');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsformchecklist3.a4Not','en','lava','crms-nacc',NULL,'udsformchecklist3','a4Not','Form Checklist','r','scale','No','',NULL,NULL,20,0,'','uds.z1Reason',NULL,8,'','2009-01-24 21:28:51');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsformchecklist3.a4Comm','en','lava','crms-nacc',NULL,'udsformchecklist3','a4Comm','Form Checklist','i','string','No','',NULL,NULL,20,0,'onkeypress="UDS_onlyNaccCharactersAllowed(event)"','',NULL,9,'','2009-01-24 21:28:51');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsformchecklist3.b1Sub','en','lava','crms-nacc',NULL,'udsformchecklist3','b1Sub','Form Checklist','r','scale','No','',NULL,NULL,7,0,'','uds.noYes01',NULL,10,'','2009-01-24 21:28:51');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsformchecklist3.b1Not','en','lava','crms-nacc',NULL,'udsformchecklist3','b1Not','Form Checklist','r','scale','No','',NULL,NULL,20,0,'','uds.z1Reason',NULL,11,'','2009-01-24 21:28:51');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsformchecklist3.b1Comm','en','lava','crms-nacc',NULL,'udsformchecklist3','b1Comm','Form Checklist','i','string','No','',NULL,NULL,20,0,'onkeypress="UDS_onlyNaccCharactersAllowed(event)"','',NULL,12,'','2009-01-24 21:28:51');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsformchecklist3.b5Sub','en','lava','crms-nacc',NULL,'udsformchecklist3','b5Sub','Form Checklist','r','scale','No','',NULL,NULL,7,0,'','uds.noYes01',NULL,13,'','2009-01-24 21:28:51');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsformchecklist3.b5Not','en','lava','crms-nacc',NULL,'udsformchecklist3','b5Not','Form Checklist','r','scale','No','',NULL,NULL,20,0,'','uds.z1Reason',NULL,14,'','2009-01-24 21:28:51');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsformchecklist3.b5Comm','en','lava','crms-nacc',NULL,'udsformchecklist3','b5Comm','Form Checklist','i','string','No','',NULL,NULL,20,0,'onkeypress="UDS_onlyNaccCharactersAllowed(event)"','',NULL,15,'','2009-01-24 21:28:51');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsformchecklist3.b6Sub','en','lava','crms-nacc',NULL,'udsformchecklist3','b6Sub','Form Checklist','r','scale','No','',NULL,NULL,7,0,'','uds.noYes01',NULL,16,'','2009-01-24 21:28:51');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsformchecklist3.b6Not','en','lava','crms-nacc',NULL,'udsformchecklist3','b6Not','Form Checklist','r','scale','No','',NULL,NULL,20,0,'','uds.z1Reason',NULL,17,'','2009-01-24 21:28:51');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsformchecklist3.b6Comm','en','lava','crms-nacc',NULL,'udsformchecklist3','b6Comm','Form Checklist','i','string','No','',NULL,NULL,20,0,'onkeypress="UDS_onlyNaccCharactersAllowed(event)"','',NULL,18,'','2009-01-24 21:28:51');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsformchecklist3.b7Sub','en','lava','crms-nacc',NULL,'udsformchecklist3','b7Sub','Form Checklist','r','scale','No','',NULL,NULL,7,0,'','uds.noYes01',NULL,19,'','2009-01-24 21:28:51');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsformchecklist3.b7Not','en','lava','crms-nacc',NULL,'udsformchecklist3','b7Not','Form Checklist','r','scale','No','',NULL,NULL,20,0,'','uds.z1Reason',NULL,20,'','2009-01-24 21:28:51');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsformchecklist3.b7Comm','en','lava','crms-nacc',NULL,'udsformchecklist3','b7Comm','Form Checklist','i','string','No','',NULL,NULL,20,0,'onkeypress="UDS_onlyNaccCharactersAllowed(event)"','',NULL,21,'','2009-01-24 21:28:51');



-- D2 UDS Medical Conditions
DROP TABLE IF EXISTS `udsmedicalconditions`;
CREATE TABLE IF NOT EXISTS `udsmedicalconditions` (
  `InstrID` INT NOT NULL ,
  `CANCER` smallint NULL DEFAULT null ,
  `CANCSITE` varchar(60) NULL DEFAULT null ,
  `DIABET` smallint NULL DEFAULT null ,
  `MYOINF` smallint NULL DEFAULT null ,
  `CONGHRT` smallint NULL DEFAULT null ,
  `AFIBRILL` smallint NULL DEFAULT null ,
  `HYPERT` smallint NULL DEFAULT null ,
  `ANGINA` smallint NULL DEFAULT null ,
  `HYPCHOL` smallint NULL DEFAULT null ,
  `VB12DEF` smallint NULL DEFAULT null ,
  `THYDIS` smallint NULL DEFAULT null ,
  `ARTH` smallint NULL DEFAULT null ,
  `ARTYPE` smallint NULL DEFAULT null ,
  `ARTYPEX` varchar(60) NULL DEFAULT null ,
  `ARTUPEX` smallint NULL DEFAULT null ,
  `ARTLOEX` smallint NULL DEFAULT null ,
  `ARTSPIN` smallint NULL DEFAULT null ,
  `ARTUNKN` smallint NULL DEFAULT null ,
  `URINEINC` smallint NULL DEFAULT null ,
  `BOWLINC` smallint NULL DEFAULT null ,
  `SLEEPAP` smallint NULL DEFAULT null ,
  `REMDIS` smallint NULL DEFAULT null ,
  `HYPOSOM` smallint NULL DEFAULT null ,
  `SLEEPOTH` smallint NULL DEFAULT null ,
  `SLEEPOTX` varchar(60) NULL DEFAULT null ,
  `ANGIOCP` smallint NULL DEFAULT null ,
  `ANGIOPCI` smallint NULL DEFAULT null ,
  `PACEMAKE` smallint NULL DEFAULT null ,
  `HVALVE` smallint NULL DEFAULT null ,
  `ANTIENC` smallint NULL DEFAULT null ,
  `ANTIENCX` varchar(60) NULL DEFAULT null ,
  `OTHCOND` smallint NULL DEFAULT null ,
  `OTHCONDX` varchar(60) NULL DEFAULT null ,
  PRIMARY KEY (`InstrID`) )
ENGINE = InnoDB;

ALTER TABLE `udsmedicalconditions` ADD CONSTRAINT `udsmedicalconditions__InstrID`
 FOREIGN KEY (`InstrID` )
 REFERENCES `instrumenttracking` (`InstrID`)
 ON DELETE NO ACTION
 ON UPDATE NO ACTION, ADD INDEX `udsmedicalconditions__InstrID` (`InstrID` ASC);

INSERT IGNORE into instrument(instrname, tablename, formname, hasversion) values('UDS Medical Conditions','Multiple','LavaWebOnly',1);

DELETE from datadictionary where instance='lava' and scope='crms-nacc' and entity='udsmedicalconditions3';

DELETE from viewproperty where instance='lava' and scope='crms-nacc' and entity='udsmedicalconditions3';

DELETE from hibernateproperty where instance='lava' and scope='crms-nacc' and entity='udsmedicalconditions3';

INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsmedicalconditions3',1,'cancer','1. Cancer (excluding non-melanoma skin cancer), primary or metastatic','','',1,'udsmedicalconditions','CANCER',1,'smallint','',1,'null',NULL,NULL,'2015-02-17 15:30:34');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsmedicalconditions3',2,'cancsite','1a. Cancer primary site specification','','',1,'udsmedicalconditions','CANCSITE',2,'varchar','60',1,'null',NULL,NULL,'2015-02-17 15:30:34');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsmedicalconditions3',3,'diabet','2. Diabetes','','',1,'udsmedicalconditions','DIABET',3,'smallint','',1,'null',NULL,NULL,'2015-02-17 15:30:34');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsmedicalconditions3',4,'myoinf','3. Myocardial infarct','','',1,'udsmedicalconditions','MYOINF',4,'smallint','',1,'null',NULL,NULL,'2015-02-17 15:30:34');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsmedicalconditions3',5,'conghrt','4. Congestive heart failure','','',1,'udsmedicalconditions','CONGHRT',5,'smallint','',1,'null',NULL,NULL,'2015-02-17 15:30:34');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsmedicalconditions3',6,'afibrill','5. Atrial fibrillation','','',1,'udsmedicalconditions','AFIBRILL',6,'smallint','',1,'null',NULL,NULL,'2015-02-17 15:30:34');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsmedicalconditions3',7,'hypert','6. Hypertension','','',1,'udsmedicalconditions','HYPERT',7,'smallint','',1,'null',NULL,NULL,'2015-02-17 15:30:34');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsmedicalconditions3',8,'angina','7. Angina','','',1,'udsmedicalconditions','ANGINA',8,'smallint','',1,'null',NULL,NULL,'2015-02-17 15:30:34');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsmedicalconditions3',9,'hypchol','8. Hypercholesterolemia','','',1,'udsmedicalconditions','HYPCHOL',9,'smallint','',1,'null',NULL,NULL,'2015-02-17 15:30:34');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsmedicalconditions3',10,'vb12def','9. B12 deficiency','','',1,'udsmedicalconditions','VB12DEF',10,'smallint','',1,'null',NULL,NULL,'2015-02-17 15:30:34');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsmedicalconditions3',11,'thydis','10. Thyroid disease','','',1,'udsmedicalconditions','THYDIS',11,'smallint','',1,'null',NULL,NULL,'2015-02-17 15:30:34');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsmedicalconditions3',12,'arth','11. Arthritis','','',1,'udsmedicalconditions','ARTH',12,'smallint','',1,'null',NULL,NULL,'2015-02-17 15:30:34');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsmedicalconditions3',13,'artype','11a. Arthritis type','','',1,'udsmedicalconditions','ARTYPE',13,'smallint','',1,'null',NULL,NULL,'2015-02-17 15:30:34');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsmedicalconditions3',14,'artypex','11a1. Other arthritis type specification','','',1,'udsmedicalconditions','ARTYPEX',14,'varchar','60',1,'null',NULL,NULL,'2015-02-17 15:30:34');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsmedicalconditions3',15,'artupex','11b1. Arthritis region affected - upper extremity','','',1,'udsmedicalconditions','ARTUPEX',15,'smallint','',1,'null',NULL,NULL,'2015-02-17 15:30:34');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsmedicalconditions3',16,'artloex','11b2. Arthritis region affected - lower extremity','','',1,'udsmedicalconditions','ARTLOEX',16,'smallint','',1,'null',NULL,NULL,'2015-02-17 15:30:34');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsmedicalconditions3',17,'artspin','11b3. Arthritis region affected - spine','','',1,'udsmedicalconditions','ARTSPIN',17,'smallint','',1,'null',NULL,NULL,'2015-02-17 15:30:34');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsmedicalconditions3',18,'artunkn','11b4. Arthritis region affected - unknown','','',1,'udsmedicalconditions','ARTUNKN',18,'smallint','',1,'null',NULL,NULL,'2015-02-17 15:30:34');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsmedicalconditions3',19,'urineinc','12. Incontinence - urinary','','',1,'udsmedicalconditions','URINEINC',19,'smallint','',1,'null',NULL,NULL,'2015-02-17 15:30:34');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsmedicalconditions3',20,'bowlinc','13. Incontinence - bowel','','',1,'udsmedicalconditions','BOWLINC',20,'smallint','',1,'null',NULL,NULL,'2015-02-17 15:30:34');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsmedicalconditions3',21,'sleepap','14. Sleep apnea','','',1,'udsmedicalconditions','SLEEPAP',21,'smallint','',1,'null',NULL,NULL,'2015-02-17 15:30:34');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsmedicalconditions3',22,'remdis','15. REM sleep behavior disorder (RBD)','','',1,'udsmedicalconditions','REMDIS',22,'smallint','',1,'null',NULL,NULL,'2015-02-17 15:30:34');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsmedicalconditions3',23,'hyposom','16. Hyposomnia/insomnia','','',1,'udsmedicalconditions','HYPOSOM',23,'smallint','',1,'null',NULL,NULL,'2015-02-17 15:30:34');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsmedicalconditions3',24,'sleepoth','17. Other sleep disorder','','',1,'udsmedicalconditions','SLEEPOTH',24,'smallint','',1,'null',NULL,NULL,'2015-02-17 15:30:34');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsmedicalconditions3',25,'sleepotx','17a. Other sleep disorder specification','','',1,'udsmedicalconditions','SLEEPOTX',25,'varchar','60',1,'null',NULL,NULL,'2015-02-17 15:30:34');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsmedicalconditions3',26,'angiocp','18. Carotid procedure: angioplasty, endarterectomy, or stent','','',1,'udsmedicalconditions','ANGIOCP',26,'smallint','',1,'null',NULL,NULL,'2015-02-17 15:30:34');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsmedicalconditions3',27,'angiopci','19. Percutaneous coronary intervention: angioplasty and/or stent','','',1,'udsmedicalconditions','ANGIOPCI',27,'smallint','',1,'null',NULL,NULL,'2015-02-17 15:30:34');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsmedicalconditions3',28,'pacemake','20. Procedure: pacemaker and/or defibrillator','','',1,'udsmedicalconditions','PACEMAKE',28,'smallint','',1,'null',NULL,NULL,'2015-02-17 15:30:34');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsmedicalconditions3',29,'hvalve','21. Procedure: heart valve replacement or repair','','',1,'udsmedicalconditions','HVALVE',29,'smallint','',1,'null',NULL,NULL,'2015-02-17 15:30:34');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsmedicalconditions3',30,'antienc','22. Antibody-mediated encephalopathy','','',1,'udsmedicalconditions','ANTIENC',30,'smallint','',1,'null',NULL,NULL,'2015-02-17 15:30:34');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsmedicalconditions3',31,'antiencx','22a. Antibody-mediated encephalopathy, specify','','',1,'udsmedicalconditions','ANTIENCX',31,'varchar','60',1,'null',NULL,NULL,'2015-02-17 15:30:34');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsmedicalconditions3',32,'othcond','23. Other medical conditions or procedures not listed above','','',1,'udsmedicalconditions','OTHCOND',32,'smallint','',1,'null',NULL,NULL,'2015-02-17 15:30:34');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsmedicalconditions3',33,'othcondx','23a. Other medical conditions specification','','',1,'udsmedicalconditions','OTHCONDX',33,'varchar','60',1,'null',NULL,NULL,'2015-02-17 15:30:34');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsmedicalconditions3.cancer','en','lava','crms-nacc',NULL,'udsmedicalconditions3','cancer',NULL,'r','scale','Yes','Cancer (excluding non-melanoma skin cancer), primary or metastatic','1.',NULL,40,0,NULL,'uds.d2.cancer',NULL,1,'1. Cancer (excluding non-melanoma skin cancer), primary or metastatic','2015-02-17 12:29:10');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsmedicalconditions3.cancsite','en','lava','crms-nacc',NULL,'udsmedicalconditions3','cancsite',NULL,'r','string','Yes','a. Cancer primary site specification',NULL,60,40,0,'onkeypress="UDS_onlyNaccCharactersAllowed(event)"','',NULL,2,'1a. Cancer primary site specification','2015-02-17 12:29:10');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsmedicalconditions3.diabet','en','lava','crms-nacc',NULL,'udsmedicalconditions3','diabet',NULL,'r','scale','Yes','Diabetes','2.',NULL,40,0,NULL,'uds.d2.diabet',NULL,3,'2. Diabetes','2015-02-17 12:29:10');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsmedicalconditions3.myoinf','en','lava','crms-nacc',NULL,'udsmedicalconditions3','myoinf',NULL,'r','scale','Yes','Myocardial infarct','3.',NULL,40,0,NULL,'uds.noYesNotAssessed018',NULL,4,'3. Myocardial infarct','2015-02-17 12:29:10');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsmedicalconditions3.conghrt','en','lava','crms-nacc',NULL,'udsmedicalconditions3','conghrt',NULL,'r','scale','Yes','Congestive heart failure','4.',NULL,40,0,NULL,'uds.noYesNotAssessed018',NULL,5,'4. Congestive heart failure','2015-02-17 12:29:10');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsmedicalconditions3.afibrill','en','lava','crms-nacc',NULL,'udsmedicalconditions3','afibrill',NULL,'r','scale','Yes','Atrial fibrillation','5.',NULL,40,0,NULL,'uds.noYesNotAssessed018',NULL,6,'5. Atrial fibrillation','2015-02-17 12:29:10');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsmedicalconditions3.hypert','en','lava','crms-nacc',NULL,'udsmedicalconditions3','hypert',NULL,'r','scale','Yes','Hypertension','6.',NULL,40,0,NULL,'uds.noYesNotAssessed018',NULL,7,'6. Hypertension','2015-02-17 12:29:10');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsmedicalconditions3.angina','en','lava','crms-nacc',NULL,'udsmedicalconditions3','angina',NULL,'r','scale','Yes','Angina','7.',NULL,40,0,NULL,'uds.noYesNotAssessed018',NULL,8,'7. Angina','2015-02-17 12:29:10');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsmedicalconditions3.hypchol','en','lava','crms-nacc',NULL,'udsmedicalconditions3','hypchol',NULL,'r','scale','Yes','Hypercholesterolemia','8.',NULL,40,0,NULL,'uds.noYesNotAssessed018',NULL,9,'8. Hypercholesterolemia','2015-02-17 12:29:10');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsmedicalconditions3.vb12def','en','lava','crms-nacc',NULL,'udsmedicalconditions3','vb12def',NULL,'r','scale','Yes','B12 deficiency','9.',NULL,40,0,NULL,'uds.noYesNotAssessed018',NULL,10,'9. B12 deficiency','2015-02-17 12:29:10');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsmedicalconditions3.thydis','en','lava','crms-nacc',NULL,'udsmedicalconditions3','thydis',NULL,'r','scale','Yes','Thyroid disease','10.',NULL,40,0,NULL,'uds.noYesNotAssessed018',NULL,11,'10. Thyroid disease','2015-02-17 12:29:10');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsmedicalconditions3.arth','en','lava','crms-nacc',NULL,'udsmedicalconditions3','arth',NULL,'r','scale','Yes','Arthritis','11.',NULL,40,0,NULL,'uds.noYesNotAssessed018',NULL,12,'11. Arthritis','2015-02-17 12:29:10');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsmedicalconditions3.artype','en','lava','crms-nacc',NULL,'udsmedicalconditions3','artype',NULL,'r','scale','Yes','a. Arthritis type',NULL,NULL,40,0,NULL,'uds.d2.artype',NULL,13,'11a. Arthritis type','2015-02-17 12:29:10');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsmedicalconditions3.artypex','en','lava','crms-nacc',NULL,'udsmedicalconditions3','artypex',NULL,'r','string','Yes','a1. Other arthritis type specification',NULL,60,40,0,'onkeypress="UDS_onlyNaccCharactersAllowed(event)"','',NULL,14,'11a1. Other arthritis type specification','2015-02-17 12:29:10');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsmedicalconditions3.artupex','en','lava','crms-nacc',NULL,'udsmedicalconditions3','artupex',NULL,'r','scale','Yes','b1. Arthritis region affected - upper extremity',NULL,NULL,40,0,NULL,'uds.noYes01',NULL,15,'11b1. Arthritis region affected - upper extremity','2015-02-17 12:29:10');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsmedicalconditions3.artloex','en','lava','crms-nacc',NULL,'udsmedicalconditions3','artloex',NULL,'r','scale','Yes','b2. Arthritis region affected - lower extremity',NULL,NULL,40,0,NULL,'uds.noYes01',NULL,16,'11b2. Arthritis region affected - lower extremity','2015-02-17 12:29:10');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsmedicalconditions3.artspin','en','lava','crms-nacc',NULL,'udsmedicalconditions3','artspin',NULL,'r','scale','Yes','b3. Arthritis region affected - spine',NULL,NULL,40,0,NULL,'uds.noYes01',NULL,17,'11b3. Arthritis region affected - spine','2015-02-17 12:29:10');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsmedicalconditions3.artunkn','en','lava','crms-nacc',NULL,'udsmedicalconditions3','artunkn',NULL,'r','scale','Yes','b4. Arthritis region affected - unknown',NULL,NULL,40,0,NULL,'uds.noYes01',NULL,18,'11b4. Arthritis region affected - unknown','2015-02-17 12:29:10');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsmedicalconditions3.urineinc','en','lava','crms-nacc',NULL,'udsmedicalconditions3','urineinc',NULL,'r','scale','Yes','Incontinence - urinary','12.',NULL,40,0,NULL,'uds.noYesNotAssessed018',NULL,19,'12. Incontinence - urinary','2015-02-17 12:29:10');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsmedicalconditions3.bowlinc','en','lava','crms-nacc',NULL,'udsmedicalconditions3','bowlinc',NULL,'r','scale','Yes','Incontinence - bowel','13.',NULL,40,0,NULL,'uds.noYesNotAssessed018',NULL,20,'13. Incontinence - bowel','2015-02-17 12:29:10');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsmedicalconditions3.sleepap','en','lava','crms-nacc',NULL,'udsmedicalconditions3','sleepap',NULL,'r','scale','Yes','Sleep apnea','14.',NULL,40,0,NULL,'uds.noYesNotAssessed018',NULL,21,'14. Sleep apnea','2015-02-17 12:29:10');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsmedicalconditions3.remdis','en','lava','crms-nacc',NULL,'udsmedicalconditions3','remdis',NULL,'r','scale','Yes','REM sleep behavior disorder (RBD)','15.',NULL,40,0,NULL,'uds.noYesNotAssessed018',NULL,22,'15. REM sleep behavior disorder (RBD)','2015-02-17 12:29:10');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsmedicalconditions3.hyposom','en','lava','crms-nacc',NULL,'udsmedicalconditions3','hyposom',NULL,'r','scale','Yes','Hyposomnia/insomnia','16.',NULL,40,0,NULL,'uds.noYesNotAssessed018',NULL,23,'16. Hyposomnia/insomnia','2015-02-17 12:29:10');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsmedicalconditions3.sleepoth','en','lava','crms-nacc',NULL,'udsmedicalconditions3','sleepoth',NULL,'r','scale','Yes','Other sleep disorder','17.',NULL,40,0,NULL,'uds.noYesNotAssessed018',NULL,24,'17. Other sleep disorder','2015-02-17 12:29:10');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsmedicalconditions3.sleepotx','en','lava','crms-nacc',NULL,'udsmedicalconditions3','sleepotx',NULL,'r','string','Yes','a. Other sleep disorder specification',NULL,60,40,0,'onkeypress="UDS_onlyNaccCharactersAllowed(event)"','',NULL,25,'17a. Other sleep disorder specification','2015-02-17 12:29:10');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsmedicalconditions3.angiocp','en','lava','crms-nacc',NULL,'udsmedicalconditions3','angiocp',NULL,'r','scale','Yes','Carotid procedure: angioplasty, endarterectomy, or stent','18.',NULL,40,0,NULL,'uds.noYesNotAssessed018',NULL,26,'18. Carotid procedure: angioplasty, endarterectomy, or stent','2015-02-17 12:29:10');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsmedicalconditions3.angiopci','en','lava','crms-nacc',NULL,'udsmedicalconditions3','angiopci',NULL,'r','scale','Yes','Percutaneous coronary intervention: angioplasty and/or stent','19.',NULL,40,0,NULL,'uds.noYesNotAssessed018',NULL,27,'19. Percutaneous coronary intervention: angioplasty and/or stent','2015-02-17 12:29:10');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsmedicalconditions3.pacemake','en','lava','crms-nacc',NULL,'udsmedicalconditions3','pacemake',NULL,'r','scale','Yes','Procedure: pacemaker and/or defibrillator','20.',NULL,40,0,NULL,'uds.noYesNotAssessed018',NULL,28,'20. Procedure: pacemaker and/or defibrillator','2015-02-17 12:29:10');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsmedicalconditions3.hvalve','en','lava','crms-nacc',NULL,'udsmedicalconditions3','hvalve',NULL,'r','scale','Yes','Procedure: heart valve replacement or repair','21.',NULL,40,0,NULL,'uds.noYesNotAssessed018',NULL,29,'21. Procedure: heart valve replacement or repair','2015-02-17 12:29:10');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsmedicalconditions3.antienc','en','lava','crms-nacc',NULL,'udsmedicalconditions3','antienc',NULL,'r','scale','Yes','Antibody-mediated encephalopathy','22.',NULL,40,0,NULL,'uds.noYesNotAssessed018',NULL,30,'22. Antibody-mediated encephalopathy','2015-02-17 12:29:10');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsmedicalconditions3.antiencx','en','lava','crms-nacc',NULL,'udsmedicalconditions3','antiencx',NULL,'r','string','Yes','a. Antibody-mediated encephalopathy, specify',NULL,60,40,0,'onkeypress="UDS_onlyNaccCharactersAllowed(event)"','',NULL,31,'22a. Antibody-mediated encephalopathy, specify','2015-02-17 12:29:10');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsmedicalconditions3.othcond','en','lava','crms-nacc',NULL,'udsmedicalconditions3','othcond',NULL,'r','scale','Yes','Other medical conditions or procedures not listed above','23.',NULL,40,0,NULL,'uds.noYes01',NULL,32,'23. Other medical conditions or procedures not listed above','2015-02-17 12:29:10');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsmedicalconditions3.othcondx','en','lava','crms-nacc',NULL,'udsmedicalconditions3','othcondx',NULL,'r','string','Yes','a. Other medical conditions specification',NULL,60,40,0,'onkeypress="UDS_onlyNaccCharactersAllowed(event)"','',NULL,33,'23a. Other medical conditions specification','2015-02-17 12:29:10');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsmedicalconditions3','cancer','udsmedicalconditions','CANCER','smallint',NULL,5,0,2,'cancer','short',NULL,'No','2015-02-17 12:29:10');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsmedicalconditions3','cancsite','udsmedicalconditions','CANCSITE','varchar',60,NULL,NULL,3,'cancsite','string',NULL,'No','2015-02-17 12:29:10');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsmedicalconditions3','diabet','udsmedicalconditions','DIABET','smallint',NULL,5,0,4,'diabet','short',NULL,'No','2015-02-17 12:29:10');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsmedicalconditions3','myoinf','udsmedicalconditions','MYOINF','smallint',NULL,5,0,5,'myoinf','short',NULL,'No','2015-02-17 12:29:10');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsmedicalconditions3','conghrt','udsmedicalconditions','CONGHRT','smallint',NULL,5,0,6,'conghrt','short',NULL,'No','2015-02-17 12:29:10');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsmedicalconditions3','afibrill','udsmedicalconditions','AFIBRILL','smallint',NULL,5,0,7,'afibrill','short',NULL,'No','2015-02-17 12:29:10');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsmedicalconditions3','hypert','udsmedicalconditions','HYPERT','smallint',NULL,5,0,8,'hypert','short',NULL,'No','2015-02-17 12:29:10');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsmedicalconditions3','angina','udsmedicalconditions','ANGINA','smallint',NULL,5,0,9,'angina','short',NULL,'No','2015-02-17 12:29:10');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsmedicalconditions3','hypchol','udsmedicalconditions','HYPCHOL','smallint',NULL,5,0,10,'hypchol','short',NULL,'No','2015-02-17 12:29:10');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsmedicalconditions3','vb12def','udsmedicalconditions','VB12DEF','smallint',NULL,5,0,11,'vb12def','short',NULL,'No','2015-02-17 12:29:10');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsmedicalconditions3','thydis','udsmedicalconditions','THYDIS','smallint',NULL,5,0,12,'thydis','short',NULL,'No','2015-02-17 12:29:10');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsmedicalconditions3','arth','udsmedicalconditions','ARTH','smallint',NULL,5,0,13,'arth','short',NULL,'No','2015-02-17 12:29:10');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsmedicalconditions3','artype','udsmedicalconditions','ARTYPE','smallint',NULL,5,0,14,'artype','short',NULL,'No','2015-02-17 12:29:10');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsmedicalconditions3','artypex','udsmedicalconditions','ARTYPEX','varchar',60,NULL,NULL,15,'artypex','string',NULL,'No','2015-02-17 12:29:10');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsmedicalconditions3','artupex','udsmedicalconditions','ARTUPEX','smallint',NULL,5,0,16,'artupex','short',NULL,'No','2015-02-17 12:29:10');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsmedicalconditions3','artloex','udsmedicalconditions','ARTLOEX','smallint',NULL,5,0,17,'artloex','short',NULL,'No','2015-02-17 12:29:10');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsmedicalconditions3','artspin','udsmedicalconditions','ARTSPIN','smallint',NULL,5,0,18,'artspin','short',NULL,'No','2015-02-17 12:29:10');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsmedicalconditions3','artunkn','udsmedicalconditions','ARTUNKN','smallint',NULL,5,0,19,'artunkn','short',NULL,'No','2015-02-17 12:29:10');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsmedicalconditions3','urineinc','udsmedicalconditions','URINEINC','smallint',NULL,5,0,20,'urineinc','short',NULL,'No','2015-02-17 12:29:10');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsmedicalconditions3','bowlinc','udsmedicalconditions','BOWLINC','smallint',NULL,5,0,21,'bowlinc','short',NULL,'No','2015-02-17 12:29:10');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsmedicalconditions3','sleepap','udsmedicalconditions','SLEEPAP','smallint',NULL,5,0,22,'sleepap','short',NULL,'No','2015-02-17 12:29:10');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsmedicalconditions3','remdis','udsmedicalconditions','REMDIS','smallint',NULL,5,0,23,'remdis','short',NULL,'No','2015-02-17 12:29:10');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsmedicalconditions3','hyposom','udsmedicalconditions','HYPOSOM','smallint',NULL,5,0,24,'hyposom','short',NULL,'No','2015-02-17 12:29:10');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsmedicalconditions3','sleepoth','udsmedicalconditions','SLEEPOTH','smallint',NULL,5,0,25,'sleepoth','short',NULL,'No','2015-02-17 12:29:10');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsmedicalconditions3','sleepotx','udsmedicalconditions','SLEEPOTX','varchar',60,NULL,NULL,26,'sleepotx','string',NULL,'No','2015-02-17 12:29:10');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsmedicalconditions3','angiocp','udsmedicalconditions','ANGIOCP','smallint',NULL,5,0,27,'angiocp','short',NULL,'No','2015-02-17 12:29:10');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsmedicalconditions3','angiopci','udsmedicalconditions','ANGIOPCI','smallint',NULL,5,0,28,'angiopci','short',NULL,'No','2015-02-17 12:29:10');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsmedicalconditions3','pacemake','udsmedicalconditions','PACEMAKE','smallint',NULL,5,0,29,'pacemake','short',NULL,'No','2015-02-17 12:29:10');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsmedicalconditions3','hvalve','udsmedicalconditions','HVALVE','smallint',NULL,5,0,30,'hvalve','short',NULL,'No','2015-02-17 12:29:10');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsmedicalconditions3','antienc','udsmedicalconditions','ANTIENC','smallint',NULL,5,0,31,'antienc','short',NULL,'No','2015-02-17 12:29:10');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsmedicalconditions3','antiencx','udsmedicalconditions','ANTIENCX','varchar',60,NULL,NULL,32,'antiencx','string',NULL,'No','2015-02-17 12:29:10');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsmedicalconditions3','othcond','udsmedicalconditions','OTHCOND','smallint',NULL,5,0,33,'othcond','short',NULL,'No','2015-02-17 12:29:10');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsmedicalconditions3','othcondx','udsmedicalconditions','OTHCONDX','varchar',60,NULL,NULL,34,'othcondx','string',NULL,'No','2015-02-17 12:29:10');




-- M1 UDS Milestone
DELETE from datadictionary where instance='lava' and scope='crms-nacc' and entity='udsmilestone3';

DELETE from viewproperty where instance='lava' and scope='crms-nacc' and entity='udsmilestone3';

DELETE from hibernateproperty where instance='lava' and scope='crms-nacc' and entity='udsmilestone3';

INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsmilestone3',1,'changemo','1a. Date of status change, month','','',1,'udsmilestone','CHANGEMO',1,'smallint','',1,'null','Date of status change, month','1a.','2015-02-27 16:36:47');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsmilestone3',2,'changedy','1b. Date of status change, day','','',1,'udsmilestone','CHANGEDY',2,'smallint','',1,'null','Date of status change, day','1b.','2015-02-27 16:36:47');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsmilestone3',3,'changeyr','1c. Date of status change, year','','',1,'udsmilestone','CHANGEYR',3,'smallint','',1,'null','Date of status change, year','1c.','2015-02-27 16:36:47');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsmilestone3',4,'protocol','2a. UDS data collection status changed; subject\'s new status is:','','',1,'udsmilestone','PROTOCOL',4,'smallint','',1,'null','UDS data collection status changed; subject\'s new status is:','2a.','2015-02-27 16:36:47');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsmilestone3',5,'aconsent','2a1. Autopsy consent on file?','','',1,'udsmilestone','ACONSENT',5,'smallint','',1,'null','Autopsy consent on file?','2a1.','2015-02-27 16:36:47');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsmilestone3',6,'recogim','2b1. Subject is too cognitively impaired','','',1,'udsmilestone','RECOGIM',6,'smallint','',1,'null','Subject is too cognitively impaired','2b1.','2015-02-27 16:36:47');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsmilestone3',7,'rephyill','2b2. Subject is too ill or physically impaired','','',1,'udsmilestone','REPHYILL',7,'smallint','',1,'null','Subject is too ill or physically impaired','2b2.','2015-02-27 16:36:47');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsmilestone3',8,'rerefuse','2b3. Subject refuses neuropsychological testing or clinical exam','','',1,'udsmilestone','REREFUSE',8,'smallint','',1,'null','Subject refuses neuropsychological testing or clinical exam','2b3.','2015-02-27 16:36:47');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsmilestone3',9,'renavail','2b4. Subject or co-participant unreachable, not available, or moved away','','',1,'udsmilestone','RENAVAIL',9,'smallint','',1,'null','Subject or co-participant unreachable, not available, or moved away','2b4.','2015-02-27 16:36:47');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsmilestone3',10,'renurse','2b5. Subject has permanently entered nursing home','','',1,'udsmilestone','RENURSE',10,'smallint','',1,'null','Subject has permanently entered nursing home','2b5.','2015-02-27 16:36:47');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsmilestone3',11,'nursemo','2b5a. Date permanently moved to nursing home, month','','',1,'udsmilestone','NURSEMO',11,'smallint','',1,'null','Date permanently moved to nursing home, month','2b5a.','2015-02-27 16:36:47');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsmilestone3',12,'nursedy','2b5b. Date permanently moved to nursing home, day','','',1,'udsmilestone','NURSEDY',12,'smallint','',1,'null','Date permanently moved to nursing home, day','2b5b.','2015-02-27 16:36:47');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsmilestone3',13,'nurseyr','2b5c. Date permanently moved to nursing home, year','','',1,'udsmilestone','NURSEYR',13,'smallint','',1,'null','Date permanently moved to nursing home, year','2b5c.','2015-02-27 16:36:47');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsmilestone3',14,'rejoin','2b6. Subject is rejoining ADC','','',1,'udsmilestone','REJOIN',14,'smallint','',1,'null','Subject is rejoining ADC','2b6.','2015-02-27 16:36:47');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsmilestone3',15,'ftlddisc','3. Subject will no longer receive FTLD Module follow-up, but annual in-person UDS visits will continue','','',1,'udsmilestone','FTLDDISC',15,'smallint','',1,'null','Subject will no longer receive FTLD Module follow-up, but annual in-person UDS visits will continue','3.','2015-02-27 16:36:47');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsmilestone3',16,'ftldreas','3a. FTLD discontinued reason','','',1,'udsmilestone','FTLDREAS',16,'smallint','',1,'null','FTLD discontinued reason','3a.','2015-02-27 16:36:47');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsmilestone3',17,'ftldreax','3a1. Other, specify','','',1,'udsmilestone','FTLDREAX',17,'varchar','60',1,'null','Other, specify','3a1.','2015-02-27 16:36:47');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsmilestone3',18,'deceased','4a. Subject has died','','',1,'udsmilestone','DECEASED',18,'smallint','',1,'null','Subject has died','4a.','2015-02-27 16:36:47');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsmilestone3',19,'discont','4b. Subject has been dropped from ADC','','',1,'udsmilestone','DISCONT',19,'smallint','',1,'null','Subject has been dropped from ADC','4b.','2015-02-27 16:36:47');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsmilestone3',20,'deathmo','5a1. Date of death, month','','',1,'udsmilestone','DEATHMO',20,'smallint','',1,'null','Date of death, month','5a1.','2015-02-27 16:36:47');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsmilestone3',21,'deathdy','5a2. Date of death, day','','',1,'udsmilestone','DEATHDY',21,'smallint','',1,'null','Date of death, day','5a2.','2015-02-27 16:36:47');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsmilestone3',22,'deathyr','5a3. Date of death, year','','',1,'udsmilestone','DEATHYR',22,'smallint','',1,'null','Date of death, year','5a3.','2015-02-27 16:36:47');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsmilestone3',23,'autopsy','5b. ADC autopsy','','',1,'udsmilestone','AUTOPSY',23,'smallint','',1,'null','ADC autopsy','5b.','2015-02-27 16:36:47');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsmilestone3',24,'discmo','6a1. Date dropped from ADC, month','','',1,'udsmilestone','DISCMO',24,'smallint','',1,'null','Date dropped from ADC, month','6a1.','2015-02-27 16:36:47');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsmilestone3',25,'discdy','6a2. Date dropped from ADC, day','','',1,'udsmilestone','DISCDY',25,'smallint','',1,'null','Date dropped from ADC, day','6a2.','2015-02-27 16:36:47');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsmilestone3',26,'discyr','6a3. Date dropped from ADC, year','','',1,'udsmilestone','DISCYR',26,'smallint','',1,'null','Date dropped from ADC, year','6a3.','2015-02-27 16:36:47');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsmilestone3',27,'dropreas','6b. Primary reason subject discontinued ADC participation','','',1,'udsmilestone','DROPREAS',27,'smallint','',1,'null','Primary reason subject discontinued ADC participation','6b.','2015-02-27 16:36:47');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsmilestone3.changemo','en','lava','crms-nacc',NULL,'udsmilestone3','changemo',NULL,'r','scale','Yes','Date of status change, month','1a.',NULL,35,0,NULL,'uds.m1.month',NULL,1,'1a. Date of status change, month','2015-02-27 17:04:11');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsmilestone3.changedy','en','lava','crms-nacc',NULL,'udsmilestone3','changedy',NULL,'r','scale','Yes','Date of status change, day','1b.',NULL,35,0,NULL,'uds.m1.day',NULL,2,'1b. Date of status change, day','2015-02-27 17:04:11');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsmilestone3.changeyr','en','lava','crms-nacc',NULL,'udsmilestone3','changeyr',NULL,'r','scale','Yes','Date of status change, year','1c.',NULL,35,0,NULL,'uds.m1.year',NULL,3,'1c. Date of status change, year','2015-02-27 17:04:11');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsmilestone3.protocol','en','lava','crms-nacc',NULL,'udsmilestone3','protocol',NULL,'r','scale','Yes','UDS data collection status changed; subject\'s new status is:','2a.',NULL,35,0,NULL,'uds.v3.m1.protocol',NULL,4,'2a. UDS data collection status changed; subject\'s new status is:','2015-02-27 17:04:11');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsmilestone3.aconsent','en','lava','crms-nacc',NULL,'udsmilestone3','aconsent',NULL,'r','scale','Yes','2a1. Autopsy consent on file?','',NULL,35,0,NULL,'uds.noYes01',NULL,5,'2a1. Autopsy consent on file?','2015-02-27 17:04:11');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsmilestone3.recogim','en','lava','crms-nacc',NULL,'udsmilestone3','recogim',NULL,'r','scale','Yes','2b1. Subject is too cognitively impaired','',NULL,35,0,NULL,'uds.noYes01',NULL,6,'2b1. Subject is too cognitively impaired','2015-02-27 17:04:11');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsmilestone3.rephyill','en','lava','crms-nacc',NULL,'udsmilestone3','rephyill',NULL,'r','scale','Yes','2b2. Subject is too ill or physically impaired','',NULL,35,0,NULL,'uds.noYes01',NULL,7,'2b2. Subject is too ill or physically impaired','2015-02-27 17:04:11');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsmilestone3.rerefuse','en','lava','crms-nacc',NULL,'udsmilestone3','rerefuse',NULL,'r','scale','Yes','2b3. Subject refuses neuropsychological testing or clinical exam','',NULL,35,0,NULL,'uds.noYes01',NULL,8,'2b3. Subject refuses neuropsychological testing or clinical exam','2015-02-27 17:04:11');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsmilestone3.renavail','en','lava','crms-nacc',NULL,'udsmilestone3','renavail',NULL,'r','scale','Yes','2b4. Subject or co-participant unreachable, not available, or moved away','',NULL,35,0,NULL,'uds.noYes01',NULL,9,'2b4. Subject or co-participant unreachable, not available, or moved away','2015-02-27 17:04:11');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsmilestone3.renurse','en','lava','crms-nacc',NULL,'udsmilestone3','renurse',NULL,'r','scale','Yes','2b5. Subject has permanently entered nursing home','',NULL,35,0,NULL,'uds.noYes01',NULL,10,'2b5. Subject has permanently entered nursing home','2015-02-27 17:04:11');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsmilestone3.nurseMo','en','lava','crms-nacc',NULL,'udsmilestone3','nurseMo',NULL,'r','range','Yes','2b5a. Date permanently moved to nursing home, month','',NULL,35,0,NULL,'uds.m1.month',NULL,11,'2b5a. Date permanently moved to nursing home, month','2015-02-27 17:04:11');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsmilestone3.nurseDy','en','lava','crms-nacc',NULL,'udsmilestone3','nurseDy',NULL,'r','range','Yes','2b5b. Date permanently moved to nursing home, day','',NULL,35,0,NULL,'uds.m1.day',NULL,12,'2b5b. Date permanently moved to nursing home, day','2015-02-27 17:04:11');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsmilestone3.nurseYr','en','lava','crms-nacc',NULL,'udsmilestone3','nurseYr',NULL,'r','range','Yes','2b5c. Date permanently moved to nursing home, year','',NULL,35,0,NULL,'uds.m1.year',NULL,13,'2b5c. Date permanently moved to nursing home, year','2015-02-27 17:04:11');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsmilestone3.rejoin','en','lava','crms-nacc',NULL,'udsmilestone3','rejoin',NULL,'r','scale','Yes','2b6. Subject is rejoining ADC','',NULL,35,0,NULL,'uds.noYes01',NULL,14,'2b6. Subject is rejoining ADC','2015-02-27 17:04:11');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsmilestone3.ftlddisc','en','lava','crms-nacc',NULL,'udsmilestone3','ftlddisc',NULL,'r','scale','Yes','Subject will no longer receive FTLD Module follow-up, but annual in-person UDS visits will continue','3.',NULL,35,0,NULL,'uds.noYes01',NULL,15,'3. Subject will no longer receive FTLD Module follow-up, but annual in-person UDS visits will continue','2015-02-27 17:04:11');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsmilestone3.ftldreas','en','lava','crms-nacc',NULL,'udsmilestone3','ftldreas',NULL,'r','scale','Yes','3a. FTLD discontinued reason','',NULL,35,0,NULL,'uds.m1.ftldreas',NULL,16,'3a. FTLD discontinued reason','2015-02-27 17:04:11');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsmilestone3.ftldreax','en','lava','crms-nacc',NULL,'udsmilestone3','ftldreax',NULL,'r','string','Yes','3a1. Other, specify','',60,35,0,'onkeypress="UDS_onlyNaccCharactersAllowed(event)"','',NULL,17,'3a1. Other, specify','2015-02-27 17:04:11');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsmilestone3.deceased','en','lava','crms-nacc',NULL,'udsmilestone3','deceased',NULL,'r','scale','Yes','Subject has died','4a.',NULL,35,0,NULL,'uds.noYes01',NULL,18,'4a. Subject has died','2015-02-27 17:04:11');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsmilestone3.discont','en','lava','crms-nacc',NULL,'udsmilestone3','discont',NULL,'r','scale','Yes','Subject has been dropped from ADC','4b.',NULL,35,0,NULL,'uds.noYes01',NULL,19,'4b. Subject has been dropped from ADC','2015-02-27 17:04:11');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsmilestone3.deathMo','en','lava','crms-nacc',NULL,'udsmilestone3','deathMo',NULL,'r','range','Yes','Date of death, month','5a1.',NULL,35,0,NULL,'uds.m1.month',NULL,20,'5a1. Date of death, month','2015-02-27 17:04:11');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsmilestone3.deathDy','en','lava','crms-nacc',NULL,'udsmilestone3','deathDy',NULL,'r','range','Yes','Date of death, day','5a2.',NULL,35,0,NULL,'uds.m1.day',NULL,21,'5a2. Date of death, day','2015-02-27 17:04:11');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsmilestone3.deathYr','en','lava','crms-nacc',NULL,'udsmilestone3','deathYr',NULL,'r','range','Yes','Date of death, year','5a3.',NULL,35,0,NULL,'uds.m1.year',NULL,22,'5a3. Date of death, year','2015-02-27 17:04:11');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsmilestone3.autopsy','en','lava','crms-nacc',NULL,'udsmilestone3','autopsy',NULL,'r','scale','Yes','ADC autopsy','5b.',NULL,35,0,NULL,'uds.m1.autopsy',NULL,23,'5b. ADC autopsy','2015-02-27 17:04:11');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsmilestone3.discMo','en','lava','crms-nacc',NULL,'udsmilestone3','discMo',NULL,'r','range','Yes','Date dropped from ADC, month','6a1.',NULL,35,0,NULL,'uds.m1.month',NULL,24,'6a1. Date dropped from ADC, month','2015-02-27 17:04:11');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsmilestone3.discDy','en','lava','crms-nacc',NULL,'udsmilestone3','discDy',NULL,'r','range','Yes','Date dropped from ADC, day','6a2.',NULL,35,0,NULL,'uds.m1.day',NULL,25,'6a2. Date dropped from ADC, day','2015-02-27 17:04:11');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsmilestone3.discYr','en','lava','crms-nacc',NULL,'udsmilestone3','discYr',NULL,'r','range','Yes','Date dropped from ADC, year','6a3.',NULL,35,0,NULL,'uds.m1.year',NULL,26,'6a3. Date dropped from ADC, year','2015-02-27 17:04:11');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsmilestone3.dropreas','en','lava','crms-nacc',NULL,'udsmilestone3','dropreas',NULL,'r','scale','Yes','Primary reason subject discontinued ADC participation','6b.',NULL,35,0,NULL,'uds.m1.dropreas',NULL,27,'6b. Primary reason subject discontinued ADC participation','2015-02-27 17:04:11');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsmilestone3','changemo','udsmilestone','CHANGEMO','smallint',NULL,5,0,1,'changemo','short',NULL,'No','2015-02-27 17:04:11');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsmilestone3','changedy','udsmilestone','CHANGEDY','smallint',NULL,5,0,2,'changedy','short',NULL,'No','2015-02-27 17:04:11');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsmilestone3','changeyr','udsmilestone','CHANGEYR','smallint',NULL,5,0,3,'changeyr','short',NULL,'No','2015-02-27 17:04:11');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsmilestone3','protocol','udsmilestone','PROTOCOL','smallint',NULL,5,0,4,'protocol','short',NULL,'No','2015-02-27 17:04:11');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsmilestone3','aconsent','udsmilestone','ACONSENT','smallint',NULL,5,0,5,'aconsent','short',NULL,'No','2015-02-27 17:04:11');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsmilestone3','recogim','udsmilestone','RECOGIM','smallint',NULL,5,0,6,'recogim','short',NULL,'No','2015-02-27 17:04:11');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsmilestone3','rephyill','udsmilestone','REPHYILL','smallint',NULL,5,0,7,'rephyill','short',NULL,'No','2015-02-27 17:04:11');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsmilestone3','rerefuse','udsmilestone','REREFUSE','smallint',NULL,5,0,8,'rerefuse','short',NULL,'No','2015-02-27 17:04:11');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsmilestone3','renavail','udsmilestone','RENAVAIL','smallint',NULL,5,0,9,'renavail','short',NULL,'No','2015-02-27 17:04:11');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsmilestone3','renurse','udsmilestone','RENURSE','smallint',NULL,5,0,10,'renurse','short',NULL,'No','2015-02-27 17:04:11');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsmilestone3','nursemo','udsmilestone','NURSEMO','smallint',NULL,5,0,11,'nursemo','short',NULL,'No','2015-02-27 17:04:11');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsmilestone3','nursedy','udsmilestone','NURSEDY','smallint',NULL,5,0,12,'nursedy','short',NULL,'No','2015-02-27 17:04:11');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsmilestone3','nurseyr','udsmilestone','NURSEYR','smallint',NULL,5,0,13,'nurseyr','short',NULL,'No','2015-02-27 17:04:11');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsmilestone3','rejoin','udsmilestone','REJOIN','smallint',NULL,5,0,14,'rejoin','short',NULL,'No','2015-02-27 17:04:11');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsmilestone3','ftlddisc','udsmilestone','FTLDDISC','smallint',NULL,5,0,15,'ftlddisc','short',NULL,'No','2015-02-27 17:04:11');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsmilestone3','ftldreas','udsmilestone','FTLDREAS','smallint',NULL,5,0,16,'ftldreas','short',NULL,'No','2015-02-27 17:04:11');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsmilestone3','ftldreax','udsmilestone','FTLDREAX','varchar',60,NULL,NULL,17,'ftldreax','string',NULL,'No','2015-02-27 17:04:11');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsmilestone3','deceased','udsmilestone','DECEASED','smallint',NULL,5,0,18,'deceased','short',NULL,'No','2015-02-27 17:04:11');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsmilestone3','discont','udsmilestone','DISCONT','smallint',NULL,5,0,19,'discont','short',NULL,'No','2015-02-27 17:04:11');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsmilestone3','deathmo','udsmilestone','DEATHMO','smallint',NULL,5,0,20,'deathmo','short',NULL,'No','2015-02-27 17:04:11');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsmilestone3','deathdy','udsmilestone','DEATHDY','smallint',NULL,5,0,21,'deathdy','short',NULL,'No','2015-02-27 17:04:11');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsmilestone3','deathyr','udsmilestone','DEATHYR','smallint',NULL,5,0,22,'deathyr','short',NULL,'No','2015-02-27 17:04:11');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsmilestone3','autopsy','udsmilestone','AUTOPSY','smallint',NULL,5,0,23,'autopsy','short',NULL,'No','2015-02-27 17:04:11');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsmilestone3','discmo','udsmilestone','DISCMO','smallint',NULL,5,0,24,'discmo','short',NULL,'No','2015-02-27 17:04:11');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsmilestone3','discdy','udsmilestone','DISCDY','smallint',NULL,5,0,25,'discdy','short',NULL,'No','2015-02-27 17:04:11');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsmilestone3','discyr','udsmilestone','DISCYR','smallint',NULL,5,0,26,'discyr','short',NULL,'No','2015-02-27 17:04:11');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsmilestone3','dropreas','udsmilestone','DROPREAS','smallint',NULL,5,0,27,'dropreas','short',NULL,'No','2015-02-27 17:04:11');




-- C2 UDS Neuropsych Moca
DROP TABLE IF EXISTS `udsneuropsychmoca`;
CREATE TABLE IF NOT EXISTS `udsneuropsychmoca` (
  `InstrID` INT NOT NULL ,
  `MOCACOMP` smallint NULL DEFAULT null ,
  `MOCAREAS` smallint NULL DEFAULT null ,
  `MOCALOC` smallint NULL DEFAULT null ,
  `MOCALAN` smallint NULL DEFAULT null ,
  `MOCALANX` varchar(60) NULL DEFAULT null ,
  `MOCAVIS` smallint NULL DEFAULT null ,
  `MOCAHEAR` smallint NULL DEFAULT null ,
  `MOCATOTS` smallint NULL DEFAULT null ,
  `MOCATRAI` smallint NULL DEFAULT null ,
  `MOCACUBE` smallint NULL DEFAULT null ,
  `MOCACLOC` smallint NULL DEFAULT null ,
  `MOCACLON` smallint NULL DEFAULT null ,
  `MOCACLOH` smallint NULL DEFAULT null ,
  `MOCANAMI` smallint NULL DEFAULT null ,
  `MOCAREGI` smallint NULL DEFAULT null ,
  `MOCADIGI` smallint NULL DEFAULT null ,
  `MOCALETT` smallint NULL DEFAULT null ,
  `MOCASER7` smallint NULL DEFAULT null ,
  `MOCAREPE` smallint NULL DEFAULT null ,
  `MOCAFLUE` smallint NULL DEFAULT null ,
  `MOCAABST` smallint NULL DEFAULT null ,
  `MOCARECN` smallint NULL DEFAULT null ,
  `MOCARECC` smallint NULL DEFAULT null ,
  `MOCARECR` smallint NULL DEFAULT null ,
  `MOCAORDT` smallint NULL DEFAULT null ,
  `MOCAORMO` smallint NULL DEFAULT null ,
  `MOCAORYR` smallint NULL DEFAULT null ,
  `MOCAORDY` smallint NULL DEFAULT null ,
  `MOCAORPL` smallint NULL DEFAULT null ,
  `MOCAORCT` smallint NULL DEFAULT null ,
  `NPSYCLOC` smallint NULL DEFAULT null ,
  `NPSYLAN` smallint NULL DEFAULT null ,
  `NPSYLANX` varchar(60) NULL DEFAULT null ,
  `CRAFTVRS` smallint NULL DEFAULT null ,
  `CRAFTURS` smallint NULL DEFAULT null ,
  `UDSBENTC` smallint NULL DEFAULT null ,
  `DIGFORCT` smallint NULL DEFAULT null ,
  `DIGFORSL` smallint NULL DEFAULT null ,
  `DIGBACCT` smallint NULL DEFAULT null ,
  `DIGBACLS` smallint NULL DEFAULT null ,
  `ANIMALS` smallint NULL DEFAULT null ,
  `VEG` smallint NULL DEFAULT null ,
  `TRAILA` smallint NULL DEFAULT null ,
  `TRAILARR` smallint NULL DEFAULT null ,
  `TRAILALI` smallint NULL DEFAULT null ,
  `TRAILB` smallint NULL DEFAULT null ,
  `TRAILBRR` smallint NULL DEFAULT null ,
  `TRAILBLI` smallint NULL DEFAULT null ,
  `CRAFTDVR` smallint NULL DEFAULT null ,
  `CRAFTDRE` smallint NULL DEFAULT null ,
  `CRAFTDTI` smallint NULL DEFAULT null ,
  `CRAFTCUE` smallint NULL DEFAULT null ,
  `UDSBENTD` smallint NULL DEFAULT null ,
  `UDSBENRS` smallint NULL DEFAULT null ,
  `MINTTOTS` smallint NULL DEFAULT null ,
  `MINTTOTW` smallint NULL DEFAULT null ,
  `MINTSCNG` smallint NULL DEFAULT null ,
  `MINTSCNC` smallint NULL DEFAULT null ,
  `MINTPCNG` smallint NULL DEFAULT null ,
  `MINTPCNC` smallint NULL DEFAULT null ,
  `UDSVERFC` smallint NULL DEFAULT null ,
  `UDSVERFN` smallint NULL DEFAULT null ,
  `UDSVERNF` smallint NULL DEFAULT null ,
  `UDSVERLC` smallint NULL DEFAULT null ,
  `UDSVERLR` smallint NULL DEFAULT null ,
  `UDSVERLN` smallint NULL DEFAULT null ,
  `UDSVERTN` smallint NULL DEFAULT null ,
  `UDSVERTE` smallint NULL DEFAULT null ,
  `UDSVERTI` smallint NULL DEFAULT null ,
  `COGSTAT` smallint NULL DEFAULT null ,
  PRIMARY KEY (`InstrID`) )
ENGINE = InnoDB;

ALTER TABLE `udsneuropsychmoca` ADD CONSTRAINT `udsneuropsychmoca__InstrID`
 FOREIGN KEY (`InstrID` )
 REFERENCES `instrumenttracking` (`InstrID`)
 ON DELETE NO ACTION
 ON UPDATE NO ACTION, ADD INDEX `udsneuropsychmoca__InstrID` (`InstrID` ASC);

INSERT IGNORE into instrument(instrname, tablename, formname, hasversion) values('UDS Neuropsych Moca','Multiple','LavaWebOnly',1);

DELETE from datadictionary where instance='lava' and scope='crms-nacc' and entity='udsneuropsychmoca3';

DELETE from viewproperty where instance='lava' and scope='crms-nacc' and entity='udsneuropsychmoca3';

DELETE from hibernateproperty where instance='lava' and scope='crms-nacc' and entity='udsneuropsychmoca3';

INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsneuropsychmoca3',1,'mocacomp','1a. Was any part of MoCA administered?','','',1,'udsneuropsychmoca','MOCACOMP',1,'smallint','',1,'null','Was any part of MoCA administered?','1a.','2015-02-17 19:49:47');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsneuropsychmoca3',2,'mocareas','1a1. Was any part of MoCA administered? If No, enter reason code, 95-98','','',1,'udsneuropsychmoca','MOCAREAS',2,'smallint','',1,'null','Was any part of MoCA administered? If No, enter reason code, 95–98','1a1.','2015-02-17 19:49:47');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsneuropsychmoca3',3,'mocaloc','1b. MoCA was administered?','','',1,'udsneuropsychmoca','MOCALOC',3,'smallint','',1,'null','MoCA was administered?','1b.','2015-02-17 19:49:47');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsneuropsychmoca3',4,'mocalan','1c. Language of MoCA administration','','',1,'udsneuropsychmoca','MOCALAN',4,'smallint','',1,'null','Language of MoCA administration','1c.','2015-02-17 19:49:47');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsneuropsychmoca3',5,'mocalanx','1c1. Language of MoCA administration - Other specify','','',1,'udsneuropsychmoca','MOCALANX',5,'varchar','60',1,'null','Language of MoCA administration - Other specify','1c1.','2015-02-17 19:49:47');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsneuropsychmoca3',6,'mocavis','1d. Subject was unable to complete one or more sections due to visual impairment','','',1,'udsneuropsychmoca','MOCAVIS',6,'smallint','',1,'null','Subject was unable to complete one or more sections due to visual impairment','1d.','2015-02-17 19:49:47');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsneuropsychmoca3',7,'mocahear','1e. Subject was unable to complete one or more sections due to hearing impairment','','',1,'udsneuropsychmoca','MOCAHEAR',7,'smallint','',1,'null','Subject was unable to complete one or more sections due to hearing impairment','1e.','2015-02-17 19:49:47');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsneuropsychmoca3',8,'mocatots','1f. MoCA Total Raw Score - uncorrected','','',1,'udsneuropsychmoca','MOCATOTS',8,'smallint','',1,'null','MoCA Total Raw Score - uncorrected','1f.','2015-02-17 19:49:47');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsneuropsychmoca3',9,'mocatrai','1g. MoCA: Visuospatial/executive - Trails','','',1,'udsneuropsychmoca','MOCATRAI',9,'smallint','',1,'null','MoCA: Visuospatial/executive - Trails','1g.','2015-02-17 19:49:47');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsneuropsychmoca3',10,'mocacube','1h. MoCA: Visuospatial/executive - Cube','','',1,'udsneuropsychmoca','MOCACUBE',10,'smallint','',1,'null','MoCA: Visuospatial/executive - Cube','1h.','2015-02-17 19:49:47');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsneuropsychmoca3',11,'mocacloc','1i. MoCA: Visuospatial/executive - Clock contour','','',1,'udsneuropsychmoca','MOCACLOC',11,'smallint','',1,'null','MoCA: Visuospatial/executive - Clock contour','1i.','2015-02-17 19:49:47');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsneuropsychmoca3',12,'mocaclon','1j. MoCA: Visuospatial/executive - Clock numbers','','',1,'udsneuropsychmoca','MOCACLON',12,'smallint','',1,'null','MoCA: Visuospatial/executive - Clock numbers','1j.','2015-02-17 19:49:47');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsneuropsychmoca3',13,'mocacloh','1k. MoCA: Visuospatial/executive - Clock hands','','',1,'udsneuropsychmoca','MOCACLOH',13,'smallint','',1,'null','MoCA: Visuospatial/executive - Clock hands','1k.','2015-02-17 19:49:47');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsneuropsychmoca3',14,'mocanami','1l. MoCA: Language - Naming','','',1,'udsneuropsychmoca','MOCANAMI',14,'smallint','',1,'null','MoCA: Language - Naming','1l.','2015-02-17 19:49:47');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsneuropsychmoca3',15,'mocaregi','1m. MoCA: Memory - Registration (two trials)','','',1,'udsneuropsychmoca','MOCAREGI',15,'smallint','',1,'null','MoCA: Memory - Registration (two trials)','1m.','2015-02-17 19:49:47');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsneuropsychmoca3',16,'mocadigi','1n. MoCA: Attention - Digits','','',1,'udsneuropsychmoca','MOCADIGI',16,'smallint','',1,'null','MoCA: Attention - Digits','1n.','2015-02-17 19:49:47');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsneuropsychmoca3',17,'mocalett','1o. MoCA: Attention - Letter A','','',1,'udsneuropsychmoca','MOCALETT',17,'smallint','',1,'null','MoCA: Attention - Letter A','1o.','2015-02-17 19:49:47');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsneuropsychmoca3',18,'mocaser7','1p. MoCA: Attention - Serial 7s','','',1,'udsneuropsychmoca','MOCASER7',18,'smallint','',1,'null','MoCA: Attention - Serial 7s','1p.','2015-02-17 19:49:47');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsneuropsychmoca3',19,'mocarepe','1q. MoCA: Language - Repetition','','',1,'udsneuropsychmoca','MOCAREPE',19,'smallint','',1,'null','MoCA: Language - Repetition','1q.','2015-02-17 19:49:47');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsneuropsychmoca3',20,'mocaflue','1r. MoCA: Language - Fluency','','',1,'udsneuropsychmoca','MOCAFLUE',20,'smallint','',1,'null','MoCA: Language - Fluency','1r.','2015-02-17 19:49:47');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsneuropsychmoca3',21,'mocaabst','1s. MoCA: Abstraction','','',1,'udsneuropsychmoca','MOCAABST',21,'smallint','',1,'null','MoCA: Abstraction','1s.','2015-02-17 19:49:47');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsneuropsychmoca3',22,'mocarecn','1t. MoCA: Delayed recall - No cue','','',1,'udsneuropsychmoca','MOCARECN',22,'smallint','',1,'null','MoCA: Delayed recall - No cue','1t.','2015-02-17 19:49:47');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsneuropsychmoca3',23,'mocarecc','1u. MoCA: Delayed recall - Category cue','','',1,'udsneuropsychmoca','MOCARECC',23,'smallint','',1,'null','MoCA: Delayed recall - Category cue','1u.','2015-02-17 19:49:47');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsneuropsychmoca3',24,'mocarecr','1v. MoCA: Delayed recall Recognition','','',1,'udsneuropsychmoca','MOCARECR',24,'smallint','',1,'null','MoCA: Delayed recall Recognition','1v.','2015-02-17 19:49:47');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsneuropsychmoca3',25,'mocaordt','1w. MoCA: Orientation - Date','','',1,'udsneuropsychmoca','MOCAORDT',25,'smallint','',1,'null','MoCA: Orientation - Date','1w.','2015-02-17 19:49:47');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsneuropsychmoca3',26,'mocaormo','1x. MoCA: Orientation - Month','','',1,'udsneuropsychmoca','MOCAORMO',26,'smallint','',1,'null','MoCA: Orientation - Month','1x.','2015-02-17 19:49:47');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsneuropsychmoca3',27,'mocaoryr','1y. MoCA: Orientation - Year','','',1,'udsneuropsychmoca','MOCAORYR',27,'smallint','',1,'null','MoCA: Orientation - Year','1y.','2015-02-17 19:49:47');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsneuropsychmoca3',28,'mocaordy','1z. MoCA: Orientation - Day','','',1,'udsneuropsychmoca','MOCAORDY',28,'smallint','',1,'null','MoCA: Orientation - Day','1z.','2015-02-17 19:49:47');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsneuropsychmoca3',29,'mocaorpl','1aa. MoCA: Orientation - Place','','',1,'udsneuropsychmoca','MOCAORPL',29,'smallint','',1,'null','MoCA: Orientation - Place','1aa.','2015-02-17 19:49:47');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsneuropsychmoca3',30,'mocaorct','1bb. MoCA: Orientation - City','','',1,'udsneuropsychmoca','MOCAORCT',30,'smallint','',1,'null','MoCA: Orientation - City','1bb.','2015-02-17 19:49:47');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsneuropsychmoca3',31,'npsycloc','2a. The tests following the MoCA were administered','','',1,'udsneuropsychmoca','NPSYCLOC',31,'smallint','',1,'null','The tests following the MoCA were administered','2a.','2015-02-17 19:49:47');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsneuropsychmoca3',32,'npsylan','2b. Test following MoCA: Language of test administration','','',1,'udsneuropsychmoca','NPSYLAN',32,'smallint','',1,'null','Test following MoCA: Language of test administration','2b.','2015-02-17 19:49:47');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsneuropsychmoca3',33,'npsylanx','2b1. Testa following MoCA: Language of test administration - Other specify','','',1,'udsneuropsychmoca','NPSYLANX',33,'varchar','60',1,'null','Testa following MoCA: Language of test administration - Other specify','2b1.','2015-02-17 19:49:47');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsneuropsychmoca3',34,'craftvrs','3a. Craft Story 21 Recall (Immediate): Total story units recalled, verbatim scoring','','',1,'udsneuropsychmoca','CRAFTVRS',34,'smallint','',1,'null','Craft Story 21 Recall (Immediate): Total story units recalled, verbatim scoring','3a.','2015-02-17 19:49:47');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsneuropsychmoca3',35,'crafturs','3b. Craft Story 21 Recall (Immediate): Total story units recalled, paraphrase scoring','','',1,'udsneuropsychmoca','CRAFTURS',35,'smallint','',1,'null','Craft Story 21 Recall (Immediate): Total story units recalled, paraphrase scoring','3b.','2015-02-17 19:49:47');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsneuropsychmoca3',36,'udsbentc','4a. Benson Complex Figure Copy: Total Score for copy of Benson figure','','',1,'udsneuropsychmoca','UDSBENTC',36,'smallint','',1,'null','Benson Complex Figure Copy: Total Score for copy of Benson figure','4a.','2015-02-17 19:49:47');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsneuropsychmoca3',37,'digforct','5a. Number Span Test: Forward - Number of correct trials','','',1,'udsneuropsychmoca','DIGFORCT',37,'smallint','',1,'null','Number Span Test: Forward - Number of correct trials','5a.','2015-02-17 19:49:47');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsneuropsychmoca3',38,'digforsl','5b. Number Span Test: Forward - Longest span forward','','',1,'udsneuropsychmoca','DIGFORSL',38,'smallint','',1,'null','Number Span Test: Forward - Longest span forward','5b.','2015-02-17 19:49:47');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsneuropsychmoca3',39,'digbacct','6a. Number Span Test: Backward - Number of correct trials','','',1,'udsneuropsychmoca','DIGBACCT',39,'smallint','',1,'null','Number Span Test: Backward - Number of correct trials','6a.','2015-02-17 19:49:47');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsneuropsychmoca3',40,'digbacls','6b. Number Span Test: Backward - Longest span backward','','',1,'udsneuropsychmoca','DIGBACLS',40,'smallint','',1,'null','Number Span Test: Backward - Longest span backward','6b.','2015-02-17 19:49:47');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsneuropsychmoca3',41,'animals','7a. Category Fluency - Animals: Total number of animals named in 60 seconds','','',1,'udsneuropsychmoca','ANIMALS',41,'smallint','',1,'null','Category Fluency - Animals: Total number of animals named in 60 seconds','7a.','2015-02-17 19:49:47');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsneuropsychmoca3',42,'veg','7b. Category Fluency - Vegetables: Total number of vegtables named in 60 seconds','','',1,'udsneuropsychmoca','VEG',42,'smallint','',1,'null','Category Fluency - Vegetables: Total number of vegtables named in 60 seconds','7b.','2015-02-17 19:49:47');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsneuropsychmoca3',43,'traila','8a. Trail Making Test - Part A: Total number of seconds to complete','','',1,'udsneuropsychmoca','TRAILA',43,'smallint','',1,'null','Trail Making Test - Part A: Total number of seconds to complete','8a.','2015-02-17 19:49:47');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsneuropsychmoca3',44,'trailarr','8a1. Trail Making Test - Part A: Number of commission errors','','',1,'udsneuropsychmoca','TRAILARR',44,'smallint','',1,'null','Trail Making Test - Part A: Number of commission errors','8a1.','2015-02-17 19:49:47');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsneuropsychmoca3',45,'trailali','8a2. Trail Making Test - Part A: Number of correct lines','','',1,'udsneuropsychmoca','TRAILALI',45,'smallint','',1,'null','Trail Making Test - Part A: Number of correct lines','8a2.','2015-02-17 19:49:47');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsneuropsychmoca3',46,'trailb','8b. Trail Making Test Part B: Total number of seconds to complete','','',1,'udsneuropsychmoca','TRAILB',46,'smallint','',1,'null','Trail Making Test Part B: Total number of seconds to complete','8b.','2015-02-17 19:49:47');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsneuropsychmoca3',47,'trailbrr','8b1. Trail Making Test Part B: Number of commission errors','','',1,'udsneuropsychmoca','TRAILBRR',47,'smallint','',1,'null','Trail Making Test Part B: Number of commission errors','8b1.','2015-02-17 19:49:47');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsneuropsychmoca3',48,'trailbli','8b2. Trail Making Test Part B: Number of correct lines','','',1,'udsneuropsychmoca','TRAILBLI',48,'smallint','',1,'null','Trail Making Test Part B: Number of correct lines','8b2.','2015-02-17 19:49:47');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsneuropsychmoca3',49,'craftdvr','9a. Craft Story 21 Recall (Delayed): Total story units recalled, verbatim scoring','','',1,'udsneuropsychmoca','CRAFTDVR',49,'smallint','',1,'null','Craft Story 21 Recall (Delayed): Total story units recalled, verbatim scoring','9a.','2015-02-17 19:49:47');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsneuropsychmoca3',50,'craftdre','9b. Craft Story 21 Recall (Delayed): Total story units recalled, paraphrase scoring','','',1,'udsneuropsychmoca','CRAFTDRE',50,'smallint','',1,'null','Craft Story 21 Recall (Delayed): Total story units recalled, paraphrase scoring','9b.','2015-02-17 19:49:47');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsneuropsychmoca3',51,'craftdti','9c. Craft Story 21 Recall (Delayed): Delay time','','',1,'udsneuropsychmoca','CRAFTDTI',51,'smallint','',1,'null','Craft Story 21 Recall (Delayed): Delay time','9c.','2015-02-17 19:49:47');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsneuropsychmoca3',52,'craftcue','9d. Craft Story 21 Recall (Delayed): Cue (boy) needed','','',1,'udsneuropsychmoca','CRAFTCUE',52,'smallint','',1,'null','Craft Story 21 Recall (Delayed): Cue (boy) needed','9d.','2015-02-17 19:49:47');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsneuropsychmoca3',53,'udsbentd','10a. Benson Complex Figure Recall - Total score for drawing of Benson figure following 10- to 15-minuted delay','','',1,'udsneuropsychmoca','UDSBENTD',53,'smallint','',1,'null','Benson Complex Figure Recall - Total score for drawing of Benson figure following 10- to 15-minuted delay','10a.','2015-02-17 19:49:47');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsneuropsychmoca3',54,'udsbenrs','10b. Benson Complex Figure Recall - Recognized original stimulus among four options','','',1,'udsneuropsychmoca','UDSBENRS',54,'smallint','',1,'null','Benson Complex Figure Recall - Recognized original stimulus among four options','10b.','2015-02-17 19:49:47');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsneuropsychmoca3',55,'minttots','11a. Multilingual Naming Test (MINT) - Total score','','',1,'udsneuropsychmoca','MINTTOTS',55,'smallint','',1,'null','Multilingual Naming Test (MINT) - Total score','11a.','2015-02-17 19:49:47');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsneuropsychmoca3',56,'minttotw','11b. Multilingual Naming Test (MINT) - Total correct without semantic cue','','',1,'udsneuropsychmoca','MINTTOTW',56,'smallint','',1,'null','Multilingual Naming Test (MINT) - Total correct without semantic cue','11b.','2015-02-17 19:49:47');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsneuropsychmoca3',57,'mintscng','11c. Multilingual Naming Test (MINT) - Semantic cues: Number given','','',1,'udsneuropsychmoca','MINTSCNG',57,'smallint','',1,'null','Multilingual Naming Test (MINT) - Semantic cues: Number given','11c.','2015-02-17 19:49:47');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsneuropsychmoca3',58,'mintscnc','11d. Multilingual Naming Test (MINT) - Semantic cues: Number correct with cue','','',1,'udsneuropsychmoca','MINTSCNC',58,'smallint','',1,'null','Multilingual Naming Test (MINT) - Semantic cues: Number correct with cue','11d.','2015-02-17 19:49:47');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsneuropsychmoca3',59,'mintpcng','11e. Multilingual Naming Test (MINT) - Phonemic cues: Number given','','',1,'udsneuropsychmoca','MINTPCNG',59,'smallint','',1,'null','Multilingual Naming Test (MINT) - Phonemic cues: Number given','11e.','2015-02-17 19:49:47');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsneuropsychmoca3',60,'mintpcnc','11f. Multilingual Naming Test (MINT) - Phonemic cues: Number correct with cue','','',1,'udsneuropsychmoca','MINTPCNC',60,'smallint','',1,'null','Multilingual Naming Test (MINT) - Phonemic cues: Number correct with cue','11f.','2015-02-17 19:49:47');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsneuropsychmoca3',61,'udsverfc','12a. Verbal Fluency: Phonemic Test - Number of correct F-words generated in 1 minute','','',1,'udsneuropsychmoca','UDSVERFC',61,'smallint','',1,'null','Verbal Fluency: Phonemic Test - Number of correct F-words generated in 1 minute','12a.','2015-02-17 19:49:47');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsneuropsychmoca3',62,'udsverfn','12b. Verbal Fluency: Phonemic Test - Number of correct F-words repeated in 1 minute','','',1,'udsneuropsychmoca','UDSVERFN',62,'smallint','',1,'null','Verbal Fluency: Phonemic Test - Number of correct F-words repeated in 1 minute','12b.','2015-02-17 19:49:47');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsneuropsychmoca3',63,'udsvernf','12c. Verbal Fluency: Phonemic Test - Number of non-F-words and rule violation errors in 1 minute','','',1,'udsneuropsychmoca','UDSVERNF',63,'smallint','',1,'null','Verbal Fluency: Phonemic Test - Number of non-F-words and rule violation errors in 1 minute','12c.','2015-02-17 19:49:47');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsneuropsychmoca3',64,'udsverlc','12d. Verbal Fluency: Phonemic Test - Number of correct L-words generated in 1 minute','','',1,'udsneuropsychmoca','UDSVERLC',64,'smallint','',1,'null','Verbal Fluency: Phonemic Test - Number of correct L-words generated in 1 minute','12d.','2015-02-17 19:49:47');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsneuropsychmoca3',65,'udsverlr','12e. Verbal Fluency: Phonemic Test - Number of correct L-words repeated in 1 minute','','',1,'udsneuropsychmoca','UDSVERLR',65,'smallint','',1,'null','Verbal Fluency: Phonemic Test - Number of correct L-words repeated in 1 minute','12e.','2015-02-17 19:49:47');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsneuropsychmoca3',66,'udsverln','12f. Verbal Fluency: Phonemic Test - Number of non-L-words and rule violation errors in 1 minute','','',1,'udsneuropsychmoca','UDSVERLN',66,'smallint','',1,'null','Verbal Fluency: Phonemic Test - Number of non-L-words and rule violation errors in 1 minute','12f.','2015-02-17 19:49:47');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsneuropsychmoca3',67,'udsvertn','12g. Verbal Fluency: Phonemic Test - Total number of correct F-words and L-words','','',1,'udsneuropsychmoca','UDSVERTN',67,'smallint','',1,'null','Verbal Fluency: Phonemic Test - Total number of correct F-words and L-words','12g.','2015-02-17 19:49:47');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsneuropsychmoca3',68,'udsverte','12h. Verbal Fluency: Phonemic Test - Total number of F-word and L-words repetition errors','','',1,'udsneuropsychmoca','UDSVERTE',68,'smallint','',1,'null','Verbal Fluency: Phonemic Test - Total number of F-word and L-words repetition errors','12h.','2015-02-17 19:49:47');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsneuropsychmoca3',69,'udsverti','12i. Verbal Fluency: Phonemic Test - Number of non-F/L-words and rule violation errors','','',1,'udsneuropsychmoca','UDSVERTI',69,'smallint','',1,'null','Verbal Fluency: Phonemic Test - Number of non-F/L-words and rule violation errors','12i.','2015-02-17 19:49:47');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsneuropsychmoca3',70,'cogstat','13a. Overall appraisal: Per the clinician (e.g., neuropsychologist, behavioral neurologist, or other suitably qualified clinician), based on the UDS neuropsychological examination, the subjects cognitive status is deemed','','',1,'udsneuropsychmoca','COGSTAT',70,'smallint','',1,'null','Overall appraisal: Per the clinician (e.g., neuropsychologist, behavioral neurologist, or other suitably qualified clinician), based on the UDS neuropsychological examination, the subjects cognitive status is deemed','13a.','2015-02-17 19:49:47');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsneuropsychmoca3.mocacomp','en','lava','crms-nacc',NULL,'udsneuropsychmoca3','mocacomp',NULL,'r','scale','Yes','1a. Was any part of MoCA administered?',NULL,NULL,NULL,0,NULL,'uds.noYes01',NULL,1,'1a. Was any part of MoCA administered?','2015-02-17 19:50:26');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsneuropsychmoca3.mocareas','en','lava','crms-nacc',NULL,'udsneuropsychmoca3','mocareas',NULL,'r','scale','Yes','1a1. Was any part of MoCA administered? If No, enter reason code, 95-98',NULL,NULL,NULL,0,NULL,'uds.ref.c2.key95_98',NULL,2,'1a1. Was any part of MoCA administered? If No, enter reason code, 95–98','2015-02-17 19:50:26');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsneuropsychmoca3.mocaloc','en','lava','crms-nacc',NULL,'udsneuropsychmoca3','mocaloc',NULL,'r','scale','Yes','1b. MoCA was administered?',NULL,NULL,NULL,0,NULL,'uds.c2.loc',NULL,3,'1b. MoCA was administered?','2015-02-17 19:50:26');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsneuropsychmoca3.mocalan','en','lava','crms-nacc',NULL,'udsneuropsychmoca3','mocalan',NULL,'r','scale','Yes','1c. Language of MoCA administration',NULL,NULL,NULL,0,NULL,'uds.c2.lan',NULL,4,'1c. Language of MoCA administration','2015-02-17 19:50:26');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsneuropsychmoca3.mocalanx','en','lava','crms-nacc',NULL,'udsneuropsychmoca3','mocalanx',NULL,'r','string','Yes','1c1. Language of MoCA administration - Other specify',NULL,60,NULL,0,'onkeypress="UDS_onlyNaccCharactersAllowed(event)"','',NULL,5,'1c1. Language of MoCA administration - Other specify','2015-02-17 19:50:26');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsneuropsychmoca3.mocavis','en','lava','crms-nacc',NULL,'udsneuropsychmoca3','mocavis',NULL,'r','scale','Yes','1d. Subject was unable to complete one or more sections due to visual impairment',NULL,NULL,NULL,0,NULL,'uds.noYes01',NULL,6,'1d. Subject was unable to complete one or more sections due to visual impairment','2015-02-17 19:50:26');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsneuropsychmoca3.mocahear','en','lava','crms-nacc',NULL,'udsneuropsychmoca3','mocahear',NULL,'r','scale','Yes','1e. Subject was unable to complete one or more sections due to hearing impairment',NULL,NULL,NULL,0,NULL,'uds.noYes01',NULL,7,'1e. Subject was unable to complete one or more sections due to hearing impairment','2015-02-17 19:50:26');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsneuropsychmoca3.mocatots','en','lava','crms-nacc',NULL,'udsneuropsychmoca3','mocatots',NULL,'r','range','Yes','1f. MoCA Total Raw Score - uncorrected',NULL,NULL,NULL,0,NULL,'uds.c2.range0_30_noadmin',NULL,8,'1f. MoCA Total Raw Score - uncorrected','2015-02-17 19:50:26');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsneuropsychmoca3.mocatrai','en','lava','crms-nacc',NULL,'udsneuropsychmoca3','mocatrai',NULL,'r','range','Yes','1g. MoCA: Visuospatial/executive - Trails',NULL,NULL,NULL,0,NULL,'uds.c2.range0_1',NULL,9,'1g. MoCA: Visuospatial/executive - Trails','2015-02-17 19:50:26');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsneuropsychmoca3.mocacube','en','lava','crms-nacc',NULL,'udsneuropsychmoca3','mocacube',NULL,'r','range','Yes','1h. MoCA: Visuospatial/executive - Cube',NULL,NULL,NULL,0,NULL,'uds.c2.range0_1',NULL,10,'1h. MoCA: Visuospatial/executive - Cube','2015-02-17 19:50:26');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsneuropsychmoca3.mocacloc','en','lava','crms-nacc',NULL,'udsneuropsychmoca3','mocacloc',NULL,'r','range','Yes','1i. MoCA: Visuospatial/executive - Clock contour',NULL,NULL,NULL,0,NULL,'uds.c2.range0_1',NULL,11,'1i. MoCA: Visuospatial/executive - Clock contour','2015-02-17 19:50:26');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsneuropsychmoca3.mocaclon','en','lava','crms-nacc',NULL,'udsneuropsychmoca3','mocaclon',NULL,'r','range','Yes','1j. MoCA: Visuospatial/executive - Clock numbers',NULL,NULL,NULL,0,NULL,'uds.c2.range0_1',NULL,12,'1j. MoCA: Visuospatial/executive - Clock numbers','2015-02-17 19:50:26');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsneuropsychmoca3.mocacloh','en','lava','crms-nacc',NULL,'udsneuropsychmoca3','mocacloh',NULL,'r','range','Yes','1k. MoCA: Visuospatial/executive - Clock hands',NULL,NULL,NULL,0,NULL,'uds.c2.range0_1',NULL,13,'1k. MoCA: Visuospatial/executive - Clock hands','2015-02-17 19:50:26');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsneuropsychmoca3.mocanami','en','lava','crms-nacc',NULL,'udsneuropsychmoca3','mocanami',NULL,'r','range','Yes','1l. MoCA: Language - Naming',NULL,NULL,NULL,0,NULL,'uds.c2.range0_3',NULL,14,'1l. MoCA: Language - Naming','2015-02-17 19:50:26');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsneuropsychmoca3.mocaregi','en','lava','crms-nacc',NULL,'udsneuropsychmoca3','mocaregi',NULL,'r','range','Yes','1m. MoCA: Memory - Registration (two trials)',NULL,NULL,NULL,0,NULL,'uds.c2.range0_10',NULL,15,'1m. MoCA: Memory - Registration (two trials)','2015-02-17 19:50:26');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsneuropsychmoca3.mocadigi','en','lava','crms-nacc',NULL,'udsneuropsychmoca3','mocadigi',NULL,'r','range','Yes','1n. MoCA: Attention - Digits',NULL,NULL,NULL,0,NULL,'uds.c2.range0_2',NULL,16,'1n. MoCA: Attention - Digits','2015-02-17 19:50:26');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsneuropsychmoca3.mocalett','en','lava','crms-nacc',NULL,'udsneuropsychmoca3','mocalett',NULL,'r','range','Yes','1o. MoCA: Attention - Letter A',NULL,NULL,NULL,0,NULL,'uds.c2.range0_1',NULL,17,'1o. MoCA: Attention - Letter A','2015-02-17 19:50:26');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsneuropsychmoca3.mocaser7','en','lava','crms-nacc',NULL,'udsneuropsychmoca3','mocaser7',NULL,'r','range','Yes','1p. MoCA: Attention - Serial 7s',NULL,NULL,NULL,0,NULL,'uds.c2.range0_3',NULL,18,'1p. MoCA: Attention - Serial 7s','2015-02-17 19:50:26');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsneuropsychmoca3.mocarepe','en','lava','crms-nacc',NULL,'udsneuropsychmoca3','mocarepe',NULL,'r','range','Yes','1q. MoCA: Language - Repetition',NULL,NULL,NULL,0,NULL,'uds.c2.range0_2',NULL,19,'1q. MoCA: Language - Repetition','2015-02-17 19:50:26');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsneuropsychmoca3.mocaflue','en','lava','crms-nacc',NULL,'udsneuropsychmoca3','mocaflue',NULL,'r','range','Yes','1r. MoCA: Language - Fluency',NULL,NULL,NULL,0,NULL,'uds.c2.range0_1',NULL,20,'1r. MoCA: Language - Fluency','2015-02-17 19:50:26');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsneuropsychmoca3.mocaabst','en','lava','crms-nacc',NULL,'udsneuropsychmoca3','mocaabst',NULL,'r','range','Yes','1s. MoCA: Abstraction',NULL,NULL,NULL,0,NULL,'uds.c2.range0_2',NULL,21,'1s. MoCA: Abstraction','2015-02-17 19:50:26');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsneuropsychmoca3.mocarecn','en','lava','crms-nacc',NULL,'udsneuropsychmoca3','mocarecn',NULL,'r','range','Yes','1t. MoCA: Delayed recall - No cue',NULL,NULL,NULL,0,NULL,'uds.c2.range0_5',NULL,22,'1t. MoCA: Delayed recall - No cue','2015-02-17 19:50:26');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsneuropsychmoca3.mocarecc','en','lava','crms-nacc',NULL,'udsneuropsychmoca3','mocarecc',NULL,'r','range','Yes','1u. MoCA: Delayed recall - Category cue',NULL,NULL,NULL,0,NULL,'uds.c2.range0_5_NA',NULL,23,'1u. MoCA: Delayed recall - Category cue','2015-02-17 19:50:26');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsneuropsychmoca3.mocarecr','en','lava','crms-nacc',NULL,'udsneuropsychmoca3','mocarecr',NULL,'r','range','Yes','1v. MoCA: Delayed recall Recognition',NULL,NULL,NULL,0,NULL,'uds.c2.range0_5_NA',NULL,24,'1v. MoCA: Delayed recall Recognition','2015-02-17 19:50:26');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsneuropsychmoca3.mocaordt','en','lava','crms-nacc',NULL,'udsneuropsychmoca3','mocaordt',NULL,'r','range','Yes','1w. MoCA: Orientation - Date',NULL,NULL,NULL,0,NULL,'uds.c2.range0_1',NULL,25,'1w. MoCA: Orientation - Date','2015-02-17 19:50:26');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsneuropsychmoca3.mocaormo','en','lava','crms-nacc',NULL,'udsneuropsychmoca3','mocaormo',NULL,'r','range','Yes','1x. MoCA: Orientation - Month',NULL,NULL,NULL,0,NULL,'uds.c2.range0_1',NULL,26,'1x. MoCA: Orientation - Month','2015-02-17 19:50:26');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsneuropsychmoca3.mocaoryr','en','lava','crms-nacc',NULL,'udsneuropsychmoca3','mocaoryr',NULL,'r','range','Yes','1y. MoCA: Orientation - Year',NULL,NULL,NULL,0,NULL,'uds.c2.range0_1',NULL,27,'1y. MoCA: Orientation - Year','2015-02-17 19:50:26');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsneuropsychmoca3.mocaordy','en','lava','crms-nacc',NULL,'udsneuropsychmoca3','mocaordy',NULL,'r','range','Yes','1z. MoCA: Orientation - Day',NULL,NULL,NULL,0,NULL,'uds.c2.range0_1',NULL,28,'1z. MoCA: Orientation - Day','2015-02-17 19:50:26');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsneuropsychmoca3.mocaorpl','en','lava','crms-nacc',NULL,'udsneuropsychmoca3','mocaorpl',NULL,'r','range','Yes','1aa. MoCA: Orientation - Place',NULL,NULL,NULL,0,NULL,'uds.c2.range0_1',NULL,29,'1aa. MoCA: Orientation - Place','2015-02-17 19:50:26');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsneuropsychmoca3.mocaorct','en','lava','crms-nacc',NULL,'udsneuropsychmoca3','mocaorct',NULL,'r','range','Yes','1bb. MoCA: Orientation - City',NULL,NULL,NULL,0,NULL,'uds.c2.range0_1',NULL,30,'1bb. MoCA: Orientation - City','2015-02-17 19:50:26');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsneuropsychmoca3.npsycloc','en','lava','crms-nacc',NULL,'udsneuropsychmoca3','npsycloc',NULL,'r','scale','Yes','2a. The tests following the MoCA were administered',NULL,NULL,NULL,0,NULL,'uds.c2.loc',NULL,31,'2a. The tests following the MoCA were administered','2015-02-17 19:50:26');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsneuropsychmoca3.npsylan','en','lava','crms-nacc',NULL,'udsneuropsychmoca3','npsylan',NULL,'r','scale','Yes','2b. Test following MoCA: Language of test administration',NULL,NULL,NULL,0,NULL,'uds.c2.lan',NULL,32,'2b. Test following MoCA: Language of test administration','2015-02-17 19:50:26');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsneuropsychmoca3.npsylanx','en','lava','crms-nacc',NULL,'udsneuropsychmoca3','npsylanx',NULL,'r','string','Yes','2b1. Testa following MoCA: Language of test administration - Other specify',NULL,60,NULL,0,'onkeypress="UDS_onlyNaccCharactersAllowed(event)"','',NULL,33,'2b1. Testa following MoCA: Language of test administration - Other specify','2015-02-17 19:50:26');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsneuropsychmoca3.craftvrs','en','lava','crms-nacc',NULL,'udsneuropsychmoca3','craftvrs',NULL,'r','range','Yes','3a. Craft Story 21 Recall (Immediate): Total story units recalled, verbatim scoring',NULL,NULL,NULL,0,NULL,'uds.c2.range0_44',NULL,34,'3a. Craft Story 21 Recall (Immediate): Total story units recalled, verbatim scoring','2015-02-17 19:50:26');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsneuropsychmoca3.crafturs','en','lava','crms-nacc',NULL,'udsneuropsychmoca3','crafturs',NULL,'r','range','Yes','3b. Craft Story 21 Recall (Immediate): Total story units recalled, paraphrase scoring',NULL,NULL,NULL,0,NULL,'uds.range0_25',NULL,35,'3b. Craft Story 21 Recall (Immediate): Total story units recalled, paraphrase scoring','2015-02-17 19:50:26');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsneuropsychmoca3.udsbentc','en','lava','crms-nacc',NULL,'udsneuropsychmoca3','udsbentc',NULL,'r','range','Yes','4a. Benson Complex Figure Copy: Total Score for copy of Benson figure',NULL,NULL,NULL,0,NULL,'uds.c2.range0_17',NULL,36,'4a. Benson Complex Figure Copy: Total Score for copy of Benson figure','2015-02-17 19:50:26');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsneuropsychmoca3.digforct','en','lava','crms-nacc',NULL,'udsneuropsychmoca3','digforct',NULL,'r','range','Yes','5a. Number Span Test: Forward - Number of correct trials',NULL,NULL,NULL,0,NULL,'uds.c2.range0_14',NULL,37,'5a. Number Span Test: Forward - Number of correct trials','2015-02-17 19:50:26');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsneuropsychmoca3.digforsl','en','lava','crms-nacc',NULL,'udsneuropsychmoca3','digforsl',NULL,'r','scale','Yes','5b. Number Span Test: Forward - Longest span forward',NULL,NULL,NULL,0,NULL,'uds.c2.digforsl',NULL,38,'5b. Number Span Test: Forward - Longest span forward','2015-02-17 19:50:26');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsneuropsychmoca3.digbacct','en','lava','crms-nacc',NULL,'udsneuropsychmoca3','digbacct',NULL,'r','range','Yes','6a. Number Span Test: Backward - Number of correct trials',NULL,NULL,NULL,0,NULL,'uds.c2.range0_14',NULL,39,'6a. Number Span Test: Backward - Number of correct trials','2015-02-17 19:50:26');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsneuropsychmoca3.digbacls','en','lava','crms-nacc',NULL,'udsneuropsychmoca3','digbacls',NULL,'r','scale','Yes','6b. Number Span Test: Backward - Longest span backward',NULL,NULL,NULL,0,NULL,'uds.c2.digbacls',NULL,40,'6b. Number Span Test: Backward - Longest span backward','2015-02-17 19:50:26');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsneuropsychmoca3.animals','en','lava','crms-nacc',NULL,'udsneuropsychmoca3','animals',NULL,'r','range','Yes','7a. Category Fluency - Animals: Total number of animals named in 60 seconds',NULL,NULL,NULL,0,NULL,'uds.c2.range0_77',NULL,41,'7a. Category Fluency - Animals: Total number of animals named in 60 seconds','2015-02-17 19:50:26');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsneuropsychmoca3.veg','en','lava','crms-nacc',NULL,'udsneuropsychmoca3','veg',NULL,'r','range','Yes','7b. Category Fluency - Vegetables: Total number of vegtables named in 60 seconds',NULL,NULL,NULL,0,NULL,'uds.c2.range0_77',NULL,42,'7b. Category Fluency - Vegetables: Total number of vegtables named in 60 seconds','2015-02-17 19:50:26');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsneuropsychmoca3.traila','en','lava','crms-nacc',NULL,'udsneuropsychmoca3','traila',NULL,'r','range','Yes','8a. Trail Making Test - Part A: Total number of seconds to complete',NULL,NULL,NULL,0,NULL,'uds.c2.range0_150',NULL,43,'8a. Trail Making Test - Part A: Total number of seconds to complete','2015-02-17 19:50:26');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsneuropsychmoca3.trailarr','en','lava','crms-nacc',NULL,'udsneuropsychmoca3','trailarr',NULL,'r','range','Yes','8a1. Trail Making Test - Part A: Number of commission errors',NULL,NULL,NULL,0,NULL,'uds.range0_40',NULL,44,'8a1. Trail Making Test - Part A: Number of commission errors','2015-02-17 19:50:26');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsneuropsychmoca3.trailali','en','lava','crms-nacc',NULL,'udsneuropsychmoca3','trailali',NULL,'r','range','Yes','8a2. Trail Making Test - Part A: Number of correct lines',NULL,NULL,NULL,0,NULL,'uds.range0_24',NULL,45,'8a2. Trail Making Test - Part A: Number of correct lines','2015-02-17 19:50:26');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsneuropsychmoca3.trailb','en','lava','crms-nacc',NULL,'udsneuropsychmoca3','trailb',NULL,'r','range','Yes','8b. Trail Making Test Part B: Total number of seconds to complete',NULL,NULL,NULL,0,NULL,'uds.c2.range0_300',NULL,46,'8b. Trail Making Test Part B: Total number of seconds to complete','2015-02-17 19:50:26');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsneuropsychmoca3.trailbrr','en','lava','crms-nacc',NULL,'udsneuropsychmoca3','trailbrr',NULL,'r','range','Yes','8b1. Trail Making Test Part B: Number of commission errors',NULL,NULL,NULL,0,NULL,'uds.range0_40',NULL,47,'8b1. Trail Making Test Part B: Number of commission errors','2015-02-17 19:50:26');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsneuropsychmoca3.trailbli','en','lava','crms-nacc',NULL,'udsneuropsychmoca3','trailbli',NULL,'r','range','Yes','8b2. Trail Making Test Part B: Number of correct lines',NULL,NULL,NULL,0,NULL,'uds.range0_24',NULL,48,'8b2. Trail Making Test Part B: Number of correct lines','2015-02-17 19:50:26');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsneuropsychmoca3.craftdvr','en','lava','crms-nacc',NULL,'udsneuropsychmoca3','craftdvr',NULL,'r','range','Yes','9a. Craft Story 21 Recall (Delayed): Total story units recalled, verbatim scoring',NULL,NULL,NULL,0,NULL,'uds.c2.range0_44',NULL,49,'9a. Craft Story 21 Recall (Delayed): Total story units recalled, verbatim scoring','2015-02-17 19:50:26');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsneuropsychmoca3.craftdre','en','lava','crms-nacc',NULL,'udsneuropsychmoca3','craftdre',NULL,'r','range','Yes','9b. Craft Story 21 Recall (Delayed): Total story units recalled, paraphrase scoring',NULL,NULL,NULL,0,NULL,'uds.range0_25',NULL,50,'9b. Craft Story 21 Recall (Delayed): Total story units recalled, paraphrase scoring','2015-02-17 19:50:26');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsneuropsychmoca3.craftdti','en','lava','crms-nacc',NULL,'udsneuropsychmoca3','craftdti',NULL,'r','range','Yes','9c. Craft Story 21 Recall (Delayed): Delay time',NULL,NULL,NULL,0,NULL,'uds.c2.range0_85_unknown',NULL,51,'9c. Craft Story 21 Recall (Delayed): Delay time','2015-02-17 19:50:26');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsneuropsychmoca3.craftcue','en','lava','crms-nacc',NULL,'udsneuropsychmoca3','craftcue',NULL,'r','scale','Yes','9d. Craft Story 21 Recall (Delayed): Cue (boy) needed',NULL,NULL,NULL,0,NULL,'uds.noYes01',NULL,52,'9d. Craft Story 21 Recall (Delayed): Cue (boy) needed','2015-02-17 19:50:26');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsneuropsychmoca3.udsbentd','en','lava','crms-nacc',NULL,'udsneuropsychmoca3','udsbentd',NULL,'r','range','Yes','10a. Benson Complex Figure Recall - Total score for drawing of Benson figure following 10- to 15-minuted delay',NULL,NULL,NULL,0,NULL,'uds.c2.range0_17',NULL,53,'10a. Benson Complex Figure Recall - Total score for drawing of Benson figure following 10- to 15-minuted delay','2015-02-17 19:50:26');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsneuropsychmoca3.udsbenrs','en','lava','crms-nacc',NULL,'udsneuropsychmoca3','udsbenrs',NULL,'r','scale','Yes','10b. Benson Complex Figure Recall - Recognized original stimulus among four options',NULL,NULL,NULL,0,NULL,'uds.noYes01',NULL,54,'10b. Benson Complex Figure Recall - Recognized original stimulus among four options','2015-02-17 19:50:26');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsneuropsychmoca3.minttots','en','lava','crms-nacc',NULL,'udsneuropsychmoca3','minttots',NULL,'r','range','Yes','11a. Multilingual Naming Test (MINT) - Total score',NULL,NULL,NULL,0,NULL,'uds.c2.range0_32',NULL,55,'11a. Multilingual Naming Test (MINT) - Total score','2015-02-17 19:50:26');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsneuropsychmoca3.minttotw','en','lava','crms-nacc',NULL,'udsneuropsychmoca3','minttotw',NULL,'r','range','Yes','11b. Multilingual Naming Test (MINT) - Total correct without semantic cue',NULL,NULL,NULL,0,NULL,'uds.range0_32',NULL,56,'11b. Multilingual Naming Test (MINT) - Total correct without semantic cue','2015-02-17 19:50:26');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsneuropsychmoca3.mintscng','en','lava','crms-nacc',NULL,'udsneuropsychmoca3','mintscng',NULL,'r','range','Yes','11c. Multilingual Naming Test (MINT) - Semantic cues: Number given',NULL,NULL,NULL,0,NULL,'uds.range0_32',NULL,57,'11c. Multilingual Naming Test (MINT) - Semantic cues: Number given','2015-02-17 19:50:26');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsneuropsychmoca3.mintscnc','en','lava','crms-nacc',NULL,'udsneuropsychmoca3','mintscnc',NULL,'r','range','Yes','11d. Multilingual Naming Test (MINT) - Semantic cues: Number correct with cue',NULL,NULL,NULL,0,NULL,'uds.c2.range0_32_na',NULL,58,'11d. Multilingual Naming Test (MINT) - Semantic cues: Number correct with cue','2015-02-17 19:50:26');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsneuropsychmoca3.mintpcng','en','lava','crms-nacc',NULL,'udsneuropsychmoca3','mintpcng',NULL,'r','range','Yes','11e. Multilingual Naming Test (MINT) - Phonemic cues: Number given',NULL,NULL,NULL,0,NULL,'uds.range0_32',NULL,59,'11e. Multilingual Naming Test (MINT) - Phonemic cues: Number given','2015-02-17 19:50:26');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsneuropsychmoca3.mintpcnc','en','lava','crms-nacc',NULL,'udsneuropsychmoca3','mintpcnc',NULL,'r','range','Yes','11f. Multilingual Naming Test (MINT) - Phonemic cues: Number correct with cue',NULL,NULL,NULL,0,NULL,'uds.c2.range0_32_na',NULL,60,'11f. Multilingual Naming Test (MINT) - Phonemic cues: Number correct with cue','2015-02-17 19:50:26');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsneuropsychmoca3.udsverfc','en','lava','crms-nacc',NULL,'udsneuropsychmoca3','udsverfc',NULL,'r','range','Yes','12a. Verbal Fluency: Phonemic Test - Number of correct F-words generated in 1 minute',NULL,NULL,NULL,0,NULL,'uds.c2.range0_40',NULL,61,'12a. Verbal Fluency: Phonemic Test - Number of correct F-words generated in 1 minute','2015-02-17 19:50:26');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsneuropsychmoca3.udsverfn','en','lava','crms-nacc',NULL,'udsneuropsychmoca3','udsverfn',NULL,'r','range','Yes','12b. Verbal Fluency: Phonemic Test - Number of correct F-words repeated in 1 minute',NULL,NULL,NULL,0,NULL,'uds.range0_15',NULL,62,'12b. Verbal Fluency: Phonemic Test - Number of correct F-words repeated in 1 minute','2015-02-17 19:50:26');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsneuropsychmoca3.udsvernf','en','lava','crms-nacc',NULL,'udsneuropsychmoca3','udsvernf',NULL,'r','range','Yes','12c. Verbal Fluency: Phonemic Test - Number of non-F-words and rule violation errors in 1 minute',NULL,NULL,NULL,0,NULL,'uds.range0_15',NULL,63,'12c. Verbal Fluency: Phonemic Test - Number of non-F-words and rule violation errors in 1 minute','2015-02-17 19:50:26');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsneuropsychmoca3.udsverlc','en','lava','crms-nacc',NULL,'udsneuropsychmoca3','udsverlc',NULL,'r','range','Yes','12d. Verbal Fluency: Phonemic Test - Number of correct L-words generated in 1 minute',NULL,NULL,NULL,0,NULL,'uds.c2.range0_40',NULL,64,'12d. Verbal Fluency: Phonemic Test - Number of correct L-words generated in 1 minute','2015-02-17 19:50:26');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsneuropsychmoca3.udsverlr','en','lava','crms-nacc',NULL,'udsneuropsychmoca3','udsverlr',NULL,'r','range','Yes','12e. Verbal Fluency: Phonemic Test - Number of correct L-words repeated in 1 minute',NULL,NULL,NULL,0,NULL,'uds.range0_15',NULL,65,'12e. Verbal Fluency: Phonemic Test - Number of correct L-words repeated in 1 minute','2015-02-17 19:50:26');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsneuropsychmoca3.udsverln','en','lava','crms-nacc',NULL,'udsneuropsychmoca3','udsverln',NULL,'r','range','Yes','12f. Verbal Fluency: Phonemic Test - Number of non-L-words and rule violation errors in 1 minute',NULL,NULL,NULL,0,NULL,'uds.range0_15',NULL,66,'12f. Verbal Fluency: Phonemic Test - Number of non-L-words and rule violation errors in 1 minute','2015-02-17 19:50:26');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsneuropsychmoca3.udsvertn','en','lava','crms-nacc',NULL,'udsneuropsychmoca3','udsvertn',NULL,'r','range','Yes','12g. Verbal Fluency: Phonemic Test - Total number of correct F-words and L-words',NULL,NULL,NULL,0,NULL,'uds.range0_80',NULL,67,'12g. Verbal Fluency: Phonemic Test - Total number of correct F-words and L-words','2015-02-17 19:50:26');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsneuropsychmoca3.udsverte','en','lava','crms-nacc',NULL,'udsneuropsychmoca3','udsverte',NULL,'r','range','Yes','12h. Verbal Fluency: Phonemic Test - Total number of F-word and L-words repetition errors',NULL,NULL,NULL,0,NULL,'uds.range0_30',NULL,68,'12h. Verbal Fluency: Phonemic Test - Total number of F-word and L-words repetition errors','2015-02-17 19:50:26');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsneuropsychmoca3.udsverti','en','lava','crms-nacc',NULL,'udsneuropsychmoca3','udsverti',NULL,'r','range','Yes','12i. Verbal Fluency: Phonemic Test - Number of non-F/L-words and rule violation errors',NULL,NULL,NULL,0,NULL,'uds.range0_30',NULL,69,'12i. Verbal Fluency: Phonemic Test - Number of non-F/L-words and rule violation errors','2015-02-17 19:50:26');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsneuropsychmoca3.cogstat','en','lava','crms-nacc',NULL,'udsneuropsychmoca3','cogstat',NULL,'r','scale','Yes','13a. Overall appraisal: Per the clinician (e.g., neuropsychologist, behavioral neurologist, or other suitably qualified clinician), based on the UDS neuropsychological examination, the subjects cognitive status is deemed',NULL,NULL,NULL,0,NULL,'uds.c2.cogstat',NULL,70,'13a. Overall appraisal: Per the clinician (e.g., neuropsychologist, behavioral neurologist, or other suitably qualified clinician), based on the UDS neuropsychological examination, the subjects cognitive status is deemed','2015-02-17 19:50:26');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsneuropsychmoca3','mocacomp','udsneuropsychmoca','MOCACOMP','smallint',NULL,5,0,2,'mocacomp','short',NULL,'No','2015-02-17 19:50:26');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsneuropsychmoca3','mocareas','udsneuropsychmoca','MOCAREAS','smallint',NULL,5,0,3,'mocareas','short',NULL,'No','2015-02-17 19:50:26');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsneuropsychmoca3','mocaloc','udsneuropsychmoca','MOCALOC','smallint',NULL,5,0,4,'mocaloc','short',NULL,'No','2015-02-17 19:50:26');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsneuropsychmoca3','mocalan','udsneuropsychmoca','MOCALAN','smallint',NULL,5,0,5,'mocalan','short',NULL,'No','2015-02-17 19:50:26');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsneuropsychmoca3','mocalanx','udsneuropsychmoca','MOCALANX','varchar',60,NULL,NULL,6,'mocalanx','string',NULL,'No','2015-02-17 19:50:26');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsneuropsychmoca3','mocavis','udsneuropsychmoca','MOCAVIS','smallint',NULL,5,0,7,'mocavis','short',NULL,'No','2015-02-17 19:50:26');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsneuropsychmoca3','mocahear','udsneuropsychmoca','MOCAHEAR','smallint',NULL,5,0,8,'mocahear','short',NULL,'No','2015-02-17 19:50:26');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsneuropsychmoca3','mocatots','udsneuropsychmoca','MOCATOTS','smallint',NULL,5,0,9,'mocatots','short',NULL,'No','2015-02-17 19:50:26');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsneuropsychmoca3','mocatrai','udsneuropsychmoca','MOCATRAI','smallint',NULL,5,0,10,'mocatrai','short',NULL,'No','2015-02-17 19:50:26');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsneuropsychmoca3','mocacube','udsneuropsychmoca','MOCACUBE','smallint',NULL,5,0,11,'mocacube','short',NULL,'No','2015-02-17 19:50:26');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsneuropsychmoca3','mocacloc','udsneuropsychmoca','MOCACLOC','smallint',NULL,5,0,12,'mocacloc','short',NULL,'No','2015-02-17 19:50:26');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsneuropsychmoca3','mocaclon','udsneuropsychmoca','MOCACLON','smallint',NULL,5,0,13,'mocaclon','short',NULL,'No','2015-02-17 19:50:26');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsneuropsychmoca3','mocacloh','udsneuropsychmoca','MOCACLOH','smallint',NULL,5,0,14,'mocacloh','short',NULL,'No','2015-02-17 19:50:26');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsneuropsychmoca3','mocanami','udsneuropsychmoca','MOCANAMI','smallint',NULL,5,0,15,'mocanami','short',NULL,'No','2015-02-17 19:50:26');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsneuropsychmoca3','mocaregi','udsneuropsychmoca','MOCAREGI','smallint',NULL,5,0,16,'mocaregi','short',NULL,'No','2015-02-17 19:50:26');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsneuropsychmoca3','mocadigi','udsneuropsychmoca','MOCADIGI','smallint',NULL,5,0,17,'mocadigi','short',NULL,'No','2015-02-17 19:50:26');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsneuropsychmoca3','mocalett','udsneuropsychmoca','MOCALETT','smallint',NULL,5,0,18,'mocalett','short',NULL,'No','2015-02-17 19:50:26');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsneuropsychmoca3','mocaser7','udsneuropsychmoca','MOCASER7','smallint',NULL,5,0,19,'mocaser7','short',NULL,'No','2015-02-17 19:50:26');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsneuropsychmoca3','mocarepe','udsneuropsychmoca','MOCAREPE','smallint',NULL,5,0,20,'mocarepe','short',NULL,'No','2015-02-17 19:50:26');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsneuropsychmoca3','mocaflue','udsneuropsychmoca','MOCAFLUE','smallint',NULL,5,0,21,'mocaflue','short',NULL,'No','2015-02-17 19:50:26');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsneuropsychmoca3','mocaabst','udsneuropsychmoca','MOCAABST','smallint',NULL,5,0,22,'mocaabst','short',NULL,'No','2015-02-17 19:50:26');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsneuropsychmoca3','mocarecn','udsneuropsychmoca','MOCARECN','smallint',NULL,5,0,23,'mocarecn','short',NULL,'No','2015-02-17 19:50:26');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsneuropsychmoca3','mocarecc','udsneuropsychmoca','MOCARECC','smallint',NULL,5,0,24,'mocarecc','short',NULL,'No','2015-02-17 19:50:26');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsneuropsychmoca3','mocarecr','udsneuropsychmoca','MOCARECR','smallint',NULL,5,0,25,'mocarecr','short',NULL,'No','2015-02-17 19:50:26');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsneuropsychmoca3','mocaordt','udsneuropsychmoca','MOCAORDT','smallint',NULL,5,0,26,'mocaordt','short',NULL,'No','2015-02-17 19:50:26');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsneuropsychmoca3','mocaormo','udsneuropsychmoca','MOCAORMO','smallint',NULL,5,0,27,'mocaormo','short',NULL,'No','2015-02-17 19:50:26');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsneuropsychmoca3','mocaoryr','udsneuropsychmoca','MOCAORYR','smallint',NULL,5,0,28,'mocaoryr','short',NULL,'No','2015-02-17 19:50:26');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsneuropsychmoca3','mocaordy','udsneuropsychmoca','MOCAORDY','smallint',NULL,5,0,29,'mocaordy','short',NULL,'No','2015-02-17 19:50:26');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsneuropsychmoca3','mocaorpl','udsneuropsychmoca','MOCAORPL','smallint',NULL,5,0,30,'mocaorpl','short',NULL,'No','2015-02-17 19:50:26');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsneuropsychmoca3','mocaorct','udsneuropsychmoca','MOCAORCT','smallint',NULL,5,0,31,'mocaorct','short',NULL,'No','2015-02-17 19:50:26');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsneuropsychmoca3','npsycloc','udsneuropsychmoca','NPSYCLOC','smallint',NULL,5,0,32,'npsycloc','short',NULL,'No','2015-02-17 19:50:26');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsneuropsychmoca3','npsylan','udsneuropsychmoca','NPSYLAN','smallint',NULL,5,0,33,'npsylan','short',NULL,'No','2015-02-17 19:50:26');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsneuropsychmoca3','npsylanx','udsneuropsychmoca','NPSYLANX','varchar',60,NULL,NULL,34,'npsylanx','string',NULL,'No','2015-02-17 19:50:26');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsneuropsychmoca3','craftvrs','udsneuropsychmoca','CRAFTVRS','smallint',NULL,5,0,35,'craftvrs','short',NULL,'No','2015-02-17 19:50:26');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsneuropsychmoca3','crafturs','udsneuropsychmoca','CRAFTURS','smallint',NULL,5,0,36,'crafturs','short',NULL,'No','2015-02-17 19:50:26');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsneuropsychmoca3','udsbentc','udsneuropsychmoca','UDSBENTC','smallint',NULL,5,0,37,'udsbentc','short',NULL,'No','2015-02-17 19:50:26');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsneuropsychmoca3','digforct','udsneuropsychmoca','DIGFORCT','smallint',NULL,5,0,38,'digforct','short',NULL,'No','2015-02-17 19:50:26');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsneuropsychmoca3','digforsl','udsneuropsychmoca','DIGFORSL','smallint',NULL,5,0,39,'digforsl','short',NULL,'No','2015-02-17 19:50:26');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsneuropsychmoca3','digbacct','udsneuropsychmoca','DIGBACCT','smallint',NULL,5,0,40,'digbacct','short',NULL,'No','2015-02-17 19:50:26');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsneuropsychmoca3','digbacls','udsneuropsychmoca','DIGBACLS','smallint',NULL,5,0,41,'digbacls','short',NULL,'No','2015-02-17 19:50:26');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsneuropsychmoca3','animals','udsneuropsychmoca','ANIMALS','smallint',NULL,5,0,42,'animals','short',NULL,'No','2015-02-17 19:50:26');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsneuropsychmoca3','veg','udsneuropsychmoca','VEG','smallint',NULL,5,0,43,'veg','short',NULL,'No','2015-02-17 19:50:26');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsneuropsychmoca3','traila','udsneuropsychmoca','TRAILA','smallint',NULL,5,0,44,'traila','short',NULL,'No','2015-02-17 19:50:26');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsneuropsychmoca3','trailarr','udsneuropsychmoca','TRAILARR','smallint',NULL,5,0,45,'trailarr','short',NULL,'No','2015-02-17 19:50:26');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsneuropsychmoca3','trailali','udsneuropsychmoca','TRAILALI','smallint',NULL,5,0,46,'trailali','short',NULL,'No','2015-02-17 19:50:26');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsneuropsychmoca3','trailb','udsneuropsychmoca','TRAILB','smallint',NULL,5,0,47,'trailb','short',NULL,'No','2015-02-17 19:50:26');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsneuropsychmoca3','trailbrr','udsneuropsychmoca','TRAILBRR','smallint',NULL,5,0,48,'trailbrr','short',NULL,'No','2015-02-17 19:50:26');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsneuropsychmoca3','trailbli','udsneuropsychmoca','TRAILBLI','smallint',NULL,5,0,49,'trailbli','short',NULL,'No','2015-02-17 19:50:26');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsneuropsychmoca3','craftdvr','udsneuropsychmoca','CRAFTDVR','smallint',NULL,5,0,50,'craftdvr','short',NULL,'No','2015-02-17 19:50:26');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsneuropsychmoca3','craftdre','udsneuropsychmoca','CRAFTDRE','smallint',NULL,5,0,51,'craftdre','short',NULL,'No','2015-02-17 19:50:26');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsneuropsychmoca3','craftdti','udsneuropsychmoca','CRAFTDTI','smallint',NULL,5,0,52,'craftdti','short',NULL,'No','2015-02-17 19:50:26');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsneuropsychmoca3','craftcue','udsneuropsychmoca','CRAFTCUE','smallint',NULL,5,0,53,'craftcue','short',NULL,'No','2015-02-17 19:50:26');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsneuropsychmoca3','udsbentd','udsneuropsychmoca','UDSBENTD','smallint',NULL,5,0,54,'udsbentd','short',NULL,'No','2015-02-17 19:50:26');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsneuropsychmoca3','udsbenrs','udsneuropsychmoca','UDSBENRS','smallint',NULL,5,0,55,'udsbenrs','short',NULL,'No','2015-02-17 19:50:26');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsneuropsychmoca3','minttots','udsneuropsychmoca','MINTTOTS','smallint',NULL,5,0,56,'minttots','short',NULL,'No','2015-02-17 19:50:26');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsneuropsychmoca3','minttotw','udsneuropsychmoca','MINTTOTW','smallint',NULL,5,0,57,'minttotw','short',NULL,'No','2015-02-17 19:50:26');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsneuropsychmoca3','mintscng','udsneuropsychmoca','MINTSCNG','smallint',NULL,5,0,58,'mintscng','short',NULL,'No','2015-02-17 19:50:26');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsneuropsychmoca3','mintscnc','udsneuropsychmoca','MINTSCNC','smallint',NULL,5,0,59,'mintscnc','short',NULL,'No','2015-02-17 19:50:26');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsneuropsychmoca3','mintpcng','udsneuropsychmoca','MINTPCNG','smallint',NULL,5,0,60,'mintpcng','short',NULL,'No','2015-02-17 19:50:26');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsneuropsychmoca3','mintpcnc','udsneuropsychmoca','MINTPCNC','smallint',NULL,5,0,61,'mintpcnc','short',NULL,'No','2015-02-17 19:50:26');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsneuropsychmoca3','udsverfc','udsneuropsychmoca','UDSVERFC','smallint',NULL,5,0,62,'udsverfc','short',NULL,'No','2015-02-17 19:50:26');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsneuropsychmoca3','udsverfn','udsneuropsychmoca','UDSVERFN','smallint',NULL,5,0,63,'udsverfn','short',NULL,'No','2015-02-17 19:50:26');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsneuropsychmoca3','udsvernf','udsneuropsychmoca','UDSVERNF','smallint',NULL,5,0,64,'udsvernf','short',NULL,'No','2015-02-17 19:50:26');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsneuropsychmoca3','udsverlc','udsneuropsychmoca','UDSVERLC','smallint',NULL,5,0,65,'udsverlc','short',NULL,'No','2015-02-17 19:50:26');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsneuropsychmoca3','udsverlr','udsneuropsychmoca','UDSVERLR','smallint',NULL,5,0,66,'udsverlr','short',NULL,'No','2015-02-17 19:50:26');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsneuropsychmoca3','udsverln','udsneuropsychmoca','UDSVERLN','smallint',NULL,5,0,67,'udsverln','short',NULL,'No','2015-02-17 19:50:26');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsneuropsychmoca3','udsvertn','udsneuropsychmoca','UDSVERTN','smallint',NULL,5,0,68,'udsvertn','short',NULL,'No','2015-02-17 19:50:26');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsneuropsychmoca3','udsverte','udsneuropsychmoca','UDSVERTE','smallint',NULL,5,0,69,'udsverte','short',NULL,'No','2015-02-17 19:50:26');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsneuropsychmoca3','udsverti','udsneuropsychmoca','UDSVERTI','smallint',NULL,5,0,70,'udsverti','short',NULL,'No','2015-02-17 19:50:26');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsneuropsychmoca3','cogstat','udsneuropsychmoca','COGSTAT','smallint',NULL,5,0,71,'cogstat','short',NULL,'No','2015-02-17 19:50:26');




-- T1 UDS Telephone Inclusion Form
DELETE from viewproperty where instance='lava' and scope='crms-nacc' and entity='udsphoneinclusion3';

INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsphoneinclusion3.cogImp','en','lava','crms-nacc',NULL,'udsphoneinclusion3','cogImp','','r','scale','Yes',NULL,NULL,NULL,NULL,0,'','uds.noYes01',NULL,1,'Why is the UDS telephone follow-up protocol being used to obtain data about the subject? Subject too cognitively impaired for an in-person UDS visit.','2009-01-24 21:28:51');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsphoneinclusion3.physImp','en','lava','crms-nacc',NULL,'udsphoneinclusion3','physImp','','r','scale','Yes',NULL,NULL,NULL,NULL,0,'','uds.noYes01',NULL,2,'Why is the UDS telephone follow-up protocol being used to obtain data about the subject? Subject is too physically impaired (medical illness or injury) to attend an in-person UDS visit.','2009-01-24 21:28:51');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsphoneinclusion3.home','en','lava','crms-nacc',NULL,'udsphoneinclusion3','home','','r','scale','Yes',NULL,NULL,NULL,NULL,0,'','uds.noYes01',NULL,3,'Why is the UDS telephone follow-up protocol being used to obtain data about the subject? Subject is homebound or in a nursing home and cannot travel.','2009-01-24 21:28:51');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsphoneinclusion3.refused','en','lava','crms-nacc',NULL,'udsphoneinclusion3','refused','','r','scale','Yes',NULL,NULL,NULL,NULL,0,'','uds.noYes01',NULL,4,'Why is the UDS telephone follow-up protocol being used to obtain data about the subject? Subject/co-participant refused an in-person UDS visit','2009-01-24 21:28:51');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsphoneinclusion3.other','en','lava','crms-nacc',NULL,'udsphoneinclusion3','other','','r','scale','Yes',NULL,NULL,NULL,NULL,0,'','uds.noYes01',NULL,5,'Why is the UDS telephone follow-up protocol being used to obtain data about the subject? Other reason why the UDS telephone follow-up being used','2009-01-24 21:28:51');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsphoneinclusion3.otherx','en','lava','crms-nacc',NULL,'udsphoneinclusion3','otherx','','i','string','No',NULL,NULL,NULL,NULL,0,'onkeypress="UDS_onlyNaccCharactersAllowed(event)"',NULL,NULL,6,'Why is the UDS telephone follow-up protocol being used to obtain data about the subject? Other reason specification: (ADC staff convenience is not an acceptable reason.)','2009-01-24 21:28:51');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsphoneinclusion3.inperson','en','lava','crms-nacc',NULL,'udsphoneinclusion3','inperson','','r','scale','Yes',NULL,NULL,NULL,NULL,0,'','uds.noYesUnknown019',NULL,7,'Is the subject likely to resume in-person UDS follow-up evaluation?','2009-01-24 21:28:51');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsphoneinclusion3.milestone','en','lava','crms-nacc',NULL,'udsphoneinclusion3','milestone','','r','scale','Yes',NULL,NULL,NULL,NULL,0,'','uds.noYesUnknown019',NULL,8,'Has a Milestones Form documenting the change to telephone follow-up been completed? (If No, complete a Milestone Form now.)','2009-01-24 21:28:51');





-- Z1F
DELETE from datadictionary where entity = 'udsftldformchecklist3';
DELETE from viewproperty where entity = 'udsftldformchecklist3';
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldformchecklist3',1,'ftda3afs','Record of Consent for Biologic Specimen Use (Form A3aF), Submitted','','',1,'udsftldformchecklist','FTDA3AFS',1,'smallint','',1,'null',NULL,NULL,'2012-10-01 17:47:30');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldformchecklist3',2,'ftda3afr','Record of Consent for Biologic Specimen Use (Form A3aF), Reason not submitted','','',1,'udsftldformchecklist','FTDA3AFR',2,'smallint','',1,'null',NULL,NULL,'2012-10-01 17:47:30');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldformchecklist3',3,'ftda3afc','Record of Consent for Biologic Specimen Use (Form A3aF), Comments','','',0,'udsftldformchecklist','FTDA3AFC',3,'varchar','60',1,'null',NULL,NULL,'2012-10-01 17:47:30');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldformchecklist3',7,'ftdc4fs','Behavioral Inhibition Scale (Form C4F), Submitted','','',1,'udsftldformchecklist','FTDC4FS',7,'smallint','',1,'null',NULL,NULL,'2012-10-01 17:47:30');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldformchecklist3',8,'ftdc4fr','Behavioral Inhibition Scale (Form C4F), Reason not submitted','','',1,'udsftldformchecklist','FTDC4FR',8,'smallint','',1,'null',NULL,NULL,'2012-10-01 17:47:30');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldformchecklist3',9,'ftdc4fc','Behavioral Inhibition Scale (Form C4F), Comments','','',0,'udsftldformchecklist','FTDC4FC',9,'varchar','60',1,'null',NULL,NULL,'2012-10-01 17:47:30');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldformchecklist3',10,'ftdc5fs','Interpersonal Reactivity Index (Form C5F), Submitted','','',1,'udsftldformchecklist','FTDC5FS',10,'smallint','',1,'null',NULL,NULL,'2012-10-01 17:47:30');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldformchecklist3',11,'ftdc5fr','Interpersonal Reactivity Index (Form C5F), Reason not submitted','','',1,'udsftldformchecklist','FTDC5FR',11,'smallint','',1,'null',NULL,NULL,'2012-10-01 17:47:30');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldformchecklist3',12,'ftdc5fc','Interpersonal Reactivity Index (Form C5F), Comments','','',0,'udsftldformchecklist','FTDC5FC',12,'varchar','60',1,'null',NULL,NULL,'2012-10-01 17:47:30');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldformchecklist3',13,'ftdc6fs','Revised Self-monitoring Scale (Form C6F), Submitted','','',1,'udsftldformchecklist','FTDC6FS',13,'smallint','',1,'null',NULL,NULL,'2012-10-01 17:47:30');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldformchecklist3',14,'ftdc6fr','Revised Self-monitoring Scale (Form C6F), Reason not submitted','','',1,'udsftldformchecklist','FTDC6FR',14,'smallint','',1,'null',NULL,NULL,'2012-10-01 17:47:30');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldformchecklist3',15,'ftdc6fc','Revised Self-monitoring Scale (Form C6F), Comments','','',0,'udsftldformchecklist','FTDC6FC',15,'varchar','60',1,'null',NULL,NULL,'2012-10-01 17:47:30');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldformchecklist3.ftda3afs','en','lava','crms-nacc',NULL,'udsftldformchecklist3','ftda3afs',NULL,'r','scale','Yes','',NULL,0,15,0,NULL,'uds.noYes01',NULL,1,'Record of Consent for Biologic Specimen Use (Form A3aF), Submitted','2012-10-01 13:46:00');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldformchecklist3.ftda3afr','en','lava','crms-nacc',NULL,'udsftldformchecklist3','ftda3afr',NULL,'r','scale','Yes','',NULL,0,25,0,NULL,'uds.z1f.reason',NULL,2,'Record of Consent for Biologic Specimen Use (Form A3aF), Reason not submitted','2012-10-01 13:46:00');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldformchecklist3.ftda3afc','en','lava','crms-nacc',NULL,'udsftldformchecklist3','ftda3afc',NULL,'r','string','No','',NULL,60,NULL,0,'onkeypress="UDS_onlyNaccCharactersAllowed(event)"',NULL,NULL,3,'Record of Consent for Biologic Specimen Use (Form A3aF), Comments','2012-10-01 13:46:00');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldformchecklist3.ftdc4fs','en','lava','crms-nacc',NULL,'udsftldformchecklist3','ftdc4fs',NULL,'r','scale','Yes','',NULL,0,15,0,NULL,'uds.noYes01',NULL,7,'Behavioral Inhibition Scale (Form C4F), Submitted','2012-10-01 13:46:00');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldformchecklist3.ftdc4fr','en','lava','crms-nacc',NULL,'udsftldformchecklist3','ftdc4fr',NULL,'r','scale','Yes','',NULL,0,25,0,NULL,'uds.z1f.reason',NULL,8,'Behavioral Inhibition Scale (Form C4F), Reason not submitted','2012-10-01 13:46:00');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldformchecklist3.ftdc4fc','en','lava','crms-nacc',NULL,'udsftldformchecklist3','ftdc4fc',NULL,'r','string','No','',NULL,60,NULL,0,'onkeypress="UDS_onlyNaccCharactersAllowed(event)"',NULL,NULL,9,'Behavioral Inhibition Scale (Form C4F), Comments','2012-10-01 13:46:00');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldformchecklist3.ftdc5fs','en','lava','crms-nacc',NULL,'udsftldformchecklist3','ftdc5fs',NULL,'r','scale','Yes','',NULL,0,15,0,NULL,'uds.noYes01',NULL,10,'Interpersonal Reactivity Index (Form C5F), Submitted','2012-10-01 13:46:00');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldformchecklist3.ftdc5fr','en','lava','crms-nacc',NULL,'udsftldformchecklist3','ftdc5fr',NULL,'r','scale','Yes','',NULL,0,25,0,NULL,'uds.z1f.reason',NULL,11,'Interpersonal Reactivity Index (Form C5F), Reason not submitted','2012-10-01 13:46:00');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldformchecklist3.ftdc5fc','en','lava','crms-nacc',NULL,'udsftldformchecklist3','ftdc5fc',NULL,'r','string','No','',NULL,60,NULL,0,'onkeypress="UDS_onlyNaccCharactersAllowed(event)"',NULL,NULL,12,'Interpersonal Reactivity Index (Form C5F), Comments','2012-10-01 13:46:00');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldformchecklist3.ftdc6fs','en','lava','crms-nacc',NULL,'udsftldformchecklist3','ftdc6fs',NULL,'r','scale','Yes','',NULL,0,15,0,NULL,'uds.noYes01',NULL,13,'Revised Self-monitoring Scale (Form C6F), Submitted','2012-10-01 13:46:00');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldformchecklist3.ftdc6fr','en','lava','crms-nacc',NULL,'udsftldformchecklist3','ftdc6fr',NULL,'r','scale','Yes','',NULL,0,25,0,NULL,'uds.z1f.reason',NULL,14,'Revised Self-monitoring Scale (Form C6F), Reason not submitted','2012-10-01 13:46:00');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldformchecklist3.ftdc6fc','en','lava','crms-nacc',NULL,'udsftldformchecklist3','ftdc6fc',NULL,'r','string','No','',NULL,60,NULL,0,'onkeypress="UDS_onlyNaccCharactersAllowed(event)"',NULL,NULL,15,'Revised Self-monitoring Scale (Form C6F), Comments','2012-10-01 13:46:00');
  



  
-- A3a
DELETE from datadictionary where entity = 'udsftldspecimenconsent3';
DELETE from viewproperty where entity = 'udsftldspecimenconsent3';
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldspecimenconsent3',1,'ftdrelco','1. What relative\'s consent is being recorded on this form?','','',1,'udsftldspecimenconsent','FTDRELCO',1,'smallint','',1,'null',NULL,NULL,'2012-10-02 16:11:24');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldspecimenconsent3',2,'ftdsibby','1. Sibling\'s birth year','','',1,'udsftldspecimenconsent','FTDSIBBY',2,'smallint','',1,'null',NULL,NULL,'2012-10-02 16:11:24');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldspecimenconsent3',3,'ftdchdby','1. Child\'s birth year','','',1,'udsftldspecimenconsent','FTDCHDBY',3,'smallint','',1,'null',NULL,NULL,'2012-10-02 16:11:24');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldspecimenconsent3',4,'ftdstore','1a. I permit my sample to be stored and used in future research of neurologic disease at ','','',1,'udsftldspecimenconsent','FTDSTORE',4,'smallint','',1,'null',NULL,NULL,'2012-10-02 16:11:24');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldspecimenconsent3',5,'ftdslear','1b. I permit my sample to be stored and used in future research at (home institution) to learn about, prevent, or treat other health problems.(home institution).','','',1,'udsftldspecimenconsent','FTDSLEAR',5,'smallint','',1,'null',NULL,NULL,'2012-10-02 16:11:24');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldspecimenconsent3',6,'ftdcomme','1c. There is a small chance that some commercial value may result from my sample at the National Cell Repository for Alzheimer\'s Disease (NCRAD). If that would happen, I would not be offered a share in any profits. I permit (home institution) to give my sample to researchers at other institutions.','','',1,'udsftldspecimenconsent','FTDCOMME',6,'smallint','',1,'null',NULL,NULL,'2012-10-02 16:11:24');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldspecimenconsent3.ftdrelco','en','lava','crms-nacc',NULL,'udsftldspecimenconsent3','ftdrelco',NULL,'r','scale','Yes','1. What relative\'s consent is being recorded on this form?',NULL,0,NULL,0,NULL,'uds.a3af.relative',NULL,1,'1. What relative\'s consent is being recorded on this form?','2012-10-02 16:11:34');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldspecimenconsent3.ftdsibby','en','lava','crms-nacc',NULL,'udsftldspecimenconsent3','ftdsibby',NULL,'r','scale','Yes','Sibling\'s birth year',NULL,0,NULL,1,NULL,'uds.a3af.sibYear',NULL,2,'1. Sibling\'s birth year','2012-10-02 16:11:34');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldspecimenconsent3.ftdchdby','en','lava','crms-nacc',NULL,'udsftldspecimenconsent3','ftdchdby',NULL,'r','scale','Yes','Child\'s birth year',NULL,0,NULL,1,NULL,'uds.a3af.childYear',NULL,3,'1. Child\'s birth year','2012-10-02 16:11:34');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldspecimenconsent3.ftdstore','en','lava','crms-nacc',NULL,'udsftldspecimenconsent3','ftdstore',NULL,'r','scale','Yes','1a. I permit my sample to be stored and used in future research of neurologic disease at ',NULL,0,NULL,0,NULL,'uds.noYes01',NULL,4,'1a. I permit my sample to be stored and used in future research of neurologic disease at ','2012-10-02 16:11:34');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldspecimenconsent3.ftdslear','en','lava','crms-nacc',NULL,'udsftldspecimenconsent3','ftdslear',NULL,'r','scale','Yes','1b. I permit my sample to be stored and used in future research at (home institution) to learn about, prevent, or treat other health problems.(home institution).',NULL,0,NULL,0,NULL,'uds.noYes01',NULL,5,'1b. I permit my sample to be stored and used in future research at (home institution) to learn about, prevent, or treat other health problems.(home institution).','2012-10-02 16:11:34');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldspecimenconsent3.ftdcomme','en','lava','crms-nacc',NULL,'udsftldspecimenconsent3','ftdcomme',NULL,'r','scale','Yes','1c. There is a small chance that some commercial value may result from my sample at the National Cell Repository for Alzheimer\'s Disease (NCRAD). If that would happen, I would not be offered a share in any profits. I permit (home institution) to give my sample to researchers at other institutions.',NULL,0,NULL,0,NULL,'uds.noYes01',NULL,6,'1c. There is a small chance that some commercial value may result from my sample at the National Cell Repository for Alzheimer\'s Disease (NCRAD). If that would happen, I would not be offered a share in any profits. I permit (home institution) to give my sample to researchers at other institutions.','2012-10-02 16:11:34');



-- B3F
DELETE from datadictionary where entity = 'udsftldupdrs3';
DELETE from viewproperty where entity = 'udsftldupdrs3';
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldupdrs3',1,'ftdltfas','A1. Does the subject have limb or torso fasciculations consistent with a diagnosis of spinal muscular atrophy (SMA) or amytrophic lateral sclerosis (ALS)?','','',1,'udsftldupdrs','FTDLTFAS',1,'smallint','',1,'null',NULL,NULL,'2012-10-01 14:26:41');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldupdrs3',2,'ftdlimb','A2. Does the subject have limb weakness and/or hyperreflexia consistent with a diagnosis of primary lateral sclerosis (PLS) or ALS?','','',1,'udsftldupdrs','FTDLIMB',2,'smallint','',1,'null',NULL,NULL,'2012-10-01 14:26:41');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldupdrs3',3,'ftdbulb','A3. Does the subject have bulbar weakness and/or fasciculations consistent with a diagnosis of ALS?','','',1,'udsftldupdrs','FTDBULB',3,'smallint','',1,'null',NULL,NULL,'2012-10-01 14:26:41');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldupdrs3',10,'ftdgsev','B1. Gait disturbances - severity?','','',1,'udsftldupdrs','FTDGSEV',10,'smallint','',1,'null',NULL,NULL,'2012-10-01 14:26:41');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldupdrs3',11,'ftdgsevx','B1a. Gait disturbances - severity, specification of reason untestable','','',1,'udsftldupdrs','FTDGSEVX',11,'varchar','60',1,'null',NULL,NULL,'2012-10-01 14:26:41');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldupdrs3',12,'ftdgtyp','B2. Gait disturbances - type?','','',1,'udsftldupdrs','FTDGTYP',12,'smallint','',1,'null',NULL,NULL,'2012-10-01 14:26:41');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldupdrs3',13,'ftdgtypg','B2a. Gait disturbances - type, Other gait disorder not listed above (specify)','','',1,'udsftldupdrs','FTDGTYPG',13,'varchar','60',1,'null',NULL,NULL,'2012-10-01 14:26:41');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldupdrs3',14,'ftdgtypx','B2b. Gait disturbances - type, Untestable (specify reason)','','',1,'udsftldupdrs','FTDGTYPX',14,'varchar','60',1,'null',NULL,NULL,'2012-10-01 14:26:41');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldupdrs3.ftdltfas','en','lava','crms-nacc',NULL,'udsftldupdrs3','ftdltfas',NULL,'r','scale','Yes','A1. Does the subject have limb or torso fasciculations consistent with a diagnosis of spinal muscular atrophy (SMA) or amytrophic lateral sclerosis (ALS)?',NULL,0,NULL,0,NULL,'uds.b3f.sectiona0123',NULL,1,'A1. Does the subject have limb or torso fasciculations consistent with a diagnosis of spinal muscular atrophy (SMA) or amytrophic lateral sclerosis (ALS)?','2012-10-01 14:27:20');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldupdrs3.ftdlimb','en','lava','crms-nacc',NULL,'udsftldupdrs3','ftdlimb',NULL,'r','scale','Yes','A2. Does the subject have limb weakness and/or hyperreflexia consistent with a diagnosis of primary lateral sclerosis (PLS) or ALS?',NULL,0,NULL,0,NULL,'uds.b3f.sectiona0123',NULL,2,'A2. Does the subject have limb weakness and/or hyperreflexia consistent with a diagnosis of primary lateral sclerosis (PLS) or ALS?','2012-10-01 14:27:20');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldupdrs3.ftdbulb','en','lava','crms-nacc',NULL,'udsftldupdrs3','ftdbulb',NULL,'r','scale','Yes','A3. Does the subject have bulbar weakness and/or fasciculations consistent with a diagnosis of ALS?',NULL,0,NULL,0,NULL,'uds.b3f.sectiona03',NULL,3,'A3. Does the subject have bulbar weakness and/or fasciculations consistent with a diagnosis of ALS?','2012-10-01 14:27:20');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldupdrs3.ftdgsev','en','lava','crms-nacc',NULL,'udsftldupdrs3','ftdgsev',NULL,'r','scale','Yes','B1. Gait disturbances - severity?',NULL,0,NULL,0,NULL,'uds.b3f.sectionbSeverity',NULL,10,'B1. Gait disturbances - severity?','2012-10-01 14:27:20');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldupdrs3.ftdgsevx','en','lava','crms-nacc',NULL,'udsftldupdrs3','ftdgsevx',NULL,'r','string','Yes','a. Gait disturbances - severity, specification of reason untestable',NULL,60,NULL,1,'onkeypress="UDS_onlyNaccCharactersAllowed(event)"',NULL,NULL,11,'B1a. Gait disturbances - severity, specification of reason untestable','2012-10-01 14:27:20');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldupdrs3.ftdgtyp','en','lava','crms-nacc',NULL,'udsftldupdrs3','ftdgtyp',NULL,'r','scale','Yes','B2. Gait disturbances - type?',NULL,0,NULL,0,NULL,'uds.b3f.sectionbType',NULL,12,'B2. Gait disturbances - type?','2012-10-01 14:27:20');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldupdrs3.ftdgtypg','en','lava','crms-nacc',NULL,'udsftldupdrs3','ftdgtypg',NULL,'r','string','Yes','a. Gait disturbances - type, Other gait disorder not listed above (specify)',NULL,60,NULL,1,'onkeypress="UDS_onlyNaccCharactersAllowed(event)"',NULL,NULL,13,'B2a. Gait disturbances - type, Other gait disorder not listed above (specify)','2012-10-01 14:27:20');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldupdrs3.ftdgtypx','en','lava','crms-nacc',NULL,'udsftldupdrs3','ftdgtypx',NULL,'r','string','Yes','b. Gait disturbances - type, Untestable (specify reason)',NULL,60,NULL,1,'onkeypress="UDS_onlyNaccCharactersAllowed(event)"',NULL,NULL,14,'B2b. Gait disturbances - type, Untestable (specify reason)','2012-10-01 14:27:20');




-- B9F
DELETE from datadictionary where entity = 'udsftldclinfeatures3';
DELETE from viewproperty where entity = 'udsftldclinfeatures3';
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldclinfeatures3',1,'ftdppasl','1. Is an acquired disorder of language a prominent element of the clinical presentation of the subject?','0 = No; 1 = Yes','',1,'udsftldclinfeatures','FTDPPASL',1,'smallint','',1,'null',NULL,NULL,'2012-09-27 18:24:10');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldclinfeatures3',2,'ftdppapo','2. Poor object naming','0 = Absent; 1 = Questionably present; 2 = Definitely present; 9 = Not evaluated','',1,'udsftldclinfeatures','FTDPPAPO',2,'smallint','',1,'null',NULL,NULL,'2012-09-27 18:24:10');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldclinfeatures3',3,'ftdppaiw','3. Impoverished word selection / retrieval in spontaneous speech or writing','0 = Absent; 1 = Questionably present; 2 = Definitely present; 9 = Not evaluated','',1,'udsftldclinfeatures','FTDPPAIW',3,'smallint','',1,'null',NULL,NULL,'2012-09-27 18:24:10');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldclinfeatures3',4,'ftdppasw','4. Impaired word comprehension','0 = Absent; 1 = Questionably present; 2 = Definitely present; 9 = Not evaluated','',1,'udsftldclinfeatures','FTDPPASW',4,'smallint','',1,'null',NULL,NULL,'2012-09-27 18:24:10');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldclinfeatures3',5,'ftdppapk','5. Poor object/person knowledge','0 = Absent; 1 = Questionably present; 2 = Definitely present; 9 = Not evaluated','',1,'udsftldclinfeatures','FTDPPAPK',5,'smallint','',1,'null',NULL,NULL,'2012-09-27 18:24:10');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldclinfeatures3',6,'ftdppags','6. Grammatical simplification or grammatical errors in speech or writing','0 = Absent; 1 = Questionably present; 2 = Definitely present; 9 = Not evaluated','',1,'udsftldclinfeatures','FTDPPAGS',6,'smallint','',1,'null',NULL,NULL,'2012-09-27 18:24:10');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldclinfeatures3',7,'ftdppaeh','7. Effortful, halting speech','0 = Absent; 1 = Questionably present; 2 = Definitely present; 9 = Not evaluated','',1,'udsftldclinfeatures','FTDPPAEH',7,'smallint','',1,'null',NULL,NULL,'2012-09-27 18:24:10');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldclinfeatures3',8,'ftdppacs','8. Circumlocutory, empty speech','0 = Absent; 1 = Questionably present; 2 = Definitely present; 9 = Not evaluated','',1,'udsftldclinfeatures','FTDPPACS',8,'smallint','',1,'null',NULL,NULL,'2012-09-27 18:24:10');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldclinfeatures3',9,'ftdppass','9. Speech sound/word errors (paraphasias)','0 = Absent; 1 = Questionably present; 2 = Definitely present; 9 = Not evaluated','',1,'udsftldclinfeatures','FTDPPASS',9,'smallint','',1,'null',NULL,NULL,'2012-09-27 18:24:10');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldclinfeatures3',10,'ftdppasr','10. Impaired speech repetition (inability to repeat verbatim sentence-length material)','0 = Absent; 1 = Questionably present; 2 = Definitely present; 9 = Not evaluated','',1,'udsftldclinfeatures','FTDPPASR',10,'smallint','',1,'null',NULL,NULL,'2012-09-27 18:24:10');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldclinfeatures3',11,'ftdppasd','11. Surface dyslexia and dysgraphia','0 = Absent; 1 = Questionably present; 2 = Definitely present; 9 = Not evaluated','',1,'udsftldclinfeatures','FTDPPASD',11,'smallint','',1,'null',NULL,NULL,'2012-09-27 18:24:10');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldclinfeatures3',12,'ftdcppa','12. ROOT DIAGNOSIS OF PPA','0 = No; 1 = Yes','',1,'udsftldclinfeatures','FTDCPPA',12,'smallint','',1,'null',NULL,NULL,'2012-09-27 18:24:10');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldclinfeatures3',13,'ftdcppas','13. Consensus diagnosis of dominant PPA subtype based on clinician and neuropsychologist judgment','1 = PPA, semantic variant (semPPA); 2 = PPA, nonfluent/agrammatic variant (nf/gPPA); 3 = PPA, Logopenic variant; 4 = PPA not otherwise specified','',1,'udsftldclinfeatures','FTDCPPAS',13,'smallint','',1,'null',NULL,NULL,'2012-09-27 18:24:10');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldclinfeatures3',14,'ftdbvcln','14. Are acquired alterations in behavior, personality, or comportment important elements in the clinical presentation of the subject?','0 = No; 1 = Yes','',1,'udsftldclinfeatures','FTDBVCLN',14,'smallint','',1,'null',NULL,NULL,'2012-09-27 18:24:10');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldclinfeatures3',15,'ftdbvdis','15. Disinhibition','0 = Absent; 1 = Questionably present; 2 = Definitely present; 9 = Not evaluated','',1,'udsftldclinfeatures','FTDBVDIS',15,'smallint','',1,'null',NULL,NULL,'2012-09-27 18:24:10');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldclinfeatures3',16,'ftdbvapa','16. Apathy or inertia','0 = Absent; 1 = Questionably present; 2 = Definitely present; 9 = Not evaluated','',1,'udsftldclinfeatures','FTDBVAPA',16,'smallint','',1,'null',NULL,NULL,'2012-09-27 18:24:10');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldclinfeatures3',17,'ftdbvlos','17. Loss of sympathy / empathy','0 = Absent; 1 = Questionably present; 2 = Definitely present; 9 = Not evaluated','',1,'udsftldclinfeatures','FTDBVLOS',17,'smallint','',1,'null',NULL,NULL,'2012-09-27 18:24:10');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldclinfeatures3',18,'ftdbvrit','18. Ritualistic / compulsive behavior','0 = Absent; 1 = Questionably present; 2 = Definitely present; 9 = Not evaluated','',1,'udsftldclinfeatures','FTDBVRIT',18,'smallint','',1,'null',NULL,NULL,'2012-09-27 18:24:10');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldclinfeatures3',19,'ftdbvhyp','19. Hyperorality and appetite changes','0 = Absent; 1 = Questionably present; 2 = Definitely present; 9 = Not evaluated','',1,'udsftldclinfeatures','FTDBVHYP',19,'smallint','',1,'null',NULL,NULL,'2012-09-27 18:24:10');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldclinfeatures3',20,'ftdbvneu','20. Changes on neuropsychological testing consistent with bvFTD','0 = Absent; 1 = Questionably present; 2 = Definitely present; 9 = Not evaluated','',1,'udsftldclinfeatures','FTDBVNEU',20,'smallint','',1,'null',NULL,NULL,'2012-09-27 18:24:10');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldclinfeatures3',21,'ftdbvidl','21. Impaired daily functioning','0 = Absent; 1 = Questionably present; 2 = Definitely present; 9 = Not evaluated','',1,'udsftldclinfeatures','FTDBVIDL',21,'smallint','',1,'null',NULL,NULL,'2012-09-27 18:24:10');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldclinfeatures3',22,'ftdbvft','22. Does the subject meet the criteria for clinical probable or possible bvFTD syndrome?','0 = Meets < 3 of the features described in Question 15-21.; 1 = Probable bvFTD; 2 = Meets criteria for possible bvFTD and has impaired daily functioning; 3 = Meets criteria for possible bvFTD but daily functioning is not impaired','',1,'udsftldclinfeatures','FTDBVFT',22,'smallint','',1,'null',NULL,NULL,'2012-09-27 18:24:10');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldclinfeatures3',23,'ftdemgpv','23. Was an electromyogram (EMG) performed at this visit?','0 = No; 1 = Yes','',1,'udsftldclinfeatures','FTDEMGPV',23,'smallint','',1,'null',NULL,NULL,'2012-09-27 18:24:10');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldclinfeatures3',24,'ftdemgpy','24. Has an EMG been performed in the past year?','0 = No; 1 = Yes','',1,'udsftldclinfeatures','FTDEMGPY',24,'smallint','',1,'null',NULL,NULL,'2012-09-27 18:24:10');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldclinfeatures3',25,'ftdemgmn','25. If an EMG was performed, did it show evidence of motor neuron disease?','0 = No; 1 = Yes; 9 = Uncertain','',1,'udsftldclinfeatures','FTDEMGMN',25,'smallint','',1,'null',NULL,NULL,'2012-09-27 18:24:10');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldclinfeatures3',26,'ftdpabvf','26. In subjects with a diagnosis of PPA and bvFTD, which diagnosis appeared first?','1 = bvFTD; 2 = PPA, semantic variant; 3 = PPA, nonfluent/agrammatic variant; 4 = PPA, Logopenic variant; 5 = PPA not otherwise specified; 9 = Unknown','',1,'udsftldclinfeatures','FTDPABVF',26,'smallint','',1,'null',NULL,NULL,'2012-09-27 18:24:10');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldclinfeatures3.ftdppasl','en','lava','crms-nacc',NULL,'udsftldclinfeatures3','ftdppasl',NULL,'r','scale','Yes','1. Is an acquired disorder of language a prominent element of the clinical presentation of the subject?',NULL,0,NULL,0,NULL,'uds.noYes01',NULL,1,'1. Is an acquired disorder of language a prominent element of the clinical presentation of the subject?','2012-09-27 15:04:47');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldclinfeatures3.ftdppapo','en','lava','crms-nacc',NULL,'udsftldclinfeatures3','ftdppapo',NULL,'r','scale','Yes','2. Poor object naming',NULL,0,NULL,0,NULL,'uds.b9f.featuresPresent',NULL,2,'2. Poor object naming','2012-09-27 15:04:47');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldclinfeatures3.ftdppaiw','en','lava','crms-nacc',NULL,'udsftldclinfeatures3','ftdppaiw',NULL,'r','scale','Yes','3. Impoverished word selection / retrieval in spontaneous speech or writing',NULL,0,NULL,0,NULL,'uds.b9f.featuresPresent',NULL,3,'3. Impoverished word selection / retrieval in spontaneous speech or writing','2012-09-27 15:04:47');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldclinfeatures3.ftdppasw','en','lava','crms-nacc',NULL,'udsftldclinfeatures3','ftdppasw',NULL,'r','scale','Yes','4. Impaired word comprehension',NULL,0,NULL,0,NULL,'uds.b9f.featuresPresent',NULL,4,'4. Impaired word comprehension','2012-09-27 15:04:47');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldclinfeatures3.ftdppapk','en','lava','crms-nacc',NULL,'udsftldclinfeatures3','ftdppapk',NULL,'r','scale','Yes','5. Poor object/person knowledge',NULL,0,NULL,0,NULL,'uds.b9f.featuresPresent',NULL,5,'5. Poor object/person knowledge','2012-09-27 15:04:47');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldclinfeatures3.ftdppags','en','lava','crms-nacc',NULL,'udsftldclinfeatures3','ftdppags',NULL,'r','scale','Yes','6. Grammatical simplification or grammatical errors in speech or writing',NULL,0,NULL,0,NULL,'uds.b9f.featuresPresent',NULL,6,'6. Grammatical simplification or grammatical errors in speech or writing','2012-09-27 15:04:47');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldclinfeatures3.ftdppaeh','en','lava','crms-nacc',NULL,'udsftldclinfeatures3','ftdppaeh',NULL,'r','scale','Yes','7. Effortful, halting speech',NULL,0,NULL,0,NULL,'uds.b9f.featuresPresent',NULL,7,'7. Effortful, halting speech','2012-09-27 15:04:47');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldclinfeatures3.ftdppacs','en','lava','crms-nacc',NULL,'udsftldclinfeatures3','ftdppacs',NULL,'r','scale','Yes','8. Circumlocutory, empty speech',NULL,0,NULL,0,NULL,'uds.b9f.featuresPresent',NULL,8,'8. Circumlocutory, empty speech','2012-09-27 15:04:47');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldclinfeatures3.ftdppass','en','lava','crms-nacc',NULL,'udsftldclinfeatures3','ftdppass',NULL,'r','scale','Yes','9. Speech sound/word errors (paraphasias)',NULL,0,NULL,0,NULL,'uds.b9f.featuresPresent',NULL,9,'9. Speech sound/word errors (paraphasias)','2012-09-27 15:04:47');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldclinfeatures3.ftdppasr','en','lava','crms-nacc',NULL,'udsftldclinfeatures3','ftdppasr',NULL,'r','scale','Yes','10. Impaired speech repetition (inability to repeat verbatim sentence-length material)',NULL,0,NULL,0,NULL,'uds.b9f.featuresPresent',NULL,10,'10. Impaired speech repetition (inability to repeat verbatim sentence-length material)','2012-09-27 15:04:47');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldclinfeatures3.ftdppasd','en','lava','crms-nacc',NULL,'udsftldclinfeatures3','ftdppasd',NULL,'r','scale','Yes','11. Surface dyslexia and dysgraphia',NULL,0,NULL,0,NULL,'uds.b9f.featuresPresent',NULL,11,'11. Surface dyslexia and dysgraphia','2012-09-27 15:04:47');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldclinfeatures3.ftdcppa','en','lava','crms-nacc',NULL,'udsftldclinfeatures3','ftdcppa',NULL,'r','scale','Yes','12. ROOT DIAGNOSIS OF PPA',NULL,0,NULL,0,NULL,'uds.noYes01',NULL,12,'12. ROOT DIAGNOSIS OF PPA','2012-09-27 15:04:47');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldclinfeatures3.ftdcppas','en','lava','crms-nacc',NULL,'udsftldclinfeatures3','ftdcppas',NULL,'r','scale','Yes','13. Consensus diagnosis of dominant PPA subtype based on clinician and neuropsychologist judgment',NULL,0,NULL,0,NULL,'uds.b9f.ftdcppas',NULL,13,'13. Consensus diagnosis of dominant PPA subtype based on clinician and neuropsychologist judgment','2012-09-27 15:04:47');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldclinfeatures3.ftdbvcln','en','lava','crms-nacc',NULL,'udsftldclinfeatures3','ftdbvcln',NULL,'r','scale','Yes','14. Are acquired alterations in behavior, personality, or comportment important elements in the clinical presentation of the subject?',NULL,0,NULL,0,NULL,'uds.noYes01',NULL,14,'14. Are acquired alterations in behavior, personality, or comportment important elements in the clinical presentation of the subject?','2012-09-27 15:04:47');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldclinfeatures3.ftdbvdis','en','lava','crms-nacc',NULL,'udsftldclinfeatures3','ftdbvdis',NULL,'r','scale','Yes','15. Disinhibition',NULL,0,NULL,0,NULL,'uds.b9f.featuresPresent',NULL,15,'15. Disinhibition','2012-09-27 15:04:47');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldclinfeatures3.ftdbvapa','en','lava','crms-nacc',NULL,'udsftldclinfeatures3','ftdbvapa',NULL,'r','scale','Yes','16. Apathy or inertia',NULL,0,NULL,0,NULL,'uds.b9f.featuresPresent',NULL,16,'16. Apathy or inertia','2012-09-27 15:04:47');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldclinfeatures3.ftdbvlos','en','lava','crms-nacc',NULL,'udsftldclinfeatures3','ftdbvlos',NULL,'r','scale','Yes','17. Loss of sympathy / empathy',NULL,0,NULL,0,NULL,'uds.b9f.featuresPresent',NULL,17,'17. Loss of sympathy / empathy','2012-09-27 15:04:47');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldclinfeatures3.ftdbvrit','en','lava','crms-nacc',NULL,'udsftldclinfeatures3','ftdbvrit',NULL,'r','scale','Yes','18. Ritualistic / compulsive behavior',NULL,0,NULL,0,NULL,'uds.b9f.featuresPresent',NULL,18,'18. Ritualistic / compulsive behavior','2012-09-27 15:04:47');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldclinfeatures3.ftdbvhyp','en','lava','crms-nacc',NULL,'udsftldclinfeatures3','ftdbvhyp',NULL,'r','scale','Yes','19. Hyperorality and appetite changes',NULL,0,NULL,0,NULL,'uds.b9f.featuresPresent',NULL,19,'19. Hyperorality and appetite changes','2012-09-27 15:04:47');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldclinfeatures3.ftdbvneu','en','lava','crms-nacc',NULL,'udsftldclinfeatures3','ftdbvneu',NULL,'r','scale','Yes','20. Changes on neuropsychological testing consistent with bvFTD',NULL,0,NULL,0,NULL,'uds.b9f.featuresPresent',NULL,20,'20. Changes on neuropsychological testing consistent with bvFTD','2012-09-27 15:04:47');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldclinfeatures3.ftdbvidl','en','lava','crms-nacc',NULL,'udsftldclinfeatures3','ftdbvidl',NULL,'r','scale','Yes','21. Impaired daily functioning',NULL,0,NULL,0,NULL,'uds.b9f.featuresPresent',NULL,21,'21. Impaired daily functioning','2012-09-27 15:04:47');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldclinfeatures3.ftdbvft','en','lava','crms-nacc',NULL,'udsftldclinfeatures3','ftdbvft',NULL,'r','scale','Yes','22. Does the subject meet the criteria for clinical probable or possible bvFTD syndrome?',NULL,0,NULL,0,NULL,'uds.b9f.bvftd',NULL,22,'22. Does the subject meet the criteria for clinical probable or possible bvFTD syndrome?','2012-09-27 15:04:47');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldclinfeatures3.ftdemgpv','en','lava','crms-nacc',NULL,'udsftldclinfeatures3','ftdemgpv',NULL,'r','scale','Yes','23. Was an electromyogram (EMG) performed at this visit?',NULL,0,NULL,0,NULL,'uds.noYes01',NULL,23,'23. Was an electromyogram (EMG) performed at this visit?','2012-09-27 15:04:47');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldclinfeatures3.ftdemgpy','en','lava','crms-nacc',NULL,'udsftldclinfeatures3','ftdemgpy',NULL,'r','scale','Yes','24. Has an EMG been performed in the past year?',NULL,0,NULL,0,NULL,'uds.noYes01',NULL,24,'24. Has an EMG been performed in the past year?','2012-09-27 15:04:47');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldclinfeatures3.ftdemgmn','en','lava','crms-nacc',NULL,'udsftldclinfeatures3','ftdemgmn',NULL,'r','scale','Yes','25. If an EMG was performed, did it show evidence of motor neuron disease?',NULL,0,NULL,0,NULL,'uds.noYesUncertain019',NULL,25,'25. If an EMG was performed, did it show evidence of motor neuron disease?','2012-09-27 15:04:47');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldclinfeatures3.ftdpabvf','en','lava','crms-nacc',NULL,'udsftldclinfeatures3','ftdpabvf',NULL,'r','scale','Yes','26. In subjects with a diagnosis of PPA and bvFTD, which diagnosis appeared first?',NULL,0,NULL,0,NULL,'uds.b9f.ftdpabvf',NULL,26,'26. In subjects with a diagnosis of PPA and bvFTD, which diagnosis appeared first?','2012-09-27 15:04:47');




-- C1F
DELETE from datadictionary where entity = 'udsftldneuropsych3';
DELETE from viewproperty where entity = 'udsftldneuropsych3';
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldneuropsych3',11,'ftdworrc','1a. Total completely accurate words (0-15)','','',1,'udsftldneuropsych','FTDWORRC',11,'smallint','',1,'null',NULL,NULL,'2012-09-28 17:23:47');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldneuropsych3',12,'ftdworrs','1b. Total semantically related inaccurate words (0-15)','','',1,'udsftldneuropsych','FTDWORRS',12,'smallint','',1,'null',NULL,NULL,'2012-09-28 17:23:47');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldneuropsych3',13,'ftdworrr','1c. Total other phonologically related words or nonword errors (0-15)','','',1,'udsftldneuropsych','FTDWORRR',13,'smallint','',1,'null',NULL,NULL,'2012-09-28 17:23:47');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldneuropsych3',14,'ftdworic','1d. Total completely accurate words (0-15)','','',1,'udsftldneuropsych','FTDWORIC',14,'smallint','',1,'null',NULL,NULL,'2012-09-28 17:23:47');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldneuropsych3',15,'ftdworis','1e. Total semantically related inaccurate words (0-15)','','',1,'udsftldneuropsych','FTDWORIS',15,'smallint','',1,'null',NULL,NULL,'2012-09-28 17:23:47');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldneuropsych3',16,'ftdworir','1f. Total words that are regularized (read using phonics, e.g., sew read as sue)','','',1,'udsftldneuropsych','FTDWORIR',16,'smallint','',1,'null',NULL,NULL,'2012-09-28 17:23:47');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldneuropsych3',17,'ftdworip','1g. Total other phonologically related words or nonword errors (0-15)','','',1,'udsftldneuropsych','FTDWORIP',17,'smallint','',1,'null',NULL,NULL,'2012-09-28 17:23:47');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldneuropsych3',20,'ftdsemmt','2a. Total correct word-picture matches (0-20)','','',1,'udsftldneuropsych','FTDSEMMT',20,'smallint','',1,'null',NULL,NULL,'2012-09-28 17:23:47');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldneuropsych3',21,'ftdsemaa','3a. Total correct animal associations (0-8)','','',1,'udsftldneuropsych','FTDSEMAA',21,'smallint','',1,'null',NULL,NULL,'2012-09-28 17:23:47');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldneuropsych3',22,'ftdsemta','3b. Total correct tool associations (0-8)','','',1,'udsftldneuropsych','FTDSEMTA',22,'smallint','',1,'null',NULL,NULL,'2012-09-28 17:23:47');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldneuropsych3',23,'ftdsemsu','3c. Sum of all correct associations (Semantic Associates Test total score) (0-16)','','',1,'udsftldneuropsych','FTDSEMSU',23,'smallint','',1,'null',NULL,NULL,'2012-09-28 17:23:47');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldneuropsych3',24,'ftdanasw','4a. Correct subject who-questions (0-5)','','',1,'udsftldneuropsych','FTDANASW',24,'smallint','',1,'null',NULL,NULL,'2012-09-28 17:23:47');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldneuropsych3',25,'ftdanaow','4b. Correct object who-questions (0-5)','','',1,'udsftldneuropsych','FTDANAOW',25,'smallint','',1,'null',NULL,NULL,'2012-09-28 17:23:47');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldneuropsych3',26,'ftdanats','4c. Total score: sum of all correct questions (0-10)','','',1,'udsftldneuropsych','FTDANATS',26,'smallint','',1,'null',NULL,NULL,'2012-09-28 17:23:47');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldneuropsych3',27,'ftdsenas','5a. Number of completely accurate sentences (0-5)','','',1,'udsftldneuropsych','FTDSENAS',27,'smallint','',1,'null',NULL,NULL,'2012-09-28 17:23:47');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldneuropsych3',28,'ftdsenos','5b. Total number of words omitted from sentences (0-37)','','',1,'udsftldneuropsych','FTDSENOS',28,'smallint','',1,'null',NULL,NULL,'2012-09-28 17:23:47');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldneuropsych3',29,'ftdsensr','5c. Total number of semantically related or unrelated incorrect real words (0-20)','','',1,'udsftldneuropsych','FTDSENSR',29,'smallint','',1,'null',NULL,NULL,'2012-09-28 17:23:47');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldneuropsych3',30,'ftdsenpr','5d. Total number of phonologically related words or nonword errors (0-20)','','',1,'udsftldneuropsych','FTDSENPR',30,'smallint','',1,'null',NULL,NULL,'2012-09-28 17:23:47');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldneuropsych3',31,'ftdnounc','6a. Total nouns correct (0-16)','','',1,'udsftldneuropsych','FTDNOUNC',31,'smallint','',1,'null',NULL,NULL,'2012-09-28 17:23:47');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldneuropsych3',32,'ftdverbc','6b. Total verbs correct (0-16)','','',1,'udsftldneuropsych','FTDVERBC',32,'smallint','',1,'null',NULL,NULL,'2012-09-28 17:23:47');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldneuropsych3',33,'ftdratio','6c. Noun-to-verb ratio (total nouns correct/total verbs correct)','','',1,'udsftldneuropsych','FTDRATIO',33,'decimal','5,2',1,'null',NULL,NULL,'2012-09-28 17:23:47');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldneuropsych3',34,'ftdreaas','7a. Number of completely accurate sentences (0-5)','','',1,'udsftldneuropsych','FTDREAAS',34,'smallint','',1,'null',NULL,NULL,'2012-09-28 17:23:47');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldneuropsych3',35,'ftdreaos','7b. Total number of words omitted from sentence (0-37)','','',1,'udsftldneuropsych','FTDREAOS',35,'smallint','',1,'null',NULL,NULL,'2012-09-28 17:23:47');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldneuropsych3',36,'ftdreasr','7c. Total number of semantically related or unrelated incorrect real words (0-20)','','',1,'udsftldneuropsych','FTDREASR',36,'smallint','',1,'null',NULL,NULL,'2012-09-28 17:23:47');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldneuropsych3',37,'ftdreapr','7d. Total number of phonologically related words or nonword errors (0-20)','','',1,'udsftldneuropsych','FTDREAPR',37,'smallint','',1,'null',NULL,NULL,'2012-09-28 17:23:47');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldneuropsych3.ftdworrc','en','lava','crms-nacc',NULL,'udsftldneuropsych3','ftdworrc',NULL,'r','scale','Yes','1a. Total completely accurate words (0-15)',NULL,0,NULL,0,NULL,'uds.c1f.range0_15',NULL,11,'1a. Total completely accurate words (0-15)','2012-09-28 17:24:21');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldneuropsych3.ftdworrs','en','lava','crms-nacc',NULL,'udsftldneuropsych3','ftdworrs',NULL,'r','scale','Yes','1b. Total semantically related inaccurate words (0-15)',NULL,0,NULL,0,NULL,'uds.c1f.onlyRange0_15',NULL,12,'1b. Total semantically related inaccurate words (0-15)','2012-09-28 17:24:21');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldneuropsych3.ftdworrr','en','lava','crms-nacc',NULL,'udsftldneuropsych3','ftdworrr',NULL,'r','scale','Yes','1c. Total other phonologically related words or nonword errors (0-15)',NULL,0,NULL,0,NULL,'uds.c1f.onlyRange0_15',NULL,13,'1c. Total other phonologically related words or nonword errors (0-15)','2012-09-28 17:24:21');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldneuropsych3.ftdworic','en','lava','crms-nacc',NULL,'udsftldneuropsych3','ftdworic',NULL,'r','scale','Yes','1d. Total completely accurate words (0-15)',NULL,0,NULL,0,NULL,'uds.c1f.onlyRange0_15',NULL,14,'1d. Total completely accurate words (0-15)','2012-09-28 17:24:21');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldneuropsych3.ftdworis','en','lava','crms-nacc',NULL,'udsftldneuropsych3','ftdworis',NULL,'r','scale','Yes','1e. Total semantically related inaccurate words (0-15)',NULL,0,NULL,0,NULL,'uds.c1f.onlyRange0_15',NULL,15,'1e. Total semantically related inaccurate words (0-15)','2012-09-28 17:24:21');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldneuropsych3.ftdworir','en','lava','crms-nacc',NULL,'udsftldneuropsych3','ftdworir',NULL,'r','scale','Yes','1f. Total words that are regularized (read using phonics, e.g., sew read as sue)',NULL,0,NULL,0,NULL,'uds.c1f.onlyRange0_15',NULL,16,'1f. Total words that are regularized (read using phonics, e.g., sew read as sue)','2012-09-28 17:24:21');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldneuropsych3.ftdworip','en','lava','crms-nacc',NULL,'udsftldneuropsych3','ftdworip',NULL,'r','scale','Yes','1g. Total other phonologically related words or nonword errors (0-15)',NULL,0,NULL,0,NULL,'uds.c1f.onlyRange0_15',NULL,17,'1g. Total other phonologically related words or nonword errors (0-15)','2012-09-28 17:24:21');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldneuropsych3.ftdsemmt','en','lava','crms-nacc',NULL,'udsftldneuropsych3','ftdsemmt',NULL,'r','scale','Yes','2a. Total correct word-picture matches (0-20)',NULL,0,NULL,0,NULL,'uds.c1f.range0_20',NULL,20,'2a. Total correct word-picture matches (0-20)','2012-09-28 17:24:21');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldneuropsych3.ftdsemaa','en','lava','crms-nacc',NULL,'udsftldneuropsych3','ftdsemaa',NULL,'r','scale','Yes','3a. Total correct animal associations (0-8)',NULL,0,NULL,0,NULL,'uds.c1f.range0_8',NULL,21,'3a. Total correct animal associations (0-8)','2012-09-28 17:24:21');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldneuropsych3.ftdsemta','en','lava','crms-nacc',NULL,'udsftldneuropsych3','ftdsemta',NULL,'r','scale','Yes','3b. Total correct tool associations (0-8)',NULL,0,NULL,0,NULL,'uds.c1f.onlyRange0_8',NULL,22,'3b. Total correct tool associations (0-8)','2012-09-28 17:24:21');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldneuropsych3.ftdsemsu','en','lava','crms-nacc',NULL,'udsftldneuropsych3','ftdsemsu',NULL,'r','scale','Yes','3c. Sum of all correct associations (Semantic Associates Test total score) (0-16)',NULL,0,NULL,0,'disabled','uds.c1f.onlyRange0_16Total',NULL,23,'3c. Sum of all correct associations (Semantic Associates Test total score) (0-16)','2012-09-28 17:24:21');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldneuropsych3.ftdanasw','en','lava','crms-nacc',NULL,'udsftldneuropsych3','ftdanasw',NULL,'r','scale','Yes','4a. Correct subject who-questions (0-5)',NULL,0,NULL,0,NULL,'uds.c1f.range0_5',NULL,24,'4a. Correct subject who-questions (0-5)','2012-09-28 17:24:21');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldneuropsych3.ftdanaow','en','lava','crms-nacc',NULL,'udsftldneuropsych3','ftdanaow',NULL,'r','scale','Yes','4b. Correct object who-questions (0-5)',NULL,0,NULL,0,NULL,'uds.c1f.onlyRange0_5',NULL,25,'4b. Correct object who-questions (0-5)','2012-09-28 17:24:21');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldneuropsych3.ftdanats','en','lava','crms-nacc',NULL,'udsftldneuropsych3','ftdanats',NULL,'r','scale','Yes','4c. Total score: sum of all correct questions (0-10)',NULL,0,NULL,0,'disabled','uds.c1f.onlyRange0_10Total',NULL,26,'4c. Total score: sum of all correct questions (0-10)','2012-09-28 17:24:21');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldneuropsych3.ftdsenas','en','lava','crms-nacc',NULL,'udsftldneuropsych3','ftdsenas',NULL,'r','scale','Yes','5a. Number of completely accurate sentences (0-5)',NULL,0,NULL,0,NULL,'uds.c1f.range0_5',NULL,27,'5a. Number of completely accurate sentences (0-5)','2012-09-28 17:24:21');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldneuropsych3.ftdsenos','en','lava','crms-nacc',NULL,'udsftldneuropsych3','ftdsenos',NULL,'r','scale','Yes','5b. Total number of words omitted from sentences (0-37)',NULL,0,NULL,0,NULL,'uds.c1f.onlyRange0_37',NULL,28,'5b. Total number of words omitted from sentences (0-37)','2012-09-28 17:24:21');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldneuropsych3.ftdsensr','en','lava','crms-nacc',NULL,'udsftldneuropsych3','ftdsensr',NULL,'r','scale','Yes','5c. Total number of semantically related or unrelated incorrect real words (0-20)',NULL,0,NULL,0,NULL,'uds.c1f.onlyRange0_20',NULL,29,'5c. Total number of semantically related or unrelated incorrect real words (0-20)','2012-09-28 17:24:21');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldneuropsych3.ftdsenpr','en','lava','crms-nacc',NULL,'udsftldneuropsych3','ftdsenpr',NULL,'r','scale','Yes','5d. Total number of phonologically related words or nonword errors (0-20)',NULL,0,NULL,0,NULL,'uds.c1f.onlyRange0_20',NULL,30,'5d. Total number of phonologically related words or nonword errors (0-20)','2012-09-28 17:24:21');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldneuropsych3.ftdnounc','en','lava','crms-nacc',NULL,'udsftldneuropsych3','ftdnounc',NULL,'r','scale','Yes','6a. Total nouns correct (0-16)',NULL,0,NULL,0,NULL,'uds.c1f.range0_16',NULL,31,'6a. Total nouns correct (0-16)','2012-09-28 17:24:21');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldneuropsych3.ftdverbc','en','lava','crms-nacc',NULL,'udsftldneuropsych3','ftdverbc',NULL,'r','scale','Yes','6b. Total verbs correct (0-16)',NULL,0,NULL,0,NULL,'uds.c1f.onlyRange0_16',NULL,32,'6b. Total verbs correct (0-16)','2012-09-28 17:24:21');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldneuropsych3.ftdratio','en','lava','crms-nacc',NULL,'udsftldneuropsych3','ftdratio',NULL,'r','range','No','6c. Noun-to-verb ratio (total nouns correct/total verbs correct)',NULL,5,NULL,0,'disabled','ref.totalErrorCodeDecimal',NULL,33,'6c. Noun-to-verb ratio (total nouns correct/total verbs correct)','2012-09-28 17:24:21');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldneuropsych3.ftdreaas','en','lava','crms-nacc',NULL,'udsftldneuropsych3','ftdreaas',NULL,'r','scale','Yes','7a. Number of completely accurate sentences (0-5)',NULL,0,NULL,0,NULL,'uds.c1f.range0_5',NULL,34,'7a. Number of completely accurate sentences (0-5)','2012-09-28 17:24:21');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldneuropsych3.ftdreaos','en','lava','crms-nacc',NULL,'udsftldneuropsych3','ftdreaos',NULL,'r','scale','Yes','7b. Total number of words omitted from sentence (0-37)',NULL,0,NULL,0,NULL,'uds.c1f.onlyRange0_37',NULL,35,'7b. Total number of words omitted from sentence (0-37)','2012-09-28 17:24:21');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldneuropsych3.ftdreasr','en','lava','crms-nacc',NULL,'udsftldneuropsych3','ftdreasr',NULL,'r','scale','Yes','7c. Total number of semantically related or unrelated incorrect real words (0-20)',NULL,0,NULL,0,NULL,'uds.c1f.onlyRange0_20',NULL,36,'7c. Total number of semantically related or unrelated incorrect real words (0-20)','2012-09-28 17:24:21');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldneuropsych3.ftdreapr','en','lava','crms-nacc',NULL,'udsftldneuropsych3','ftdreapr',NULL,'r','scale','Yes','7d. Total number of phonologically related words or nonword errors (0-20)',NULL,0,NULL,0,NULL,'uds.c1f.onlyRange0_20',NULL,37,'7d. Total number of phonologically related words or nonword errors (0-20)','2012-09-28 17:24:21');




-- C2F
DELETE from datadictionary where entity = 'udsftldsnq3';
DELETE from viewproperty where 'udsftldsnq3';
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldsnq3',1,'ftdcpc2f','0. Reason form not completed','','',1,'udsftldsnq','FTDCPC2F',1,'smallint','',1,'null',NULL,NULL,'2012-10-01 18:40:35');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldsnq3',2,'ftdhaird','1. Tell a stranger you don\'t like their hairstyle?','','',1,'udsftldsnq','FTDHAIRD',2,'smallint','',1,'null',NULL,NULL,'2012-10-01 18:40:35');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldsnq3',3,'ftdspit','2. Spit on the floor?','','',1,'udsftldsnq','FTDSPIT',3,'smallint','',1,'null',NULL,NULL,'2012-10-01 18:40:35');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldsnq3',4,'ftdnose','3. Blow your nose in public?','','',1,'udsftldsnq','FTDNOSE',4,'smallint','',1,'null',NULL,NULL,'2012-10-01 18:40:35');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldsnq3',5,'ftdcoage','4. Ask a coworker their age?','','',1,'udsftldsnq','FTDCOAGE',5,'smallint','',1,'null',NULL,NULL,'2012-10-01 18:40:35');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldsnq3',6,'ftdcry','5. Cry during a movie at the theater?','','',1,'udsftldsnq','FTDCRY',6,'smallint','',1,'null',NULL,NULL,'2012-10-01 18:40:35');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldsnq3',7,'ftdcut','6. Cut in line if you are in a hurry?','','',1,'udsftldsnq','FTDCUT',7,'smallint','',1,'null',NULL,NULL,'2012-10-01 18:40:35');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldsnq3',8,'ftdytrip','7. Laugh when you yourself trip and fall?','','',1,'udsftldsnq','FTDYTRIP',8,'smallint','',1,'null',NULL,NULL,'2012-10-01 18:40:35');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldsnq3',9,'ftdeatp','8. Eat pasta with your fingers?','','',1,'udsftldsnq','FTDEATP',9,'smallint','',1,'null',NULL,NULL,'2012-10-01 18:40:35');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldsnq3',10,'ftdtella','9. Tell a coworker your age?','','',1,'udsftldsnq','FTDTELLA',10,'smallint','',1,'null',NULL,NULL,'2012-10-01 18:40:35');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldsnq3',11,'ftdopin','10. Tell someone your opinion of a movie they haven\'t seen?','','',1,'udsftldsnq','FTDOPIN',11,'smallint','',1,'null',NULL,NULL,'2012-10-01 18:40:35');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldsnq3',12,'ftdlaugh','11. Laugh when someone else trips and falls?','','',1,'udsftldsnq','FTDLAUGH',12,'smallint','',1,'null',NULL,NULL,'2012-10-01 18:40:35');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldsnq3',13,'ftdshirt','12. Wear the same shirt every day?','','',1,'udsftldsnq','FTDSHIRT',13,'smallint','',1,'null',NULL,NULL,'2012-10-01 18:40:35');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldsnq3',14,'ftdkeepm','13. Keep money you find on the sidewalk?','','',1,'udsftldsnq','FTDKEEPM',14,'smallint','',1,'null',NULL,NULL,'2012-10-01 18:40:35');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldsnq3',15,'ftdpickn','14. Pick your nose in public?','','',1,'udsftldsnq','FTDPICKN',15,'smallint','',1,'null',NULL,NULL,'2012-10-01 18:40:35');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldsnq3',16,'ftdover','15. Tell a coworker you think they are overweight?','','',1,'udsftldsnq','FTDOVER',16,'smallint','',1,'null',NULL,NULL,'2012-10-01 18:40:35');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldsnq3',17,'ftdeatr','16. Eat ribs with your fingers?','','',1,'udsftldsnq','FTDEATR',17,'smallint','',1,'null',NULL,NULL,'2012-10-01 18:40:35');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldsnq3',18,'ftdhairl','17. Tell a stranger you like their hairstyle?','','',1,'udsftldsnq','FTDHAIRL',18,'smallint','',1,'null',NULL,NULL,'2012-10-01 18:40:35');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldsnq3',19,'ftdshirw','18. Wear the same shirt twice in two weeks?','','',1,'udsftldsnq','FTDSHIRW',19,'smallint','',1,'null',NULL,NULL,'2012-10-01 18:40:35');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldsnq3',20,'ftdmove','19. Tell someone the ending of a movie they haven\'t seen?','','',1,'udsftldsnq','FTDMOVE',20,'smallint','',1,'null',NULL,NULL,'2012-10-01 18:40:35');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldsnq3',21,'ftdhugs','20. Hug a stranger without asking first?','','',1,'udsftldsnq','FTDHUGS',21,'smallint','',1,'null',NULL,NULL,'2012-10-01 18:40:35');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldsnq3',22,'ftdloud','21. Talk out loud during a movie at the theater?','','',1,'udsftldsnq','FTDLOUD',22,'smallint','',1,'null',NULL,NULL,'2012-10-01 18:40:35');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldsnq3',23,'ftdlost','22. Tell a coworker you think they have lost weight?','','',1,'udsftldsnq','FTDLOST',23,'smallint','',1,'null',NULL,NULL,'2012-10-01 18:40:35');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldsnq3',24,'ftdsntot','23. SNQ22 Total Score','','',0,'udsftldsnq','FTDSNTOT',24,'smallint','',1,'null',NULL,NULL,'2012-10-01 18:40:35');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldsnq3',25,'ftdsntbs','24. SNQ22 Break Score','','',0,'udsftldsnq','FTDSNTBS',25,'smallint','',1,'null',NULL,NULL,'2012-10-01 18:40:35');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldsnq3',26,'ftdsntos','25. SNQ22 Overadhere Score','','',0,'udsftldsnq','FTDSNTOS',26,'smallint','',1,'null',NULL,NULL,'2012-10-01 18:40:35');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldsnq3',27,'ftdsnrat','26. SNQ22 Yes/No Ratio Score','','',0,'udsftldsnq','FTDSNRAT',27,'decimal','5,2',1,'null',NULL,NULL,'2012-10-01 18:40:35');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldsnq3.ftdcpc2f','en','lava','crms-nacc',NULL,'udsftldsnq3','ftdcpc2f',NULL,'r','scale','Yes','0. Reason form not completed',NULL,0,NULL,0,NULL,'uds.c2f.reason',NULL,1,'0. Reason form not completed','2012-10-01 18:41:04');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldsnq3.ftdhaird','en','lava','crms-nacc',NULL,'udsftldsnq3','ftdhaird',NULL,'r','scale','Yes','1. Tell a stranger you don\'t like their hairstyle?',NULL,0,NULL,0,NULL,'uds.noYes01',NULL,2,'1. Tell a stranger you don\'t like their hairstyle?','2012-10-01 18:41:04');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldsnq3.ftdspit','en','lava','crms-nacc',NULL,'udsftldsnq3','ftdspit',NULL,'r','scale','Yes','2. Spit on the floor?',NULL,0,NULL,0,NULL,'uds.noYes01',NULL,3,'2. Spit on the floor?','2012-10-01 18:41:04');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldsnq3.ftdnose','en','lava','crms-nacc',NULL,'udsftldsnq3','ftdnose',NULL,'r','scale','Yes','3. Blow your nose in public?',NULL,0,NULL,0,NULL,'uds.noYes01',NULL,4,'3. Blow your nose in public?','2012-10-01 18:41:04');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldsnq3.ftdcoage','en','lava','crms-nacc',NULL,'udsftldsnq3','ftdcoage',NULL,'r','scale','Yes','4. Ask a coworker their age?',NULL,0,NULL,0,NULL,'uds.noYes01',NULL,5,'4. Ask a coworker their age?','2012-10-01 18:41:04');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldsnq3.ftdcry','en','lava','crms-nacc',NULL,'udsftldsnq3','ftdcry',NULL,'r','scale','Yes','5. Cry during a movie at the theater?',NULL,0,NULL,0,NULL,'uds.noYes01',NULL,6,'5. Cry during a movie at the theater?','2012-10-01 18:41:04');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldsnq3.ftdcut','en','lava','crms-nacc',NULL,'udsftldsnq3','ftdcut',NULL,'r','scale','Yes','6. Cut in line if you are in a hurry?',NULL,0,NULL,0,NULL,'uds.noYes01',NULL,7,'6. Cut in line if you are in a hurry?','2012-10-01 18:41:04');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldsnq3.ftdytrip','en','lava','crms-nacc',NULL,'udsftldsnq3','ftdytrip',NULL,'r','scale','Yes','7. Laugh when you yourself trip and fall?',NULL,0,NULL,0,NULL,'uds.noYes01',NULL,8,'7. Laugh when you yourself trip and fall?','2012-10-01 18:41:04');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldsnq3.ftdeatp','en','lava','crms-nacc',NULL,'udsftldsnq3','ftdeatp',NULL,'r','scale','Yes','8. Eat pasta with your fingers?',NULL,0,NULL,0,NULL,'uds.noYes01',NULL,9,'8. Eat pasta with your fingers?','2012-10-01 18:41:04');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldsnq3.ftdtella','en','lava','crms-nacc',NULL,'udsftldsnq3','ftdtella',NULL,'r','scale','Yes','9. Tell a coworker your age?',NULL,0,NULL,0,NULL,'uds.noYes01',NULL,10,'9. Tell a coworker your age?','2012-10-01 18:41:04');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldsnq3.ftdopin','en','lava','crms-nacc',NULL,'udsftldsnq3','ftdopin',NULL,'r','scale','Yes','10. Tell someone your opinion of a movie they haven\'t seen?',NULL,0,NULL,0,NULL,'uds.noYes01',NULL,11,'10. Tell someone your opinion of a movie they haven\'t seen?','2012-10-01 18:41:04');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldsnq3.ftdlaugh','en','lava','crms-nacc',NULL,'udsftldsnq3','ftdlaugh',NULL,'r','scale','Yes','11. Laugh when someone else trips and falls?',NULL,0,NULL,0,NULL,'uds.noYes01',NULL,12,'11. Laugh when someone else trips and falls?','2012-10-01 18:41:04');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldsnq3.ftdshirt','en','lava','crms-nacc',NULL,'udsftldsnq3','ftdshirt',NULL,'r','scale','Yes','12. Wear the same shirt every day?',NULL,0,NULL,0,NULL,'uds.noYes01',NULL,13,'12. Wear the same shirt every day?','2012-10-01 18:41:04');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldsnq3.ftdkeepm','en','lava','crms-nacc',NULL,'udsftldsnq3','ftdkeepm',NULL,'r','scale','Yes','13. Keep money you find on the sidewalk?',NULL,0,NULL,0,NULL,'uds.noYes01',NULL,14,'13. Keep money you find on the sidewalk?','2012-10-01 18:41:04');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldsnq3.ftdpickn','en','lava','crms-nacc',NULL,'udsftldsnq3','ftdpickn',NULL,'r','scale','Yes','14. Pick your nose in public?',NULL,0,NULL,0,NULL,'uds.noYes01',NULL,15,'14. Pick your nose in public?','2012-10-01 18:41:04');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldsnq3.ftdover','en','lava','crms-nacc',NULL,'udsftldsnq3','ftdover',NULL,'r','scale','Yes','15. Tell a coworker you think they are overweight?',NULL,0,NULL,0,NULL,'uds.noYes01',NULL,16,'15. Tell a coworker you think they are overweight?','2012-10-01 18:41:04');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldsnq3.ftdeatr','en','lava','crms-nacc',NULL,'udsftldsnq3','ftdeatr',NULL,'r','scale','Yes','16. Eat ribs with your fingers?',NULL,0,NULL,0,NULL,'uds.noYes01',NULL,17,'16. Eat ribs with your fingers?','2012-10-01 18:41:04');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldsnq3.ftdhairl','en','lava','crms-nacc',NULL,'udsftldsnq3','ftdhairl',NULL,'r','scale','Yes','17. Tell a stranger you like their hairstyle?',NULL,0,NULL,0,NULL,'uds.noYes01',NULL,18,'17. Tell a stranger you like their hairstyle?','2012-10-01 18:41:04');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldsnq3.ftdshirw','en','lava','crms-nacc',NULL,'udsftldsnq3','ftdshirw',NULL,'r','scale','Yes','18. Wear the same shirt twice in two weeks?',NULL,0,NULL,0,NULL,'uds.noYes01',NULL,19,'18. Wear the same shirt twice in two weeks?','2012-10-01 18:41:04');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldsnq3.ftdmove','en','lava','crms-nacc',NULL,'udsftldsnq3','ftdmove',NULL,'r','scale','Yes','19. Tell someone the ending of a movie they haven?t seen?',NULL,0,NULL,0,NULL,'uds.noYes01',NULL,20,'19. Tell someone the ending of a movie they haven?t seen?','2012-10-01 18:41:04');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldsnq3.ftdhugs','en','lava','crms-nacc',NULL,'udsftldsnq3','ftdhugs',NULL,'r','scale','Yes','20. Hug a stranger without asking first?',NULL,0,NULL,0,NULL,'uds.noYes01',NULL,21,'20. Hug a stranger without asking first?','2012-10-01 18:41:04');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldsnq3.ftdloud','en','lava','crms-nacc',NULL,'udsftldsnq3','ftdloud',NULL,'r','scale','Yes','21. Talk out loud during a movie at the theater?',NULL,0,NULL,0,NULL,'uds.noYes01',NULL,22,'21. Talk out loud during a movie at the theater?','2012-10-01 18:41:04');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldsnq3.ftdlost','en','lava','crms-nacc',NULL,'udsftldsnq3','ftdlost',NULL,'r','scale','Yes','22. Tell a coworker you think they have lost weight?',NULL,0,NULL,0,NULL,'uds.noYes01',NULL,23,'22. Tell a coworker you think they have lost weight?','2012-10-01 18:41:04');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldsnq3.ftdsntot','en','lava','crms-nacc',NULL,'udsftldsnq3','ftdsntot',NULL,'r','scale','No','23. SNQ22 Total Score',NULL,0,NULL,0,'disabled','ref.totalErrorCode',NULL,24,'23. SNQ22 Total Score','2012-10-01 18:41:04');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldsnq3.ftdsntbs','en','lava','crms-nacc',NULL,'udsftldsnq3','ftdsntbs',NULL,'r','scale','No','24. SNQ22 Break Score',NULL,0,NULL,0,'disabled','ref.totalErrorCode',NULL,25,'24. SNQ22 Break Score','2012-10-01 18:41:04');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldsnq3.ftdsntos','en','lava','crms-nacc',NULL,'udsftldsnq3','ftdsntos',NULL,'r','scale','No','25. SNQ22 Overadhere Score',NULL,0,NULL,0,'disabled','ref.totalErrorCode',NULL,26,'25. SNQ22 Overadhere Score','2012-10-01 18:41:04');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldsnq3.ftdsnrat','en','lava','crms-nacc',NULL,'udsftldsnq3','ftdsnrat',NULL,'r','scale','No','26. SNQ22 Yes/No Ratio Score',NULL,5,NULL,0,'disabled','ref.totalErrorCodeDecimal',NULL,27,'26. SNQ22 Yes/No Ratio Score','2012-10-01 18:41:04');





-- C3F
DELETE from datadictionary where entity = 'udsftldsboc3';
DELETE from viewproperty where entity = 'udsftldsboc3';
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldsboc3',1,'ftdself','1. Was overly self-conscious / embarrassed for self.','','',1,'udsftldsboc','FTDSELF',1,'smallint','',1,'null',NULL,NULL,'2012-09-28 16:44:40');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldsboc3',2,'ftdbadly','1a. Spontaneously mentioned that he/she was performing badly.','','',1,'udsftldsboc','FTDBADLY',2,'smallint','',1,'null',NULL,NULL,'2012-09-28 16:44:40');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldsboc3',3,'ftddepr','1b. Made other self-depreciatory comments.','','',1,'udsftldsboc','FTDDEPR',3,'smallint','',1,'null',NULL,NULL,'2012-09-28 16:44:40');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldsboc3',4,'ftdemotd','1c. Showed emotional distress over his/her performance / cognitive abilities.','','',1,'udsftldsboc','FTDEMOTD',4,'smallint','',1,'null',NULL,NULL,'2012-09-28 16:44:40');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldsboc3',5,'ftdlself','2. Showed too little self-consciousness / embarrassment for self.','','',1,'udsftldsboc','FTDLSELF',5,'smallint','',1,'null',NULL,NULL,'2012-09-28 16:44:40');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldsboc3',6,'ftddisr','2a. Disrobed immodestly (took off shoes, belt, pants, etc. lifted shirt, etc.)','','',1,'udsftldsboc','FTDDISR',6,'smallint','',1,'null',NULL,NULL,'2012-09-28 16:44:40');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldsboc3',7,'ftdbelch','2b. Engaged in belching or flatulence, or picked nose without apology.','','',1,'udsftldsboc','FTDBELCH',7,'smallint','',1,'null',NULL,NULL,'2012-09-28 16:44:40');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldsboc3',8,'ftdgigg','2c. Giggled or otherwise made silly, childish comment or noise.','','',1,'udsftldsboc','FTDGIGG',8,'smallint','',1,'null',NULL,NULL,'2012-09-28 16:44:40');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldsboc3',9,'ftdpriv','3. Insensitive to others\' embarrassment or privacy.','','',1,'udsftldsboc','FTDPRIV',9,'smallint','',1,'null',NULL,NULL,'2012-09-28 16:44:40');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldsboc3',10,'ftdnegat','3a. Insulted or made a negative comment about examiner.','','',1,'udsftldsboc','FTDNEGAT',10,'smallint','',1,'null',NULL,NULL,'2012-09-28 16:44:40');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldsboc3',11,'ftdecomm','3b. Made an embarrassing comment about examiner.','','',1,'udsftldsboc','FTDECOMM',11,'smallint','',1,'null',NULL,NULL,'2012-09-28 16:44:40');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldsboc3',12,'ftdinapj','3c. Made an inappropriate or embarrassing joke.','','',1,'udsftldsboc','FTDINAPJ',12,'smallint','',1,'null',NULL,NULL,'2012-09-28 16:44:40');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldsboc3',13,'ftdfaila','4. Failed to adapt / defer to structure of testing situation established by examiner.','','',1,'udsftldsboc','FTDFAILA',13,'smallint','',1,'null',NULL,NULL,'2012-09-28 16:44:40');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldsboc3',14,'ftdresis','4a. Resisted redirection while engaging in a verbal monologue.','','',1,'udsftldsboc','FTDRESIS',14,'smallint','',1,'null',NULL,NULL,'2012-09-28 16:44:40');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldsboc3',15,'ftdinter','4b. Interrupted examiner.','','',1,'udsftldsboc','FTDINTER',15,'smallint','',1,'null',NULL,NULL,'2012-09-28 16:44:40');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldsboc3',16,'ftdverba','4c. Verbalized a desire to leave the evaluation prematurely.','','',1,'udsftldsboc','FTDVERBA',16,'smallint','',1,'null',NULL,NULL,'2012-09-28 16:44:40');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldsboc3',17,'ftdphysi','4d. Physically attempted to leave the evaluation prematurely.','','',1,'udsftldsboc','FTDPHYSI',17,'smallint','',1,'null',NULL,NULL,'2012-09-28 16:44:40');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldsboc3',18,'ftdtopic','4e. Failed to maintain topic of discussion, initiated tangent.','','',1,'udsftldsboc','FTDTOPIC',18,'smallint','',1,'null',NULL,NULL,'2012-09-28 16:44:40');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldsboc3',19,'ftdproto','4f. Demanded that test protocol be broken for him/her (e.g., insisted on completing an item after being told to stop, tried to cheat, tried to turn page against examiner\'s expressed wishes, etc.).','','',1,'udsftldsboc','FTDPROTO',19,'smallint','',1,'null',NULL,NULL,'2012-09-28 16:44:40');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldsboc3',20,'ftdpreo','5. Was preoccupied with what time the evaluation had to be finished.','','',1,'udsftldsboc','FTDPREO',20,'smallint','',1,'null',NULL,NULL,'2012-09-28 16:44:40');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldsboc3',21,'ftdfini','5a. Reminded examiner what time evaluation had to be finished.','','',1,'udsftldsboc','FTDFINI',21,'smallint','',1,'null',NULL,NULL,'2012-09-28 16:44:40');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldsboc3',22,'ftdacted','6. Acted overly dependent.','','',1,'udsftldsboc','FTDACTED',22,'smallint','',1,'null',NULL,NULL,'2012-09-28 16:44:40');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldsboc3',23,'ftdabs','6a. Mentioned caregiver\'s absence or asked when caregiver would return.','','',1,'udsftldsboc','FTDABS',23,'smallint','',1,'null',NULL,NULL,'2012-09-28 16:44:40');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldsboc3',24,'ftdfeedb','6b. Asked for feedback on performance.','','',1,'udsftldsboc','FTDFEEDB',24,'smallint','',1,'null',NULL,NULL,'2012-09-28 16:44:40');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldsboc3',25,'ftdfrust','6c. Showed frustration when examiner would not provide explicit feedback.','','',1,'udsftldsboc','FTDFRUST',25,'smallint','',1,'null',NULL,NULL,'2012-09-28 16:44:40');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldsboc3',26,'ftdanxi','7. Was anxious.','','',1,'udsftldsboc','FTDANXI',26,'smallint','',1,'null',NULL,NULL,'2012-09-28 16:44:40');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldsboc3',27,'ftdnervo','7a. Mentioned being nervous about testing/performance anxiety.','','',1,'udsftldsboc','FTDNERVO',27,'smallint','',1,'null',NULL,NULL,'2012-09-28 16:44:40');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldsboc3',28,'ftdndiag','7b. Mentioned being nervous about diagnosis or prognosis.','','',1,'udsftldsboc','FTDNDIAG',28,'smallint','',1,'null',NULL,NULL,'2012-09-28 16:44:40');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldsboc3',29,'ftdstimb','8. Was stimulus-bound.','','',1,'udsftldsboc','FTDSTIMB',29,'smallint','',1,'null',NULL,NULL,'2012-09-28 16:44:40');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldsboc3',30,'ftdstime','8a. Made stimulus-bound error on testing.','','',1,'udsftldsboc','FTDSTIME',30,'smallint','',1,'null',NULL,NULL,'2012-09-28 16:44:40');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldsboc3',31,'ftdobjec','8b. Picked up object on desk unnecessarily.','','',1,'udsftldsboc','FTDOBJEC',31,'smallint','',1,'null',NULL,NULL,'2012-09-28 16:44:40');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldsboc3',32,'ftdcircu','8c. Circumstantial speech; overly focused on details, overly lengthy.','','',1,'udsftldsboc','FTDCIRCU',32,'smallint','',1,'null',NULL,NULL,'2012-09-28 16:44:40');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldsboc3',33,'ftdperse','9. Was perseverative.','','',1,'udsftldsboc','FTDPERSE',33,'smallint','',1,'null',NULL,NULL,'2012-09-28 16:44:40');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldsboc3',34,'ftdrepea','9a. Repeated previous answer on testing.','','',1,'udsftldsboc','FTDREPEA',34,'smallint','',1,'null',NULL,NULL,'2012-09-28 16:44:40');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldsboc3',35,'ftdanecd','9b. Repeated an anecdote.','','',1,'udsftldsboc','FTDANECD',35,'smallint','',1,'null',NULL,NULL,'2012-09-28 16:44:40');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldsboc3',36,'ftddinit','10. Showed decreased initiation.','','',1,'udsftldsboc','FTDDINIT',36,'smallint','',1,'null',NULL,NULL,'2012-09-28 16:44:40');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldsboc3',37,'ftddelay','10a. Began response in a notably delayed manner (not due to general slowing).','','',1,'udsftldsboc','FTDDELAY',37,'smallint','',1,'null',NULL,NULL,'2012-09-28 16:44:40');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldsboc3',38,'ftdaddve','10b. Required additional verbal prompting to initiate task.','','',1,'udsftldsboc','FTDADDVE',38,'smallint','',1,'null',NULL,NULL,'2012-09-28 16:44:40');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldsboc3',39,'ftdfluct','11. Showed fluctuating level of cognitive ability through sessions regardless of complexity of material (e.g., was coherent at times and had notable difficulty understanding at other times).','','',1,'udsftldsboc','FTDFLUCT',39,'smallint','',1,'null',NULL,NULL,'2012-09-28 16:44:40');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldsboc3',40,'ftdlostt','11a. Lost task set/forgot instructions after performing task correctly.','','',1,'udsftldsboc','FTDLOSTT',40,'smallint','',1,'null',NULL,NULL,'2012-09-28 16:44:40');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldsboc3',41,'ftdrepru','11b. Repeated rules to self multiple times during task.','','',1,'udsftldsboc','FTDREPRU',41,'smallint','',1,'null',NULL,NULL,'2012-09-28 16:44:40');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldsboc3',42,'ftdtrain','11c. Lost train of thought during conversation or response (demonstrated thought blocking).','','',1,'udsftldsboc','FTDTRAIN',42,'smallint','',1,'null',NULL,NULL,'2012-09-28 16:44:40');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldsboc3',43,'ftddiscl','12. Was overly disclosing or inappropriately familiar.','','',1,'udsftldsboc','FTDDISCL',43,'smallint','',1,'null',NULL,NULL,'2012-09-28 16:44:40');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldsboc3',44,'ftdspont','12a. Spontaneously revealed inappropriately personal information concerning self (only).','','',1,'udsftldsboc','FTDSPONT',44,'smallint','',1,'null',NULL,NULL,'2012-09-28 16:44:40');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldsboc3',45,'ftdsponr','12b. Spontaneously revealed inappropriately personal information concerning a relative or friend (can also involve self).','','',1,'udsftldsboc','FTDSPONR',45,'smallint','',1,'null',NULL,NULL,'2012-09-28 16:44:40');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldsboc3',46,'ftdstood','12c. Stood or leaned too close to examiner (noticeably entered examiner\'s personal space).','','',1,'udsftldsboc','FTDSTOOD',46,'smallint','',1,'null',NULL,NULL,'2012-09-28 16:44:40');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldsboc3',47,'ftdtouch','12d. Touched examiner.','','',1,'udsftldsboc','FTDTOUCH',47,'smallint','',1,'null',NULL,NULL,'2012-09-28 16:44:40');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldsboc3',48,'ftddsoci','13. Showed diminished social/emotional engagement.','','',1,'udsftldsboc','FTDDSOCI',48,'smallint','',1,'null',NULL,NULL,'2012-09-28 16:44:41');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldsboc3',49,'ftdexagg','14. Showed exaggerated/labile emotional reactivity:','','',1,'udsftldsboc','FTDEXAGG',49,'smallint','',1,'null',NULL,NULL,'2012-09-28 16:44:41');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldsboc3',50,'ftdsbtot','15. Descriptor Total Score','','',1,'udsftldsboc','FTDSBTOT',50,'smallint','',1,'null',NULL,NULL,'2012-09-28 16:44:41');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldsboc3',51,'ftdsbcto','16. Checklist (Behavior) Score','','',1,'udsftldsboc','FTDSBCTO',51,'smallint','',1,'null',NULL,NULL,'2012-09-28 16:44:41');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldsboc3',52,'ftdlengt','17. Length of the entire FTLD neuropsychological testing session','','',1,'udsftldsboc','FTDLENGT',52,'smallint','',1,'null',NULL,NULL,'2012-09-28 16:44:41');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldsboc3.ftdself','en','lava','crms-nacc',NULL,'udsftldsboc3','ftdself',NULL,'r','scale','Yes','1. Was overly self-conscious / embarrassed for self.',NULL,0,NULL,0,NULL,'uds.c3f.mainScale',NULL,1,'1. Was overly self-conscious / embarrassed for self.','2012-09-28 16:45:12');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldsboc3.ftdbadly','en','lava','crms-nacc',NULL,'udsftldsboc3','ftdbadly',NULL,'r','scale','Yes','a. Spontaneously mentioned that he/she was performing badly.',NULL,0,NULL,1,NULL,'uds.c3f.subScale',NULL,2,'1a. Spontaneously mentioned that he/she was performing badly.','2012-09-28 16:45:12');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldsboc3.ftddepr','en','lava','crms-nacc',NULL,'udsftldsboc3','ftddepr',NULL,'r','scale','Yes','b. Made other self-depreciatory comments.',NULL,0,NULL,1,NULL,'uds.c3f.subScale',NULL,3,'1b. Made other self-depreciatory comments.','2012-09-28 16:45:12');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldsboc3.ftdemotd','en','lava','crms-nacc',NULL,'udsftldsboc3','ftdemotd',NULL,'r','scale','Yes','c. Showed emotional distress over his/her performance / cognitive abilities.',NULL,0,NULL,1,NULL,'uds.c3f.subScale',NULL,4,'1c. Showed emotional distress over his/her performance / cognitive abilities.','2012-09-28 16:45:12');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldsboc3.ftdlself','en','lava','crms-nacc',NULL,'udsftldsboc3','ftdlself',NULL,'r','scale','Yes','2. Showed too little self-consciousness / embarrassment for self.',NULL,0,NULL,0,NULL,'uds.c3f.mainScale',NULL,5,'2. Showed too little self-consciousness / embarrassment for self.','2012-09-28 16:45:12');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldsboc3.ftddisr','en','lava','crms-nacc',NULL,'udsftldsboc3','ftddisr',NULL,'r','scale','Yes','a. Disrobed immodestly (took off shoes, belt, pants, etc. lifted shirt, etc.)',NULL,0,NULL,1,NULL,'uds.c3f.subScale',NULL,6,'2a. Disrobed immodestly (took off shoes, belt, pants, etc. lifted shirt, etc.)','2012-09-28 16:45:12');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldsboc3.ftdbelch','en','lava','crms-nacc',NULL,'udsftldsboc3','ftdbelch',NULL,'r','scale','Yes','b. Engaged in belching or flatulence, or picked nose without apology.',NULL,0,NULL,1,NULL,'uds.c3f.subScale',NULL,7,'2b. Engaged in belching or flatulence, or picked nose without apology.','2012-09-28 16:45:12');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldsboc3.ftdgigg','en','lava','crms-nacc',NULL,'udsftldsboc3','ftdgigg',NULL,'r','scale','Yes','c. Giggled or otherwise made silly, childish comment or noise.',NULL,0,NULL,1,NULL,'uds.c3f.subScale',NULL,8,'2c. Giggled or otherwise made silly, childish comment or noise.','2012-09-28 16:45:12');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldsboc3.ftdpriv','en','lava','crms-nacc',NULL,'udsftldsboc3','ftdpriv',NULL,'r','scale','Yes','3. Insensitive to others\' embarrassment or privacy.',NULL,0,NULL,0,NULL,'uds.c3f.mainScale',NULL,9,'3. Insensitive to others\' embarrassment or privacy.','2012-09-28 16:45:12');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldsboc3.ftdnegat','en','lava','crms-nacc',NULL,'udsftldsboc3','ftdnegat',NULL,'r','scale','Yes','a. Insulted or made a negative comment about examiner.',NULL,0,NULL,1,NULL,'uds.c3f.subScale',NULL,10,'3a. Insulted or made a negative comment about examiner.','2012-09-28 16:45:12');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldsboc3.ftdecomm','en','lava','crms-nacc',NULL,'udsftldsboc3','ftdecomm',NULL,'r','scale','Yes','b. Made an embarrassing comment about examiner.',NULL,0,NULL,1,NULL,'uds.c3f.subScale',NULL,11,'3b. Made an embarrassing comment about examiner.','2012-09-28 16:45:12');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldsboc3.ftdinapj','en','lava','crms-nacc',NULL,'udsftldsboc3','ftdinapj',NULL,'r','scale','Yes','c. Made an inappropriate or embarrassing joke.',NULL,0,NULL,1,NULL,'uds.c3f.subScale',NULL,12,'3c. Made an inappropriate or embarrassing joke.','2012-09-28 16:45:12');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldsboc3.ftdfaila','en','lava','crms-nacc',NULL,'udsftldsboc3','ftdfaila',NULL,'r','scale','Yes','4. Failed to adapt / defer to structure of testing situation established by examiner.',NULL,0,NULL,0,NULL,'uds.c3f.mainScale',NULL,13,'4. Failed to adapt / defer to structure of testing situation established by examiner.','2012-09-28 16:45:12');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldsboc3.ftdresis','en','lava','crms-nacc',NULL,'udsftldsboc3','ftdresis',NULL,'r','scale','Yes','a. Resisted redirection while engaging in a verbal monologue.',NULL,0,NULL,1,NULL,'uds.c3f.subScale',NULL,14,'4a. Resisted redirection while engaging in a verbal monologue.','2012-09-28 16:45:12');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldsboc3.ftdinter','en','lava','crms-nacc',NULL,'udsftldsboc3','ftdinter',NULL,'r','scale','Yes','b. Interrupted examiner.',NULL,0,NULL,1,NULL,'uds.c3f.subScale',NULL,15,'4b. Interrupted examiner.','2012-09-28 16:45:12');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldsboc3.ftdverba','en','lava','crms-nacc',NULL,'udsftldsboc3','ftdverba',NULL,'r','scale','Yes','c. Verbalized a desire to leave the evaluation prematurely.',NULL,0,NULL,1,NULL,'uds.c3f.subScale',NULL,16,'4c. Verbalized a desire to leave the evaluation prematurely.','2012-09-28 16:45:12');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldsboc3.ftdphysi','en','lava','crms-nacc',NULL,'udsftldsboc3','ftdphysi',NULL,'r','scale','Yes','d. Physically attempted to leave the evaluation prematurely.',NULL,0,NULL,1,NULL,'uds.c3f.subScale',NULL,17,'4d. Physically attempted to leave the evaluation prematurely.','2012-09-28 16:45:12');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldsboc3.ftdtopic','en','lava','crms-nacc',NULL,'udsftldsboc3','ftdtopic',NULL,'r','scale','Yes','e. Failed to maintain topic of discussion, initiated tangent.',NULL,0,NULL,1,NULL,'uds.c3f.subScale',NULL,18,'4e. Failed to maintain topic of discussion, initiated tangent.','2012-09-28 16:45:12');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldsboc3.ftdproto','en','lava','crms-nacc',NULL,'udsftldsboc3','ftdproto',NULL,'r','scale','Yes','f. Demanded that test protocol be broken for him/her (e.g., insisted on completing an item after being told to stop, tried to cheat, tried to turn page against examiner\'s expressed wishes, etc.).',NULL,0,NULL,1,NULL,'uds.c3f.subScale',NULL,19,'4f. Demanded that test protocol be broken for him/her (e.g., insisted on completing an item after being told to stop, tried to cheat, tried to turn page against examiner\'s expressed wishes, etc.).','2012-09-28 16:45:12');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldsboc3.ftdpreo','en','lava','crms-nacc',NULL,'udsftldsboc3','ftdpreo',NULL,'r','scale','Yes','5. Was preoccupied with what time the evaluation had to be finished.',NULL,0,NULL,0,NULL,'uds.c3f.mainScale',NULL,20,'5. Was preoccupied with what time the evaluation had to be finished.','2012-09-28 16:45:12');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldsboc3.ftdfini','en','lava','crms-nacc',NULL,'udsftldsboc3','ftdfini',NULL,'r','scale','Yes','a. Reminded examiner what time evaluation had to be finished.',NULL,0,NULL,1,NULL,'uds.c3f.subScale',NULL,21,'5a. Reminded examiner what time evaluation had to be finished.','2012-09-28 16:45:12');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldsboc3.ftdacted','en','lava','crms-nacc',NULL,'udsftldsboc3','ftdacted',NULL,'r','scale','Yes','6. Acted overly dependent.',NULL,0,NULL,0,NULL,'uds.c3f.mainScale',NULL,22,'6. Acted overly dependent.','2012-09-28 16:45:12');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldsboc3.ftdabs','en','lava','crms-nacc',NULL,'udsftldsboc3','ftdabs',NULL,'r','scale','Yes','a. Mentioned caregiver\'s absence or asked when caregiver would return.',NULL,0,NULL,1,NULL,'uds.c3f.subScale',NULL,23,'6a. Mentioned caregiver\'s absence or asked when caregiver would return.','2012-09-28 16:45:12');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldsboc3.ftdfeedb','en','lava','crms-nacc',NULL,'udsftldsboc3','ftdfeedb',NULL,'r','scale','Yes','b. Asked for feedback on performance.',NULL,0,NULL,1,NULL,'uds.c3f.subScale',NULL,24,'6b. Asked for feedback on performance.','2012-09-28 16:45:12');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldsboc3.ftdfrust','en','lava','crms-nacc',NULL,'udsftldsboc3','ftdfrust',NULL,'r','scale','Yes','c. Showed frustration when examiner would not provide explicit feedback.',NULL,0,NULL,1,NULL,'uds.c3f.subScale',NULL,25,'6c. Showed frustration when examiner would not provide explicit feedback.','2012-09-28 16:45:12');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldsboc3.ftdanxi','en','lava','crms-nacc',NULL,'udsftldsboc3','ftdanxi',NULL,'r','scale','Yes','7. Was anxious.',NULL,0,NULL,0,NULL,'uds.c3f.mainScale',NULL,26,'7. Was anxious.','2012-09-28 16:45:12');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldsboc3.ftdnervo','en','lava','crms-nacc',NULL,'udsftldsboc3','ftdnervo',NULL,'r','scale','Yes','a. Mentioned being nervous about testing/performance anxiety.',NULL,0,NULL,1,NULL,'uds.c3f.subScale',NULL,27,'7a. Mentioned being nervous about testing/performance anxiety.','2012-09-28 16:45:12');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldsboc3.ftdndiag','en','lava','crms-nacc',NULL,'udsftldsboc3','ftdndiag',NULL,'r','scale','Yes','b. Mentioned being nervous about diagnosis or prognosis.',NULL,0,NULL,1,NULL,'uds.c3f.subScale',NULL,28,'7b. Mentioned being nervous about diagnosis or prognosis.','2012-09-28 16:45:12');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldsboc3.ftdstimb','en','lava','crms-nacc',NULL,'udsftldsboc3','ftdstimb',NULL,'r','scale','Yes','8. Was stimulus-bound.',NULL,0,NULL,0,NULL,'uds.c3f.mainScale',NULL,29,'8. Was stimulus-bound.','2012-09-28 16:45:12');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldsboc3.ftdstime','en','lava','crms-nacc',NULL,'udsftldsboc3','ftdstime',NULL,'r','scale','Yes','a. Made stimulus-bound error on testing.',NULL,0,NULL,1,NULL,'uds.c3f.subScale',NULL,30,'8a. Made stimulus-bound error on testing.','2012-09-28 16:45:12');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldsboc3.ftdobjec','en','lava','crms-nacc',NULL,'udsftldsboc3','ftdobjec',NULL,'r','scale','Yes','b. Picked up object on desk unnecessarily.',NULL,0,NULL,1,NULL,'uds.c3f.subScale',NULL,31,'8b. Picked up object on desk unnecessarily.','2012-09-28 16:45:12');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldsboc3.ftdcircu','en','lava','crms-nacc',NULL,'udsftldsboc3','ftdcircu',NULL,'r','scale','Yes','c. Circumstantial speech; overly focused on details, overly lengthy.',NULL,0,NULL,1,NULL,'uds.c3f.subScale',NULL,32,'8c. Circumstantial speech; overly focused on details, overly lengthy.','2012-09-28 16:45:12');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldsboc3.ftdperse','en','lava','crms-nacc',NULL,'udsftldsboc3','ftdperse',NULL,'r','scale','Yes','9. Was perseverative.',NULL,0,NULL,0,NULL,'uds.c3f.mainScale',NULL,33,'9. Was perseverative.','2012-09-28 16:45:12');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldsboc3.ftdrepea','en','lava','crms-nacc',NULL,'udsftldsboc3','ftdrepea',NULL,'r','scale','Yes','a. Repeated previous answer on testing.',NULL,0,NULL,1,NULL,'uds.c3f.subScale',NULL,34,'9a. Repeated previous answer on testing.','2012-09-28 16:45:12');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldsboc3.ftdanecd','en','lava','crms-nacc',NULL,'udsftldsboc3','ftdanecd',NULL,'r','scale','Yes','b. Repeated an anecdote.',NULL,0,NULL,1,NULL,'uds.c3f.subScale',NULL,35,'9b. Repeated an anecdote.','2012-09-28 16:45:12');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldsboc3.ftddinit','en','lava','crms-nacc',NULL,'udsftldsboc3','ftddinit',NULL,'r','scale','Yes','10. Showed decreased initiation.',NULL,0,NULL,0,NULL,'uds.c3f.mainScale',NULL,36,'10. Showed decreased initiation.','2012-09-28 16:45:12');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldsboc3.ftddelay','en','lava','crms-nacc',NULL,'udsftldsboc3','ftddelay',NULL,'r','scale','Yes','0a. Began response in a notably delayed manner (not due to general slowing).',NULL,0,NULL,1,NULL,'uds.c3f.subScale',NULL,37,'10a. Began response in a notably delayed manner (not due to general slowing).','2012-09-28 16:45:12');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldsboc3.ftdaddve','en','lava','crms-nacc',NULL,'udsftldsboc3','ftdaddve',NULL,'r','scale','Yes','0b. Required additional verbal prompting to initiate task.',NULL,0,NULL,1,NULL,'uds.c3f.subScale',NULL,38,'10b. Required additional verbal prompting to initiate task.','2012-09-28 16:45:12');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldsboc3.ftdfluct','en','lava','crms-nacc',NULL,'udsftldsboc3','ftdfluct',NULL,'r','scale','Yes','11. Showed fluctuating level of cognitive ability through sessions regardless of complexity of material (e.g., was coherent at times and had notable difficulty understanding at other times).',NULL,0,NULL,0,NULL,'uds.c3f.mainScale',NULL,39,'11. Showed fluctuating level of cognitive ability through sessions regardless of complexity of material (e.g., was coherent at times and had notable difficulty understanding at other times).','2012-09-28 16:45:12');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldsboc3.ftdlostt','en','lava','crms-nacc',NULL,'udsftldsboc3','ftdlostt',NULL,'r','scale','Yes','1a. Lost task set/forgot instructions after performing task correctly.',NULL,0,NULL,1,NULL,'uds.c3f.subScale',NULL,40,'11a. Lost task set/forgot instructions after performing task correctly.','2012-09-28 16:45:12');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldsboc3.ftdrepru','en','lava','crms-nacc',NULL,'udsftldsboc3','ftdrepru',NULL,'r','scale','Yes','1b. Repeated rules to self multiple times during task.',NULL,0,NULL,1,NULL,'uds.c3f.subScale',NULL,41,'11b. Repeated rules to self multiple times during task.','2012-09-28 16:45:12');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldsboc3.ftdtrain','en','lava','crms-nacc',NULL,'udsftldsboc3','ftdtrain',NULL,'r','scale','Yes','1c. Lost train of thought during conversation or response (demonstrated thought blocking).',NULL,0,NULL,1,NULL,'uds.c3f.subScale',NULL,42,'11c. Lost train of thought during conversation or response (demonstrated thought blocking).','2012-09-28 16:45:12');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldsboc3.ftddiscl','en','lava','crms-nacc',NULL,'udsftldsboc3','ftddiscl',NULL,'r','scale','Yes','12. Was overly disclosing or inappropriately familiar.',NULL,0,NULL,0,NULL,'uds.c3f.mainScale',NULL,43,'12. Was overly disclosing or inappropriately familiar.','2012-09-28 16:45:12');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldsboc3.ftdspont','en','lava','crms-nacc',NULL,'udsftldsboc3','ftdspont',NULL,'r','scale','Yes','2a. Spontaneously revealed inappropriately personal information concerning self (only).',NULL,0,NULL,1,NULL,'uds.c3f.subScale',NULL,44,'12a. Spontaneously revealed inappropriately personal information concerning self (only).','2012-09-28 16:45:12');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldsboc3.ftdsponr','en','lava','crms-nacc',NULL,'udsftldsboc3','ftdsponr',NULL,'r','scale','Yes','2b. Spontaneously revealed inappropriately personal information concerning a relative or friend (can also involve self).',NULL,0,NULL,1,NULL,'uds.c3f.subScale',NULL,45,'12b. Spontaneously revealed inappropriately personal information concerning a relative or friend (can also involve self).','2012-09-28 16:45:12');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldsboc3.ftdstood','en','lava','crms-nacc',NULL,'udsftldsboc3','ftdstood',NULL,'r','scale','Yes','2c. Stood or leaned too close to examiner (noticeably entered examiner\'s personal space).',NULL,0,NULL,1,NULL,'uds.c3f.subScale',NULL,46,'12c. Stood or leaned too close to examiner (noticeably entered examiner\'s personal space).','2012-09-28 16:45:12');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldsboc3.ftdtouch','en','lava','crms-nacc',NULL,'udsftldsboc3','ftdtouch',NULL,'r','scale','Yes','2d. Touched examiner.',NULL,0,NULL,1,NULL,'uds.c3f.subScale',NULL,47,'12d. Touched examiner.','2012-09-28 16:45:12');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldsboc3.ftddsoci','en','lava','crms-nacc',NULL,'udsftldsboc3','ftddsoci',NULL,'r','scale','Yes','13. Showed diminished social/emotional engagement.',NULL,0,NULL,0,NULL,'uds.c3f.mainScale',NULL,48,'13. Showed diminished social/emotional engagement.','2012-09-28 16:45:12');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldsboc3.ftdexagg','en','lava','crms-nacc',NULL,'udsftldsboc3','ftdexagg',NULL,'r','scale','Yes','14. Showed exaggerated/labile emotional reactivity:',NULL,0,NULL,0,NULL,'uds.c3f.mainScale',NULL,49,'14. Showed exaggerated/labile emotional reactivity:','2012-09-28 16:45:12');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldsboc3.ftdsbtot','en','lava','crms-nacc',NULL,'udsftldsboc3','ftdsbtot',NULL,'r','scale','Yes','15. Descriptor Total Score',NULL,0,NULL,0,NULL,'uds.range0_42',NULL,50,'15. Descriptor Total Score','2012-09-28 16:45:12');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldsboc3.ftdsbcto','en','lava','crms-nacc',NULL,'udsftldsboc3','ftdsbcto',NULL,'r','scale','Yes','16. Checklist (Behavior) Score',NULL,0,NULL,0,NULL,'uds.range0_105',NULL,51,'16. Checklist (Behavior) Score','2012-09-28 16:45:12');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldsboc3.ftdlengt','en','lava','crms-nacc',NULL,'udsftldsboc3','ftdlengt',NULL,'r','scale','Yes','17. Length of the entire FTLD neuropsychological testing session',NULL,0,NULL,0,NULL,'uds.range20_240',NULL,52,'17. Length of the entire FTLD neuropsychological testing session','2012-09-28 16:45:12');




-- C4F
DELETE from datadictionary where entity = 'udsftldbis3';
DELETE from viewproperty where entity = 'udsftldbis3';
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldbis3',1,'ftdcpc4f','0. The questionnaire was completed','','',1,'udsftldbis','FTDCPC4F',1,'smallint','',1,'null',NULL,NULL,'2012-10-02 16:10:45');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldbis3',2,'ftdworku','1. If the subject thinks something unpleasant is going to happen, he/she usually gets pretty "worked up."','','',1,'udsftldbis','FTDWORKU',2,'smallint','',1,'null',NULL,NULL,'2012-10-02 16:10:45');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldbis3',3,'ftdmist','2. The subject worries about making mistakes.','','',1,'udsftldbis','FTDMIST',3,'smallint','',1,'null',NULL,NULL,'2012-10-02 16:10:45');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldbis3',4,'ftdcrit','3. Criticism or scolding hurts the subject quite a bit.','','',1,'udsftldbis','FTDCRIT',4,'smallint','',1,'null',NULL,NULL,'2012-10-02 16:10:45');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldbis3',5,'ftdworr','4. The subject feels pretty worried or upset when he/she thinks somebody is angry at him/her.','','',1,'udsftldbis','FTDWORR',5,'smallint','',1,'null',NULL,NULL,'2012-10-02 16:10:45');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldbis3',6,'ftdbad','5. Even if something bad is about to happen to the subject, he/she rarely experiences fear or nervousness.','','',1,'udsftldbis','FTDBAD',6,'smallint','',1,'null',NULL,NULL,'2012-10-02 16:10:45');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldbis3',7,'ftdpoor','6. The subject feels worried when he/she thinks he/she has done poorly at something.','','',1,'udsftldbis','FTDPOOR',7,'smallint','',1,'null',NULL,NULL,'2012-10-02 16:10:45');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldbis3',8,'ftdffear','7. The subject has very few fears compared to his/her friends.','','',1,'udsftldbis','FTDFFEAR',8,'smallint','',1,'null',NULL,NULL,'2012-10-02 16:10:45');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldbis3',9,'ftdbist','8. BIS Total Score','','',1,'udsftldbis','FTDBIST',9,'smallint','',1,'null',NULL,NULL,'2012-10-02 16:10:45');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldbis3.ftdcpc4f','en','lava','crms-nacc',NULL,'udsftldbis3','ftdcpc4f',NULL,'r','scale','Yes','0. The questionnaire was completed',NULL,0,NULL,0,NULL,'uds.c4f.q0',NULL,1,'0. The questionnaire was completed','2012-10-02 16:11:07');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldbis3.ftdworku','en','lava','crms-nacc',NULL,'udsftldbis3','ftdworku',NULL,'r','scale','Yes','1. If the subject thinks something unpleasant is going to happen, he/she usually gets pretty "worked up."',NULL,0,NULL,0,NULL,'uds.c4f.scale',NULL,2,'1. If the subject thinks something unpleasant is going to happen, he/she usually gets pretty "worked up."','2012-10-02 16:11:07');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldbis3.ftdmist','en','lava','crms-nacc',NULL,'udsftldbis3','ftdmist',NULL,'r','scale','Yes','2. The subject worries about making mistakes.',NULL,0,NULL,0,NULL,'uds.c4f.scale',NULL,3,'2. The subject worries about making mistakes.','2012-10-02 16:11:07');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldbis3.ftdcrit','en','lava','crms-nacc',NULL,'udsftldbis3','ftdcrit',NULL,'r','scale','Yes','3. Criticism or scolding hurts the subject quite a bit.',NULL,0,NULL,0,NULL,'uds.c4f.scale',NULL,4,'3. Criticism or scolding hurts the subject quite a bit.','2012-10-02 16:11:07');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldbis3.ftdworr','en','lava','crms-nacc',NULL,'udsftldbis3','ftdworr',NULL,'r','scale','Yes','4. The subject feels pretty worried or upset when he/she thinks somebody is angry at him/her.',NULL,0,NULL,0,NULL,'uds.c4f.scale',NULL,5,'4. The subject feels pretty worried or upset when he/she thinks somebody is angry at him/her.','2012-10-02 16:11:07');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldbis3.ftdbad','en','lava','crms-nacc',NULL,'udsftldbis3','ftdbad',NULL,'r','scale','Yes','5. Even if something bad is about to happen to the subject, he/she rarely experiences fear or nervousness.',NULL,0,NULL,0,NULL,'uds.c4f.scale',NULL,6,'5. Even if something bad is about to happen to the subject, he/she rarely experiences fear or nervousness.','2012-10-02 16:11:07');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldbis3.ftdpoor','en','lava','crms-nacc',NULL,'udsftldbis3','ftdpoor',NULL,'r','scale','Yes','6. The subject feels worried when he/she thinks he/she has done poorly at something.',NULL,0,NULL,0,NULL,'uds.c4f.scale',NULL,7,'6. The subject feels worried when he/she thinks he/she has done poorly at something.','2012-10-02 16:11:07');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldbis3.ftdffear','en','lava','crms-nacc',NULL,'udsftldbis3','ftdffear',NULL,'r','scale','Yes','7. The subject has very few fears compared to his/her friends.',NULL,0,NULL,0,NULL,'uds.c4f.scale',NULL,8,'7. The subject has very few fears compared to his/her friends.','2012-10-02 16:11:07');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldbis3.ftdbist','en','lava','crms-nacc',NULL,'udsftldbis3','ftdbist',NULL,'r','scale','Yes','8. BIS Total Score',NULL,0,NULL,0,'disabled','ref.totalErrorCode',NULL,9,'8. BIS Total Score','2012-10-02 16:11:07');




-- C5F
DELETE from datadictionary where entity = 'udsftldiri3';
DELETE from viewproperty where entity = 'udsftldiri3';
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldiri3',1,'ftdcpc5f','0. This questionnaire was completed','','',1,'udsftldiri','FTDCPC5F',1,'smallint','',1,'null',NULL,NULL,'2012-10-01 19:05:05');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldiri3',2,'ftdinsex','0a. Sex of informant','','',1,'udsftldiri','FTDINSEX',2,'smallint','',1,'null',NULL,NULL,'2012-10-01 19:05:05');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldiri3',3,'ftdinfmo','0b. Informant\'s month of birth','','',1,'udsftldiri','FTDINFMO',3,'smallint','',1,'null',NULL,NULL,'2012-10-01 19:05:05');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldiri3',4,'ftdinfyr','0b. Informant\'s year of birth','','',1,'udsftldiri','FTDINFYR',4,'smallint','',1,'null',NULL,NULL,'2012-10-01 19:05:05');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldiri3',5,'ftdinfre','0c. Informant\'s relationship to subject','','',1,'udsftldiri','FTDINFRE',5,'smallint','',1,'null',NULL,NULL,'2012-10-01 19:05:05');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldiri3',6,'ftdfeel','1. The subject shows tender, concerned feelings for people less fortunate than him/her.','','',1,'udsftldiri','FTDFEEL',6,'smallint','',1,'null',NULL,NULL,'2012-10-01 19:05:05');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldiri3',7,'ftddiff','2. The subject sometimes finds it difficult to see things from the "other guy\'s" point of view.','','',1,'udsftldiri','FTDDIFF',7,'smallint','',1,'null',NULL,NULL,'2012-10-01 19:05:05');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldiri3',8,'ftdsorr','3. Sometimes the subject does NOT feel very sorry for other people when they are having problems.','','',1,'udsftldiri','FTDSORR',8,'smallint','',1,'null',NULL,NULL,'2012-10-01 19:05:05');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldiri3',9,'ftdside','4. The subject tries to look at everybody\'s side of a disagreement before he/she makes a decision.','','',1,'udsftldiri','FTDSIDE',9,'smallint','',1,'null',NULL,NULL,'2012-10-01 19:05:05');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldiri3',10,'ftdadvan','5. If the subject sees somebody being taken advantage of, the subject feels kind of protective towards him/her.','','',1,'udsftldiri','FTDADVAN',10,'smallint','',1,'null',NULL,NULL,'2012-10-01 19:05:05');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldiri3',11,'ftdimag','6. The subject is likely to try to understand others better by imaging how things look from their perspective.','','',1,'udsftldiri','FTDIMAG',11,'smallint','',1,'null',NULL,NULL,'2012-10-01 19:05:05');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldiri3',12,'ftdmisf','7. Other people\'s misfortunes do NOT usually disturb the subject a great deal.','','',1,'udsftldiri','FTDMISF',12,'smallint','',1,'null',NULL,NULL,'2012-10-01 19:05:05');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldiri3',13,'ftdwaste','8. If the subject is sure he/she is right about something, he/she doesn\'t waste much time listening to other people\'s arguments.','','',1,'udsftldiri','FTDWASTE',13,'smallint','',1,'null',NULL,NULL,'2012-10-01 19:05:05');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldiri3',14,'ftdpity','9. If the subject sees someone being treated unfairly, the subject doesn\'t feel much pity for him/her.','','',1,'udsftldiri','FTDPITY',14,'smallint','',1,'null',NULL,NULL,'2012-10-01 19:05:05');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldiri3',15,'ftdqtouc','10. The subject is often quite touched by things he/she sees happen.','','',1,'udsftldiri','FTDQTOUC',15,'smallint','',1,'null',NULL,NULL,'2012-10-01 19:05:05');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldiri3',16,'ftdsides','11. The subject believes that there are two sides to every question and tries to look at both of them.','','',1,'udsftldiri','FTDSIDES',16,'smallint','',1,'null',NULL,NULL,'2012-10-01 19:05:05');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldiri3',17,'ftdsofth','12. I would describe the subject as a pretty soft-hearted person.','','',1,'udsftldiri','FTDSOFTH',17,'smallint','',1,'null',NULL,NULL,'2012-10-01 19:05:05');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldiri3',18,'ftdupset','13. If the subject is upset at someone, the subject usually tries to put him/herself in "the other person\'s shoes" for a while.','','',1,'udsftldiri','FTDUPSET',18,'smallint','',1,'null',NULL,NULL,'2012-10-01 19:05:05');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldiri3',19,'ftdcriti','14. Before criticizing me, the subject is likely to imagine how he/she would feel if he/she were in my place.','','',1,'udsftldiri','FTDCRITI',19,'smallint','',1,'null',NULL,NULL,'2012-10-01 19:05:05');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldiri3',20,'ftdiriec','15. Empathic Concern Score (EC)','','',0,'udsftldiri','FTDIRIEC',20,'smallint','',1,'null',NULL,NULL,'2012-10-01 19:05:05');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldiri3',21,'ftdiript','16. Perspective-taking Score (PT)','','',0,'udsftldiri','FTDIRIPT',21,'smallint','',1,'null',NULL,NULL,'2012-10-01 19:05:05');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldiri3.ftdcpc5f','en','lava','crms-nacc',NULL,'udsftldiri3','ftdcpc5f',NULL,'r','scale','Yes','0. This questionnaire was completed',NULL,0,NULL,0,NULL,'uds.c5f.q0',NULL,1,'0. This questionnaire was completed','2012-10-01 19:05:21');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldiri3.ftdinsex','en','lava','crms-nacc',NULL,'udsftldiri3','ftdinsex',NULL,'r','scale','Yes','a. Sex of informant',NULL,0,NULL,1,NULL,'uds.c5f.q0a',NULL,2,'0a. Sex of informant','2012-10-01 19:05:21');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldiri3.ftdinfmo','en','lava','crms-nacc',NULL,'udsftldiri3','ftdinfmo',NULL,'r','scale','Yes','b. Informant\'s month of birth',NULL,0,NULL,1,NULL,'uds.c5f.month',NULL,3,'0b. Informant\'s month of birth','2012-10-01 19:05:21');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldiri3.ftdinfyr','en','lava','crms-nacc',NULL,'udsftldiri3','ftdinfyr',NULL,'r','scale','Yes','b. Informant\'s year of birth',NULL,0,NULL,1,NULL,'uds.c5f.year',NULL,4,'0b. Informant\'s year of birth','2012-10-01 19:05:21');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldiri3.ftdinfre','en','lava','crms-nacc',NULL,'udsftldiri3','ftdinfre',NULL,'r','scale','Yes','c. Informant\'s relationship to subject',NULL,0,NULL,1,NULL,'uds.c5f.q0c',NULL,5,'0c. Informant\'s relationship to subject','2012-10-01 19:05:21');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldiri3.ftdfeel','en','lava','crms-nacc',NULL,'udsftldiri3','ftdfeel',NULL,'r','scale','Yes','1. The subject shows tender, concerned feelings for people less fortunate than him/her.',NULL,0,NULL,0,NULL,'uds.c5f.scale',NULL,6,'1. The subject shows tender, concerned feelings for people less fortunate than him/her.','2012-10-01 19:05:21');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldiri3.ftddiff','en','lava','crms-nacc',NULL,'udsftldiri3','ftddiff',NULL,'r','scale','Yes','2. The subject sometimes finds it difficult to see things from the "other guy\'s" point of view.',NULL,0,NULL,0,NULL,'uds.c5f.scale',NULL,7,'2. The subject sometimes finds it difficult to see things from the "other guy\'s" point of view.','2012-10-01 19:05:21');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldiri3.ftdsorr','en','lava','crms-nacc',NULL,'udsftldiri3','ftdsorr',NULL,'r','scale','Yes','3. Sometimes the subject does NOT feel very sorry for other people when they are having problems.',NULL,0,NULL,0,NULL,'uds.c5f.scale',NULL,8,'3. Sometimes the subject does NOT feel very sorry for other people when they are having problems.','2012-10-01 19:05:21');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldiri3.ftdside','en','lava','crms-nacc',NULL,'udsftldiri3','ftdside',NULL,'r','scale','Yes','4. The subject tries to look at everybody\'s side of a disagreement before he/she makes a decision.',NULL,0,NULL,0,NULL,'uds.c5f.scale',NULL,9,'4. The subject tries to look at everybody\'s side of a disagreement before he/she makes a decision.','2012-10-01 19:05:21');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldiri3.ftdadvan','en','lava','crms-nacc',NULL,'udsftldiri3','ftdadvan',NULL,'r','scale','Yes','5. If the subject sees somebody being taken advantage of, the subject feels kind of protective towards him/her.',NULL,0,NULL,0,NULL,'uds.c5f.scale',NULL,10,'5. If the subject sees somebody being taken advantage of, the subject feels kind of protective towards him/her.','2012-10-01 19:05:21');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldiri3.ftdimag','en','lava','crms-nacc',NULL,'udsftldiri3','ftdimag',NULL,'r','scale','Yes','6. The subject is likely to try to understand others better by imaging how things look from their perspective.',NULL,0,NULL,0,NULL,'uds.c5f.scale',NULL,11,'6. The subject is likely to try to understand others better by imaging how things look from their perspective.','2012-10-01 19:05:21');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldiri3.ftdmisf','en','lava','crms-nacc',NULL,'udsftldiri3','ftdmisf',NULL,'r','scale','Yes','7. Other people\'s misfortunes do NOT usually disturb the subject a great deal.',NULL,0,NULL,0,NULL,'uds.c5f.scale',NULL,12,'7. Other people\'s misfortunes do NOT usually disturb the subject a great deal.','2012-10-01 19:05:21');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldiri3.ftdwaste','en','lava','crms-nacc',NULL,'udsftldiri3','ftdwaste',NULL,'r','scale','Yes','8. If the subject is sure he/she is right about something, he/she doesn\'t waste much time listening to other people\'s arguments.',NULL,0,NULL,0,NULL,'uds.c5f.scale',NULL,13,'8. If the subject is sure he/she is right about something, he/she doesn\'t waste much time listening to other people\'s arguments.','2012-10-01 19:05:21');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldiri3.ftdpity','en','lava','crms-nacc',NULL,'udsftldiri3','ftdpity',NULL,'r','scale','Yes','9. If the subject sees someone being treated unfairly, the subject doesn\'t feel much pity for him/her.',NULL,0,NULL,0,NULL,'uds.c5f.scale',NULL,14,'9. If the subject sees someone being treated unfairly, the subject doesn\'t feel much pity for him/her.','2012-10-01 19:05:21');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldiri3.ftdqtouc','en','lava','crms-nacc',NULL,'udsftldiri3','ftdqtouc',NULL,'r','scale','Yes','10. The subject is often quite touched by things he/she sees happen.',NULL,0,NULL,0,NULL,'uds.c5f.scale',NULL,15,'10. The subject is often quite touched by things he/she sees happen.','2012-10-01 19:05:21');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldiri3.ftdsides','en','lava','crms-nacc',NULL,'udsftldiri3','ftdsides',NULL,'r','scale','Yes','11. The subject believes that there are two sides to every question and tries to look at both of them.',NULL,0,NULL,0,NULL,'uds.c5f.scale',NULL,16,'11. The subject believes that there are two sides to every question and tries to look at both of them.','2012-10-01 19:05:21');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldiri3.ftdsofth','en','lava','crms-nacc',NULL,'udsftldiri3','ftdsofth',NULL,'r','scale','Yes','12. I would describe the subject as a pretty soft-hearted person.',NULL,0,NULL,0,NULL,'uds.c5f.scale',NULL,17,'12. I would describe the subject as a pretty soft-hearted person.','2012-10-01 19:05:21');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldiri3.ftdupset','en','lava','crms-nacc',NULL,'udsftldiri3','ftdupset',NULL,'r','scale','Yes','13. If the subject is upset at someone, the subject usually tries to put him/herself in "the other person\'s shoes" for a while.',NULL,0,NULL,0,NULL,'uds.c5f.scale',NULL,18,'13. If the subject is upset at someone, the subject usually tries to put him/herself in "the other person\'s shoes" for a while.','2012-10-01 19:05:21');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldiri3.ftdcriti','en','lava','crms-nacc',NULL,'udsftldiri3','ftdcriti',NULL,'r','scale','Yes','14. Before criticizing me, the subject is likely to imagine how he/she would feel if he/she were in my place.',NULL,0,NULL,0,NULL,'uds.c5f.scale',NULL,19,'14. Before criticizing me, the subject is likely to imagine how he/she would feel if he/she were in my place.','2012-10-01 19:05:21');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldiri3.ftdiriec','en','lava','crms-nacc',NULL,'udsftldiri3','ftdiriec',NULL,'r','scale','No','15. Empathic Concern Score (EC)',NULL,0,NULL,0,'disabled','ref.totalErrorCode',NULL,20,'15. Empathic Concern Score (EC)','2012-10-01 19:05:21');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldiri3.ftdiript','en','lava','crms-nacc',NULL,'udsftldiri3','ftdiript',NULL,'r','scale','No','16. Perspective-taking Score (PT)',NULL,0,NULL,0,'disabled','ref.totalErrorCode',NULL,21,'16. Perspective-taking Score (PT)','2012-10-01 19:05:21');



-- C6F
DELETE from datadictionary where entity = 'udsftldrsms3';
DELETE from viewproperty where entity = 'udsftldrsms3';
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldrsms3',1,'ftdcpc6f','0. The questionnaire was completed','','',1,'udsftldrsms','FTDCPC6F',1,'smallint','',1,'null',NULL,NULL,'2012-10-02 12:12:53');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldrsms3',2,'ftdalter','1. In social situations, the subject has the ability to alter his/her behavior if he/she feels something else is called for.','','',1,'udsftldrsms','FTDALTER',2,'smallint','',1,'null',NULL,NULL,'2012-10-02 12:12:53');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldrsms3',3,'ftdemot','2. The subject is often able to correctly read people\'s true emotions through their eyes.','','',1,'udsftldrsms','FTDEMOT',3,'smallint','',1,'null',NULL,NULL,'2012-10-02 12:12:53');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldrsms3',4,'ftdacros','3. The subject has the ability to control the way he/she comes across to people, depending on the impression he/she wants to give.','','',1,'udsftldrsms','FTDACROS',4,'smallint','',1,'null',NULL,NULL,'2012-10-02 12:12:53');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldrsms3',5,'ftdconv','4. In conversations, the subject is sensitive to even the slightest change in the facial expression of the person he/she is conversing with.','','',1,'udsftldrsms','FTDCONV',5,'smallint','',1,'null',NULL,NULL,'2012-10-02 12:12:53');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldrsms3',6,'ftdintui','5. The subject\'s powers of intuition are quite good when it comes to understanding others.','','',1,'udsftldrsms','FTDINTUI',6,'smallint','',1,'null',NULL,NULL,'2012-10-02 12:12:53');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldrsms3',7,'ftdjoke','6. The subject can usually tell when others consider a joke in bad taste, even though they may laugh convincingly.','','',1,'udsftldrsms','FTDJOKE',7,'smallint','',1,'null',NULL,NULL,'2012-10-02 12:12:53');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldrsms3',8,'ftdimagp','7. When the subject feels that the image he/she is projecting isnt working, he/she can readily change to something that does.','','',1,'udsftldrsms','FTDIMAGP',8,'smallint','',1,'null',NULL,NULL,'2012-10-02 12:12:53');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldrsms3',9,'ftdinapp','8. The subject can usually tell when he/she said something inappropriate by reading it in the listener\'s eyes.','','',1,'udsftldrsms','FTDINAPP',9,'smallint','',1,'null',NULL,NULL,'2012-10-02 12:12:53');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldrsms3',10,'ftdchbeh','9. The subject has trouble changing his/her behavior to suit different people and different situations.','','',1,'udsftldrsms','FTDCHBEH',10,'smallint','',1,'null',NULL,NULL,'2012-10-02 12:12:53');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldrsms3',11,'ftdadbeh','10. The subject can adjust his/her behavior to meet the requirements of any situation he/ she is in.','','',1,'udsftldrsms','FTDADBEH',11,'smallint','',1,'null',NULL,NULL,'2012-10-02 12:12:53');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldrsms3',12,'ftdlying','11. If someone is lying to the subject, he/she usually knows it at once from that person\'s manner or expression.','','',1,'udsftldrsms','FTDLYING',12,'smallint','',1,'null',NULL,NULL,'2012-10-02 12:12:53');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldrsms3',13,'ftdgoodf','12. Even when it might be to his/her advantage, the subject has difficulty putting up a good front.','','',1,'udsftldrsms','FTDGOODF',13,'smallint','',1,'null',NULL,NULL,'2012-10-02 12:12:53');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldrsms3',14,'ftdregul','13. Once the subject knows what the situation calls for, its easy for him/her to regulate his/ her actions accordingly.','','',1,'udsftldrsms','FTDREGUL',14,'smallint','',1,'null',NULL,NULL,'2012-10-02 12:12:53');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldrsms3',15,'ftdsmscr','14. Sensitiviy to Socio-emotional Expressiveness Score (EX) (0-30)','','',0,'udsftldrsms','FTDSMSCR',15,'smallint','',1,'null',NULL,NULL,'2012-10-02 12:12:53');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldrsms3',16,'ftdspscr','15. Ability to Modify Selp-presentation Score (SP) (0-35)','','',0,'udsftldrsms','FTDSPSCR',16,'smallint','',1,'null',NULL,NULL,'2012-10-02 12:12:53');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldrsms3',17,'ftdrsmst','16. RSMS Total Score (0-65)','','',0,'udsftldrsms','FTDRSMST',17,'smallint','',1,'null',NULL,NULL,'2012-10-02 12:12:53');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldrsms3.ftdcpc6f','en','lava','crms-nacc',NULL,'udsftldrsms3','ftdcpc6f',NULL,'r','scale','Yes','0. The questionnaire was completed',NULL,0,NULL,0,NULL,'uds.c6f.q0',NULL,1,'0. The questionnaire was completed','2012-10-02 12:13:15');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldrsms3.ftdalter','en','lava','crms-nacc',NULL,'udsftldrsms3','ftdalter',NULL,'r','scale','Yes','1. In social situations, the subject has the ability to alter his/her behavior if he/she feels something else is called for.',NULL,0,NULL,0,NULL,'uds.c6f.scale',NULL,2,'1. In social situations, the subject has the ability to alter his/her behavior if he/she feels something else is called for.','2012-10-02 12:13:15');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldrsms3.ftdemot','en','lava','crms-nacc',NULL,'udsftldrsms3','ftdemot',NULL,'r','scale','Yes','2. The subject is often able to correctly read people\'s true emotions through their eyes.',NULL,0,NULL,0,NULL,'uds.c6f.scale',NULL,3,'2. The subject is often able to correctly read people\'s true emotions through their eyes.','2012-10-02 12:13:15');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldrsms3.ftdacros','en','lava','crms-nacc',NULL,'udsftldrsms3','ftdacros',NULL,'r','scale','Yes','3. The subject has the ability to control the way he/she comes across to people, depending on the impression he/she wants to give.',NULL,0,NULL,0,NULL,'uds.c6f.scale',NULL,4,'3. The subject has the ability to control the way he/she comes across to people, depending on the impression he/she wants to give.','2012-10-02 12:13:15');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldrsms3.ftdconv','en','lava','crms-nacc',NULL,'udsftldrsms3','ftdconv',NULL,'r','scale','Yes','4. In conversations, the subject is sensitive to even the slightest change in the facial expression of the person he/she is conversing with.',NULL,0,NULL,0,NULL,'uds.c6f.scale',NULL,5,'4. In conversations, the subject is sensitive to even the slightest change in the facial expression of the person he/she is conversing with.','2012-10-02 12:13:15');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldrsms3.ftdintui','en','lava','crms-nacc',NULL,'udsftldrsms3','ftdintui',NULL,'r','scale','Yes','5. The subject\'s powers of intuition are quite good when it comes to understanding others.',NULL,0,NULL,0,NULL,'uds.c6f.scale',NULL,6,'5. The subject\'s powers of intuition are quite good when it comes to understanding others.','2012-10-02 12:13:15');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldrsms3.ftdjoke','en','lava','crms-nacc',NULL,'udsftldrsms3','ftdjoke',NULL,'r','scale','Yes','6. The subject can usually tell when others consider a joke in bad taste, even though they may laugh convincingly.',NULL,0,NULL,0,NULL,'uds.c6f.scale',NULL,7,'6. The subject can usually tell when others consider a joke in bad taste, even though they may laugh convincingly.','2012-10-02 12:13:15');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldrsms3.ftdimagp','en','lava','crms-nacc',NULL,'udsftldrsms3','ftdimagp',NULL,'r','scale','Yes','7. When the subject feels that the image he/she is projecting isnt working, he/she can readily change to something that does.',NULL,0,NULL,0,NULL,'uds.c6f.scale',NULL,8,'7. When the subject feels that the image he/she is projecting isnt working, he/she can readily change to something that does.','2012-10-02 12:13:15');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldrsms3.ftdinapp','en','lava','crms-nacc',NULL,'udsftldrsms3','ftdinapp',NULL,'r','scale','Yes','8. The subject can usually tell when he/she said something inappropriate by reading it in the listener\'s eyes.',NULL,0,NULL,0,NULL,'uds.c6f.scale',NULL,9,'8. The subject can usually tell when he/she said something inappropriate by reading it in the listener\'s eyes.','2012-10-02 12:13:15');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldrsms3.ftdchbeh','en','lava','crms-nacc',NULL,'udsftldrsms3','ftdchbeh',NULL,'r','scale','Yes','9. The subject has trouble changing his/her behavior to suit different people and different situations.',NULL,0,NULL,0,NULL,'uds.c6f.scale',NULL,10,'9. The subject has trouble changing his/her behavior to suit different people and different situations.','2012-10-02 12:13:15');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldrsms3.ftdadbeh','en','lava','crms-nacc',NULL,'udsftldrsms3','ftdadbeh',NULL,'r','scale','Yes','10. The subject can adjust his/her behavior to meet the requirements of any situation he/ she is in.',NULL,0,NULL,0,NULL,'uds.c6f.scale',NULL,11,'10. The subject can adjust his/her behavior to meet the requirements of any situation he/ she is in.','2012-10-02 12:13:15');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldrsms3.ftdlying','en','lava','crms-nacc',NULL,'udsftldrsms3','ftdlying',NULL,'r','scale','Yes','11. If someone is lying to the subject, he/she usually knows it at once from that person\'s manner or expression.',NULL,0,NULL,0,NULL,'uds.c6f.scale',NULL,12,'11. If someone is lying to the subject, he/she usually knows it at once from that person\'s manner or expression.','2012-10-02 12:13:15');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldrsms3.ftdgoodf','en','lava','crms-nacc',NULL,'udsftldrsms3','ftdgoodf',NULL,'r','scale','Yes','12. Even when it might be to his/her advantage, the subject has difficulty putting up a good front.',NULL,0,NULL,0,NULL,'uds.c6f.scale',NULL,13,'12. Even when it might be to his/her advantage, the subject has difficulty putting up a good front.','2012-10-02 12:13:15');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldrsms3.ftdregul','en','lava','crms-nacc',NULL,'udsftldrsms3','ftdregul',NULL,'r','scale','Yes','13. Once the subject knows what the situation calls for, its easy for him/her to regulate his/ her actions accordingly.',NULL,0,NULL,0,NULL,'uds.c6f.scale',NULL,14,'13. Once the subject knows what the situation calls for, its easy for him/her to regulate his/ her actions accordingly.','2012-10-02 12:13:15');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldrsms3.ftdsmscr','en','lava','crms-nacc',NULL,'udsftldrsms3','ftdsmscr',NULL,'r','scale','No','14. Sensitiviy to Socio-emotional Expressiveness Score (EX) (0-30)',NULL,0,NULL,0,'disabled','ref.totalErrorCode',NULL,15,'14. Sensitiviy to Socio-emotional Expressiveness Score (EX) (0-30)','2012-10-02 12:13:15');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldrsms3.ftdspscr','en','lava','crms-nacc',NULL,'udsftldrsms3','ftdspscr',NULL,'r','scale','No','15. Ability to Modify Selp-presentation Score (SP) (0-35)',NULL,0,NULL,0,'disabled','ref.totalErrorCode',NULL,16,'15. Ability to Modify Selp-presentation Score (SP) (0-35)','2012-10-02 12:13:15');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldrsms3.ftdrsmst','en','lava','crms-nacc',NULL,'udsftldrsms3','ftdrsmst',NULL,'r','scale','No','16. RSMS Total Score (0-65)',NULL,0,NULL,0,'disabled','ref.totalErrorCode',NULL,17,'16. RSMS Total Score (0-65)','2012-10-02 12:13:15');



-- E2F
DELETE from datadictionary where entity = 'udsftldimagingavail3';
DELETE from viewproperty where entity = 'udsftldimagingavail3';
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldimagingavail3',1,'ftdsmri','1. Is a structural MRI scan, obtained as part of the current evaluation or a previous evaluation, available for data sharing?','','',1,'udsftldimagingavail','FTDSMRI',1,'smallint','',1,'null',NULL,NULL,'2012-09-28 12:51:01');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldimagingavail3',2,'ftdsmmo','1a. Month of structural MRI scan','','',1,'udsftldimagingavail','FTDSMMO',2,'smallint','',1,'null',NULL,NULL,'2012-09-28 12:51:01');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldimagingavail3',3,'ftdsmdy','1a. Day of structural MRI scan','','',1,'udsftldimagingavail','FTDSMDY',3,'smallint','',1,'null',NULL,NULL,'2012-09-28 12:51:01');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldimagingavail3',4,'ftdsmyr','1a. Year of structural MRI scan','','',1,'udsftldimagingavail','FTDSMYR',4,'smallint','',1,'null',NULL,NULL,'2012-09-28 12:51:01');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldimagingavail3',5,'ftdsmdic','1b. Structural MRI scan: Is it in DICOM format or other electronic format?','','',1,'udsftldimagingavail','FTDSMDIC',5,'smallint','',1,'null',NULL,NULL,'2012-09-28 12:51:01');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldimagingavail3',6,'ftdsmdis','1b1. Structural MRI scan: Specify DICOM or other format','','',1,'udsftldimagingavail','FTDSMDIS',6,'varchar','60',1,'null',NULL,NULL,'2012-09-28 12:51:01');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldimagingavail3',7,'ftdsmadn','1c. Structural MRI scan: Was ADNI protocol used?','','',1,'udsftldimagingavail','FTDSMADN',7,'smallint','',1,'null',NULL,NULL,'2012-09-28 12:51:01');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldimagingavail3',8,'ftdsmadv','1c1. Structural MRI scan: If ADNI protocol was used, then ADNI version?','','',1,'udsftldimagingavail','FTDSMADV',8,'varchar','60',1,'null',NULL,NULL,'2012-09-28 12:51:01');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldimagingavail3',9,'ftdsmman','1d. Structural MRI scan: Scan manufacturer?','','',1,'udsftldimagingavail','FTDSMMAN',9,'smallint','',1,'null',NULL,NULL,'2012-09-28 12:51:01');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldimagingavail3',10,'ftdsmmao','1d0. Structural MRI scan: Manufacturer, if other specify','','',1,'udsftldimagingavail','FTDSMMAO',10,'varchar','60',1,'null',NULL,NULL,'2012-09-28 12:51:01');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldimagingavail3',11,'ftdsmmam','1d1. Structural MRI scan: Manufacturer model?','','',1,'udsftldimagingavail','FTDSMMAM',11,'varchar','60',1,'null',NULL,NULL,'2012-09-28 12:51:01');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldimagingavail3',12,'ftdsmfs','1e. Structural MRI scan: Field strength?','','',1,'udsftldimagingavail','FTDSMFS',12,'smallint','',1,'null',NULL,NULL,'2012-09-28 12:51:01');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldimagingavail3',13,'ftdsmfso','1e1. Structural MRI scan: Field strength, specify other','','',1,'udsftldimagingavail','FTDSMFSO',13,'varchar','60',1,'null',NULL,NULL,'2012-09-28 12:51:01');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldimagingavail3',14,'ftdsmqu','1f. Structural MRI: Are results of quantitative image analysis available?','','',1,'udsftldimagingavail','FTDSMQU',14,'smallint','',1,'null',NULL,NULL,'2012-09-28 12:51:01');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldimagingavail3',15,'ftdfdgpt','2. Is an FDG-PET scan, obtained as part of the current evaluation or a previous evaluation, available for data sharing?','','',1,'udsftldimagingavail','FTDFDGPT',15,'smallint','',1,'null',NULL,NULL,'2012-09-28 12:51:01');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldimagingavail3',16,'ftdfpmo','2a. Month of FDG-PET scan','','',1,'udsftldimagingavail','FTDFPMO',16,'smallint','',1,'null',NULL,NULL,'2012-09-28 12:51:01');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldimagingavail3',17,'ftdfpdy','2a. Day of FDG-PET scan','','',1,'udsftldimagingavail','FTDFPDY',17,'smallint','',1,'null',NULL,NULL,'2012-09-28 12:51:01');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldimagingavail3',18,'ftdfpyr','2a. Year of FDG-PET scan','','',1,'udsftldimagingavail','FTDFPYR',18,'smallint','',1,'null',NULL,NULL,'2012-09-28 12:51:01');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldimagingavail3',19,'ftdfddic','2b. FDG-PET scan: Is it in DICOM format or other electronic format?','','',1,'udsftldimagingavail','FTDFDDIC',19,'smallint','',1,'null',NULL,NULL,'2012-09-28 12:51:01');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldimagingavail3',20,'ftdfddid','2b1. FDG-PET scan: Specify DICOM or other format','','',1,'udsftldimagingavail','FTDFDDID',20,'varchar','60',1,'null',NULL,NULL,'2012-09-28 12:51:01');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldimagingavail3',21,'ftdfdadn','2c. FDG-PET scan: Was ADNI protocol used?','','',1,'udsftldimagingavail','FTDFDADN',21,'smallint','',1,'null',NULL,NULL,'2012-09-28 12:51:01');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldimagingavail3',22,'ftdfdadv','2c1. FDG-PET scan: If ADNI protocol used, then ADNI version?','','',1,'udsftldimagingavail','FTDFDADV',22,'varchar','60',1,'null',NULL,NULL,'2012-09-28 12:51:01');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldimagingavail3',23,'ftdfdman','2d. FDG-PET scan: Scan manufacturer?','','',1,'udsftldimagingavail','FTDFDMAN',23,'smallint','',1,'null',NULL,NULL,'2012-09-28 12:51:01');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldimagingavail3',24,'ftdfdmao','2d0. FDG-PET scan: Scan manufacturer, if other specify','','',1,'udsftldimagingavail','FTDFDMAO',24,'varchar','60',1,'null',NULL,NULL,'2012-09-28 12:51:01');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldimagingavail3',25,'ftdfdmam','2d1. FDG-PET scan: Manufacturer model?','','',1,'udsftldimagingavail','FTDFDMAM',25,'varchar','60',1,'null',NULL,NULL,'2012-09-28 12:51:01');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldimagingavail3',26,'ftdfdqu','2e. FDG-PET scan: Are results of the quantitive image analysis available?','','',1,'udsftldimagingavail','FTDFDQU',26,'smallint','',1,'null',NULL,NULL,'2012-09-28 12:51:01');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldimagingavail3',27,'ftdamypt','3. Is an amyloid PET scan, obtained as part of the current evaluation or a previous evaluation, available for data sharing?','','',1,'udsftldimagingavail','FTDAMYPT',27,'smallint','',1,'null',NULL,NULL,'2012-09-28 12:51:01');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldimagingavail3',28,'ftdammo','3a. Month of amyloid PET scan?','','',1,'udsftldimagingavail','FTDAMMO',28,'smallint','',1,'null',NULL,NULL,'2012-09-28 12:51:01');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldimagingavail3',29,'ftdamdy','3a. Day of amyloid PET scan?','','',1,'udsftldimagingavail','FTDAMDY',29,'smallint','',1,'null',NULL,NULL,'2012-09-28 12:51:01');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldimagingavail3',30,'ftdamyr','3a. Year of amyloid PET scan?','','',1,'udsftldimagingavail','FTDAMYR',30,'smallint','',1,'null',NULL,NULL,'2012-09-28 12:51:01');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldimagingavail3',31,'ftdamdic','3b. Amyloid PET scan: Is it in DICOM format or other electronic format?','','',1,'udsftldimagingavail','FTDAMDIC',31,'smallint','',1,'null',NULL,NULL,'2012-09-28 12:51:01');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldimagingavail3',32,'ftdamdid','3b1. Amyloid PET scan: Specify DICOM or other format','','',1,'udsftldimagingavail','FTDAMDID',32,'varchar','60',1,'null',NULL,NULL,'2012-09-28 12:51:01');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldimagingavail3',33,'ftdamlig','3c. Amyloid PET scan: Ligand used?','','',1,'udsftldimagingavail','FTDAMLIG',33,'smallint','',1,'null',NULL,NULL,'2012-09-28 12:51:01');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldimagingavail3',34,'ftdamlio','3c1. Amyloid PET scan: Specify other ligand used','','',1,'udsftldimagingavail','FTDAMLIO',34,'varchar','60',1,'null',NULL,NULL,'2012-09-28 12:51:01');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldimagingavail3',35,'ftdamadn','3d. Amyloid PET scan: Was ADNI protocol used?','','',1,'udsftldimagingavail','FTDAMADN',35,'smallint','',1,'null',NULL,NULL,'2012-09-28 12:51:01');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldimagingavail3',36,'ftdamadv','3d1. Amyloid PET scan: If ADNI protocol was used, then ADNI version?','','',1,'udsftldimagingavail','FTDAMADV',36,'varchar','60',1,'null',NULL,NULL,'2012-09-28 12:51:01');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldimagingavail3',37,'ftdamman','3e. Amyloid PET scan: Scan manufacturer?','','',1,'udsftldimagingavail','FTDAMMAN',37,'smallint','',1,'null',NULL,NULL,'2012-09-28 12:51:01');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldimagingavail3',38,'ftdammao','3e0. Amyloid PET scan: Manufacturer, if other specify','','',1,'udsftldimagingavail','FTDAMMAO',38,'varchar','60',1,'null',NULL,NULL,'2012-09-28 12:51:01');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldimagingavail3',39,'ftdammam','3e1. Amyloid PET scan: Manufacturer model?','','',1,'udsftldimagingavail','FTDAMMAM',39,'varchar','60',1,'null',NULL,NULL,'2012-09-28 12:51:01');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldimagingavail3',40,'ftdamqu','3f. Amyloid PET scan: Are results of quantitive image analysis available?','','',1,'udsftldimagingavail','FTDAMQU',40,'smallint','',1,'null',NULL,NULL,'2012-09-28 12:51:01');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldimagingavail3',41,'ftdother','4. Are other PET or SPECT scans, obtained as part of the current evaluation or a previous evaluation, available for data sharing?','','',1,'udsftldimagingavail','FTDOTHER',41,'smallint','',1,'null',NULL,NULL,'2012-09-28 12:51:01');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldimagingavail3',42,'ftdotdop','4a. Other PET or SPECT scans: Is a dopaminergic scan available?','','',1,'udsftldimagingavail','FTDOTDOP',42,'smallint','',1,'null',NULL,NULL,'2012-09-28 12:51:01');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldimagingavail3',43,'ftdotser','4b. Other PET or SPECT scans: Is a serotonergic scan available?','','',1,'udsftldimagingavail','FTDOTSER',43,'smallint','',1,'null',NULL,NULL,'2012-09-28 12:51:01');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldimagingavail3',44,'ftdotcho','4c. Other PET or SPECT scans: Is a cholinergic scan available?','','',1,'udsftldimagingavail','FTDOTCHO',44,'smallint','',1,'null',NULL,NULL,'2012-09-28 12:51:01');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldimagingavail3',45,'ftdotano','4d. Other PET or SPECT scans: Is another kind of scan available?','','',1,'udsftldimagingavail','FTDOTANO',45,'smallint','',1,'null',NULL,NULL,'2012-09-28 12:51:01');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldimagingavail3',46,'ftdotans','4d1. Other scan specify','','',1,'udsftldimagingavail','FTDOTANS',46,'varchar','60',1,'null',NULL,NULL,'2012-09-28 12:51:01');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldimagingavail3.ftdsmri','en','lava','crms-nacc',NULL,'udsftldimagingavail3','ftdsmri',NULL,'r','scale','Yes','1. Is a structural MRI scan, obtained as part of the current evaluation or a previous evaluation, available for data sharing?',NULL,0,NULL,0,NULL,'uds.noYes01',NULL,1,'1. Is a structural MRI scan, obtained as part of the current evaluation or a previous evaluation, available for data sharing?','2012-09-28 12:52:03');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldimagingavail3.ftdsmmo','en','lava','crms-nacc',NULL,'udsftldimagingavail3','ftdsmmo',NULL,'r','scale','Yes','a. Month of structural MRI scan',NULL,0,NULL,1,NULL,'uds.e2f.month',NULL,2,'1a. Month of structural MRI scan','2012-09-28 12:52:03');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldimagingavail3.ftdsmdy','en','lava','crms-nacc',NULL,'udsftldimagingavail3','ftdsmdy',NULL,'r','scale','Yes','a. Day of structural MRI scan',NULL,0,NULL,1,NULL,'uds.e2f.day',NULL,3,'1a. Day of structural MRI scan','2012-09-28 12:52:03');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldimagingavail3.ftdsmyr','en','lava','crms-nacc',NULL,'udsftldimagingavail3','ftdsmyr',NULL,'r','scale','Yes','a. Year of structural MRI scan',NULL,0,NULL,1,NULL,'uds.e2f.year',NULL,4,'1a. Year of structural MRI scan','2012-09-28 12:52:03');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldimagingavail3.ftdsmdic','en','lava','crms-nacc',NULL,'udsftldimagingavail3','ftdsmdic',NULL,'r','scale','Yes','b. Structural MRI scan: Is it in DICOM format or other electronic format?',NULL,0,NULL,1,NULL,'uds.noYesUnknown019',NULL,5,'1b. Structural MRI scan: Is it in DICOM format or other electronic format?','2012-09-28 12:52:03');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldimagingavail3.ftdsmdis','en','lava','crms-nacc',NULL,'udsftldimagingavail3','ftdsmdis',NULL,'r','string','Yes','b1. Structural MRI scan: Specify DICOM or other format',NULL,60,NULL,1,'onkeypress="UDS_onlyNaccCharactersAllowed(event)"',NULL,NULL,6,'1b1. Structural MRI scan: Specify DICOM or other format','2012-09-28 12:52:03');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldimagingavail3.ftdsmadn','en','lava','crms-nacc',NULL,'udsftldimagingavail3','ftdsmadn',NULL,'r','scale','Yes','c. Structural MRI scan: Was ADNI protocol used?',NULL,0,NULL,1,NULL,'uds.noYesUnknown019',NULL,7,'1c. Structural MRI scan: Was ADNI protocol used?','2012-09-28 12:52:03');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldimagingavail3.ftdsmadv','en','lava','crms-nacc',NULL,'udsftldimagingavail3','ftdsmadv',NULL,'r','string','Yes','c1. Structural MRI scan: If ADNI protocol was used, then ADNI version?',NULL,60,NULL,1,'onkeypress="UDS_onlyNaccCharactersAllowed(event)"',NULL,NULL,8,'1c1. Structural MRI scan: If ADNI protocol was used, then ADNI version?','2012-09-28 12:52:03');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldimagingavail3.ftdsmman','en','lava','crms-nacc',NULL,'udsftldimagingavail3','ftdsmman',NULL,'r','scale','Yes','d. Structural MRI scan: Scan manufacturer?',NULL,0,NULL,1,NULL,'uds.e2f.scanMan',NULL,9,'1d. Structural MRI scan: Scan manufacturer?','2012-09-28 12:52:03');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldimagingavail3.ftdsmmao','en','lava','crms-nacc',NULL,'udsftldimagingavail3','ftdsmmao',NULL,'r','string','Yes','d0. Structural MRI scan: Manufacturer, if other specify',NULL,60,NULL,1,'onkeypress="UDS_onlyNaccCharactersAllowed(event)"',NULL,NULL,10,'1d0. Structural MRI scan: Manufacturer, if other specify','2012-09-28 12:52:03');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldimagingavail3.ftdsmmam','en','lava','crms-nacc',NULL,'udsftldimagingavail3','ftdsmmam',NULL,'r','string','Yes','d1. Structural MRI scan: Manufacturer model?',NULL,60,NULL,1,'onkeypress="UDS_onlyNaccCharactersAllowed(event)"',NULL,NULL,11,'1d1. Structural MRI scan: Manufacturer model?','2012-09-28 12:52:03');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldimagingavail3.ftdsmfs','en','lava','crms-nacc',NULL,'udsftldimagingavail3','ftdsmfs',NULL,'r','scale','Yes','e. Structural MRI scan: Field strength?',NULL,0,NULL,1,NULL,'uds.e2f.fieldStr',NULL,12,'1e. Structural MRI scan: Field strength?','2012-09-28 12:52:03');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldimagingavail3.ftdsmfso','en','lava','crms-nacc',NULL,'udsftldimagingavail3','ftdsmfso',NULL,'r','string','Yes','e1. Structural MRI scan: Field strength, specify other',NULL,60,NULL,1,'onkeypress="UDS_onlyNaccCharactersAllowed(event)"',NULL,NULL,13,'1e1. Structural MRI scan: Field strength, specify other','2012-09-28 12:52:03');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldimagingavail3.ftdsmqu','en','lava','crms-nacc',NULL,'udsftldimagingavail3','ftdsmqu',NULL,'r','scale','Yes','f. Structural MRI: Are results of quantitative image analysis available?',NULL,0,NULL,1,NULL,'uds.noYes01',NULL,14,'1f. Structural MRI: Are results of quantitative image analysis available?','2012-09-28 12:52:03');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldimagingavail3.ftdfdgpt','en','lava','crms-nacc',NULL,'udsftldimagingavail3','ftdfdgpt',NULL,'r','scale','Yes','2. Is an FDG-PET scan, obtained as part of the current evaluation or a previous evaluation, available for data sharing?',NULL,0,NULL,0,NULL,'uds.noYes01',NULL,15,'2. Is an FDG-PET scan, obtained as part of the current evaluation or a previous evaluation, available for data sharing?','2012-09-28 12:52:03');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldimagingavail3.ftdfpmo','en','lava','crms-nacc',NULL,'udsftldimagingavail3','ftdfpmo',NULL,'r','scale','Yes','a. Month of FDG-PET scan',NULL,0,NULL,1,NULL,'uds.e2f.month',NULL,16,'2a. Month of FDG-PET scan','2012-09-28 12:52:03');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldimagingavail3.ftdfpdy','en','lava','crms-nacc',NULL,'udsftldimagingavail3','ftdfpdy',NULL,'r','scale','Yes','a. Day of FDG-PET scan',NULL,0,NULL,1,NULL,'uds.e2f.day',NULL,17,'2a. Day of FDG-PET scan','2012-09-28 12:52:03');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldimagingavail3.ftdfpyr','en','lava','crms-nacc',NULL,'udsftldimagingavail3','ftdfpyr',NULL,'r','scale','Yes','a. Year of FDG-PET scan',NULL,0,NULL,1,NULL,'uds.e2f.year',NULL,18,'2a. Year of FDG-PET scan','2012-09-28 12:52:03');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldimagingavail3.ftdfddic','en','lava','crms-nacc',NULL,'udsftldimagingavail3','ftdfddic',NULL,'r','scale','Yes','b. FDG-PET scan: Is it in DICOM format or other electronic format?',NULL,0,NULL,1,NULL,'uds.noYesUnknown019',NULL,19,'2b. FDG-PET scan: Is it in DICOM format or other electronic format?','2012-09-28 12:52:03');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldimagingavail3.ftdfddid','en','lava','crms-nacc',NULL,'udsftldimagingavail3','ftdfddid',NULL,'r','string','Yes','b1. FDG-PET scan: Specify DICOM or other format',NULL,60,NULL,1,'onkeypress="UDS_onlyNaccCharactersAllowed(event)"',NULL,NULL,20,'2b1. FDG-PET scan: Specify DICOM or other format','2012-09-28 12:52:03');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldimagingavail3.ftdfdadn','en','lava','crms-nacc',NULL,'udsftldimagingavail3','ftdfdadn',NULL,'r','scale','Yes','c. FDG-PET scan: Was ADNI protocol used?',NULL,0,NULL,1,NULL,'uds.noYesUnknown019',NULL,21,'2c. FDG-PET scan: Was ADNI protocol used?','2012-09-28 12:52:03');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldimagingavail3.ftdfdadv','en','lava','crms-nacc',NULL,'udsftldimagingavail3','ftdfdadv',NULL,'r','string','Yes','c1. FDG-PET scan: If ADNI protocol used, then ADNI version?',NULL,60,NULL,1,'onkeypress="UDS_onlyNaccCharactersAllowed(event)"',NULL,NULL,22,'2c1. FDG-PET scan: If ADNI protocol used, then ADNI version?','2012-09-28 12:52:03');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldimagingavail3.ftdfdman','en','lava','crms-nacc',NULL,'udsftldimagingavail3','ftdfdman',NULL,'r','scale','Yes','d. FDG-PET scan: Scan manufacturer?',NULL,0,NULL,1,NULL,'uds.e2f.scanMan',NULL,23,'2d. FDG-PET scan: Scan manufacturer?','2012-09-28 12:52:03');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldimagingavail3.ftdfdmao','en','lava','crms-nacc',NULL,'udsftldimagingavail3','ftdfdmao',NULL,'r','string','Yes','d0. FDG-PET scan: Scan manufacturer, if other specify',NULL,60,NULL,1,'onkeypress="UDS_onlyNaccCharactersAllowed(event)"',NULL,NULL,24,'2d0. FDG-PET scan: Scan manufacturer, if other specify','2012-09-28 12:52:03');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldimagingavail3.ftdfdmam','en','lava','crms-nacc',NULL,'udsftldimagingavail3','ftdfdmam',NULL,'r','string','Yes','d1. FDG-PET scan: Manufacturer model?',NULL,60,NULL,1,'onkeypress="UDS_onlyNaccCharactersAllowed(event)"',NULL,NULL,25,'2d1. FDG-PET scan: Manufacturer model?','2012-09-28 12:52:03');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldimagingavail3.ftdfdqu','en','lava','crms-nacc',NULL,'udsftldimagingavail3','ftdfdqu',NULL,'r','scale','Yes','e. FDG-PET scan: Are results of the quantitive image analysis available?',NULL,0,NULL,1,NULL,'uds.noYes01',NULL,26,'2e. FDG-PET scan: Are results of the quantitive image analysis available?','2012-09-28 12:52:03');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldimagingavail3.ftdamypt','en','lava','crms-nacc',NULL,'udsftldimagingavail3','ftdamypt',NULL,'r','scale','Yes','3. Is an amyloid PET scan, obtained as part of the current evaluation or a previous evaluation, available for data sharing?',NULL,0,NULL,0,NULL,'uds.noYes01',NULL,27,'3. Is an amyloid PET scan, obtained as part of the current evaluation or a previous evaluation, available for data sharing?','2012-09-28 12:52:03');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldimagingavail3.ftdammo','en','lava','crms-nacc',NULL,'udsftldimagingavail3','ftdammo',NULL,'r','scale','Yes','a. Month of amyloid PET scan?',NULL,0,NULL,1,NULL,'uds.e2f.month',NULL,28,'3a. Month of amyloid PET scan?','2012-09-28 12:52:03');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldimagingavail3.ftdamdy','en','lava','crms-nacc',NULL,'udsftldimagingavail3','ftdamdy',NULL,'r','scale','Yes','a. Day of amyloid PET scan?',NULL,0,NULL,1,NULL,'uds.e2f.day',NULL,29,'3a. Day of amyloid PET scan?','2012-09-28 12:52:03');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldimagingavail3.ftdamyr','en','lava','crms-nacc',NULL,'udsftldimagingavail3','ftdamyr',NULL,'r','scale','Yes','a. Year of amyloid PET scan?',NULL,0,NULL,1,NULL,'uds.e2f.year',NULL,30,'3a. Year of amyloid PET scan?','2012-09-28 12:52:03');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldimagingavail3.ftdamdic','en','lava','crms-nacc',NULL,'udsftldimagingavail3','ftdamdic',NULL,'r','scale','Yes','b. Amyloid PET scan: Is it in DICOM format or other electronic format?',NULL,0,NULL,1,NULL,'uds.noYesUnknown019',NULL,31,'3b. Amyloid PET scan: Is it in DICOM format or other electronic format?','2012-09-28 12:52:03');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldimagingavail3.ftdamdid','en','lava','crms-nacc',NULL,'udsftldimagingavail3','ftdamdid',NULL,'r','string','Yes','b1. Amyloid PET scan: Specify DICOM or other format',NULL,60,NULL,1,'onkeypress="UDS_onlyNaccCharactersAllowed(event)"',NULL,NULL,32,'3b1. Amyloid PET scan: Specify DICOM or other format','2012-09-28 12:52:03');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldimagingavail3.ftdamlig','en','lava','crms-nacc',NULL,'udsftldimagingavail3','ftdamlig',NULL,'r','scale','Yes','c. Amyloid PET scan: Ligand used?',NULL,0,NULL,1,NULL,'uds.e2f.ligand',NULL,33,'3c. Amyloid PET scan: Ligand used?','2012-09-28 12:52:03');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldimagingavail3.ftdamlio','en','lava','crms-nacc',NULL,'udsftldimagingavail3','ftdamlio',NULL,'r','string','Yes','c1. Amyloid PET scan: Specify other ligand used',NULL,60,NULL,1,'onkeypress="UDS_onlyNaccCharactersAllowed(event)"',NULL,NULL,34,'3c1. Amyloid PET scan: Specify other ligand used','2012-09-28 12:52:03');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldimagingavail3.ftdamadn','en','lava','crms-nacc',NULL,'udsftldimagingavail3','ftdamadn',NULL,'r','scale','Yes','d. Amyloid PET scan: Was ADNI protocol used?',NULL,0,NULL,1,NULL,'uds.noYesUnknown019',NULL,35,'3d. Amyloid PET scan: Was ADNI protocol used?','2012-09-28 12:52:03');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldimagingavail3.ftdamadv','en','lava','crms-nacc',NULL,'udsftldimagingavail3','ftdamadv',NULL,'r','string','Yes','d1. Amyloid PET scan: If ADNI protocol was used, then ADNI version?',NULL,60,NULL,1,'onkeypress="UDS_onlyNaccCharactersAllowed(event)"',NULL,NULL,36,'3d1. Amyloid PET scan: If ADNI protocol was used, then ADNI version?','2012-09-28 12:52:03');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldimagingavail3.ftdamman','en','lava','crms-nacc',NULL,'udsftldimagingavail3','ftdamman',NULL,'r','scale','Yes','e. Amyloid PET scan: Scan manufacturer?',NULL,0,NULL,1,NULL,'uds.e2f.scanMan',NULL,37,'3e. Amyloid PET scan: Scan manufacturer?','2012-09-28 12:52:03');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldimagingavail3.ftdammao','en','lava','crms-nacc',NULL,'udsftldimagingavail3','ftdammao',NULL,'r','string','Yes','e0. Amyloid PET scan: Manufacturer, if other specify',NULL,60,NULL,1,'onkeypress="UDS_onlyNaccCharactersAllowed(event)"',NULL,NULL,38,'3e0. Amyloid PET scan: Manufacturer, if other specify','2012-09-28 12:52:03');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldimagingavail3.ftdammam','en','lava','crms-nacc',NULL,'udsftldimagingavail3','ftdammam',NULL,'r','string','Yes','e1. Amyloid PET scan: Manufacturer model?',NULL,60,NULL,1,'onkeypress="UDS_onlyNaccCharactersAllowed(event)"',NULL,NULL,39,'3e1. Amyloid PET scan: Manufacturer model?','2012-09-28 12:52:03');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldimagingavail3.ftdamqu','en','lava','crms-nacc',NULL,'udsftldimagingavail3','ftdamqu',NULL,'r','scale','Yes','f. Amyloid PET scan: Are results of quantitive image analysis available?',NULL,0,NULL,1,NULL,'uds.noYes01',NULL,40,'3f. Amyloid PET scan: Are results of quantitive image analysis available?','2012-09-28 12:52:03');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldimagingavail3.ftdother','en','lava','crms-nacc',NULL,'udsftldimagingavail3','ftdother',NULL,'r','scale','Yes','4. Are other PET or SPECT scans, obtained as part of the current evaluation or a previous evaluation, available for data sharing?',NULL,0,NULL,0,NULL,'uds.noYes01',NULL,41,'4. Are other PET or SPECT scans, obtained as part of the current evaluation or a previous evaluation, available for data sharing?','2012-09-28 12:52:03');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldimagingavail3.ftdotdop','en','lava','crms-nacc',NULL,'udsftldimagingavail3','ftdotdop',NULL,'r','scale','Yes','a. Other PET or SPECT scans: Is a dopaminergic scan available?',NULL,0,NULL,1,NULL,'uds.noYesUnknown019',NULL,42,'4a. Other PET or SPECT scans: Is a dopaminergic scan available?','2012-09-28 12:52:03');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldimagingavail3.ftdotser','en','lava','crms-nacc',NULL,'udsftldimagingavail3','ftdotser',NULL,'r','scale','Yes','b. Other PET or SPECT scans: Is a serotonergic scan available?',NULL,0,NULL,1,NULL,'uds.noYesUnknown019',NULL,43,'4b. Other PET or SPECT scans: Is a serotonergic scan available?','2012-09-28 12:52:03');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldimagingavail3.ftdotcho','en','lava','crms-nacc',NULL,'udsftldimagingavail3','ftdotcho',NULL,'r','scale','Yes','c. Other PET or SPECT scans: Is a cholinergic scan available?',NULL,0,NULL,1,NULL,'uds.noYesUnknown019',NULL,44,'4c. Other PET or SPECT scans: Is a cholinergic scan available?','2012-09-28 12:52:03');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldimagingavail3.ftdotano','en','lava','crms-nacc',NULL,'udsftldimagingavail3','ftdotano',NULL,'r','scale','Yes','d. Other PET or SPECT scans: Is another kind of scan available?',NULL,0,NULL,1,NULL,'uds.noYes01',NULL,45,'4d. Other PET or SPECT scans: Is another kind of scan available?','2012-09-28 12:52:03');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldimagingavail3.ftdotans','en','lava','crms-nacc',NULL,'udsftldimagingavail3','ftdotans',NULL,'r','string','Yes','d1. Other scan specify',NULL,60,NULL,1,'onkeypress="UDS_onlyNaccCharactersAllowed(event)"',NULL,NULL,46,'4d1. Other scan specify','2012-09-28 12:52:03');




-- E3F
DELETE from datadictionary where entity = 'udsftldimagingdiag3';
DELETE from viewproperty where entity = 'udsftldimagingdiag3';
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldimagingdiag3',1,'ftdidiag','1. Was imaging obtained as part of this visit for use in diagnosis?','','',1,'udsftldimagingdiag','FTDIDIAG',1,'smallint','',1,'null',NULL,NULL,'2012-09-28 13:45:03');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldimagingdiag3',2,'ftdsmrio','2. Was structural MRI imaging done?','','',1,'udsftldimagingdiag','FTDSMRIO',2,'smallint','',1,'null',NULL,NULL,'2012-09-28 13:45:03');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldimagingdiag3',3,'ftdmrifa','2a. Structural MRI: Was focal atrophy (beyond what would be expected for age) appreciated by visual inspection?','','',1,'udsftldimagingdiag','FTDMRIFA',3,'smallint','',1,'null',NULL,NULL,'2012-09-28 13:45:03');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldimagingdiag3',4,'ftdmrirf','2a1. Structural MRI: Right frontal lobe?','','',1,'udsftldimagingdiag','FTDMRIRF',4,'smallint','',1,'null',NULL,NULL,'2012-09-28 13:45:03');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldimagingdiag3',5,'ftdmrilf','2a2. Structural MRI: Left frontal lobe?','','',1,'udsftldimagingdiag','FTDMRILF',5,'smallint','',1,'null',NULL,NULL,'2012-09-28 13:45:03');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldimagingdiag3',6,'ftdmrirt','2a3. Structural MRI: Right temporal lobe?','','',1,'udsftldimagingdiag','FTDMRIRT',6,'smallint','',1,'null',NULL,NULL,'2012-09-28 13:45:03');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldimagingdiag3',7,'ftdmrilt','2a4. Structural MRI: Left temporal lobe?','','',1,'udsftldimagingdiag','FTDMRILT',7,'smallint','',1,'null',NULL,NULL,'2012-09-28 13:45:03');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldimagingdiag3',8,'ftdmrirm','2a5. Structural MRI: Right medial temporal lobe?','','',1,'udsftldimagingdiag','FTDMRIRM',8,'smallint','',1,'null',NULL,NULL,'2012-09-28 13:45:03');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldimagingdiag3',9,'ftdmrilm','2a6. Structural MRI: Left medial temporal lobe?','','',1,'udsftldimagingdiag','FTDMRILM',9,'smallint','',1,'null',NULL,NULL,'2012-09-28 13:45:03');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldimagingdiag3',10,'ftdmrirp','2a7. Structural MRI: Right parietal lobe?','','',1,'udsftldimagingdiag','FTDMRIRP',10,'smallint','',1,'null',NULL,NULL,'2012-09-28 13:45:03');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldimagingdiag3',11,'ftdmrilp','2a8. Structural MRI: Left parietal lobe?','','',1,'udsftldimagingdiag','FTDMRILP',11,'smallint','',1,'null',NULL,NULL,'2012-09-28 13:45:03');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldimagingdiag3',12,'ftdmrirb','2a9. Structural MRI: Right basal ganglia?','','',1,'udsftldimagingdiag','FTDMRIRB',12,'smallint','',1,'null',NULL,NULL,'2012-09-28 13:45:03');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldimagingdiag3',13,'ftdmrilb','2a10. Structural MRI: Left basal ganglia?','','',1,'udsftldimagingdiag','FTDMRILB',13,'smallint','',1,'null',NULL,NULL,'2012-09-28 13:45:03');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldimagingdiag3',14,'ftdmriob','2a11. Structural MRI: Other area of the brain?','','',1,'udsftldimagingdiag','FTDMRIOB',14,'smallint','',1,'null',NULL,NULL,'2012-09-28 13:45:03');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldimagingdiag3',15,'ftdmrios','2a11a. Structural MRI: Other area of brain specification','','',1,'udsftldimagingdiag','FTDMRIOS',15,'varchar','60',1,'null',NULL,NULL,'2012-09-28 13:45:03');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldimagingdiag3',16,'ftdfdgpe','3. Was FDG-PET imaging done?','','',1,'udsftldimagingdiag','FTDFDGPE',16,'smallint','',1,'null',NULL,NULL,'2012-09-28 13:45:03');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldimagingdiag3',17,'ftdfdgfh','3a. FDG-PET: Was focal hypometabolism appreciated by visual inspection?','','',1,'udsftldimagingdiag','FTDFDGFH',17,'smallint','',1,'null',NULL,NULL,'2012-09-28 13:45:03');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldimagingdiag3',18,'ftdfdgrf','3a1. FDG-PET: Right frontal lobe?','','',1,'udsftldimagingdiag','FTDFDGRF',18,'smallint','',1,'null',NULL,NULL,'2012-09-28 13:45:03');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldimagingdiag3',19,'ftdfdglf','3a2. FDG-PET: Left frontal lobe?','','',1,'udsftldimagingdiag','FTDFDGLF',19,'smallint','',1,'null',NULL,NULL,'2012-09-28 13:45:03');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldimagingdiag3',20,'ftdfdgrt','3a3. FDG-PET: Right temporal lobe?','','',1,'udsftldimagingdiag','FTDFDGRT',20,'smallint','',1,'null',NULL,NULL,'2012-09-28 13:45:03');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldimagingdiag3',21,'ftdfdglt','3a4. FDG-PET: Left temporal lobe?','','',1,'udsftldimagingdiag','FTDFDGLT',21,'smallint','',1,'null',NULL,NULL,'2012-09-28 13:45:03');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldimagingdiag3',22,'ftdfdgrm','3a5. FDG-PET: Right medial temporal lobe?','','',1,'udsftldimagingdiag','FTDFDGRM',22,'smallint','',1,'null',NULL,NULL,'2012-09-28 13:45:03');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldimagingdiag3',23,'ftdfdglm','3a6. FDG-PET: Left medial temporal lobe?','','',1,'udsftldimagingdiag','FTDFDGLM',23,'smallint','',1,'null',NULL,NULL,'2012-09-28 13:45:03');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldimagingdiag3',24,'ftdfdgrp','3a7. FDG-PET: Right parietal lobe?','','',1,'udsftldimagingdiag','FTDFDGRP',24,'smallint','',1,'null',NULL,NULL,'2012-09-28 13:45:03');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldimagingdiag3',25,'ftdfdglp','3a8. FDG-PET: Left parietal lobe?','','',1,'udsftldimagingdiag','FTDFDGLP',25,'smallint','',1,'null',NULL,NULL,'2012-09-28 13:45:03');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldimagingdiag3',26,'ftdfdgrb','3a9. FDG-PET: Right basal ganglia','','',1,'udsftldimagingdiag','FTDFDGRB',26,'smallint','',1,'null',NULL,NULL,'2012-09-28 13:45:03');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldimagingdiag3',27,'ftdfdglb','3a10. FDG-PET: Left basal ganglia','','',1,'udsftldimagingdiag','FTDFDGLB',27,'smallint','',1,'null',NULL,NULL,'2012-09-28 13:45:03');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldimagingdiag3',28,'ftdfdgoa','3a11. FDG-PET: Other area of the brain (specify below)?','','',1,'udsftldimagingdiag','FTDFDGOA',28,'smallint','',1,'null',NULL,NULL,'2012-09-28 13:45:03');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldimagingdiag3',29,'ftdfdgos','3a11a. FDG-PET: Other area of the brain specification?','','',1,'udsftldimagingdiag','FTDFDGOS',29,'varchar','60',1,'null',NULL,NULL,'2012-09-28 13:45:03');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldimagingdiag3',30,'ftdamyp','4. Was amyloid PET imaging done?','','',1,'udsftldimagingdiag','FTDAMYP',30,'smallint','',1,'null',NULL,NULL,'2012-09-28 13:45:03');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldimagingdiag3',31,'ftdamyvi','4a. Amyloid PET: Was amyloid deposition appreciated by visual inspection?','','',1,'udsftldimagingdiag','FTDAMYVI',31,'smallint','',1,'null',NULL,NULL,'2012-09-28 13:45:03');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldimagingdiag3',32,'ftdamyrf','4a1. Amyloid PET: Right frontal lobe?','','',1,'udsftldimagingdiag','FTDAMYRF',32,'smallint','',1,'null',NULL,NULL,'2012-09-28 13:45:03');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldimagingdiag3',33,'ftdamylf','4a2. Amyloid PET: Left frontal lobe?','','',1,'udsftldimagingdiag','FTDAMYLF',33,'smallint','',1,'null',NULL,NULL,'2012-09-28 13:45:03');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldimagingdiag3',34,'ftdamyrt','4a3. Amyloid PET: Right temporal lobe?','','',1,'udsftldimagingdiag','FTDAMYRT',34,'smallint','',1,'null',NULL,NULL,'2012-09-28 13:45:03');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldimagingdiag3',35,'ftdamylt','4a4. Amyloid PET: Left temporal lobe?','','',1,'udsftldimagingdiag','FTDAMYLT',35,'smallint','',1,'null',NULL,NULL,'2012-09-28 13:45:03');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldimagingdiag3',36,'ftdamyrm','4a5. Amyloid PET: Right medial temporal lobe?','','',1,'udsftldimagingdiag','FTDAMYRM',36,'smallint','',1,'null',NULL,NULL,'2012-09-28 13:45:03');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldimagingdiag3',37,'ftdamylm','4a6. Amyloid PET: Left medial temporal lobe?','','',1,'udsftldimagingdiag','FTDAMYLM',37,'smallint','',1,'null',NULL,NULL,'2012-09-28 13:45:03');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldimagingdiag3',38,'ftdamyrp','4a7. Amyloid PET: Right parietal lobe?','','',1,'udsftldimagingdiag','FTDAMYRP',38,'smallint','',1,'null',NULL,NULL,'2012-09-28 13:45:03');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldimagingdiag3',39,'ftdamylp','4a8. Amyloid PET: Left parietal lobe?','','',1,'udsftldimagingdiag','FTDAMYLP',39,'smallint','',1,'null',NULL,NULL,'2012-09-28 13:45:03');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldimagingdiag3',40,'ftdamyrb','4a9. Amyloid PET: Right basal ganglia?','','',1,'udsftldimagingdiag','FTDAMYRB',40,'smallint','',1,'null',NULL,NULL,'2012-09-28 13:45:03');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldimagingdiag3',41,'ftdamylb','4a10. Amyloid PET: Left basal ganglia?','','',1,'udsftldimagingdiag','FTDAMYLB',41,'smallint','',1,'null',NULL,NULL,'2012-09-28 13:45:03');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldimagingdiag3',42,'ftdamyoa','4a11. Amyloid PET: Other area of the brain (specify below)?','','',1,'udsftldimagingdiag','FTDAMYOA',42,'smallint','',1,'null',NULL,NULL,'2012-09-28 13:45:03');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldimagingdiag3',43,'ftdamyos','4a11a. Amyloid PET: Other area of the brain specification?','','',1,'udsftldimagingdiag','FTDAMYOS',43,'varchar','60',1,'null',NULL,NULL,'2012-09-28 13:45:03');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldimagingdiag3',44,'ftdcbfsp','5. Was CBF SPECT done?','','',1,'udsftldimagingdiag','FTDCBFSP',44,'smallint','',1,'null',NULL,NULL,'2012-09-28 13:45:03');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldimagingdiag3',45,'ftdcbfvi','5a. CBF-SPECT: Were abnormalities appreciated by visual inspection?','','',1,'udsftldimagingdiag','FTDCBFVI',45,'smallint','',1,'null',NULL,NULL,'2012-09-28 13:45:03');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldimagingdiag3',46,'ftdcbfrf','5a1. CBF SPECT: Right frontal lobe?','','',1,'udsftldimagingdiag','FTDCBFRF',46,'smallint','',1,'null',NULL,NULL,'2012-09-28 13:45:03');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldimagingdiag3',47,'ftdcbflf','5a2. CBF SPECT: Left frontal lobe?','','',1,'udsftldimagingdiag','FTDCBFLF',47,'smallint','',1,'null',NULL,NULL,'2012-09-28 13:45:03');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldimagingdiag3',48,'ftdcbfrt','5a3. CBF SPECT: Right temporal lobe?','','',1,'udsftldimagingdiag','FTDCBFRT',48,'smallint','',1,'null',NULL,NULL,'2012-09-28 13:45:03');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldimagingdiag3',49,'ftdcbflt','5a4. CBF SPECT: Left temporal lobe?','','',1,'udsftldimagingdiag','FTDCBFLT',49,'smallint','',1,'null',NULL,NULL,'2012-09-28 13:45:03');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldimagingdiag3',50,'ftdcbfrm','5a5. CBF SPECT: Right medial temporal lobe?','','',1,'udsftldimagingdiag','FTDCBFRM',50,'smallint','',1,'null',NULL,NULL,'2012-09-28 13:45:03');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldimagingdiag3',51,'ftdcbflm','5a6. CBF SPECT: Left medial temporal lobe?','','',1,'udsftldimagingdiag','FTDCBFLM',51,'smallint','',1,'null',NULL,NULL,'2012-09-28 13:45:03');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldimagingdiag3',52,'ftdcbfrp','5a7. CBF SPECT: Right parietal lobe?','','',1,'udsftldimagingdiag','FTDCBFRP',52,'smallint','',1,'null',NULL,NULL,'2012-09-28 13:45:03');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldimagingdiag3',53,'ftdcbflp','5a8. CBF SPECT: Left parietal lobe?','','',1,'udsftldimagingdiag','FTDCBFLP',53,'smallint','',1,'null',NULL,NULL,'2012-09-28 13:45:03');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldimagingdiag3',54,'ftdcbfrb','5a9. CBF SPECT: Right basal ganglia?','','',1,'udsftldimagingdiag','FTDCBFRB',54,'smallint','',1,'null',NULL,NULL,'2012-09-28 13:45:03');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldimagingdiag3',55,'ftdcbflb','5a10. CBF SPECT: Left basal ganglia?','','',1,'udsftldimagingdiag','FTDCBFLB',55,'smallint','',1,'null',NULL,NULL,'2012-09-28 13:45:03');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldimagingdiag3',56,'ftdcbfoa','5a11. CBF SPECT: Other area of the brain (specify below)?','','',1,'udsftldimagingdiag','FTDCBFOA',56,'smallint','',1,'null',NULL,NULL,'2012-09-28 13:45:03');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldimagingdiag3',57,'ftdcbfos','5a11a. CBF SPECT: Other area of brain specification','','',1,'udsftldimagingdiag','FTDCBFOS',57,'varchar','60',1,'null',NULL,NULL,'2012-09-28 13:45:03');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldimagingdiag3',58,'ftdothi','6. Was other imaging done?','','',1,'udsftldimagingdiag','FTDOTHI',58,'smallint','',1,'null',NULL,NULL,'2012-09-28 13:45:03');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsftldimagingdiag3',59,'ftdothis','6a. Other imaging, specification','','',1,'udsftldimagingdiag','FTDOTHIS',59,'varchar','60',1,'null',NULL,NULL,'2012-09-28 13:45:03');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldimagingdiag3.ftdidiag','en','lava','crms-nacc',NULL,'udsftldimagingdiag3','ftdidiag',NULL,'r','scale','Yes','1. Was imaging obtained as part of this visit for use in diagnosis?',NULL,0,NULL,0,NULL,'uds.noYes01',NULL,1,'1. Was imaging obtained as part of this visit for use in diagnosis?','2012-09-28 13:45:36');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldimagingdiag3.ftdsmrio','en','lava','crms-nacc',NULL,'udsftldimagingdiag3','ftdsmrio',NULL,'r','scale','Yes','2. Was structural MRI imaging done?',NULL,0,NULL,0,NULL,'uds.noYes01',NULL,2,'2. Was structural MRI imaging done?','2012-09-28 13:45:36');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldimagingdiag3.ftdmrifa','en','lava','crms-nacc',NULL,'udsftldimagingdiag3','ftdmrifa',NULL,'r','scale','Yes','a. Structural MRI: Was focal atrophy (beyond what would be expected for age) appreciated by visual inspection?',NULL,0,NULL,1,NULL,'uds.noYesUnknown019',NULL,3,'2a. Structural MRI: Was focal atrophy (beyond what would be expected for age) appreciated by visual inspection?','2012-09-28 13:45:36');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldimagingdiag3.ftdmrirf','en','lava','crms-nacc',NULL,'udsftldimagingdiag3','ftdmrirf',NULL,'r','scale','Yes','a1. Structural MRI: Right frontal lobe?',NULL,0,NULL,1,NULL,'uds.noYesUnknown019',NULL,4,'2a1. Structural MRI: Right frontal lobe?','2012-09-28 13:45:36');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldimagingdiag3.ftdmrilf','en','lava','crms-nacc',NULL,'udsftldimagingdiag3','ftdmrilf',NULL,'r','scale','Yes','a2. Structural MRI: Left frontal lobe?',NULL,0,NULL,1,NULL,'uds.noYesUnknown019',NULL,5,'2a2. Structural MRI: Left frontal lobe?','2012-09-28 13:45:36');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldimagingdiag3.ftdmrirt','en','lava','crms-nacc',NULL,'udsftldimagingdiag3','ftdmrirt',NULL,'r','scale','Yes','a3. Structural MRI: Right temporal lobe?',NULL,0,NULL,1,NULL,'uds.noYesUnknown019',NULL,6,'2a3. Structural MRI: Right temporal lobe?','2012-09-28 13:45:36');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldimagingdiag3.ftdmrilt','en','lava','crms-nacc',NULL,'udsftldimagingdiag3','ftdmrilt',NULL,'r','scale','Yes','a4. Structural MRI: Left temporal lobe?',NULL,0,NULL,1,NULL,'uds.noYesUnknown019',NULL,7,'2a4. Structural MRI: Left temporal lobe?','2012-09-28 13:45:36');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldimagingdiag3.ftdmrirm','en','lava','crms-nacc',NULL,'udsftldimagingdiag3','ftdmrirm',NULL,'r','scale','Yes','a5. Structural MRI: Right medial temporal lobe?',NULL,0,NULL,1,NULL,'uds.noYesUnknown019',NULL,8,'2a5. Structural MRI: Right medial temporal lobe?','2012-09-28 13:45:36');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldimagingdiag3.ftdmrilm','en','lava','crms-nacc',NULL,'udsftldimagingdiag3','ftdmrilm',NULL,'r','scale','Yes','a6. Structural MRI: Left medial temporal lobe?',NULL,0,NULL,1,NULL,'uds.noYesUnknown019',NULL,9,'2a6. Structural MRI: Left medial temporal lobe?','2012-09-28 13:45:36');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldimagingdiag3.ftdmrirp','en','lava','crms-nacc',NULL,'udsftldimagingdiag3','ftdmrirp',NULL,'r','scale','Yes','a7. Structural MRI: Right parietal lobe?',NULL,0,NULL,1,NULL,'uds.noYesUnknown019',NULL,10,'2a7. Structural MRI: Right parietal lobe?','2012-09-28 13:45:36');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldimagingdiag3.ftdmrilp','en','lava','crms-nacc',NULL,'udsftldimagingdiag3','ftdmrilp',NULL,'r','scale','Yes','a8. Structural MRI: Left parietal lobe?',NULL,0,NULL,1,NULL,'uds.noYesUnknown019',NULL,11,'2a8. Structural MRI: Left parietal lobe?','2012-09-28 13:45:36');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldimagingdiag3.ftdmrirb','en','lava','crms-nacc',NULL,'udsftldimagingdiag3','ftdmrirb',NULL,'r','scale','Yes','a9. Structural MRI: Right basal ganglia?',NULL,0,NULL,1,NULL,'uds.noYesUnknown019',NULL,12,'2a9. Structural MRI: Right basal ganglia?','2012-09-28 13:45:36');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldimagingdiag3.ftdmrilb','en','lava','crms-nacc',NULL,'udsftldimagingdiag3','ftdmrilb',NULL,'r','scale','Yes','a10. Structural MRI: Left basal ganglia?',NULL,0,NULL,1,NULL,'uds.noYesUnknown019',NULL,13,'2a10. Structural MRI: Left basal ganglia?','2012-09-28 13:45:36');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldimagingdiag3.ftdmriob','en','lava','crms-nacc',NULL,'udsftldimagingdiag3','ftdmriob',NULL,'r','scale','Yes','a11. Structural MRI: Other area of the brain?',NULL,0,NULL,1,NULL,'uds.noYesUnknown019',NULL,14,'2a11. Structural MRI: Other area of the brain?','2012-09-28 13:45:36');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldimagingdiag3.ftdmrios','en','lava','crms-nacc',NULL,'udsftldimagingdiag3','ftdmrios',NULL,'r','string','Yes','a11a. Structural MRI: Other area of brain specification',NULL,60,NULL,1,'onkeypress="UDS_onlyNaccCharactersAllowed(event)"',NULL,NULL,15,'2a11a. Structural MRI: Other area of brain specification','2012-09-28 13:45:36');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldimagingdiag3.ftdfdgpe','en','lava','crms-nacc',NULL,'udsftldimagingdiag3','ftdfdgpe',NULL,'r','scale','Yes','3. Was FDG-PET imaging done?',NULL,0,NULL,0,NULL,'uds.noYes01',NULL,16,'3. Was FDG-PET imaging done?','2012-09-28 13:45:36');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldimagingdiag3.ftdfdgfh','en','lava','crms-nacc',NULL,'udsftldimagingdiag3','ftdfdgfh',NULL,'r','scale','Yes','a. FDG-PET: Was focal hypometabolism appreciated by visual inspection?',NULL,0,NULL,1,NULL,'uds.noYesUnknown019',NULL,17,'3a. FDG-PET: Was focal hypometabolism appreciated by visual inspection?','2012-09-28 13:45:36');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldimagingdiag3.ftdfdgrf','en','lava','crms-nacc',NULL,'udsftldimagingdiag3','ftdfdgrf',NULL,'r','scale','Yes','a1. FDG-PET: Right frontal lobe?',NULL,0,NULL,1,NULL,'uds.noYesUnknown019',NULL,18,'3a1. FDG-PET: Right frontal lobe?','2012-09-28 13:45:36');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldimagingdiag3.ftdfdglf','en','lava','crms-nacc',NULL,'udsftldimagingdiag3','ftdfdglf',NULL,'r','scale','Yes','a2. FDG-PET: Left frontal lobe?',NULL,0,NULL,1,NULL,'uds.noYesUnknown019',NULL,19,'3a2. FDG-PET: Left frontal lobe?','2012-09-28 13:45:36');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldimagingdiag3.ftdfdgrt','en','lava','crms-nacc',NULL,'udsftldimagingdiag3','ftdfdgrt',NULL,'r','scale','Yes','a3. FDG-PET: Right temporal lobe?',NULL,0,NULL,1,NULL,'uds.noYesUnknown019',NULL,20,'3a3. FDG-PET: Right temporal lobe?','2012-09-28 13:45:36');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldimagingdiag3.ftdfdglt','en','lava','crms-nacc',NULL,'udsftldimagingdiag3','ftdfdglt',NULL,'r','scale','Yes','a4. FDG-PET: Left temporal lobe?',NULL,0,NULL,1,NULL,'uds.noYesUnknown019',NULL,21,'3a4. FDG-PET: Left temporal lobe?','2012-09-28 13:45:36');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldimagingdiag3.ftdfdgrm','en','lava','crms-nacc',NULL,'udsftldimagingdiag3','ftdfdgrm',NULL,'r','scale','Yes','a5. FDG-PET: Right medial temporal lobe?',NULL,0,NULL,1,NULL,'uds.noYesUnknown019',NULL,22,'3a5. FDG-PET: Right medial temporal lobe?','2012-09-28 13:45:36');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldimagingdiag3.ftdfdglm','en','lava','crms-nacc',NULL,'udsftldimagingdiag3','ftdfdglm',NULL,'r','scale','Yes','a6. FDG-PET: Left medial temporal lobe?',NULL,0,NULL,1,NULL,'uds.noYesUnknown019',NULL,23,'3a6. FDG-PET: Left medial temporal lobe?','2012-09-28 13:45:36');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldimagingdiag3.ftdfdgrp','en','lava','crms-nacc',NULL,'udsftldimagingdiag3','ftdfdgrp',NULL,'r','scale','Yes','a7. FDG-PET: Right parietal lobe?',NULL,0,NULL,1,NULL,'uds.noYesUnknown019',NULL,24,'3a7. FDG-PET: Right parietal lobe?','2012-09-28 13:45:36');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldimagingdiag3.ftdfdglp','en','lava','crms-nacc',NULL,'udsftldimagingdiag3','ftdfdglp',NULL,'r','scale','Yes','a8. FDG-PET: Left parietal lobe?',NULL,0,NULL,1,NULL,'uds.noYesUnknown019',NULL,25,'3a8. FDG-PET: Left parietal lobe?','2012-09-28 13:45:36');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldimagingdiag3.ftdfdgrb','en','lava','crms-nacc',NULL,'udsftldimagingdiag3','ftdfdgrb',NULL,'r','scale','Yes','a9. FDG-PET: Right basal ganglia',NULL,0,NULL,1,NULL,'uds.noYesUnknown019',NULL,26,'3a9. FDG-PET: Right basal ganglia','2012-09-28 13:45:36');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldimagingdiag3.ftdfdglb','en','lava','crms-nacc',NULL,'udsftldimagingdiag3','ftdfdglb',NULL,'r','scale','Yes','a10. FDG-PET: Left basal ganglia',NULL,0,NULL,1,NULL,'uds.noYesUnknown019',NULL,27,'3a10. FDG-PET: Left basal ganglia','2012-09-28 13:45:36');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldimagingdiag3.ftdfdgoa','en','lava','crms-nacc',NULL,'udsftldimagingdiag3','ftdfdgoa',NULL,'r','scale','Yes','a11. FDG-PET: Other area of the brain (specify below)?',NULL,0,NULL,1,NULL,'uds.noYesUnknown019',NULL,28,'3a11. FDG-PET: Other area of the brain (specify below)?','2012-09-28 13:45:36');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldimagingdiag3.ftdfdgos','en','lava','crms-nacc',NULL,'udsftldimagingdiag3','ftdfdgos',NULL,'r','string','Yes','a11a. FDG-PET: Other area of the brain specification?',NULL,60,NULL,1,'onkeypress="UDS_onlyNaccCharactersAllowed(event)"',NULL,NULL,29,'3a11a. FDG-PET: Other area of the brain specification?','2012-09-28 13:45:36');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldimagingdiag3.ftdamyp','en','lava','crms-nacc',NULL,'udsftldimagingdiag3','ftdamyp',NULL,'r','scale','Yes','4. Was amyloid PET imaging done?',NULL,0,NULL,0,NULL,'uds.noYes01',NULL,30,'4. Was amyloid PET imaging done?','2012-09-28 13:45:36');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldimagingdiag3.ftdamyvi','en','lava','crms-nacc',NULL,'udsftldimagingdiag3','ftdamyvi',NULL,'r','scale','Yes','a. Amyloid PET: Was amyloid deposition appreciated by visual inspection?',NULL,0,NULL,1,NULL,'uds.noYesUnknown019',NULL,31,'4a. Amyloid PET: Was amyloid deposition appreciated by visual inspection?','2012-09-28 13:45:36');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldimagingdiag3.ftdamyrf','en','lava','crms-nacc',NULL,'udsftldimagingdiag3','ftdamyrf',NULL,'r','scale','Yes','a1. Amyloid PET: Right frontal lobe?',NULL,0,NULL,1,NULL,'uds.noYesUnknown019',NULL,32,'4a1. Amyloid PET: Right frontal lobe?','2012-09-28 13:45:36');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldimagingdiag3.ftdamylf','en','lava','crms-nacc',NULL,'udsftldimagingdiag3','ftdamylf',NULL,'r','scale','Yes','a2. Amyloid PET: Left frontal lobe?',NULL,0,NULL,1,NULL,'uds.noYesUnknown019',NULL,33,'4a2. Amyloid PET: Left frontal lobe?','2012-09-28 13:45:36');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldimagingdiag3.ftdamyrt','en','lava','crms-nacc',NULL,'udsftldimagingdiag3','ftdamyrt',NULL,'r','scale','Yes','a3. Amyloid PET: Right temporal lobe?',NULL,0,NULL,1,NULL,'uds.noYesUnknown019',NULL,34,'4a3. Amyloid PET: Right temporal lobe?','2012-09-28 13:45:36');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldimagingdiag3.ftdamylt','en','lava','crms-nacc',NULL,'udsftldimagingdiag3','ftdamylt',NULL,'r','scale','Yes','a4. Amyloid PET: Left temporal lobe?',NULL,0,NULL,1,NULL,'uds.noYesUnknown019',NULL,35,'4a4. Amyloid PET: Left temporal lobe?','2012-09-28 13:45:36');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldimagingdiag3.ftdamyrm','en','lava','crms-nacc',NULL,'udsftldimagingdiag3','ftdamyrm',NULL,'r','scale','Yes','a5. Amyloid PET: Right medial temporal lobe?',NULL,0,NULL,1,NULL,'uds.noYesUnknown019',NULL,36,'4a5. Amyloid PET: Right medial temporal lobe?','2012-09-28 13:45:36');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldimagingdiag3.ftdamylm','en','lava','crms-nacc',NULL,'udsftldimagingdiag3','ftdamylm',NULL,'r','scale','Yes','a6. Amyloid PET: Left medial temporal lobe?',NULL,0,NULL,1,NULL,'uds.noYesUnknown019',NULL,37,'4a6. Amyloid PET: Left medial temporal lobe?','2012-09-28 13:45:36');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldimagingdiag3.ftdamyrp','en','lava','crms-nacc',NULL,'udsftldimagingdiag3','ftdamyrp',NULL,'r','scale','Yes','a7. Amyloid PET: Right parietal lobe?',NULL,0,NULL,1,NULL,'uds.noYesUnknown019',NULL,38,'4a7. Amyloid PET: Right parietal lobe?','2012-09-28 13:45:36');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldimagingdiag3.ftdamylp','en','lava','crms-nacc',NULL,'udsftldimagingdiag3','ftdamylp',NULL,'r','scale','Yes','a8. Amyloid PET: Left parietal lobe?',NULL,0,NULL,1,NULL,'uds.noYesUnknown019',NULL,39,'4a8. Amyloid PET: Left parietal lobe?','2012-09-28 13:45:36');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldimagingdiag3.ftdamyrb','en','lava','crms-nacc',NULL,'udsftldimagingdiag3','ftdamyrb',NULL,'r','scale','Yes','a9. Amyloid PET: Right basal ganglia?',NULL,0,NULL,1,NULL,'uds.noYesUnknown019',NULL,40,'4a9. Amyloid PET: Right basal ganglia?','2012-09-28 13:45:36');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldimagingdiag3.ftdamylb','en','lava','crms-nacc',NULL,'udsftldimagingdiag3','ftdamylb',NULL,'r','scale','Yes','a10. Amyloid PET: Left basal ganglia?',NULL,0,NULL,1,NULL,'uds.noYesUnknown019',NULL,41,'4a10. Amyloid PET: Left basal ganglia?','2012-09-28 13:45:36');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldimagingdiag3.ftdamyoa','en','lava','crms-nacc',NULL,'udsftldimagingdiag3','ftdamyoa',NULL,'r','scale','Yes','a11. Amyloid PET: Other area of the brain (specify below)?',NULL,0,NULL,1,NULL,'uds.noYesUnknown019',NULL,42,'4a11. Amyloid PET: Other area of the brain (specify below)?','2012-09-28 13:45:36');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldimagingdiag3.ftdamyos','en','lava','crms-nacc',NULL,'udsftldimagingdiag3','ftdamyos',NULL,'r','string','Yes','a11a. Amyloid PET: Other area of the brain specification?',NULL,60,NULL,1,'onkeypress="UDS_onlyNaccCharactersAllowed(event)"',NULL,NULL,43,'4a11a. Amyloid PET: Other area of the brain specification?','2012-09-28 13:45:36');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldimagingdiag3.ftdcbfsp','en','lava','crms-nacc',NULL,'udsftldimagingdiag3','ftdcbfsp',NULL,'r','scale','Yes','5. Was CBF SPECT done?',NULL,0,NULL,0,NULL,'uds.noYes01',NULL,44,'5. Was CBF SPECT done?','2012-09-28 13:45:36');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldimagingdiag3.ftdcbfvi','en','lava','crms-nacc',NULL,'udsftldimagingdiag3','ftdcbfvi',NULL,'r','scale','Yes','a. CBF-SPECT: Were abnormalities appreciated by visual inspection?',NULL,0,NULL,1,NULL,'uds.noYesUnknown019',NULL,45,'5a. CBF-SPECT: Were abnormalities appreciated by visual inspection?','2012-09-28 13:45:36');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldimagingdiag3.ftdcbfrf','en','lava','crms-nacc',NULL,'udsftldimagingdiag3','ftdcbfrf',NULL,'r','scale','Yes','a1. CBF SPECT: Right frontal lobe?',NULL,0,NULL,1,NULL,'uds.noYesUnknown019',NULL,46,'5a1. CBF SPECT: Right frontal lobe?','2012-09-28 13:45:36');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldimagingdiag3.ftdcbflf','en','lava','crms-nacc',NULL,'udsftldimagingdiag3','ftdcbflf',NULL,'r','scale','Yes','a2. CBF SPECT: Left frontal lobe?',NULL,0,NULL,1,NULL,'uds.noYesUnknown019',NULL,47,'5a2. CBF SPECT: Left frontal lobe?','2012-09-28 13:45:36');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldimagingdiag3.ftdcbfrt','en','lava','crms-nacc',NULL,'udsftldimagingdiag3','ftdcbfrt',NULL,'r','scale','Yes','a3. CBF SPECT: Right temporal lobe?',NULL,0,NULL,1,NULL,'uds.noYesUnknown019',NULL,48,'5a3. CBF SPECT: Right temporal lobe?','2012-09-28 13:45:36');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldimagingdiag3.ftdcbflt','en','lava','crms-nacc',NULL,'udsftldimagingdiag3','ftdcbflt',NULL,'r','scale','Yes','a4. CBF SPECT: Left temporal lobe?',NULL,0,NULL,1,NULL,'uds.noYesUnknown019',NULL,49,'5a4. CBF SPECT: Left temporal lobe?','2012-09-28 13:45:36');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldimagingdiag3.ftdcbfrm','en','lava','crms-nacc',NULL,'udsftldimagingdiag3','ftdcbfrm',NULL,'r','scale','Yes','a5. CBF SPECT: Right medial temporal lobe?',NULL,0,NULL,1,NULL,'uds.noYesUnknown019',NULL,50,'5a5. CBF SPECT: Right medial temporal lobe?','2012-09-28 13:45:36');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldimagingdiag3.ftdcbflm','en','lava','crms-nacc',NULL,'udsftldimagingdiag3','ftdcbflm',NULL,'r','scale','Yes','a6. CBF SPECT: Left medial temporal lobe?',NULL,0,NULL,1,NULL,'uds.noYesUnknown019',NULL,51,'5a6. CBF SPECT: Left medial temporal lobe?','2012-09-28 13:45:36');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldimagingdiag3.ftdcbfrp','en','lava','crms-nacc',NULL,'udsftldimagingdiag3','ftdcbfrp',NULL,'r','scale','Yes','a7. CBF SPECT: Right parietal lobe?',NULL,0,NULL,1,NULL,'uds.noYesUnknown019',NULL,52,'5a7. CBF SPECT: Right parietal lobe?','2012-09-28 13:45:36');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldimagingdiag3.ftdcbflp','en','lava','crms-nacc',NULL,'udsftldimagingdiag3','ftdcbflp',NULL,'r','scale','Yes','a8. CBF SPECT: Left parietal lobe?',NULL,0,NULL,1,NULL,'uds.noYesUnknown019',NULL,53,'5a8. CBF SPECT: Left parietal lobe?','2012-09-28 13:45:36');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldimagingdiag3.ftdcbfrb','en','lava','crms-nacc',NULL,'udsftldimagingdiag3','ftdcbfrb',NULL,'r','scale','Yes','a9. CBF SPECT: Right basal ganglia?',NULL,0,NULL,1,NULL,'uds.noYesUnknown019',NULL,54,'5a9. CBF SPECT: Right basal ganglia?','2012-09-28 13:45:36');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldimagingdiag3.ftdcbflb','en','lava','crms-nacc',NULL,'udsftldimagingdiag3','ftdcbflb',NULL,'r','scale','Yes','a10. CBF SPECT: Left basal ganglia?',NULL,0,NULL,1,NULL,'uds.noYesUnknown019',NULL,55,'5a10. CBF SPECT: Left basal ganglia?','2012-09-28 13:45:36');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldimagingdiag3.ftdcbfoa','en','lava','crms-nacc',NULL,'udsftldimagingdiag3','ftdcbfoa',NULL,'r','scale','Yes','a11. CBF SPECT: Other area of the brain (specify below)?',NULL,0,NULL,1,NULL,'uds.noYesUnknown019',NULL,56,'5a11. CBF SPECT: Other area of the brain (specify below)?','2012-09-28 13:45:36');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldimagingdiag3.ftdcbfos','en','lava','crms-nacc',NULL,'udsftldimagingdiag3','ftdcbfos',NULL,'r','string','Yes','a11a. CBF SPECT: Other area of brain specification',NULL,60,NULL,1,'onkeypress="UDS_onlyNaccCharactersAllowed(event)"',NULL,NULL,57,'5a11a. CBF SPECT: Other area of brain specification','2012-09-28 13:45:36');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldimagingdiag3.ftdothi','en','lava','crms-nacc',NULL,'udsftldimagingdiag3','ftdothi',NULL,'r','scale','Yes','6. Was other imaging done?',NULL,0,NULL,0,NULL,'uds.noYes01',NULL,58,'6. Was other imaging done?','2012-09-28 13:45:36');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsftldimagingdiag3.ftdothis','en','lava','crms-nacc',NULL,'udsftldimagingdiag3','ftdothis',NULL,'r','string','Yes','a. Other imaging, specification',NULL,60,NULL,1,'onkeypress="UDS_onlyNaccCharactersAllowed(event)"',NULL,NULL,59,'6a. Other imaging, specification','2012-09-28 13:45:36');





DELETE FROM versionhistory WHERE module='lava-crms-nacc-model' AND version='3.6.0';
INSERT INTO versionhistory(module,version,versiondate,major,minor,fix,updaterequired)
VALUES ('lava-crms-nacc-model','3.6.0','2015-03-01',3,6,0,0);

DELETE FROM versionhistory WHERE module='lava-crms-nacc-data' AND version='3.6.0';
INSERT INTO versionhistory(module,version,versiondate,major,minor,fix,updaterequired)
VALUES ('lava-crms-nacc-data','3.6.0','2015-03-01',3,6,0,0);

