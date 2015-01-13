delete from hibernateproperty where entity="udsgds3";
delete from viewproperty where entity="udsgds3";
delete from instrument where InstrName="UDS GDS 3";
drop table if exists udsgds3;



-- Initialize table
CREATE TABLE udsgds3 (
  InstrID int(10) NOT NULL,
    `NOGDS` UNMAPPED TYPE
    `SATIS` UNMAPPED TYPE
    `DROPACT` UNMAPPED TYPE
    `EMPTY` UNMAPPED TYPE
    `BORED` UNMAPPED TYPE
    `SPIRITS` UNMAPPED TYPE
    `AFRAID` UNMAPPED TYPE
    `HAPPY` UNMAPPED TYPE
    `HELPLESS` UNMAPPED TYPE
    `STAYHOME` UNMAPPED TYPE
    `MEMPROB` UNMAPPED TYPE
    `WONDRFUL` UNMAPPED TYPE
    `WRTHLESS` UNMAPPED TYPE
    `ENERGY` UNMAPPED TYPE
    `HOPELESS` UNMAPPED TYPE
    `BETTER` UNMAPPED TYPE
    `GDS` UNMAPPED TYPE

  PRIMARY KEY (`InstrID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
-- Add to instrument table
insert into instrument 
set InstrName="UDS GDS 3", TableName="udsgds3", 
  FormName="LavaWebOnly", HasVersion=0;
-- Add columns to viewproperty table
insert into viewproperty 
set messageCode='*.udsgds3.nogds', locale='en', instance='lava', 
  scope='ucdlava', entity='udsgds3', property='nogds',
  required='No', proporder='1', attributes='', quickHelp='', 
  label="Check this box if the subject is not able to complete the GDS, based on the clinician’s best judgment:", context="r",
  list="uds3.udsgds3.NOGDS", style="scale";

insert into viewproperty 
set messageCode='*.udsgds3.satis', locale='en', instance='lava', 
  scope='ucdlava', entity='udsgds3', property='satis',
  required='No', proporder='2', attributes='', quickHelp='', 
  label="Are you basically satisfied with your life?:", context="r",
  list="uds3.udsgds3.YesNoDna", style="scale";

insert into viewproperty 
set messageCode='*.udsgds3.dropact', locale='en', instance='lava', 
  scope='ucdlava', entity='udsgds3', property='dropact',
  required='No', proporder='3', attributes='', quickHelp='', 
  label="Have you dropped many of your activities and interests?:", context="r",
  list="uds3.udsgds3.NoYesDna", style="scale";

insert into viewproperty 
set messageCode='*.udsgds3.empty', locale='en', instance='lava', 
  scope='ucdlava', entity='udsgds3', property='empty',
  required='No', proporder='4', attributes='', quickHelp='', 
  label="Do you feel that your life is empty?:", context="r",
  list="uds3.udsgds3.NoYesDna", style="scale";

insert into viewproperty 
set messageCode='*.udsgds3.bored', locale='en', instance='lava', 
  scope='ucdlava', entity='udsgds3', property='bored',
  required='No', proporder='5', attributes='', quickHelp='', 
  label="Do you often get bored?:", context="r",
  list="uds3.udsgds3.NoYesDna", style="scale";

insert into viewproperty 
set messageCode='*.udsgds3.spirits', locale='en', instance='lava', 
  scope='ucdlava', entity='udsgds3', property='spirits',
  required='No', proporder='6', attributes='', quickHelp='', 
  label="Are you in good spirits most of the time?:", context="r",
  list="uds3.udsgds3.YesNoDna", style="scale";

insert into viewproperty 
set messageCode='*.udsgds3.afraid', locale='en', instance='lava', 
  scope='ucdlava', entity='udsgds3', property='afraid',
  required='No', proporder='7', attributes='', quickHelp='', 
  label="Are you afraid that something bad is going to happen to you?:", context="r",
  list="uds3.udsgds3.NoYesDna", style="scale";

insert into viewproperty 
set messageCode='*.udsgds3.happy', locale='en', instance='lava', 
  scope='ucdlava', entity='udsgds3', property='happy',
  required='No', proporder='8', attributes='', quickHelp='', 
  label="Do you feel happy most of the time?:", context="r",
  list="uds3.udsgds3.YesNoDna", style="scale";

insert into viewproperty 
set messageCode='*.udsgds3.helpless', locale='en', instance='lava', 
  scope='ucdlava', entity='udsgds3', property='helpless',
  required='No', proporder='9', attributes='', quickHelp='', 
  label="Do you often feel helpless?:", context="r",
  list="uds3.udsgds3.NoYesDna", style="scale";

insert into viewproperty 
set messageCode='*.udsgds3.stayhome', locale='en', instance='lava', 
  scope='ucdlava', entity='udsgds3', property='stayhome',
  required='No', proporder='10', attributes='', quickHelp='', 
  label="Do you prefer to stay at home, rather than going out and doing new things?:", context="r",
  list="uds3.udsgds3.NoYesDna", style="scale";

insert into viewproperty 
set messageCode='*.udsgds3.memprob', locale='en', instance='lava', 
  scope='ucdlava', entity='udsgds3', property='memprob',
  required='No', proporder='11', attributes='', quickHelp='', 
  label="Do you feel you have more problems with memory than most?:", context="r",
  list="uds3.udsgds3.NoYesDna", style="scale";

insert into viewproperty 
set messageCode='*.udsgds3.wondrful', locale='en', instance='lava', 
  scope='ucdlava', entity='udsgds3', property='wondrful',
  required='No', proporder='12', attributes='', quickHelp='', 
  label="Do you think it is wonderful to be alive now?:", context="r",
  list="uds3.udsgds3.YesNoDna", style="scale";

insert into viewproperty 
set messageCode='*.udsgds3.wrthless', locale='en', instance='lava', 
  scope='ucdlava', entity='udsgds3', property='wrthless',
  required='No', proporder='13', attributes='', quickHelp='', 
  label="Do you feel pretty worthless the way you are now?:", context="r",
  list="uds3.udsgds3.NoYesDna", style="scale";

insert into viewproperty 
set messageCode='*.udsgds3.energy', locale='en', instance='lava', 
  scope='ucdlava', entity='udsgds3', property='energy',
  required='No', proporder='14', attributes='', quickHelp='', 
  label="Do you feel full of energy?:", context="r",
  list="uds3.udsgds3.YesNoDna", style="scale";

insert into viewproperty 
set messageCode='*.udsgds3.hopeless', locale='en', instance='lava', 
  scope='ucdlava', entity='udsgds3', property='hopeless',
  required='No', proporder='15', attributes='', quickHelp='', 
  label="Do you feel that your situation is hopeless?:", context="r",
  list="uds3.udsgds3.NoYesDna", style="scale";

insert into viewproperty 
set messageCode='*.udsgds3.better', locale='en', instance='lava', 
  scope='ucdlava', entity='udsgds3', property='better',
  required='No', proporder='16', attributes='', quickHelp='', 
  label="Do you think that most people are better off than you are?:", context="r",
  list="uds3.udsgds3.NoYesDna", style="scale";

insert into viewproperty 
set messageCode='*.udsgds3.gds', locale='en', instance='lava', 
  scope='ucdlava', entity='udsgds3', property='gds',
  required='No', proporder='17', attributes='', quickHelp='', 
  label="Sum of all circled answers for a Total GDS Score:", context="r",
  list="uds3.udsgds3.GDS", style="scale";


