delete instrumentnotes 
from instrumenttracking join instrumentnotes using (InstrID) 
where InstrType="UDS Informant Demo 3";

delete instrumentsummary 
from instrumenttracking join instrumentsummary using (InstrID) 
where InstrType="UDS Informant Demo 3";

delete udsinformantdemo3 
from instrumenttracking join udsinformantdemo3 using (InstrID) 
where InstrType="UDS Informant Demo 3";

delete from instrumenttracking 
where InstrType="UDS Informant Demo 3";

delete from hibernateproperty where entity="udsinformantdemo3";
delete from viewproperty where entity="udsinformantdemo3";
delete from instrument where InstrName="UDS Informant Demo 3";
drop table if exists udsinformantdemo3;



-- Initialize table
CREATE TABLE udsinformantdemo3 (
  InstrID int(10) NOT NULL,
    `INBIRMO` smallint(5) DEFAULT NULL,
    `INBIRYR` smallint(5) DEFAULT NULL,
    `INSEX` smallint(5) DEFAULT NULL,
    `NEWINF` smallint(5) DEFAULT NULL,
    `INHISP` smallint(5) DEFAULT NULL,
    `INHISPOR` smallint(5) DEFAULT NULL,
    `INHISPOX` varchar(60) DEFAULT NULL,
    `INRACE` smallint(5) DEFAULT NULL,
    `INRACEX` varchar(60) DEFAULT NULL,
    `INRASEC` smallint(5) DEFAULT NULL,
    `INRASECX` varchar(60) DEFAULT NULL,
    `INRATER` smallint(5) DEFAULT NULL,
    `INRATERX` varchar(60) DEFAULT NULL,
    `INEDUC` smallint(5) DEFAULT NULL,
    `INRELTO` smallint(5) DEFAULT NULL,
    `INKNOWN` smallint(5) DEFAULT NULL,
    `INLIVWTH` smallint(5) DEFAULT NULL,
    `INVISITS` smallint(5) DEFAULT NULL,
    `INCALLS` smallint(5) DEFAULT NULL,
    `INRELY` smallint(5) DEFAULT NULL,

  PRIMARY KEY (`InstrID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
-- Add to instrument table
insert into instrument 
set InstrName="UDS Informant Demo 3", TableName="udsinformantdemo3", 
  FormName="LavaWebOnly", HasVersion=0;
-- Add columns to viewproperty table
insert into viewproperty 
set messageCode='*.udsinformantdemo3.inbirmo', locale='en', instance='lava', 
  scope='ucdlava', entity='udsinformantdemo3', property='inbirmo',
  required='No', proporder='1', attributes='', quickHelp='', 
  label="Co-participant's month of birth::", context="r",
  list="uds3.common.month", style="scale";

insert into viewproperty 
set messageCode='*.udsinformantdemo3.inbiryr', locale='en', instance='lava', 
  scope='ucdlava', entity='udsinformantdemo3', property='inbiryr',
  required='No', proporder='2', attributes='', quickHelp='', 
  label="Co-participant's year of birth:", context="r",
  list="uds3.udsinformantdemo3.INBIRYR", style="scale";

insert into viewproperty 
set messageCode='*.udsinformantdemo3.insex', locale='en', instance='lava', 
  scope='ucdlava', entity='udsinformantdemo3', property='insex',
  required='No', proporder='3', attributes='', quickHelp='', 
  label="Co-participant's sex::", context="r",
  list="uds3.common.gender", style="scale";

insert into viewproperty 
set messageCode='*.udsinformantdemo3.newinf', locale='en', instance='lava', 
  scope='ucdlava', entity='udsinformantdemo3', property='newinf',
  required='No', proporder='4', attributes='', quickHelp='', 
  label="Is this a new co-participant - i.e., one who was not a co-participant at any past UDS visit?:", context="r",
  list="uds3.common.noyes01", style="scale";

insert into viewproperty 
set messageCode='*.udsinformantdemo3.inhisp', locale='en', instance='lava', 
  scope='ucdlava', entity='udsinformantdemo3', property='inhisp',
  required='No', proporder='5', attributes='', quickHelp='', 
  label="Does the co-participant report being of Hispanic/ Latino ethnicity (i.e., having origins from mainly Spanish-speaking Latin American country), regardless of race?:", context="r",
  list="uds3.common.noyesunknown", style="scale";

insert into viewproperty 
set messageCode='*.udsinformantdemo3.inhispor', locale='en', instance='lava', 
  scope='ucdlava', entity='udsinformantdemo3', property='inhispor',
  required='No', proporder='6', attributes='', quickHelp='', 
  label="If yes, what are the co-participant's reported origins?:", context="r",
  list="uds3.coparticipantdemographics.INHISPOR", style="scale";

insert into viewproperty 
set messageCode='*.udsinformantdemo3.inhispox', locale='en', instance='lava', 
  scope='ucdlava', entity='udsinformantdemo3', property='inhispox',
  required='No', proporder='7', attributes='', quickHelp='', 
  label="Other (specify)::", context="r", maxLength="6", style="string";

insert into viewproperty 
set messageCode='*.udsinformantdemo3.inrace', locale='en', instance='lava', 
  scope='ucdlava', entity='udsinformantdemo3', property='inrace',
  required='No', proporder='8', attributes='', quickHelp='', 
  label="What does the co-participant report as his or her race?:", context="r",
  list="uds3.udssubjectdemo3.RACE", style="scale";

insert into viewproperty 
set messageCode='*.udsinformantdemo3.inracex', locale='en', instance='lava', 
  scope='ucdlava', entity='udsinformantdemo3', property='inracex',
  required='No', proporder='9', attributes='', quickHelp='', 
  label="Other (specify)::", context="r", maxLength="6", style="string";

insert into viewproperty 
set messageCode='*.udsinformantdemo3.inrasec', locale='en', instance='lava', 
  scope='ucdlava', entity='udsinformantdemo3', property='inrasec',
  required='No', proporder='10', attributes='', quickHelp='', 
  label="What additional race does co-participant report?:", context="r",
  list="uds3.udssubjectdemo3.RACESEC", style="scale";

insert into viewproperty 
set messageCode='*.udsinformantdemo3.inrasecx', locale='en', instance='lava', 
  scope='ucdlava', entity='udsinformantdemo3', property='inrasecx',
  required='No', proporder='11', attributes='', quickHelp='', 
  label="Other (specify):", context="r", maxLength="6", style="string";

insert into viewproperty 
set messageCode='*.udsinformantdemo3.inrater', locale='en', instance='lava', 
  scope='ucdlava', entity='udsinformantdemo3', property='inrater',
  required='No', proporder='12', attributes='', quickHelp='', 
  label="What additional race, beyond those reported in Questions 4 and 5, does the co-participant report?:", context="r",
  list="uds3.udsinformantdemo3.INRATER", style="scale";

insert into viewproperty 
set messageCode='*.udsinformantdemo3.inraterx', locale='en', instance='lava', 
  scope='ucdlava', entity='udsinformantdemo3', property='inraterx',
  required='No', proporder='13', attributes='', quickHelp='', 
  label="Other (specify):", context="r", maxLength="6", style="string";

insert into viewproperty 
set messageCode='*.udsinformantdemo3.ineduc', locale='en', instance='lava', 
  scope='ucdlava', entity='udsinformantdemo3', property='ineduc',
  required='No', proporder='14', attributes='', quickHelp='', 
  label="Co-participant's years of education::", context="r",
  list="uds3.udssubjectdemo3.EDUC", style="scale";

insert into viewproperty 
set messageCode='*.udsinformantdemo3.inrelto', locale='en', instance='lava', 
  scope='ucdlava', entity='udsinformantdemo3', property='inrelto',
  required='No', proporder='15', attributes='', quickHelp='', 
  label="What is co-participant's relationship to subject?:", context="r",
  list="uds3.udsinformantdemo3.INRELTO", style="scale";

insert into viewproperty 
set messageCode='*.udsinformantdemo3.inknown', locale='en', instance='lava', 
  scope='ucdlava', entity='udsinformantdemo3', property='inknown',
  required='No', proporder='16', attributes='', quickHelp='', 
  label="How long has the co-participant known the subject?:", context="r",
  list="uds3.udsinformantdemo3.INKNOWN", style="scale";

insert into viewproperty 
set messageCode='*.udsinformantdemo3.inlivwth', locale='en', instance='lava', 
  scope='ucdlava', entity='udsinformantdemo3', property='inlivwth',
  required='No', proporder='17', attributes='', quickHelp='', 
  label="Does the co-participant live with the subject?:", context="r",
  list="uds3.common.noyes01", style="scale";

insert into viewproperty 
set messageCode='*.udsinformantdemo3.invisits', locale='en', instance='lava', 
  scope='ucdlava', entity='udsinformantdemo3', property='invisits',
  required='No', proporder='18', attributes='', quickHelp='', 
  label="If no, approximate frequency of in-person visits?:", context="r",
  list="uds3.udsinformantdemo3.INVISITS", style="scale";

insert into viewproperty 
set messageCode='*.udsinformantdemo3.incalls', locale='en', instance='lava', 
  scope='ucdlava', entity='udsinformantdemo3', property='incalls',
  required='No', proporder='19', attributes='', quickHelp='', 
  label="If no, approximate frequency of telephone contact?:", context="r",
  list="uds3.udsinformantdemo3.INCALLS", style="scale";

insert into viewproperty 
set messageCode='*.udsinformantdemo3.inrely', locale='en', instance='lava', 
  scope='ucdlava', entity='udsinformantdemo3', property='inrely',
  required='No', proporder='20', attributes='', quickHelp='', 
  label="Is there a question about the co-participant's reliability?:", context="r",
  list="uds3.common.noyes01", style="scale";


