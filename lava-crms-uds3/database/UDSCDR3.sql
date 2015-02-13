delete instrumentnotes 
from instrumenttracking join instrumentnotes using (InstrID) 
where InstrType="UDS CDR 3";

delete instrumentsummary 
from instrumenttracking join instrumentsummary using (InstrID) 
where InstrType="UDS CDR 3";

delete udscdr3 
from instrumenttracking join udscdr3 using (InstrID) 
where InstrType="UDS CDR 3";

delete from instrumenttracking 
where InstrType="UDS CDR 3";

delete from hibernateproperty where entity="udscdr3";
delete from viewproperty where entity="udscdr3";
delete from instrument where InstrName="UDS CDR 3";
drop table if exists udscdr3;



-- Initialize table
CREATE TABLE udscdr3 (
  InstrID int(10) NOT NULL,
    `MEMORY` decimal(2,1) DEFAULT NULL,
    `ORIENT` decimal(2,1) DEFAULT NULL,
    `JUDGMENT` decimal(2,1) DEFAULT NULL,
    `COMMUN` decimal(2,1) DEFAULT NULL,
    `HOMEHOBB` decimal(2,1) DEFAULT NULL,
    `PERSCARE` decimal(2,1) DEFAULT NULL,
    `CDRSUM` decimal(3,1) DEFAULT NULL,
    `CDRGLOB` decimal(2,1) DEFAULT NULL,
    `COMPORT` decimal(2,1) DEFAULT NULL,
    `CDRLANG` decimal(2,1) DEFAULT NULL,

  PRIMARY KEY (`InstrID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
-- Add to instrument table
insert into instrument 
set InstrName="UDS CDR 3", TableName="udscdr3", 
  FormName="LavaWebOnly", HasVersion=0;
-- Add columns to viewproperty table
insert into viewproperty 
set messageCode='*.udscdr3.memory', locale='en', instance='lava', 
  scope='ucdlava', entity='udscdr3', property='memory',
  required='No', proporder='1', attributes='', quickHelp='', 
  label="MEMORY:", context="r",
  list="uds.b7.cdrScale", maxLength="6", size="6"
, style="scale";

insert into viewproperty 
set messageCode='*.udscdr3.orient', locale='en', instance='lava', 
  scope='ucdlava', entity='udscdr3', property='orient',
  required='No', proporder='2', attributes='', quickHelp='', 
  label="ORIENTATION:", context="r",
  list="uds.b7.cdrScale", maxLength="6", size="6"
, style="scale";

insert into viewproperty 
set messageCode='*.udscdr3.judgment', locale='en', instance='lava', 
  scope='ucdlava', entity='udscdr3', property='judgment',
  required='No', proporder='3', attributes='', quickHelp='', 
  label="JUDGMENT AND PROBLEM-SOLVING:", context="r",
  list="uds.b7.cdrScale", maxLength="6", size="6"
, style="scale";

insert into viewproperty 
set messageCode='*.udscdr3.commun', locale='en', instance='lava', 
  scope='ucdlava', entity='udscdr3', property='commun',
  required='No', proporder='4', attributes='', quickHelp='', 
  label="COMMUNITY AFFAIRS:", context="r",
  list="uds.b7.cdrScale", maxLength="6", size="6"
, style="scale";

insert into viewproperty 
set messageCode='*.udscdr3.homehobb', locale='en', instance='lava', 
  scope='ucdlava', entity='udscdr3', property='homehobb',
  required='No', proporder='5', attributes='', quickHelp='', 
  label="HOME AND HOBBIES:", context="r",
  list="uds.b7.cdrScale", maxLength="6", size="6"
, style="scale";

insert into viewproperty 
set messageCode='*.udscdr3.perscare', locale='en', instance='lava', 
  scope='ucdlava', entity='udscdr3', property='perscare',
  required='No', proporder='6', attributes='', quickHelp='', 
  label="PERSONAL CARE:", context="r",
  list="uds.b7.cdrScale", maxLength="6", size="6"
, style="scale";

insert into viewproperty 
set messageCode='*.udscdr3.cdrsum', locale='en', instance='lava', 
  scope='ucdlava', entity='udscdr3', property='cdrsum',
  required='No', proporder='7', attributes='', quickHelp='', 
  label="CDR SUM OF BOXES:", context="r",
  list="ref.totalErrorCodesDecimal", maxLength="6", size="6"
, style="scale";

insert into viewproperty 
set messageCode='*.udscdr3.cdrglob', locale='en', instance='lava', 
  scope='ucdlava', entity='udscdr3', property='cdrglob',
  required='No', proporder='8', attributes='', quickHelp='', 
  label="GLOBAL CDR:", context="r",
  list="uds.b7.cdrScale", maxLength="6", size="6"
, style="scale";

insert into viewproperty 
set messageCode='*.udscdr3.comport', locale='en', instance='lava', 
  scope='ucdlava', entity='udscdr3', property='comport',
  required='No', proporder='9', attributes='', quickHelp='', 
  label="Behavior, comportment, and personality:", context="r",
  list="uds.b7.cdrScale", maxLength="6", size="6"
, style="scale";

insert into viewproperty 
set messageCode='*.udscdr3.cdrlang', locale='en', instance='lava', 
  scope='ucdlava', entity='udscdr3', property='cdrlang',
  required='No', proporder='10', attributes='', quickHelp='', 
  label="Language:", context="r",
  list="uds.b7.cdrScale", maxLength="6", size="6"
, style="scale";


