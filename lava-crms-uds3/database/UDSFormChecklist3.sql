delete instrumentnotes 
from instrumenttracking join instrumentnotes using (InstrID) 
where InstrType="UDS Form Checklist 3";

delete instrumentsummary 
from instrumenttracking join instrumentsummary using (InstrID) 
where InstrType="UDS Form Checklist 3";

delete udsformchecklist3 
from instrumenttracking join udsformchecklist3 using (InstrID) 
where InstrType="UDS Form Checklist 3";

delete from instrumenttracking 
where InstrType="UDS Form Checklist 3";

delete from hibernateproperty where entity="udsformchecklist3";
delete from viewproperty where entity="udsformchecklist3";
delete from instrument where InstrName="UDS Form Checklist 3";
drop table if exists udsformchecklist3;



-- Initialize table
CREATE TABLE udsformchecklist3 (
  InstrID int(10) NOT NULL,
    `A2SUB` smallint(5) DEFAULT NULL,
    `A2NOT` smallint(5) DEFAULT NULL,
    `A2COMM` varchar(60) DEFAULT NULL,
    `A3SUB` smallint(5) DEFAULT NULL,
    `A3NOT` smallint(5) DEFAULT NULL,
    `A3COMM` varchar(60) DEFAULT NULL,
    `A4SUB` smallint(5) DEFAULT NULL,
    `A4NOT` smallint(5) DEFAULT NULL,
    `A4COMM` varchar(60) DEFAULT NULL,
    `B1SUB` smallint(5) DEFAULT NULL,
    `B1NOT` smallint(5) DEFAULT NULL,
    `B1COMM` varchar(60) DEFAULT NULL,
    `B5SUB` smallint(5) DEFAULT NULL,
    `B5NOT` smallint(5) DEFAULT NULL,
    `B5COMM` varchar(60) DEFAULT NULL,
    `B6SUB` smallint(5) DEFAULT NULL,
    `B6NOT` smallint(5) DEFAULT NULL,
    `B6COMM` varchar(60) DEFAULT NULL,
    `B7SUB` smallint(5) DEFAULT NULL,
    `B7NOT` smallint(5) DEFAULT NULL,
    `B7COMM` varchar(60) DEFAULT NULL,

  PRIMARY KEY (`InstrID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
-- Add to instrument table
insert into instrument 
set InstrName="UDS Form Checklist 3", TableName="udsformchecklist3", 
  FormName="LavaWebOnly", HasVersion=0;
-- Add columns to viewproperty table
insert into viewproperty 
set messageCode='*.udsformchecklist3.a2sub', locale='en', instance='lava', 
  scope='ucdlava', entity='udsformchecklist3', property='a2sub',
  required='No', proporder='1', attributes='', quickHelp='', 
  label="A2 Informant Demographics - submitted:", context="r",
  list="list.uds3.common.noyes01", style="scale";

insert into viewproperty 
set messageCode='*.udsformchecklist3.a2not', locale='en', instance='lava', 
  scope='ucdlava', entity='udsformchecklist3', property='a2not',
  required='No', proporder='2', attributes='', quickHelp='', 
  label="If A2 not submitted, specify reason:", context="r",
  list="list.uds3.common.whyunable", style="scale";

insert into viewproperty 
set messageCode='*.udsformchecklist3.a2comm', locale='en', instance='lava', 
  scope='ucdlava', entity='udsformchecklist3', property='a2comm',
  required='No', proporder='3', attributes='', quickHelp='', 
  label="If A2 not submitted - comments:", context="r", maxLength="6", style="string";

insert into viewproperty 
set messageCode='*.udsformchecklist3.a3sub', locale='en', instance='lava', 
  scope='ucdlava', entity='udsformchecklist3', property='a3sub',
  required='No', proporder='4', attributes='', quickHelp='', 
  label="A3 Subject Family History - submitted:", context="r",
  list="list.uds3.common.noyes01", style="scale";

insert into viewproperty 
set messageCode='*.udsformchecklist3.a3not', locale='en', instance='lava', 
  scope='ucdlava', entity='udsformchecklist3', property='a3not',
  required='No', proporder='5', attributes='', quickHelp='', 
  label="If A3 not submitted, specify reason (see key):", context="r",
  list="list.uds3.common.whyunable", style="scale";

insert into viewproperty 
set messageCode='*.udsformchecklist3.a3comm', locale='en', instance='lava', 
  scope='ucdlava', entity='udsformchecklist3', property='a3comm',
  required='No', proporder='6', attributes='', quickHelp='', 
  label="If A3 not submitted - comments:", context="r", maxLength="6", style="string";

insert into viewproperty 
set messageCode='*.udsformchecklist3.a4sub', locale='en', instance='lava', 
  scope='ucdlava', entity='udsformchecklist3', property='a4sub',
  required='No', proporder='7', attributes='', quickHelp='', 
  label="A4 Subject Medications - submitted:", context="r",
  list="list.uds3.common.noyes01", style="scale";

insert into viewproperty 
set messageCode='*.udsformchecklist3.a4not', locale='en', instance='lava', 
  scope='ucdlava', entity='udsformchecklist3', property='a4not',
  required='No', proporder='8', attributes='', quickHelp='', 
  label="If A4 not submitted, specify reason (see Key):", context="r",
  list="list.uds3.common.whyunable", style="scale";

insert into viewproperty 
set messageCode='*.udsformchecklist3.a4comm', locale='en', instance='lava', 
  scope='ucdlava', entity='udsformchecklist3', property='a4comm',
  required='No', proporder='9', attributes='', quickHelp='', 
  label="If A4 not submitted - comments:", context="r", maxLength="6", style="string";

insert into viewproperty 
set messageCode='*.udsformchecklist3.b1sub', locale='en', instance='lava', 
  scope='ucdlava', entity='udsformchecklist3', property='b1sub',
  required='No', proporder='10', attributes='', quickHelp='', 
  label="B1 Evaluation Form: Physical - submitted:", context="r",
  list="list.uds3.common.noyes01", style="scale";

insert into viewproperty 
set messageCode='*.udsformchecklist3.b1not', locale='en', instance='lava', 
  scope='ucdlava', entity='udsformchecklist3', property='b1not',
  required='No', proporder='11', attributes='', quickHelp='', 
  label="If B1 not submitted, specify reason (see Key):", context="r",
  list="list.uds3.common.whyunable", style="scale";

insert into viewproperty 
set messageCode='*.udsformchecklist3.b1comm', locale='en', instance='lava', 
  scope='ucdlava', entity='udsformchecklist3', property='b1comm',
  required='No', proporder='12', attributes='', quickHelp='', 
  label="If B1 not submitted - comments:", context="r", maxLength="6", style="string";

insert into viewproperty 
set messageCode='*.udsformchecklist3.b5sub', locale='en', instance='lava', 
  scope='ucdlava', entity='udsformchecklist3', property='b5sub',
  required='No', proporder='13', attributes='', quickHelp='', 
  label="B5 Behavioral Assessment: NPI-Q - submitted:", context="r",
  list="list.uds3.common.noyes01", style="scale";

insert into viewproperty 
set messageCode='*.udsformchecklist3.b5not', locale='en', instance='lava', 
  scope='ucdlava', entity='udsformchecklist3', property='b5not',
  required='No', proporder='14', attributes='', quickHelp='', 
  label="If B5 not submitted, specify reason (see Key):", context="r",
  list="list.uds3.common.whyunable", style="scale";

insert into viewproperty 
set messageCode='*.udsformchecklist3.b5comm', locale='en', instance='lava', 
  scope='ucdlava', entity='udsformchecklist3', property='b5comm',
  required='No', proporder='15', attributes='', quickHelp='', 
  label="If B5 not submitted - comments:", context="r", maxLength="6", style="string";

insert into viewproperty 
set messageCode='*.udsformchecklist3.b6sub', locale='en', instance='lava', 
  scope='ucdlava', entity='udsformchecklist3', property='b6sub',
  required='No', proporder='16', attributes='', quickHelp='', 
  label="B6 Behavioral Assessment: GDS - submitted:", context="r",
  list="list.uds3.common.noyes01", style="scale";

insert into viewproperty 
set messageCode='*.udsformchecklist3.b6not', locale='en', instance='lava', 
  scope='ucdlava', entity='udsformchecklist3', property='b6not',
  required='No', proporder='17', attributes='', quickHelp='', 
  label="If B6 not submitted, specify reason (see Key):", context="r",
  list="list.uds3.common.whyunable", style="scale";

insert into viewproperty 
set messageCode='*.udsformchecklist3.b6comm', locale='en', instance='lava', 
  scope='ucdlava', entity='udsformchecklist3', property='b6comm',
  required='No', proporder='18', attributes='', quickHelp='', 
  label="If B6 not submitted - comments:", context="r", maxLength="6", style="string";

insert into viewproperty 
set messageCode='*.udsformchecklist3.b7sub', locale='en', instance='lava', 
  scope='ucdlava', entity='udsformchecklist3', property='b7sub',
  required='No', proporder='19', attributes='', quickHelp='', 
  label="B7 Functional Assessment: FAQ - submitted:", context="r",
  list="list.uds3.common.noyes01", style="scale";

insert into viewproperty 
set messageCode='*.udsformchecklist3.b7not', locale='en', instance='lava', 
  scope='ucdlava', entity='udsformchecklist3', property='b7not',
  required='No', proporder='20', attributes='', quickHelp='', 
  label="If B7 not submitted, specify reason (see Key):", context="r",
  list="list.uds3.common.whyunable", style="scale";

insert into viewproperty 
set messageCode='*.udsformchecklist3.b7comm', locale='en', instance='lava', 
  scope='ucdlava', entity='udsformchecklist3', property='b7comm',
  required='No', proporder='21', attributes='', quickHelp='', 
  label="If B7 not submitted - comments:", context="r", maxLength="6", style="string";


