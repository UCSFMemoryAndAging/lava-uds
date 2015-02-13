delete instrumentnotes 
from instrumenttracking join instrumentnotes using (InstrID) 
where InstrType="UDS FAQ 3";

delete instrumentsummary 
from instrumenttracking join instrumentsummary using (InstrID) 
where InstrType="UDS FAQ 3";

delete udsfaq3 
from instrumenttracking join udsfaq3 using (InstrID) 
where InstrType="UDS FAQ 3";

delete from instrumenttracking 
where InstrType="UDS FAQ 3";

delete from hibernateproperty where entity="udsfaq3";
delete from viewproperty where entity="udsfaq3";
delete from instrument where InstrName="UDS FAQ 3";
drop table if exists udsfaq3;



-- Initialize table
CREATE TABLE udsfaq3 (
  InstrID int(10) NOT NULL,
    `BILLS` smallint(5) DEFAULT NULL,
    `TAXES` smallint(5) DEFAULT NULL,
    `SHOPPING` smallint(5) DEFAULT NULL,
    `GAMES` smallint(5) DEFAULT NULL,
    `STOVE` smallint(5) DEFAULT NULL,
    `MEALPREP` smallint(5) DEFAULT NULL,
    `EVENTS` smallint(5) DEFAULT NULL,
    `PAYATTN` smallint(5) DEFAULT NULL,
    `REMDATES` smallint(5) DEFAULT NULL,
    `TRAVEL` smallint(5) DEFAULT NULL,

  PRIMARY KEY (`InstrID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
-- Add to instrument table
insert into instrument 
set InstrName="UDS FAQ 3", TableName="udsfaq3", 
  FormName="LavaWebOnly", HasVersion=0;
-- Add columns to viewproperty table
insert into viewproperty 
set messageCode='*.udsfaq3.bills', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfaq3', property='bills',
  required='No', proporder='1', attributes='', quickHelp='', 
  label="In the past four weeks, did the subject have any difficulty or need help with: Writing checks, paying bills, or balancing a checkbook:", context="r",
  list="uds3.udsfaq3.Difficulty", style="scale";

insert into viewproperty 
set messageCode='*.udsfaq3.taxes', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfaq3', property='taxes',
  required='No', proporder='2', attributes='', quickHelp='', 
  label="In the past four weeks, did the subject have any difficulty or need help with: Assembling tax records, business affairs, or other papers:", context="r",
  list="uds3.udsfaq3.Difficulty", style="scale";

insert into viewproperty 
set messageCode='*.udsfaq3.shopping', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfaq3', property='shopping',
  required='No', proporder='3', attributes='', quickHelp='', 
  label="In the past four weeks, did the subject have any difficulty or need help with: Shopping alone for clothes, household necessities, or groceries:", context="r",
  list="uds3.udsfaq3.Difficulty", style="scale";

insert into viewproperty 
set messageCode='*.udsfaq3.games', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfaq3', property='games',
  required='No', proporder='4', attributes='', quickHelp='', 
  label="In the past four weeks, did the subject have any difficulty or need help with: Playing a game of skill such as bridge or chess, working on a hobby:", context="r",
  list="uds3.udsfaq3.Difficulty", style="scale";

insert into viewproperty 
set messageCode='*.udsfaq3.stove', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfaq3', property='stove',
  required='No', proporder='5', attributes='', quickHelp='', 
  label="In the past four weeks, did the subject have any difficulty or need help with: Heating water, making a cup of coffee, turning off the stove:", context="r",
  list="uds3.udsfaq3.Difficulty", style="scale";

insert into viewproperty 
set messageCode='*.udsfaq3.mealprep', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfaq3', property='mealprep',
  required='No', proporder='6', attributes='', quickHelp='', 
  label="In the past four weeks, did the subject have any difficulty or need help with: Preparing a balanced meal:", context="r",
  list="uds3.udsfaq3.Difficulty", style="scale";

insert into viewproperty 
set messageCode='*.udsfaq3.events', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfaq3', property='events',
  required='No', proporder='7', attributes='', quickHelp='', 
  label="In the past four weeks, did the subject have any difficulty or need help with: Keeping track of current events:", context="r",
  list="uds3.udsfaq3.Difficulty", style="scale";

insert into viewproperty 
set messageCode='*.udsfaq3.payattn', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfaq3', property='payattn',
  required='No', proporder='8', attributes='', quickHelp='', 
  label="In the past four weeks, did the subject have any difficulty or need help with: Paying attention to and understanding a TV program, book, or magazine:", context="r",
  list="uds3.udsfaq3.Difficulty", style="scale";

insert into viewproperty 
set messageCode='*.udsfaq3.remdates', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfaq3', property='remdates',
  required='No', proporder='9', attributes='', quickHelp='', 
  label="In the past four weeks, did the subject have any difficulty or need help with: Remembering appointments, family occasions, holidays, medications:", context="r",
  list="uds3.udsfaq3.Difficulty", style="scale";

insert into viewproperty 
set messageCode='*.udsfaq3.travel', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfaq3', property='travel',
  required='No', proporder='10', attributes='', quickHelp='', 
  label="In the past four weeks, did the subject have any difficulty or need help with: Traveling out of the neighborhood, driving, or arranging to take public transportation:", context="r",
  list="uds3.udsfaq3.Difficulty", style="scale";


