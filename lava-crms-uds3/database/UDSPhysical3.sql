delete instrumentnotes 
from instrumenttracking join instrumentnotes using (InstrID) 
where InstrType="UDS Physical 3";

delete instrumentsummary 
from instrumenttracking join instrumentsummary using (InstrID) 
where InstrType="UDS Physical 3";

delete udsphysical3 
from instrumenttracking join udsphysical3 using (InstrID) 
where InstrType="UDS Physical 3";

delete from instrumenttracking 
where InstrType="UDS Physical 3";

delete from hibernateproperty where entity="udsphysical3";
delete from viewproperty where entity="udsphysical3";
delete from instrument where InstrName="UDS Physical 3";
drop table if exists udsphysical3;



-- Initialize table
CREATE TABLE udsphysical3 (
  InstrID int(10) NOT NULL,
    `HEIGHT` decimal(4,1) DEFAULT NULL,
    `WEIGHT` smallint(5) DEFAULT NULL,
    `BPSYS` smallint(5) DEFAULT NULL,
    `BPDIAS` smallint(5) DEFAULT NULL,
    `HRATE` smallint(5) DEFAULT NULL,
    `VISION` smallint(5) DEFAULT NULL,
    `VISCORR` smallint(5) DEFAULT NULL,
    `VISWCORR` smallint(5) DEFAULT NULL,
    `HEARING` smallint(5) DEFAULT NULL,
    `HEARAID` smallint(5) DEFAULT NULL,
    `HEARWAID` smallint(5) DEFAULT NULL,

  PRIMARY KEY (`InstrID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
-- Add to instrument table
insert into instrument 
set InstrName="UDS Physical 3", TableName="udsphysical3", 
  FormName="LavaWebOnly", HasVersion=0;
-- Add columns to viewproperty table
insert into viewproperty 
set messageCode='*.udsphysical3.height', locale='en', instance='lava', 
  scope='ucdlava', entity='udsphysical3', property='height',
  required='No', proporder='1', attributes='', quickHelp='', 
  label="Subject height (inches):", context="r", maxLength="6", size="6"
, style="scale";

insert into viewproperty 
set messageCode='*.udsphysical3.weight', locale='en', instance='lava', 
  scope='ucdlava', entity='udsphysical3', property='weight',
  required='No', proporder='2', attributes='', quickHelp='', 
  label="Subject weight (lbs):", context="r",
  list="uds3.udsphysical3.WEIGHT", style="scale";

insert into viewproperty 
set messageCode='*.udsphysical3.bpsys', locale='en', instance='lava', 
  scope='ucdlava', entity='udsphysical3', property='bpsys',
  required='No', proporder='3', attributes='', quickHelp='', 
  label="Subject blood pressure (sitting):", context="r",
  list="uds3.udsphysical3.BPSYS", style="scale";

insert into viewproperty 
set messageCode='*.udsphysical3.bpdias', locale='en', instance='lava', 
  scope='ucdlava', entity='udsphysical3', property='bpdias',
  required='No', proporder='4', attributes='', quickHelp='', 
  label="Subject blood pressure (sitting), diastolic:", context="r",
  list="uds3.udsphysical3.BPDIAS", style="scale";

insert into viewproperty 
set messageCode='*.udsphysical3.hrate', locale='en', instance='lava', 
  scope='ucdlava', entity='udsphysical3', property='hrate',
  required='No', proporder='5', attributes='', quickHelp='', 
  label="Subject resting heart rate (pulse):", context="r",
  list="uds3.udsphysical3.HRATE", style="scale";

insert into viewproperty 
set messageCode='*.udsphysical3.vision', locale='en', instance='lava', 
  scope='ucdlava', entity='udsphysical3', property='vision',
  required='No', proporder='6', attributes='', quickHelp='', 
  label="Without corrective lenses, is the subject's vision functionally normal?:", context="r",
  list="list.uds3.common.noyesunknown", style="scale";

insert into viewproperty 
set messageCode='*.udsphysical3.viscorr', locale='en', instance='lava', 
  scope='ucdlava', entity='udsphysical3', property='viscorr',
  required='No', proporder='7', attributes='', quickHelp='', 
  label="Does the subject usually wear corrective lenses?:", context="r",
  list="list.uds3.common.noyesunknown", style="scale";

insert into viewproperty 
set messageCode='*.udsphysical3.viswcorr', locale='en', instance='lava', 
  scope='ucdlava', entity='udsphysical3', property='viswcorr',
  required='No', proporder='8', attributes='', quickHelp='', 
  label="If yes, is the subject's vision functionally normal with corrective lenses?:", context="r",
  list="list.uds3.common.noyesunknown", style="scale";

insert into viewproperty 
set messageCode='*.udsphysical3.hearing', locale='en', instance='lava', 
  scope='ucdlava', entity='udsphysical3', property='hearing',
  required='No', proporder='9', attributes='', quickHelp='', 
  label="Without a hearing aid(s), is the subject's hearing functionally normal?:", context="r",
  list="list.uds3.common.noyesunknown", style="scale";

insert into viewproperty 
set messageCode='*.udsphysical3.hearaid', locale='en', instance='lava', 
  scope='ucdlava', entity='udsphysical3', property='hearaid',
  required='No', proporder='10', attributes='', quickHelp='', 
  label="Does the subject usually wear a hearing aid(s)?:", context="r",
  list="list.uds3.common.noyesunknown", style="scale";

insert into viewproperty 
set messageCode='*.udsphysical3.hearwaid', locale='en', instance='lava', 
  scope='ucdlava', entity='udsphysical3', property='hearwaid',
  required='No', proporder='11', attributes='', quickHelp='', 
  label="If yes, is the subject's hearing functionally normal with a hearing aid(s)?:", context="r",
  list="list.uds3.common.noyesunknown", style="scale";


