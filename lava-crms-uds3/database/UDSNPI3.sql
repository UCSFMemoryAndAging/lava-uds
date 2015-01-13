delete from hibernateproperty where entity="udsnpi3";
delete from viewproperty where entity="udsnpi3";
delete from instrument where InstrName="UDS NPI 3";
drop table if exists udsnpi3;



-- Initialize table
CREATE TABLE udsnpi3 (
  InstrID int(10) NOT NULL,
    `NPIQINF` UNMAPPED TYPE
    `NPIQINFX` varchar(60) DEFAULT NULL,
    `DEL` UNMAPPED TYPE
    `DELSEV` UNMAPPED TYPE
    `HALL` UNMAPPED TYPE
    `HALLSEV` UNMAPPED TYPE
    `AGIT` UNMAPPED TYPE
    `AGITSEV` UNMAPPED TYPE
    `DEPD` UNMAPPED TYPE
    `DEPDSEV` UNMAPPED TYPE
    `ANX` UNMAPPED TYPE
    `ANXSEV` UNMAPPED TYPE
    `ELAT` UNMAPPED TYPE
    `ELATSEV` UNMAPPED TYPE
    `APA` UNMAPPED TYPE
    `APASEV` UNMAPPED TYPE
    `DISN` UNMAPPED TYPE
    `DISNSEV` UNMAPPED TYPE
    `IRR` UNMAPPED TYPE
    `IRRSEV` UNMAPPED TYPE
    `MOT` UNMAPPED TYPE
    `MOTSEV` UNMAPPED TYPE
    `NITE` UNMAPPED TYPE
    `NITESEV` UNMAPPED TYPE
    `APP` UNMAPPED TYPE
    `APPSEV` UNMAPPED TYPE

  PRIMARY KEY (`InstrID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
-- Add to instrument table
insert into instrument 
set InstrName="UDS NPI 3", TableName="udsnpi3", 
  FormName="LavaWebOnly", HasVersion=0;
-- Add columns to viewproperty table
insert into viewproperty 
set messageCode='*.udsnpi3.npiqinf', locale='en', instance='lava', 
  scope='ucdlava', entity='udsnpi3', property='npiqinf',
  required='No', proporder='1', attributes='', quickHelp='', 
  label="NPI CO-PARTICIPANT:", context="r",
  list="uds3.udsnpi3.NPIQINF", style="scale";

insert into viewproperty 
set messageCode='*.udsnpi3.npiqinfx', locale='en', instance='lava', 
  scope='ucdlava', entity='udsnpi3', property='npiqinfx',
  required='No', proporder='2', attributes='', quickHelp='', 
  label="If NPI informant other - specify:", context="r", maxLength="6", style="string";

insert into viewproperty 
set messageCode='*.udsnpi3.del', locale='en', instance='lava', 
  scope='ucdlava', entity='udsnpi3', property='del',
  required='No', proporder='3', attributes='', quickHelp='', 
  label="DELUSIONS: Does the patient believe that others are stealing from him or her, or planning to harm him or her in some way?:", context="r",
  list="list.uds3.common.noyesunknown", style="scale";

insert into viewproperty 
set messageCode='*.udsnpi3.delsev', locale='en', instance='lava', 
  scope='ucdlava', entity='udsnpi3', property='delsev',
  required='No', proporder='4', attributes='', quickHelp='', 
  label="If DELUSIONS, rate severity:", context="r",
  list="uds3.udsnpi3.MMSU", style="scale";

insert into viewproperty 
set messageCode='*.udsnpi3.hall', locale='en', instance='lava', 
  scope='ucdlava', entity='udsnpi3', property='hall',
  required='No', proporder='5', attributes='', quickHelp='', 
  label="HALLUCINATIONS: Does the patient act as if he or she hears voices? Does he or she talk to people who are not there?:", context="r",
  list="list.uds3.common.noyesunknown", style="scale";

insert into viewproperty 
set messageCode='*.udsnpi3.hallsev', locale='en', instance='lava', 
  scope='ucdlava', entity='udsnpi3', property='hallsev',
  required='No', proporder='6', attributes='', quickHelp='', 
  label="If HALLUCINATIONS, rate severity:", context="r",
  list="uds3.udsnpi3.MMSU", style="scale";

insert into viewproperty 
set messageCode='*.udsnpi3.agit', locale='en', instance='lava', 
  scope='ucdlava', entity='udsnpi3', property='agit',
  required='No', proporder='7', attributes='', quickHelp='', 
  label="AGITATION OR AGGRESSION: Is the patient stubborn and resistive to help from others?:", context="r",
  list="list.uds3.common.noyesunknown", style="scale";

insert into viewproperty 
set messageCode='*.udsnpi3.agitsev', locale='en', instance='lava', 
  scope='ucdlava', entity='udsnpi3', property='agitsev',
  required='No', proporder='8', attributes='', quickHelp='', 
  label="If AGITATION OR AGGRESSION, rate severity:", context="r",
  list="uds3.udsnpi3.MMSU", style="scale";

insert into viewproperty 
set messageCode='*.udsnpi3.depd', locale='en', instance='lava', 
  scope='ucdlava', entity='udsnpi3', property='depd',
  required='No', proporder='9', attributes='', quickHelp='', 
  label="DEPRESSION OR DYSPHORIA: Does the patient act as if he or she is sad or in low spirits? Does he or she cry?:", context="r",
  list="list.uds3.common.noyesunknown", style="scale";

insert into viewproperty 
set messageCode='*.udsnpi3.depdsev', locale='en', instance='lava', 
  scope='ucdlava', entity='udsnpi3', property='depdsev',
  required='No', proporder='10', attributes='', quickHelp='', 
  label="If DEPRESSION OR DYSPHORIA, rate severity:", context="r",
  list="uds3.udsnpi3.MMSU", style="scale";

insert into viewproperty 
set messageCode='*.udsnpi3.anx', locale='en', instance='lava', 
  scope='ucdlava', entity='udsnpi3', property='anx',
  required='No', proporder='11', attributes='', quickHelp='', 
  label="ANXIETY: Does the patient become upset when separated from you? Does he or she have any other signs of nervousness, such as shortness of breath, sighing, being unable to relax, or feeling excessively tense?:", context="r",
  list="list.uds3.common.noyesunknown", style="scale";

insert into viewproperty 
set messageCode='*.udsnpi3.anxsev', locale='en', instance='lava', 
  scope='ucdlava', entity='udsnpi3', property='anxsev',
  required='No', proporder='12', attributes='', quickHelp='', 
  label="If ANXIETY, rate severity:", context="r",
  list="uds3.udsnpi3.MMSU", style="scale";

insert into viewproperty 
set messageCode='*.udsnpi3.elat', locale='en', instance='lava', 
  scope='ucdlava', entity='udsnpi3', property='elat',
  required='No', proporder='13', attributes='', quickHelp='', 
  label="ELATION OR EUPHORIA: Does the patient appear to feel too good or act excessively happy?:", context="r",
  list="list.uds3.common.noyesunknown", style="scale";

insert into viewproperty 
set messageCode='*.udsnpi3.elatsev', locale='en', instance='lava', 
  scope='ucdlava', entity='udsnpi3', property='elatsev',
  required='No', proporder='14', attributes='', quickHelp='', 
  label="If ELATION OR EUPHORIA, rate severity:", context="r",
  list="uds3.udsnpi3.MMSU", style="scale";

insert into viewproperty 
set messageCode='*.udsnpi3.apa', locale='en', instance='lava', 
  scope='ucdlava', entity='udsnpi3', property='apa',
  required='No', proporder='15', attributes='', quickHelp='', 
  label="APATHY OR INDIFFERENCE: Does the patient seem less interested in his or her usual activities and in the activities and plans of others?:", context="r",
  list="list.uds3.common.noyesunknown", style="scale";

insert into viewproperty 
set messageCode='*.udsnpi3.apasev', locale='en', instance='lava', 
  scope='ucdlava', entity='udsnpi3', property='apasev',
  required='No', proporder='16', attributes='', quickHelp='', 
  label="If APATHY OR INDIFFERENCE, rate severity:", context="r",
  list="uds3.udsnpi3.MMSU", style="scale";

insert into viewproperty 
set messageCode='*.udsnpi3.disn', locale='en', instance='lava', 
  scope='ucdlava', entity='udsnpi3', property='disn',
  required='No', proporder='17', attributes='', quickHelp='', 
  label="DISINHIBITION: Does the patient seem to act impulsively? For example, does the patient talk to strangers as if he or she knows them, or does the patient say things that may hurt people’s feelings?:", context="r",
  list="list.uds3.common.noyesunknown", style="scale";

insert into viewproperty 
set messageCode='*.udsnpi3.disnsev', locale='en', instance='lava', 
  scope='ucdlava', entity='udsnpi3', property='disnsev',
  required='No', proporder='18', attributes='', quickHelp='', 
  label="If DISINHIBITION, rate severity::", context="r",
  list="uds3.udsnpi3.MMSU", style="scale";

insert into viewproperty 
set messageCode='*.udsnpi3.irr', locale='en', instance='lava', 
  scope='ucdlava', entity='udsnpi3', property='irr',
  required='No', proporder='19', attributes='', quickHelp='', 
  label="IRRITABILITY OR LABILITY: Is the patient impatient or cranky? Does he or she have difficulty coping with delays or waiting for planned activities?:", context="r",
  list="list.uds3.common.noyesunknown", style="scale";

insert into viewproperty 
set messageCode='*.udsnpi3.irrsev', locale='en', instance='lava', 
  scope='ucdlava', entity='udsnpi3', property='irrsev',
  required='No', proporder='20', attributes='', quickHelp='', 
  label="If IRRITABILITY OR LABILITY, rate severity:", context="r",
  list="uds3.udsnpi3.MMSU", style="scale";

insert into viewproperty 
set messageCode='*.udsnpi3.mot', locale='en', instance='lava', 
  scope='ucdlava', entity='udsnpi3', property='mot',
  required='No', proporder='21', attributes='', quickHelp='', 
  label="MOTOR DISTURBANCE: Does the patient engage in repetitive activities, such as pacing around the house, handling buttons, wrapping string, or doing other things repeatedly?:", context="r",
  list="list.uds3.common.noyesunknown", style="scale";

insert into viewproperty 
set messageCode='*.udsnpi3.motsev', locale='en', instance='lava', 
  scope='ucdlava', entity='udsnpi3', property='motsev',
  required='No', proporder='22', attributes='', quickHelp='', 
  label="If MOTOR DISTURBANCE, rate severity:", context="r",
  list="uds3.udsnpi3.MMSU", style="scale";

insert into viewproperty 
set messageCode='*.udsnpi3.nite', locale='en', instance='lava', 
  scope='ucdlava', entity='udsnpi3', property='nite',
  required='No', proporder='23', attributes='', quickHelp='', 
  label="NIGHTTIME BEHAVIORS: Does the patient awaken you during the night, rise too early in the morning, or take excessive naps during the day?:", context="r",
  list="list.uds3.common.noyesunknown", style="scale";

insert into viewproperty 
set messageCode='*.udsnpi3.nitesev', locale='en', instance='lava', 
  scope='ucdlava', entity='udsnpi3', property='nitesev',
  required='No', proporder='24', attributes='', quickHelp='', 
  label="If NIGHTTIME BEHAVIORS, rate severity::", context="r",
  list="uds3.udsnpi3.MMSU", style="scale";

insert into viewproperty 
set messageCode='*.udsnpi3.app', locale='en', instance='lava', 
  scope='ucdlava', entity='udsnpi3', property='app',
  required='No', proporder='25', attributes='', quickHelp='', 
  label="APPETITE AND EATING: Has the patient lost or gained weight, or had a change in the food he or she likes?:", context="r",
  list="list.uds3.common.noyesunknown", style="scale";

insert into viewproperty 
set messageCode='*.udsnpi3.appsev', locale='en', instance='lava', 
  scope='ucdlava', entity='udsnpi3', property='appsev',
  required='No', proporder='26', attributes='', quickHelp='', 
  label="If APPETITE AND EATING, rate severity::", context="r",
  list="uds3.udsnpi3.MMSU", style="scale";


