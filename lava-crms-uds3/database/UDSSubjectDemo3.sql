delete from hibernateproperty where entity="udssubjectdemo3";
delete from viewproperty where entity="udssubjectdemo3";
delete from instrument where InstrName="UDS Subject Demo 3";
drop table if exists udssubjectdemo3;



-- Initialize table
CREATE TABLE udssubjectdemo3 (
  InstrID int(10) NOT NULL,
    `REASON` UNMAPPED TYPE
    `REFERSC` UNMAPPED TYPE
    `LEARNED` UNMAPPED TYPE
    `PRESTAT` UNMAPPED TYPE
    `PRESPART` UNMAPPED TYPE
    `SOURCENW` UNMAPPED TYPE
    `BIRTHMO` UNMAPPED TYPE
    `BIRTHYR` UNMAPPED TYPE
    `SEX` UNMAPPED TYPE
    `HISPANIC` UNMAPPED TYPE
    `HISPOR` UNMAPPED TYPE
    `HISPORX` varchar(60) DEFAULT NULL,
    `RACE` UNMAPPED TYPE
    `RACEX` varchar(60) DEFAULT NULL,
    `RACESEC` UNMAPPED TYPE
    `RACESECX` varchar(60) DEFAULT NULL,
    `RACETER` UNMAPPED TYPE
    `RACETERX` varchar(60) DEFAULT NULL,
    `PRIMLANG` UNMAPPED TYPE
    `PRIMLANX` varchar(60) DEFAULT NULL,
    `EDUC` UNMAPPED TYPE
    `MARISTAT` UNMAPPED TYPE
    `LIVSITUA` UNMAPPED TYPE
    `INDEPEND` UNMAPPED TYPE
    `RESIDENC` UNMAPPED TYPE
    `ZIP` varchar(3) DEFAULT NULL,
    `HANDED` UNMAPPED TYPE

  PRIMARY KEY (`InstrID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
-- Add to instrument table
insert into instrument 
set InstrName="UDS Subject Demo 3", TableName="udssubjectdemo3", 
  FormName="LavaWebOnly", HasVersion=0;
-- Add columns to viewproperty table
insert into viewproperty 
set messageCode='*.udssubjectdemo3.reason', locale='en', instance='lava', 
  scope='ucdlava', entity='udssubjectdemo3', property='reason',
  required='No', proporder='1', attributes='', quickHelp='', 
  label="Primary reason for coming to ADC:", context="r",
  list="uds3.udssubjectdemo3.REASON", style="scale";

insert into viewproperty 
set messageCode='*.udssubjectdemo3.refersc', locale='en', instance='lava', 
  scope='ucdlava', entity='udssubjectdemo3', property='refersc',
  required='No', proporder='2', attributes='', quickHelp='', 
  label="Principal referral source::", context="r",
  list="uds3.udssubjectdemo3.REFERSC", style="scale";

insert into viewproperty 
set messageCode='*.udssubjectdemo3.learned', locale='en', instance='lava', 
  scope='ucdlava', entity='udssubjectdemo3', property='learned',
  required='No', proporder='3', attributes='', quickHelp='', 
  label="If the referral source was self-referral or a non-professional contact, how did the referral source learn of the ADC?:", context="r",
  list="uds3.udssubjectdemo3.LEARNED", style="scale";

insert into viewproperty 
set messageCode='*.udssubjectdemo3.prestat', locale='en', instance='lava', 
  scope='ucdlava', entity='udssubjectdemo3', property='prestat',
  required='No', proporder='4', attributes='', quickHelp='', 
  label="Presumed disease status at enrollment:", context="r",
  list="uds3.udssubjectdemo3.PRESTAT", style="scale";

insert into viewproperty 
set messageCode='*.udssubjectdemo3.prespart', locale='en', instance='lava', 
  scope='ucdlava', entity='udssubjectdemo3', property='prespart',
  required='No', proporder='5', attributes='', quickHelp='', 
  label="Presumed participation:", context="r",
  list="uds3.udssubjectdemo3.PRESPART", style="scale";

insert into viewproperty 
set messageCode='*.udssubjectdemo3.sourcenw', locale='en', instance='lava', 
  scope='ucdlava', entity='udssubjectdemo3', property='sourcenw',
  required='No', proporder='6', attributes='', quickHelp='', 
  label="ADC enrollment type:", context="r",
  list="uds3.udssubjectdemo3.SOURCENW", style="scale";

insert into viewproperty 
set messageCode='*.udssubjectdemo3.birthmo', locale='en', instance='lava', 
  scope='ucdlava', entity='udssubjectdemo3', property='birthmo',
  required='No', proporder='7', attributes='', quickHelp='', 
  label="Subject’s month of birth:", context="r",
  list="list.uds3.common.month", style="scale";

insert into viewproperty 
set messageCode='*.udssubjectdemo3.birthyr', locale='en', instance='lava', 
  scope='ucdlava', entity='udssubjectdemo3', property='birthyr',
  required='No', proporder='8', attributes='', quickHelp='', 
  label="Subject’s year of birth:", context="r",
  list="list.uds3.common.year", style="scale";

insert into viewproperty 
set messageCode='*.udssubjectdemo3.sex', locale='en', instance='lava', 
  scope='ucdlava', entity='udssubjectdemo3', property='sex',
  required='No', proporder='9', attributes='', quickHelp='', 
  label="Subject’s sex:", context="r",
  list="list.uds3.common.gender", style="scale";

insert into viewproperty 
set messageCode='*.udssubjectdemo3.hispanic', locale='en', instance='lava', 
  scope='ucdlava', entity='udssubjectdemo3', property='hispanic',
  required='No', proporder='10', attributes='', quickHelp='', 
  label="Does the subject report being of Hispanic/Latino ethnicity (i.e., having origins from a mainly Spanish-speaking Latin American country), regardless of race?:", context="r",
  list="list.uds3.common.noyesunknown", style="scale";

insert into viewproperty 
set messageCode='*.udssubjectdemo3.hispor', locale='en', instance='lava', 
  scope='ucdlava', entity='udssubjectdemo3', property='hispor',
  required='No', proporder='11', attributes='', quickHelp='', 
  label="If yes, what are the subject’s reported origins?:", context="r",
  list="uds3.udssubjectdemo3.HISPOR", style="scale";

insert into viewproperty 
set messageCode='*.udssubjectdemo3.hisporx', locale='en', instance='lava', 
  scope='ucdlava', entity='udssubjectdemo3', property='hisporx',
  required='No', proporder='12', attributes='', quickHelp='', 
  label="Other (specify)::", context="r", maxLength="6", style="string";

insert into viewproperty 
set messageCode='*.udssubjectdemo3.race', locale='en', instance='lava', 
  scope='ucdlava', entity='udssubjectdemo3', property='race',
  required='No', proporder='13', attributes='', quickHelp='', 
  label="What does the subject report as his or her race?:", context="r",
  list="uds3.udssubjectdemo3.RACE", style="scale";

insert into viewproperty 
set messageCode='*.udssubjectdemo3.racex', locale='en', instance='lava', 
  scope='ucdlava', entity='udssubjectdemo3', property='racex',
  required='No', proporder='14', attributes='', quickHelp='', 
  label="Other (specify)::", context="r", maxLength="6", style="string";

insert into viewproperty 
set messageCode='*.udssubjectdemo3.racesec', locale='en', instance='lava', 
  scope='ucdlava', entity='udssubjectdemo3', property='racesec',
  required='No', proporder='15', attributes='', quickHelp='', 
  label="What additional race does subject report?:", context="r",
  list="uds3.udssubjectdemo3.RACESEC", style="scale";

insert into viewproperty 
set messageCode='*.udssubjectdemo3.racesecx', locale='en', instance='lava', 
  scope='ucdlava', entity='udssubjectdemo3', property='racesecx',
  required='No', proporder='16', attributes='', quickHelp='', 
  label="Other (specify)::", context="r", maxLength="6", style="string";

insert into viewproperty 
set messageCode='*.udssubjectdemo3.raceter', locale='en', instance='lava', 
  scope='ucdlava', entity='udssubjectdemo3', property='raceter',
  required='No', proporder='17', attributes='', quickHelp='', 
  label="What additional race, beyond those reported in Questions 9 and 10, does subject report?:", context="r",
  list="uds3.udssubjectdemo3.RACESEC", style="scale";

insert into viewproperty 
set messageCode='*.udssubjectdemo3.raceterx', locale='en', instance='lava', 
  scope='ucdlava', entity='udssubjectdemo3', property='raceterx',
  required='No', proporder='18', attributes='', quickHelp='', 
  label="Other (specify)::", context="r", maxLength="6", style="string";

insert into viewproperty 
set messageCode='*.udssubjectdemo3.primlang', locale='en', instance='lava', 
  scope='ucdlava', entity='udssubjectdemo3', property='primlang',
  required='No', proporder='19', attributes='', quickHelp='', 
  label="Subject’s primary language::", context="r",
  list="uds3.udssubjectdemo3.PRIMLANG", style="scale";

insert into viewproperty 
set messageCode='*.udssubjectdemo3.primlanx', locale='en', instance='lava', 
  scope='ucdlava', entity='udssubjectdemo3', property='primlanx',
  required='No', proporder='20', attributes='', quickHelp='', 
  label="Other (specify)::", context="r", maxLength="6", style="string";

insert into viewproperty 
set messageCode='*.udssubjectdemo3.educ', locale='en', instance='lava', 
  scope='ucdlava', entity='udssubjectdemo3', property='educ',
  required='No', proporder='21', attributes='', quickHelp='', 
  label="Subject’s years of education, use the codes below to report the level achieved; if an attempted level is not completed, enter the number of years completed: 12 = high school or GED, 16 = bachelor’s degree, 18 = master’s degree, 20 = doctorate, 99 = unknown:", context="r",
  list="uds3.udssubjectdemo3.EDUC", style="scale";

insert into viewproperty 
set messageCode='*.udssubjectdemo3.maristat', locale='en', instance='lava', 
  scope='ucdlava', entity='udssubjectdemo3', property='maristat',
  required='No', proporder='22', attributes='', quickHelp='', 
  label="Subject’s current marital status::", context="r",
  list="uds3.udssubjectdemo3.MARISTAT", style="scale";

insert into viewproperty 
set messageCode='*.udssubjectdemo3.livsitua', locale='en', instance='lava', 
  scope='ucdlava', entity='udssubjectdemo3', property='livsitua',
  required='No', proporder='23', attributes='', quickHelp='', 
  label="What is the subject’s living situation?:", context="r",
  list="uds3.udssubjectdemo3.LIVSITUA", style="scale";

insert into viewproperty 
set messageCode='*.udssubjectdemo3.independ', locale='en', instance='lava', 
  scope='ucdlava', entity='udssubjectdemo3', property='independ',
  required='No', proporder='24', attributes='', quickHelp='', 
  label="What is the subject’s level of independence?:", context="r",
  list="uds3.udssubjectdemo3.INDEPEND", style="scale";

insert into viewproperty 
set messageCode='*.udssubjectdemo3.residenc', locale='en', instance='lava', 
  scope='ucdlava', entity='udssubjectdemo3', property='residenc',
  required='No', proporder='25', attributes='', quickHelp='', 
  label="What is the subject’s primary type of residence?:", context="r",
  list="uds3.udssubjectdemo3.RESIDENC", style="scale";

insert into viewproperty 
set messageCode='*.udssubjectdemo3.zip', locale='en', instance='lava', 
  scope='ucdlava', entity='udssubjectdemo3', property='zip',
  required='No', proporder='26', attributes='', quickHelp='', 
  label="ZIP Code (first three digits) of subject’s primary residence::", context="r", maxLength="6", style="string";

insert into viewproperty 
set messageCode='*.udssubjectdemo3.handed', locale='en', instance='lava', 
  scope='ucdlava', entity='udssubjectdemo3', property='handed',
  required='No', proporder='27', attributes='', quickHelp='', 
  label="Is the subject left- or right-handed (for example, which hand would s/ he normally use to write or throw a ball)?:", context="r",
  list="uds3.udssubjectdemo3.HANDED", style="scale";


