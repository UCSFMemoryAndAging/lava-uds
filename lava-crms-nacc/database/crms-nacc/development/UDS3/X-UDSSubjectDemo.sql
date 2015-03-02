ALTER TABLE udssubjectdemo
   ADD REFERSC SMALLINT AFTER REFER,
   ADD LEARNED SMALLINT AFTER REFERX,
   ADD SOURCENW SMALLINT AFTER SOURCE,
   ADD LIVSITUA SMALLINT AFTER LIVSIT;
   
DELETE FROM viewproperty WHERE entity="udssubjectdemo3";

insert into viewproperty 
set messageCode='*.udssubjectdemo3.reason', locale='en', instance='lava', 
  scope='crms-nacc', entity='udssubjectdemo3', property='reason',
  required='No', proporder='1', attributes='', quickHelp='', 
  label="1. Primary reason for coming to ADC", context="r",
  list="uds.subjectdemo3.REASON", style="scale";

insert into viewproperty 
set messageCode='*.udssubjectdemo3.referSc', locale='en', instance='lava', 
  scope='crms-nacc', entity='udssubjectdemo3', property='referSc',
  required='No', proporder='2', attributes='', quickHelp='', 
  label="2a. Principal referral source", context="r",
  list="uds.subjectdemo3.REFERSC", style="scale";

insert into viewproperty 
set messageCode='*.udssubjectdemo3.learned', locale='en', instance='lava', 
  scope='crms-nacc', entity='udssubjectdemo3', property='learned',
  required='No', proporder='3', attributes='', quickHelp='', 
  label="2b. If the referral source was self-referral or a non-professional contact, how did the referral source learn of the ADC?:", context="r",
  list="uds.subjectdemo3.LEARNED", style="scale";

insert into viewproperty 
set messageCode='*.udssubjectdemo3.preStat', locale='en', instance='lava', 
  scope='crms-nacc', entity='udssubjectdemo3', property='preStat',
  required='No', proporder='4', attributes='', quickHelp='', 
  label="3. Presumed disease status at enrollment", context="r",
  list="uds.a1.presDis", style="scale";

-- fix typo in list  
update listvalues set valuedesc = 'Initial evaluation only' where valuekey = 1 and listid in 
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
  list="uds.subjectdemo3.SOURCENW", style="scale";
  
insert into viewproperty 
set messageCode='*.udssubjectdemo3.birthMo', locale='en', instance='lava', 
  scope='crms-nacc', entity='udssubjectdemo3', property='birthMo',
  required='No', proporder='7', attributes='', quickHelp='', 
  label="6. Subjects month and year of birth", context="r", size="3",
  list="uds.subjectdemo3.birthMo", style="scale";

insert into viewproperty 
set messageCode='followup.udssubjectdemo3.birthMo', locale='en', instance='lava', 
  scope='crms-nacc', prefix='followup', entity='udssubjectdemo3', property='birthMo',
  required='No', proporder='7', attributes='', quickHelp='', 
  label="1. Subjects month and year of birth", context="r", size="3",
  list="uds.subjectdemo3.birthMo", style="scale";

insert into viewproperty 
set messageCode='*.udssubjectdemo3.birthYr', locale='en', instance='lava', 
  scope='crms-nacc', entity='udssubjectdemo3', property='birthYr',
  required='No', proporder='8', attributes='', quickHelp='', 
  label="6. Subjects year of birth", context="r", size="5",
  list="uds.subjectdemo3.birthYr", style="scale";

insert into viewproperty 
set messageCode='followup.udssubjectdemo3.birthYr', locale='en', instance='lava', 
  scope='crms-nacc', prefix='followup', entity='udssubjectdemo3', property='birthYr',
  required='No', proporder='8', attributes='', quickHelp='', 
  label="1. Subjects year of birth", context="r", size="5",
  list="uds.subjectdemo3.birthYr", style="scale";
  
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
  list="uds.subjectdemo3.MARISTAT", style="scale";

insert into viewproperty 
set messageCode='followup.udssubjectdemo3.mariStat', locale='en', instance='lava', 
  scope='crms-nacc', prefix='followup', entity='udssubjectdemo3', property='mariStat',
  required='No', proporder='22', attributes='', quickHelp='', 
  label="2. Subjects current marital status", context="r",
  list="uds.subjectdemo3.MARISTAT", style="scale";

insert into viewproperty 
set messageCode='*.udssubjectdemo3.livSitua', locale='en', instance='lava', 
  scope='crms-nacc', entity='udssubjectdemo3', property='livSitua',
  required='No', proporder='23', attributes='', quickHelp='', 
  label="15. What is the subjects living situation?", context="r",
  list="uds.subjectdemo3.LIVSITUA", style="scale";

insert into viewproperty 
set messageCode='followup.udssubjectdemo3.livSitua', locale='en', instance='lava', 
  scope='crms-nacc', prefix='followup', entity='udssubjectdemo3', property='livSitua',
  required='No', proporder='23', attributes='', quickHelp='', 
  label="4. What is the subjects living situation?", context="r",
  list="uds.subjectdemo3.LIVSITUA", style="scale";
  
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
  list="uds.subjectdemo3.RESIDENC", style="scale";

insert into viewproperty 
set messageCode='followup.udssubjectdemo3.residenc', locale='en', instance='lava', 
  scope='crms-nacc', prefix='followup', entity='udssubjectdemo3', property='residenc',
  required='No', proporder='25', attributes='', quickHelp='', 
  label="6. What is the subjects primary type of residence?", context="r",
  list="uds.subjectdemo3.RESIDENC", style="scale";

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

