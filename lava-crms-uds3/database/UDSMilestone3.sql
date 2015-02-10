delete instrumentnotes 
from instrumenttracking join instrumentnotes using (InstrID) 
where InstrType="UDS Milestone 3";

delete instrumentsummary 
from instrumenttracking join instrumentsummary using (InstrID) 
where InstrType="UDS Milestone 3";

delete udsmilestone3 
from instrumenttracking join udsmilestone3 using (InstrID) 
where InstrType="UDS Milestone 3";

delete from instrumenttracking 
where InstrType="UDS Milestone 3";

delete from hibernateproperty where entity="udsmilestone3";
delete from viewproperty where entity="udsmilestone3";
delete from instrument where InstrName="UDS Milestone 3";
drop table if exists udsmilestone3;



-- Initialize table
CREATE TABLE udsmilestone3 (
  InstrID int(10) NOT NULL,
    `CHANGEMO` smallint(5) DEFAULT NULL,
    `CHANGEDY` smallint(5) DEFAULT NULL,
    `CHANGEYR` smallint(8) DEFAULT NULL,
    `PROTOCOL` smallint(5) DEFAULT NULL,
    `ACONSENT` smallint(5) DEFAULT NULL,
    `RECOGIM` smallint(5) DEFAULT NULL,
    `REPHYILL` smallint(5) DEFAULT NULL,
    `REREFUSE` smallint(5) DEFAULT NULL,
    `RENAVAIL` smallint(5) DEFAULT NULL,
    `RENURSE` smallint(5) DEFAULT NULL,
    `NURSEMO` smallint(5) DEFAULT NULL,
    `NURSEDY` smallint(5) DEFAULT NULL,
    `NURSEYR` smallint(8) DEFAULT NULL,
    `REJOIN` smallint(5) DEFAULT NULL,
    `FTLDDISC` smallint(5) DEFAULT NULL,
    `FTLDREAS` smallint(5) DEFAULT NULL,
    `FTLDREAX` varchar(60) DEFAULT NULL,
    `DECEASED` smallint(5) DEFAULT NULL,
    `DISCONT` smallint(5) DEFAULT NULL,
    `DEATHMO` smallint(5) DEFAULT NULL,
    `DEATHDY` smallint(5) DEFAULT NULL,
    `DEATHYR` smallint(8) DEFAULT NULL,
    `AUTOPSY` smallint(5) DEFAULT NULL,
    `DISCMO` smallint(5) DEFAULT NULL,
    `DISCDY` smallint(5) DEFAULT NULL,
    `DISCR` smallint(8) DEFAULT NULL,
    `DROPREAS` smallint(5) DEFAULT NULL,

  PRIMARY KEY (`InstrID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
-- Add to instrument table
insert into instrument 
set InstrName="UDS Milestone 3", TableName="udsmilestone3", 
  FormName="LavaWebOnly", HasVersion=0;
-- Add columns to viewproperty table
insert into viewproperty 
set messageCode='*.udsmilestone3.changemo', locale='en', instance='lava', 
  scope='ucdlava', entity='udsmilestone3', property='changemo',
  required='No', proporder='1', attributes='', quickHelp='', 
  label="Date of status change, month:", context="r",
  list="uds3.common.month", style="scale";

insert into viewproperty 
set messageCode='*.udsmilestone3.changedy', locale='en', instance='lava', 
  scope='ucdlava', entity='udsmilestone3', property='changedy',
  required='No', proporder='2', attributes='', quickHelp='', 
  label="Date of status change, day:", context="r",
  list="uds3.common.day", style="scale";

insert into viewproperty 
set messageCode='*.udsmilestone3.changeyr', locale='en', instance='lava', 
  scope='ucdlava', entity='udsmilestone3', property='changeyr',
  required='No', proporder='3', attributes='', quickHelp='', 
  label="Date of status change, year:", context="r", style="numeric";

insert into viewproperty 
set messageCode='*.udsmilestone3.protocol', locale='en', instance='lava', 
  scope='ucdlava', entity='udsmilestone3', property='protocol',
  required='No', proporder='4', attributes='', quickHelp='', 
  label="UDS data collection status changed - subject's new status is:", context="r",
  list="uds3.udsmilestone3.PROTOCOL", style="scale";

insert into viewproperty 
set messageCode='*.udsmilestone3.aconsent', locale='en', instance='lava', 
  scope='ucdlava', entity='udsmilestone3', property='aconsent',
  required='No', proporder='5', attributes='', quickHelp='', 
  label="Autopsy consent on file?:", context="r",
  list="uds3.common.noyes01", style="scale";

insert into viewproperty 
set messageCode='*.udsmilestone3.recogim', locale='en', instance='lava', 
  scope='ucdlava', entity='udsmilestone3', property='recogim',
  required='No', proporder='6', attributes='', quickHelp='', 
  label="Subject is too cognitively impaired:", context="r",
  list="uds3.udsmilestone3.checkbox", style="scale";

insert into viewproperty 
set messageCode='*.udsmilestone3.rephyill', locale='en', instance='lava', 
  scope='ucdlava', entity='udsmilestone3', property='rephyill',
  required='No', proporder='7', attributes='', quickHelp='', 
  label="Subject is too ill or physically impaired:", context="r",
  list="uds3.udsmilestone3.checkbox", style="scale";

insert into viewproperty 
set messageCode='*.udsmilestone3.rerefuse', locale='en', instance='lava', 
  scope='ucdlava', entity='udsmilestone3', property='rerefuse',
  required='No', proporder='8', attributes='', quickHelp='', 
  label="Subject refuses neuropsychological testing or clinical exam:", context="r",
  list="uds3.udsmilestone3.checkbox", style="scale";

insert into viewproperty 
set messageCode='*.udsmilestone3.renavail', locale='en', instance='lava', 
  scope='ucdlava', entity='udsmilestone3', property='renavail',
  required='No', proporder='9', attributes='', quickHelp='', 
  label="Subject or co-participant unreachable, not available, or moved away:", context="r",
  list="uds3.udsmilestone3.checkbox", style="scale";

insert into viewproperty 
set messageCode='*.udsmilestone3.renurse', locale='en', instance='lava', 
  scope='ucdlava', entity='udsmilestone3', property='renurse',
  required='No', proporder='10', attributes='', quickHelp='', 
  label="Subject has permanently entered nursing home:", context="r",
  list="uds3.udsmilestone3.checkbox", style="scale";

insert into viewproperty 
set messageCode='*.udsmilestone3.nursemo', locale='en', instance='lava', 
  scope='ucdlava', entity='udsmilestone3', property='nursemo',
  required='No', proporder='11', attributes='', quickHelp='', 
  label="Date permanently moved to nursing home, month:", context="r",
  list="uds3.common.month", style="scale";

insert into viewproperty 
set messageCode='*.udsmilestone3.nursedy', locale='en', instance='lava', 
  scope='ucdlava', entity='udsmilestone3', property='nursedy',
  required='No', proporder='12', attributes='', quickHelp='', 
  label="Date permanently moved to nursing home, day:", context="r",
  list="uds3.common.day", style="scale";

insert into viewproperty 
set messageCode='*.udsmilestone3.nurseyr', locale='en', instance='lava', 
  scope='ucdlava', entity='udsmilestone3', property='nurseyr',
  required='No', proporder='13', attributes='', quickHelp='', 
  label="Date permanently moved to nursing home, year:", context="r", style="numeric";

insert into viewproperty 
set messageCode='*.udsmilestone3.rejoin', locale='en', instance='lava', 
  scope='ucdlava', entity='udsmilestone3', property='rejoin',
  required='No', proporder='14', attributes='', quickHelp='', 
  label="Subject is rejoining ADC:", context="r",
  list="uds3.udsmilestone3.checkbox", style="scale";

insert into viewproperty 
set messageCode='*.udsmilestone3.ftlddisc', locale='en', instance='lava', 
  scope='ucdlava', entity='udsmilestone3', property='ftlddisc',
  required='No', proporder='15', attributes='', quickHelp='', 
  label="Subject will no longer receive FTLD Module follow-up, but annual in-person UDS visits will continue:", context="r",
  list="uds3.udsmilestone3.checkbox", style="scale";

insert into viewproperty 
set messageCode='*.udsmilestone3.ftldreas', locale='en', instance='lava', 
  scope='ucdlava', entity='udsmilestone3', property='ftldreas',
  required='No', proporder='16', attributes='', quickHelp='', 
  label="FTLD discontinued reason:", context="r",
  list="uds3.udsmilestone3.FTLDREAS", style="scale";

insert into viewproperty 
set messageCode='*.udsmilestone3.ftldreax', locale='en', instance='lava', 
  scope='ucdlava', entity='udsmilestone3', property='ftldreax',
  required='No', proporder='17', attributes='', quickHelp='', 
  label="Other, specify:", context="r", maxLength="6", style="string";

insert into viewproperty 
set messageCode='*.udsmilestone3.deceased', locale='en', instance='lava', 
  scope='ucdlava', entity='udsmilestone3', property='deceased',
  required='No', proporder='18', attributes='', quickHelp='', 
  label="Subject has died:", context="r",
  list="uds3.udsmilestone3.checkbox", style="scale";

insert into viewproperty 
set messageCode='*.udsmilestone3.discont', locale='en', instance='lava', 
  scope='ucdlava', entity='udsmilestone3', property='discont',
  required='No', proporder='19', attributes='', quickHelp='', 
  label="Subject has been dropped from ADC:", context="r",
  list="uds3.udsmilestone3.checkbox", style="scale";

insert into viewproperty 
set messageCode='*.udsmilestone3.deathmo', locale='en', instance='lava', 
  scope='ucdlava', entity='udsmilestone3', property='deathmo',
  required='No', proporder='20', attributes='', quickHelp='', 
  label="Date of death, month:", context="r",
  list="uds3.common.month", style="scale";

insert into viewproperty 
set messageCode='*.udsmilestone3.deathdy', locale='en', instance='lava', 
  scope='ucdlava', entity='udsmilestone3', property='deathdy',
  required='No', proporder='21', attributes='', quickHelp='', 
  label="Date of death, day:", context="r",
  list="uds3.common.day", style="scale";

insert into viewproperty 
set messageCode='*.udsmilestone3.deathyr', locale='en', instance='lava', 
  scope='ucdlava', entity='udsmilestone3', property='deathyr',
  required='No', proporder='22', attributes='', quickHelp='', 
  label="Date of death, year:", context="r", style="numeric";

insert into viewproperty 
set messageCode='*.udsmilestone3.autopsy', locale='en', instance='lava', 
  scope='ucdlava', entity='udsmilestone3', property='autopsy',
  required='No', proporder='23', attributes='', quickHelp='', 
  label="ADC autopsy:", context="r",
  list="uds3.udsmilestone3.AUTOPSY", style="scale";

insert into viewproperty 
set messageCode='*.udsmilestone3.discmo', locale='en', instance='lava', 
  scope='ucdlava', entity='udsmilestone3', property='discmo',
  required='No', proporder='24', attributes='', quickHelp='', 
  label="Date dropped from ADC, month:", context="r",
  list="uds3.common.month", style="scale";

insert into viewproperty 
set messageCode='*.udsmilestone3.discdy', locale='en', instance='lava', 
  scope='ucdlava', entity='udsmilestone3', property='discdy',
  required='No', proporder='25', attributes='', quickHelp='', 
  label="Date dropped from ADC, day:", context="r",
  list="uds3.common.day", style="scale";

insert into viewproperty 
set messageCode='*.udsmilestone3.discr', locale='en', instance='lava', 
  scope='ucdlava', entity='udsmilestone3', property='discr',
  required='No', proporder='26', attributes='', quickHelp='', 
  label="Date dropped from ADC, year:", context="r", style="numeric";

insert into viewproperty 
set messageCode='*.udsmilestone3.dropreas', locale='en', instance='lava', 
  scope='ucdlava', entity='udsmilestone3', property='dropreas',
  required='No', proporder='27', attributes='', quickHelp='', 
  label="Primary reason subject discontinued ADC participation:", context="r",
  list="uds3.udsmilestone3.DROPREAS", style="scale";


