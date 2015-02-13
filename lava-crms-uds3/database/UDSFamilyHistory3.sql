delete instrumentnotes 
from instrumenttracking join instrumentnotes using (InstrID) 
where InstrType="UDS Family History 3";

delete instrumentsummary 
from instrumenttracking join instrumentsummary using (InstrID) 
where InstrType="UDS Family History 3";

delete udsfamilyhistory3 
from instrumenttracking join udsfamilyhistory3 using (InstrID) 
where InstrType="UDS Family History 3";

delete from instrumenttracking 
where InstrType="UDS Family History 3";

delete from hibernateproperty where entity="udsfamilyhistory3";
delete from viewproperty where entity="udsfamilyhistory3";
delete from instrument where InstrName="UDS Family History 3";
drop table if exists udsfamilyhistory3;



-- Initialize table
CREATE TABLE udsfamilyhistory3 (
  InstrID int(10) NOT NULL,
    `AFFFAMM` smallint(5) DEFAULT NULL,
    `FADMUT` smallint(5) DEFAULT NULL,
    `FADMUTX` varchar(60) DEFAULT NULL,
    `FADMUSO` smallint(5) DEFAULT NULL,
    `FADMUSOX` varchar(60) DEFAULT NULL,
    `FFTDMUT` smallint(5) DEFAULT NULL,
    `FFTDMUTX` varchar(60) DEFAULT NULL,
    `FFTDMUSO` smallint(5) DEFAULT NULL,
    `FFTDMUSX` varchar(60) DEFAULT NULL,
    `FOTHMUT` smallint(5) DEFAULT NULL,
    `FOTHMUTX` varchar(60) DEFAULT NULL,
    `FOTHMUSO` smallint(5) DEFAULT NULL,
    `FOTHMUSX` varchar(60) DEFAULT NULL,
    `MOMMOB` smallint(5) DEFAULT NULL,
    `MOMYOB` smallint(5) DEFAULT NULL,
    `MOMDAGE` smallint(5) DEFAULT NULL,
    `MOMNEUR` smallint(5) DEFAULT NULL,
    `MOMPRDX` smallint(5) DEFAULT NULL,
    `MOMMOE` smallint(5) DEFAULT NULL,
    `MOMAGEO` smallint(5) DEFAULT NULL,
    `DADMOB` smallint(5) DEFAULT NULL,
    `DADYOB` smallint(5) DEFAULT NULL,
    `DADDAGE` smallint(5) DEFAULT NULL,
    `DADNEUR` smallint(5) DEFAULT NULL,
    `DADPRDX` smallint(5) DEFAULT NULL,
    `DADMOE` smallint(5) DEFAULT NULL,
    `DADAGEO` smallint(5) DEFAULT NULL,
    `SIBS` smallint(5) DEFAULT NULL,
    `SIB1MOB` smallint(5) DEFAULT NULL,
    `SIB1YOB` smallint(5) DEFAULT NULL,
    `SIB1AGD` smallint(5) DEFAULT NULL,
    `SIB1NEU` smallint(5) DEFAULT NULL,
    `SIB1PDX` smallint(5) DEFAULT NULL,
    `SIB1MOE` smallint(5) DEFAULT NULL,
    `SIB1AGO` smallint(5) DEFAULT NULL,
    `SIB2MOB` smallint(5) DEFAULT NULL,
    `SIB2YOB` smallint(5) DEFAULT NULL,
    `SIB2AGD` smallint(5) DEFAULT NULL,
    `SIB2NEU` smallint(5) DEFAULT NULL,
    `SIB2PDX` smallint(5) DEFAULT NULL,
    `SIB2MOE` smallint(5) DEFAULT NULL,
    `SIB2AGO` smallint(5) DEFAULT NULL,
    `SIB3MOB` smallint(5) DEFAULT NULL,
    `SIB3YOB` smallint(5) DEFAULT NULL,
    `SIB3AGD` smallint(5) DEFAULT NULL,
    `SIB3NEU` smallint(5) DEFAULT NULL,
    `SIB3PDX` smallint(5) DEFAULT NULL,
    `SIB3MOE` smallint(5) DEFAULT NULL,
    `SIB3AGO` smallint(5) DEFAULT NULL,
    `SIB4MOB` smallint(5) DEFAULT NULL,
    `SIB4YOB` smallint(5) DEFAULT NULL,
    `SIB4AGD` smallint(5) DEFAULT NULL,
    `SIB4NEU` smallint(5) DEFAULT NULL,
    `SIB4PDX` smallint(5) DEFAULT NULL,
    `SIB4MOE` smallint(5) DEFAULT NULL,
    `SIB4AGO` smallint(5) DEFAULT NULL,
    `SIB5MOB` smallint(5) DEFAULT NULL,
    `SIB5YOB` smallint(5) DEFAULT NULL,
    `SIB5AGD` smallint(5) DEFAULT NULL,
    `SIB5NEU` smallint(5) DEFAULT NULL,
    `SIB5PDX` smallint(5) DEFAULT NULL,
    `SIB5MOE` smallint(5) DEFAULT NULL,
    `SIB5AGO` smallint(5) DEFAULT NULL,
    `SIB6MOB` smallint(5) DEFAULT NULL,
    `SIB6YOB` smallint(5) DEFAULT NULL,
    `SIB6AGD` smallint(5) DEFAULT NULL,
    `SIB6NEU` smallint(5) DEFAULT NULL,
    `SIB6PDX` smallint(5) DEFAULT NULL,
    `SIB6MOE` smallint(5) DEFAULT NULL,
    `SIB6AGO` smallint(5) DEFAULT NULL,
    `SIB7MOB` smallint(5) DEFAULT NULL,
    `SIB7YOB` smallint(5) DEFAULT NULL,
    `SIB7AGD` smallint(5) DEFAULT NULL,
    `SIB7NEU` smallint(5) DEFAULT NULL,
    `SIB7PDX` smallint(5) DEFAULT NULL,
    `SIB7MOE` smallint(5) DEFAULT NULL,
    `SIB7AGO` smallint(5) DEFAULT NULL,
    `SIB8MOB` smallint(5) DEFAULT NULL,
    `SIB8YOB` smallint(5) DEFAULT NULL,
    `SIB8AGD` smallint(5) DEFAULT NULL,
    `SIB8NEU` smallint(5) DEFAULT NULL,
    `SIB8PDX` smallint(5) DEFAULT NULL,
    `SIB8MOE` smallint(5) DEFAULT NULL,
    `SIB8AGO` smallint(5) DEFAULT NULL,
    `SIB9MOB` smallint(5) DEFAULT NULL,
    `SIB9YOB` smallint(5) DEFAULT NULL,
    `SIB9AGD` smallint(5) DEFAULT NULL,
    `SIB9NEU` smallint(5) DEFAULT NULL,
    `SIB9PDX` smallint(5) DEFAULT NULL,
    `SIB9MOE` smallint(5) DEFAULT NULL,
    `SIB9AGO` smallint(5) DEFAULT NULL,
    `SIB10MOB` smallint(5) DEFAULT NULL,
    `SIB10YOB` smallint(5) DEFAULT NULL,
    `SIB10AGD` smallint(5) DEFAULT NULL,
    `SIB10NEU` smallint(5) DEFAULT NULL,
    `SIB10PDX` smallint(5) DEFAULT NULL,
    `SIB10MOE` smallint(5) DEFAULT NULL,
    `SIB10AGO` smallint(5) DEFAULT NULL,
    `SIB11MOB` smallint(5) DEFAULT NULL,
    `SIB11YOB` smallint(5) DEFAULT NULL,
    `SIB11AGD` smallint(5) DEFAULT NULL,
    `SIB11NEU` smallint(5) DEFAULT NULL,
    `SIB11PDX` smallint(5) DEFAULT NULL,
    `SIB11MOE` smallint(5) DEFAULT NULL,
    `SIB11AGO` smallint(5) DEFAULT NULL,
    `SIB12MOB` smallint(5) DEFAULT NULL,
    `SIB12YOB` smallint(5) DEFAULT NULL,
    `SIB12AGD` smallint(5) DEFAULT NULL,
    `SIB12NEU` smallint(5) DEFAULT NULL,
    `SIB12PDX` smallint(5) DEFAULT NULL,
    `SIB12MOE` smallint(5) DEFAULT NULL,
    `SIB12AGO` smallint(5) DEFAULT NULL,
    `SIB13MOB` smallint(5) DEFAULT NULL,
    `SIB13YOB` smallint(5) DEFAULT NULL,
    `SIB13AGD` smallint(5) DEFAULT NULL,
    `SIB13NEU` smallint(5) DEFAULT NULL,
    `SIB13PDX` smallint(5) DEFAULT NULL,
    `SIB13MOE` smallint(5) DEFAULT NULL,
    `SIB13AGO` smallint(5) DEFAULT NULL,
    `SIB14MOB` smallint(5) DEFAULT NULL,
    `SIB14YOB` smallint(5) DEFAULT NULL,
    `SIB14AGD` smallint(5) DEFAULT NULL,
    `SIB14NEU` smallint(5) DEFAULT NULL,
    `SIB14PDX` smallint(5) DEFAULT NULL,
    `SIB14MOE` smallint(5) DEFAULT NULL,
    `SIB14AGO` smallint(5) DEFAULT NULL,
    `SIB15MOB` smallint(5) DEFAULT NULL,
    `SIB15YOB` smallint(5) DEFAULT NULL,
    `SIB15AGD` smallint(5) DEFAULT NULL,
    `SIB15NEU` smallint(5) DEFAULT NULL,
    `SIB15PDX` smallint(5) DEFAULT NULL,
    `SIB15MOE` smallint(5) DEFAULT NULL,
    `SIB15AGO` smallint(5) DEFAULT NULL,
    `SIB16MOB` smallint(5) DEFAULT NULL,
    `SIB16YOB` smallint(5) DEFAULT NULL,
    `SIB16AGD` smallint(5) DEFAULT NULL,
    `SIB16NEU` smallint(5) DEFAULT NULL,
    `SIB16PDX` smallint(5) DEFAULT NULL,
    `SIB16MOE` smallint(5) DEFAULT NULL,
    `SIB16AGO` smallint(5) DEFAULT NULL,
    `SIB17MOB` smallint(5) DEFAULT NULL,
    `SIB17YOB` smallint(5) DEFAULT NULL,
    `SIB17AGD` smallint(5) DEFAULT NULL,
    `SIB17NEU` smallint(5) DEFAULT NULL,
    `SIB17PDX` smallint(5) DEFAULT NULL,
    `SIB17MOE` smallint(5) DEFAULT NULL,
    `SIB17AGO` smallint(5) DEFAULT NULL,
    `SIB18MOB` smallint(5) DEFAULT NULL,
    `SIB18YOB` smallint(5) DEFAULT NULL,
    `SIB18AGD` smallint(5) DEFAULT NULL,
    `SIB18NEU` smallint(5) DEFAULT NULL,
    `SIB18PDX` smallint(5) DEFAULT NULL,
    `SIB18MOE` smallint(5) DEFAULT NULL,
    `SIB18AGO` smallint(5) DEFAULT NULL,
    `SIB19MOB` smallint(5) DEFAULT NULL,
    `SIB19YOB` smallint(5) DEFAULT NULL,
    `SIB19AGD` smallint(5) DEFAULT NULL,
    `SIB19NEU` smallint(5) DEFAULT NULL,
    `SIB19PDX` smallint(5) DEFAULT NULL,
    `SIB19MOE` smallint(5) DEFAULT NULL,
    `SIB19AGO` smallint(5) DEFAULT NULL,
    `SIB20MOB` smallint(5) DEFAULT NULL,
    `SIB20YOB` smallint(5) DEFAULT NULL,
    `SIB20AGD` smallint(5) DEFAULT NULL,
    `SIB20NEU` smallint(5) DEFAULT NULL,
    `SIB20PDX` smallint(5) DEFAULT NULL,
    `SIB20MOE` smallint(5) DEFAULT NULL,
    `SIB20AGO` smallint(5) DEFAULT NULL,
    `KIDS` smallint(5) DEFAULT NULL,
    `KID1MOB` smallint(5) DEFAULT NULL,
    `KID1YOB` smallint(5) DEFAULT NULL,
    `KID1AGD` smallint(5) DEFAULT NULL,
    `KID1NEU` smallint(5) DEFAULT NULL,
    `KID1PDX` smallint(5) DEFAULT NULL,
    `KID1MOE` smallint(5) DEFAULT NULL,
    `KID1AGO` smallint(5) DEFAULT NULL,
    `KID2MOB` smallint(5) DEFAULT NULL,
    `KID2YOB` smallint(5) DEFAULT NULL,
    `KID2AGD` smallint(5) DEFAULT NULL,
    `KID2NEU` smallint(5) DEFAULT NULL,
    `KID2PDX` smallint(5) DEFAULT NULL,
    `KID2MOE` smallint(5) DEFAULT NULL,
    `KID2AGO` smallint(5) DEFAULT NULL,
    `KID3MOB` smallint(5) DEFAULT NULL,
    `KID3YOB` smallint(5) DEFAULT NULL,
    `KID3AGD` smallint(5) DEFAULT NULL,
    `KID3NEU` smallint(5) DEFAULT NULL,
    `KID3PDX` smallint(5) DEFAULT NULL,
    `KID3MOE` smallint(5) DEFAULT NULL,
    `KID3AGO` smallint(5) DEFAULT NULL,
    `KID4MOB` smallint(5) DEFAULT NULL,
    `KID4YOB` smallint(5) DEFAULT NULL,
    `KID4AGD` smallint(5) DEFAULT NULL,
    `KID4NEU` smallint(5) DEFAULT NULL,
    `KID4PDX` smallint(5) DEFAULT NULL,
    `KID4MOE` smallint(5) DEFAULT NULL,
    `KID4AGO` smallint(5) DEFAULT NULL,
    `KID5MOB` smallint(5) DEFAULT NULL,
    `KID5YOB` smallint(5) DEFAULT NULL,
    `KID5AGD` smallint(5) DEFAULT NULL,
    `KID5NEU` smallint(5) DEFAULT NULL,
    `KID5PDX` smallint(5) DEFAULT NULL,
    `KID5MOE` smallint(5) DEFAULT NULL,
    `KID5AGO` smallint(5) DEFAULT NULL,
    `KID6MOB` smallint(5) DEFAULT NULL,
    `KID6YOB` smallint(5) DEFAULT NULL,
    `KID6AGD` smallint(5) DEFAULT NULL,
    `KID6NEU` smallint(5) DEFAULT NULL,
    `KID6PDX` smallint(5) DEFAULT NULL,
    `KID6MOE` smallint(5) DEFAULT NULL,
    `KID6AGO` smallint(5) DEFAULT NULL,
    `KID7MOB` smallint(5) DEFAULT NULL,
    `KID7YOB` smallint(5) DEFAULT NULL,
    `KID7AGD` smallint(5) DEFAULT NULL,
    `KID7NEU` smallint(5) DEFAULT NULL,
    `KID7PDX` smallint(5) DEFAULT NULL,
    `KID7MOE` smallint(5) DEFAULT NULL,
    `KID7AGO` smallint(5) DEFAULT NULL,
    `KID8MOB` smallint(5) DEFAULT NULL,
    `KID8YOB` smallint(5) DEFAULT NULL,
    `KID8AGD` smallint(5) DEFAULT NULL,
    `KID8NEU` smallint(5) DEFAULT NULL,
    `KID8PDX` smallint(5) DEFAULT NULL,
    `KID8MOE` smallint(5) DEFAULT NULL,
    `KID8AGO` smallint(5) DEFAULT NULL,
    `KID9MOB` smallint(5) DEFAULT NULL,
    `KID9YOB` smallint(5) DEFAULT NULL,
    `KID9AGD` smallint(5) DEFAULT NULL,
    `KID9NEU` smallint(5) DEFAULT NULL,
    `KID9PDX` smallint(5) DEFAULT NULL,
    `KID9MOE` smallint(5) DEFAULT NULL,
    `KID9AGO` smallint(5) DEFAULT NULL,
    `KID10MOB` smallint(5) DEFAULT NULL,
    `KID10YOB` smallint(5) DEFAULT NULL,
    `KID10AGD` smallint(5) DEFAULT NULL,
    `KID10NEU` smallint(5) DEFAULT NULL,
    `KID10PDX` smallint(5) DEFAULT NULL,
    `KID10MOE` smallint(5) DEFAULT NULL,
    `KID10AGO` smallint(5) DEFAULT NULL,
    `KID11MOB` smallint(5) DEFAULT NULL,
    `KID11YOB` smallint(5) DEFAULT NULL,
    `KID11AGD` smallint(5) DEFAULT NULL,
    `KID11NEU` smallint(5) DEFAULT NULL,
    `KID11PDX` smallint(5) DEFAULT NULL,
    `KID11MOE` smallint(5) DEFAULT NULL,
    `KID11AGO` smallint(5) DEFAULT NULL,
    `KID12MOB` smallint(5) DEFAULT NULL,
    `KID12YOB` smallint(5) DEFAULT NULL,
    `KID12AGD` smallint(5) DEFAULT NULL,
    `KID12NEU` smallint(5) DEFAULT NULL,
    `KID12PDX` smallint(5) DEFAULT NULL,
    `KID12MOE` smallint(5) DEFAULT NULL,
    `KID12AGO` smallint(5) DEFAULT NULL,
    `KID13MOB` smallint(5) DEFAULT NULL,
    `KID13YOB` smallint(5) DEFAULT NULL,
    `KID13AGD` smallint(5) DEFAULT NULL,
    `KID13NEU` smallint(5) DEFAULT NULL,
    `KID13PDX` smallint(5) DEFAULT NULL,
    `KID13MOE` smallint(5) DEFAULT NULL,
    `KID13AGO` smallint(5) DEFAULT NULL,
    `KID14MOB` smallint(5) DEFAULT NULL,
    `KID14YOB` smallint(5) DEFAULT NULL,
    `KID14AGD` smallint(5) DEFAULT NULL,
    `KID14NEU` smallint(5) DEFAULT NULL,
    `KID14PDX` smallint(5) DEFAULT NULL,
    `KID14MOE` smallint(5) DEFAULT NULL,
    `KID14AGO` smallint(5) DEFAULT NULL,
    `KID15MOB` smallint(5) DEFAULT NULL,
    `KID15YOB` smallint(5) DEFAULT NULL,
    `KID15AGD` smallint(5) DEFAULT NULL,
    `KID15NEU` smallint(5) DEFAULT NULL,
    `KID15PDX` smallint(5) DEFAULT NULL,
    `KID15MOE` smallint(5) DEFAULT NULL,
    `KID15AGO` smallint(5) DEFAULT NULL,

  PRIMARY KEY (`InstrID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
-- Add to instrument table
insert into instrument 
set InstrName="UDS Family History 3", TableName="udsfamilyhistory3", 
  FormName="LavaWebOnly", HasVersion=0;
-- Add columns to viewproperty table
insert into viewproperty 
set messageCode='*.udsfamilyhistory3.afffamm', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='afffamm',
  required='No', proporder='1', attributes='', quickHelp='', 
  label="Are there affected first-degree relatives?:", context="r",
  list="list.uds3.common.noyesunknown", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.fadmut', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='fadmut',
  required='No', proporder='2', attributes='', quickHelp='', 
  label="In this family, is there evidence for an AD mutation? If Yes, select predominant mutation.:", context="r",
  list="uds3.udsfamilyhistory3.FADMUT", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.fadmutx', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='fadmutx',
  required='No', proporder='3', attributes='', quickHelp='', 
  label="If Yes, Other (specify):", context="r", maxLength="6", style="string";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.fadmuso', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='fadmuso',
  required='No', proporder='4', attributes='', quickHelp='', 
  label="Source of evidence for AD mutation:", context="r",
  list="uds3.udsfamilyhistory3.FADMUSO", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.fadmusox', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='fadmusox',
  required='No', proporder='5', attributes='', quickHelp='', 
  label="If other, specify:", context="r", maxLength="6", style="string";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.fftdmut', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='fftdmut',
  required='No', proporder='6', attributes='', quickHelp='', 
  label="In this family, is there evidence for an FTLD mutation? If Yes, select predominant mutation.:", context="r",
  list="uds3.udsfamilyhistory3.FFTDMUT", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.fftdmutx', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='fftdmutx',
  required='No', proporder='7', attributes='', quickHelp='', 
  label="If Yes, Other (specify):", context="r", maxLength="6", style="string";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.fftdmuso', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='fftdmuso',
  required='No', proporder='8', attributes='', quickHelp='', 
  label="Source of evidence for FTLD mutation:", context="r",
  list="uds3.udsfamilyhistory3.FADMUSO", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.fftdmusx', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='fftdmusx',
  required='No', proporder='9', attributes='', quickHelp='', 
  label="If other, specify:", context="r", maxLength="6", style="string";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.fothmut', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='fothmut',
  required='No', proporder='10', attributes='', quickHelp='', 
  label="In this family, is there evidence for a mutation other than an AD or FTLD mutation?:", context="r",
  list="uds3.udsfamilyhistory3.FOTHMUT", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.fothmutx', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='fothmutx',
  required='No', proporder='11', attributes='', quickHelp='', 
  label="If Yes, specify:", context="r", maxLength="6", style="string";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.fothmuso', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='fothmuso',
  required='No', proporder='12', attributes='', quickHelp='', 
  label="Source of evidence for other mutation:", context="r",
  list="uds3.udsfamilyhistory3.FADMUSO", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.fothmusx', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='fothmusx',
  required='No', proporder='13', attributes='', quickHelp='', 
  label="If other, specify:", context="r", maxLength="6", style="string";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.mommob', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='mommob',
  required='No', proporder='14', attributes='', quickHelp='', 
  label="Mother - Birth month:", context="r",
  list="uds3.udsinformantdemo3.INBIRMO", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.momyob', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='momyob',
  required='No', proporder='15', attributes='', quickHelp='', 
  label="Mother - Birth year:", context="r",
  list="uds3.udsfamilyhistory3.FamYOB", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.momdage', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='momdage',
  required='No', proporder='16', attributes='', quickHelp='', 
  label="Mother - Age at death:", context="r",
  list="uds3.udsfamilyhistory3.DECAGE", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.momneur', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='momneur',
  required='No', proporder='17', attributes='', quickHelp='', 
  label="Mother - Neurological problem:", context="r",
  list="uds3.udsfamilyhistory3.NEURPROB", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.momprdx', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='momprdx',
  required='No', proporder='18', attributes='', quickHelp='', 
  label="Mother - Primary diagnosis:", context="r",
  list="uds3.udsfamilyhistory3.PrimDx", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.mommoe', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='mommoe',
  required='No', proporder='19', attributes='', quickHelp='', 
  label="Mother - Method of evaluation:", context="r",
  list="uds3.udsfamilyhistory3.EvalMethod", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.momageo', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='momageo',
  required='No', proporder='20', attributes='', quickHelp='', 
  label="Mother - Age of onset:", context="r",
  list="uds3.udsfamilyhistory3.FamAge", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.dadmob', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='dadmob',
  required='No', proporder='21', attributes='', quickHelp='', 
  label="Mother - Birth month:", context="r",
  list="uds3.udsinformantdemo3.INBIRMO", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.dadyob', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='dadyob',
  required='No', proporder='22', attributes='', quickHelp='', 
  label="Mother - Birth year:", context="r",
  list="uds3.udsfamilyhistory3.FamYOB", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.daddage', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='daddage',
  required='No', proporder='23', attributes='', quickHelp='', 
  label="Mother - Age at death:", context="r",
  list="uds3.udsfamilyhistory3.DECAGE", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.dadneur', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='dadneur',
  required='No', proporder='24', attributes='', quickHelp='', 
  label="Mother - Neurological problem:", context="r",
  list="uds3.udsfamilyhistory3.NEURPROB", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.dadprdx', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='dadprdx',
  required='No', proporder='25', attributes='', quickHelp='', 
  label="Mother - Primary diagnosis:", context="r",
  list="uds3.udsfamilyhistory3.PrimDx", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.dadmoe', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='dadmoe',
  required='No', proporder='26', attributes='', quickHelp='', 
  label="Mother - Method of evaluation:", context="r",
  list="uds3.udsfamilyhistory3.EvalMethod", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.dadageo', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='dadageo',
  required='No', proporder='27', attributes='', quickHelp='', 
  label="Mother - Age of onset:", context="r",
  list="uds3.udsfamilyhistory3.FamAge", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sibs', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='sibs',
  required='No', proporder='28', attributes='', quickHelp='', 
  label="Number of full siblings?:", context="r",
  list="uds3.udsfamilyhistory3.SIBS", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib1mob', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='sib1mob',
  required='No', proporder='29', attributes='', quickHelp='', 
  label="Sibling 1 - Birth month:", context="r",
  list="uds3.udsinformantdemo3.INBIRMO", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib1yob', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='sib1yob',
  required='No', proporder='30', attributes='', quickHelp='', 
  label="Sibling 1 - Birth year:", context="r",
  list="uds3.udsfamilyhistory3.FamYOB", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib1agd', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='sib1agd',
  required='No', proporder='31', attributes='', quickHelp='', 
  label="Sibling 1 - Age at death:", context="r",
  list="uds3.udsfamilyhistory3.DECAGE", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib1neu', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='sib1neu',
  required='No', proporder='32', attributes='', quickHelp='', 
  label="Sibling 1 - Neurological problem:", context="r",
  list="uds3.udsfamilyhistory3.NEURPROB", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib1pdx', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='sib1pdx',
  required='No', proporder='33', attributes='', quickHelp='', 
  label="Sibling 1 - Primary diagnosis:", context="r",
  list="uds3.udsfamilyhistory3.PrimDx", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib1moe', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='sib1moe',
  required='No', proporder='34', attributes='', quickHelp='', 
  label="Sibling 1 - Method of evaluation:", context="r",
  list="uds3.udsfamilyhistory3.EvalMethod", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib1ago', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='sib1ago',
  required='No', proporder='35', attributes='', quickHelp='', 
  label="Sibling 1 - Age of onset:", context="r",
  list="uds3.udsfamilyhistory3.FamAge", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib2mob', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='sib2mob',
  required='No', proporder='36', attributes='', quickHelp='', 
  label="Sibling 2 - Birth month:", context="r",
  list="uds3.udsinformantdemo3.INBIRMO", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib2yob', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='sib2yob',
  required='No', proporder='37', attributes='', quickHelp='', 
  label="Sibling 2 - Birth year:", context="r",
  list="uds3.udsfamilyhistory3.FamYOB", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib2agd', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='sib2agd',
  required='No', proporder='38', attributes='', quickHelp='', 
  label="Sibling 2 - Age at death:", context="r",
  list="uds3.udsfamilyhistory3.DECAGE", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib2neu', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='sib2neu',
  required='No', proporder='39', attributes='', quickHelp='', 
  label="Sibling 2 - Neurological problem:", context="r",
  list="uds3.udsfamilyhistory3.NEURPROB", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib2pdx', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='sib2pdx',
  required='No', proporder='40', attributes='', quickHelp='', 
  label="Sibling 2 - Primary diagnosis:", context="r",
  list="uds3.udsfamilyhistory3.PrimDx", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib2moe', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='sib2moe',
  required='No', proporder='41', attributes='', quickHelp='', 
  label="Sibling 2 - Method of evaluation:", context="r",
  list="uds3.udsfamilyhistory3.EvalMethod", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib2ago', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='sib2ago',
  required='No', proporder='42', attributes='', quickHelp='', 
  label="Sibling 2 - Age of onset:", context="r",
  list="uds3.udsfamilyhistory3.FamAge", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib3mob', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='sib3mob',
  required='No', proporder='43', attributes='', quickHelp='', 
  label="Sibling 3 - Birth month:", context="r",
  list="uds3.udsinformantdemo3.INBIRMO", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib3yob', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='sib3yob',
  required='No', proporder='44', attributes='', quickHelp='', 
  label="Sibling 3 - Birth year:", context="r",
  list="uds3.udsfamilyhistory3.FamYOB", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib3agd', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='sib3agd',
  required='No', proporder='45', attributes='', quickHelp='', 
  label="Sibling 3 - Age at death:", context="r",
  list="uds3.udsfamilyhistory3.DECAGE", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib3neu', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='sib3neu',
  required='No', proporder='46', attributes='', quickHelp='', 
  label="Sibling 3 - Neurological problem:", context="r",
  list="uds3.udsfamilyhistory3.NEURPROB", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib3pdx', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='sib3pdx',
  required='No', proporder='47', attributes='', quickHelp='', 
  label="Sibling 3 - Primary diagnosis:", context="r",
  list="uds3.udsfamilyhistory3.PrimDx", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib3moe', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='sib3moe',
  required='No', proporder='48', attributes='', quickHelp='', 
  label="Sibling 3 - Method of evaluation:", context="r",
  list="uds3.udsfamilyhistory3.EvalMethod", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib3ago', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='sib3ago',
  required='No', proporder='49', attributes='', quickHelp='', 
  label="Sibling 3 - Age of onset:", context="r",
  list="uds3.udsfamilyhistory3.FamAge", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib4mob', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='sib4mob',
  required='No', proporder='50', attributes='', quickHelp='', 
  label="Sibling 4 - Birth month:", context="r",
  list="uds3.udsinformantdemo3.INBIRMO", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib4yob', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='sib4yob',
  required='No', proporder='51', attributes='', quickHelp='', 
  label="Sibling 4 - Birth year:", context="r",
  list="uds3.udsfamilyhistory3.FamYOB", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib4agd', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='sib4agd',
  required='No', proporder='52', attributes='', quickHelp='', 
  label="Sibling 4 - Age at death:", context="r",
  list="uds3.udsfamilyhistory3.DECAGE", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib4neu', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='sib4neu',
  required='No', proporder='53', attributes='', quickHelp='', 
  label="Sibling 4 - Neurological problem:", context="r",
  list="uds3.udsfamilyhistory3.NEURPROB", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib4pdx', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='sib4pdx',
  required='No', proporder='54', attributes='', quickHelp='', 
  label="Sibling 4 - Primary diagnosis:", context="r",
  list="uds3.udsfamilyhistory3.PrimDx", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib4moe', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='sib4moe',
  required='No', proporder='55', attributes='', quickHelp='', 
  label="Sibling 4 - Method of evaluation:", context="r",
  list="uds3.udsfamilyhistory3.EvalMethod", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib4ago', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='sib4ago',
  required='No', proporder='56', attributes='', quickHelp='', 
  label="Sibling 4 - Age of onset:", context="r",
  list="uds3.udsfamilyhistory3.FamAge", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib5mob', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='sib5mob',
  required='No', proporder='57', attributes='', quickHelp='', 
  label="Sibling 5 - Birth month:", context="r",
  list="uds3.udsinformantdemo3.INBIRMO", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib5yob', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='sib5yob',
  required='No', proporder='58', attributes='', quickHelp='', 
  label="Sibling 5 - Birth year:", context="r",
  list="uds3.udsfamilyhistory3.FamYOB", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib5agd', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='sib5agd',
  required='No', proporder='59', attributes='', quickHelp='', 
  label="Sibling 5 - Age at death:", context="r",
  list="uds3.udsfamilyhistory3.DECAGE", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib5neu', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='sib5neu',
  required='No', proporder='60', attributes='', quickHelp='', 
  label="Sibling 5 - Neurological problem:", context="r",
  list="uds3.udsfamilyhistory3.NEURPROB", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib5pdx', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='sib5pdx',
  required='No', proporder='61', attributes='', quickHelp='', 
  label="Sibling 5 - Primary diagnosis:", context="r",
  list="uds3.udsfamilyhistory3.PrimDx", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib5moe', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='sib5moe',
  required='No', proporder='62', attributes='', quickHelp='', 
  label="Sibling 5 - Method of evaluation:", context="r",
  list="uds3.udsfamilyhistory3.EvalMethod", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib5ago', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='sib5ago',
  required='No', proporder='63', attributes='', quickHelp='', 
  label="Sibling 5 - Age of onset:", context="r",
  list="uds3.udsfamilyhistory3.FamAge", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib6mob', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='sib6mob',
  required='No', proporder='64', attributes='', quickHelp='', 
  label="Sibling 6 - Birth month:", context="r",
  list="uds3.udsinformantdemo3.INBIRMO", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib6yob', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='sib6yob',
  required='No', proporder='65', attributes='', quickHelp='', 
  label="Sibling 6 - Birth year:", context="r",
  list="uds3.udsfamilyhistory3.FamYOB", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib6agd', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='sib6agd',
  required='No', proporder='66', attributes='', quickHelp='', 
  label="Sibling 6 - Age at death:", context="r",
  list="uds3.udsfamilyhistory3.DECAGE", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib6neu', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='sib6neu',
  required='No', proporder='67', attributes='', quickHelp='', 
  label="Sibling 6 - Neurological problem:", context="r",
  list="uds3.udsfamilyhistory3.NEURPROB", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib6pdx', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='sib6pdx',
  required='No', proporder='68', attributes='', quickHelp='', 
  label="Sibling 6 - Primary diagnosis:", context="r",
  list="uds3.udsfamilyhistory3.PrimDx", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib6moe', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='sib6moe',
  required='No', proporder='69', attributes='', quickHelp='', 
  label="Sibling 6 - Method of evaluation:", context="r",
  list="uds3.udsfamilyhistory3.EvalMethod", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib6ago', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='sib6ago',
  required='No', proporder='70', attributes='', quickHelp='', 
  label="Sibling 6 - Age of onset:", context="r",
  list="uds3.udsfamilyhistory3.FamAge", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib7mob', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='sib7mob',
  required='No', proporder='71', attributes='', quickHelp='', 
  label="Sibling 7 - Birth month:", context="r",
  list="uds3.udsinformantdemo3.INBIRMO", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib7yob', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='sib7yob',
  required='No', proporder='72', attributes='', quickHelp='', 
  label="Sibling 7 - Birth year:", context="r",
  list="uds3.udsfamilyhistory3.FamYOB", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib7agd', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='sib7agd',
  required='No', proporder='73', attributes='', quickHelp='', 
  label="Sibling 7 - Age at death:", context="r",
  list="uds3.udsfamilyhistory3.DECAGE", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib7neu', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='sib7neu',
  required='No', proporder='74', attributes='', quickHelp='', 
  label="Sibling 7 - Neurological problem:", context="r",
  list="uds3.udsfamilyhistory3.NEURPROB", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib7pdx', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='sib7pdx',
  required='No', proporder='75', attributes='', quickHelp='', 
  label="Sibling 7 - Primary diagnosis:", context="r",
  list="uds3.udsfamilyhistory3.PrimDx", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib7moe', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='sib7moe',
  required='No', proporder='76', attributes='', quickHelp='', 
  label="Sibling 7 - Method of evaluation:", context="r",
  list="uds3.udsfamilyhistory3.EvalMethod", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib7ago', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='sib7ago',
  required='No', proporder='77', attributes='', quickHelp='', 
  label="Sibling 7 - Age of onset:", context="r",
  list="uds3.udsfamilyhistory3.FamAge", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib8mob', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='sib8mob',
  required='No', proporder='78', attributes='', quickHelp='', 
  label="Sibling 8 - Birth month:", context="r",
  list="uds3.udsinformantdemo3.INBIRMO", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib8yob', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='sib8yob',
  required='No', proporder='79', attributes='', quickHelp='', 
  label="Sibling 8 - Birth year:", context="r",
  list="uds3.udsfamilyhistory3.FamYOB", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib8agd', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='sib8agd',
  required='No', proporder='80', attributes='', quickHelp='', 
  label="Sibling 8 - Age at death:", context="r",
  list="uds3.udsfamilyhistory3.DECAGE", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib8neu', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='sib8neu',
  required='No', proporder='81', attributes='', quickHelp='', 
  label="Sibling 8 - Neurological problem:", context="r",
  list="uds3.udsfamilyhistory3.NEURPROB", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib8pdx', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='sib8pdx',
  required='No', proporder='82', attributes='', quickHelp='', 
  label="Sibling 8 - Primary diagnosis:", context="r",
  list="uds3.udsfamilyhistory3.PrimDx", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib8moe', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='sib8moe',
  required='No', proporder='83', attributes='', quickHelp='', 
  label="Sibling 8 - Method of evaluation:", context="r",
  list="uds3.udsfamilyhistory3.EvalMethod", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib8ago', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='sib8ago',
  required='No', proporder='84', attributes='', quickHelp='', 
  label="Sibling 8 - Age of onset:", context="r",
  list="uds3.udsfamilyhistory3.FamAge", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib9mob', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='sib9mob',
  required='No', proporder='85', attributes='', quickHelp='', 
  label="Sibling 9 - Birth month:", context="r",
  list="uds3.udsinformantdemo3.INBIRMO", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib9yob', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='sib9yob',
  required='No', proporder='86', attributes='', quickHelp='', 
  label="Sibling 9 - Birth year:", context="r",
  list="uds3.udsfamilyhistory3.FamYOB", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib9agd', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='sib9agd',
  required='No', proporder='87', attributes='', quickHelp='', 
  label="Sibling 9 - Age at death:", context="r",
  list="uds3.udsfamilyhistory3.DECAGE", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib9neu', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='sib9neu',
  required='No', proporder='88', attributes='', quickHelp='', 
  label="Sibling 9 - Neurological problem:", context="r",
  list="uds3.udsfamilyhistory3.NEURPROB", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib9pdx', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='sib9pdx',
  required='No', proporder='89', attributes='', quickHelp='', 
  label="Sibling 9 - Primary diagnosis:", context="r",
  list="uds3.udsfamilyhistory3.PrimDx", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib9moe', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='sib9moe',
  required='No', proporder='90', attributes='', quickHelp='', 
  label="Sibling 9 - Method of evaluation:", context="r",
  list="uds3.udsfamilyhistory3.EvalMethod", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib9ago', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='sib9ago',
  required='No', proporder='91', attributes='', quickHelp='', 
  label="Sibling 9 - Age of onset:", context="r",
  list="uds3.udsfamilyhistory3.FamAge", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib10mob', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='sib10mob',
  required='No', proporder='92', attributes='', quickHelp='', 
  label="Sibling 10 - Birth month:", context="r",
  list="uds3.udsinformantdemo3.INBIRMO", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib10yob', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='sib10yob',
  required='No', proporder='93', attributes='', quickHelp='', 
  label="Sibling 10 - Birth year:", context="r",
  list="uds3.udsfamilyhistory3.FamYOB", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib10agd', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='sib10agd',
  required='No', proporder='94', attributes='', quickHelp='', 
  label="Sibling 10 - Age at death:", context="r",
  list="uds3.udsfamilyhistory3.DECAGE", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib10neu', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='sib10neu',
  required='No', proporder='95', attributes='', quickHelp='', 
  label="Sibling 10 - Neurological problem:", context="r",
  list="uds3.udsfamilyhistory3.NEURPROB", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib10pdx', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='sib10pdx',
  required='No', proporder='96', attributes='', quickHelp='', 
  label="Sibling 10 - Primary diagnosis:", context="r",
  list="uds3.udsfamilyhistory3.PrimDx", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib10moe', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='sib10moe',
  required='No', proporder='97', attributes='', quickHelp='', 
  label="Sibling 10 - Method of evaluation:", context="r",
  list="uds3.udsfamilyhistory3.EvalMethod", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib10ago', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='sib10ago',
  required='No', proporder='98', attributes='', quickHelp='', 
  label="Sibling 10 - Age of onset:", context="r",
  list="uds3.udsfamilyhistory3.FamAge", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib11mob', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='sib11mob',
  required='No', proporder='99', attributes='', quickHelp='', 
  label="Sibling 11 - Birth month:", context="r",
  list="uds3.udsinformantdemo3.INBIRMO", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib11yob', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='sib11yob',
  required='No', proporder='100', attributes='', quickHelp='', 
  label="Sibling 11 - Birth year:", context="r",
  list="uds3.udsfamilyhistory3.FamYOB", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib11agd', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='sib11agd',
  required='No', proporder='101', attributes='', quickHelp='', 
  label="Sibling 11 - Age at death:", context="r",
  list="uds3.udsfamilyhistory3.DECAGE", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib11neu', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='sib11neu',
  required='No', proporder='102', attributes='', quickHelp='', 
  label="Sibling 11 - Neurological problem:", context="r",
  list="uds3.udsfamilyhistory3.NEURPROB", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib11pdx', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='sib11pdx',
  required='No', proporder='103', attributes='', quickHelp='', 
  label="Sibling 11 - Primary diagnosis:", context="r",
  list="uds3.udsfamilyhistory3.PrimDx", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib11moe', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='sib11moe',
  required='No', proporder='104', attributes='', quickHelp='', 
  label="Sibling 11 - Method of evaluation:", context="r",
  list="uds3.udsfamilyhistory3.EvalMethod", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib11ago', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='sib11ago',
  required='No', proporder='105', attributes='', quickHelp='', 
  label="Sibling 11 - Age of onset:", context="r",
  list="uds3.udsfamilyhistory3.FamAge", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib12mob', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='sib12mob',
  required='No', proporder='106', attributes='', quickHelp='', 
  label="Sibling 12 - Birth month:", context="r",
  list="uds3.udsinformantdemo3.INBIRMO", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib12yob', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='sib12yob',
  required='No', proporder='107', attributes='', quickHelp='', 
  label="Sibling 12 - Birth year:", context="r",
  list="uds3.udsfamilyhistory3.FamYOB", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib12agd', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='sib12agd',
  required='No', proporder='108', attributes='', quickHelp='', 
  label="Sibling 12 - Age at death:", context="r",
  list="uds3.udsfamilyhistory3.DECAGE", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib12neu', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='sib12neu',
  required='No', proporder='109', attributes='', quickHelp='', 
  label="Sibling 12 - Neurological problem:", context="r",
  list="uds3.udsfamilyhistory3.NEURPROB", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib12pdx', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='sib12pdx',
  required='No', proporder='110', attributes='', quickHelp='', 
  label="Sibling 12 - Primary diagnosis:", context="r",
  list="uds3.udsfamilyhistory3.PrimDx", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib12moe', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='sib12moe',
  required='No', proporder='111', attributes='', quickHelp='', 
  label="Sibling 12 - Method of evaluation:", context="r",
  list="uds3.udsfamilyhistory3.EvalMethod", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib12ago', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='sib12ago',
  required='No', proporder='112', attributes='', quickHelp='', 
  label="Sibling 12 - Age of onset:", context="r",
  list="uds3.udsfamilyhistory3.FamAge", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib13mob', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='sib13mob',
  required='No', proporder='113', attributes='', quickHelp='', 
  label="Sibling 13 - Birth month:", context="r",
  list="uds3.udsinformantdemo3.INBIRMO", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib13yob', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='sib13yob',
  required='No', proporder='114', attributes='', quickHelp='', 
  label="Sibling 13 - Birth year:", context="r",
  list="uds3.udsfamilyhistory3.FamYOB", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib13agd', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='sib13agd',
  required='No', proporder='115', attributes='', quickHelp='', 
  label="Sibling 13 - Age at death:", context="r",
  list="uds3.udsfamilyhistory3.DECAGE", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib13neu', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='sib13neu',
  required='No', proporder='116', attributes='', quickHelp='', 
  label="Sibling 13 - Neurological problem:", context="r",
  list="uds3.udsfamilyhistory3.NEURPROB", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib13pdx', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='sib13pdx',
  required='No', proporder='117', attributes='', quickHelp='', 
  label="Sibling 13 - Primary diagnosis:", context="r",
  list="uds3.udsfamilyhistory3.PrimDx", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib13moe', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='sib13moe',
  required='No', proporder='118', attributes='', quickHelp='', 
  label="Sibling 13 - Method of evaluation:", context="r",
  list="uds3.udsfamilyhistory3.EvalMethod", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib13ago', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='sib13ago',
  required='No', proporder='119', attributes='', quickHelp='', 
  label="Sibling 13 - Age of onset:", context="r",
  list="uds3.udsfamilyhistory3.FamAge", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib14mob', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='sib14mob',
  required='No', proporder='120', attributes='', quickHelp='', 
  label="Sibling 14 - Birth month:", context="r",
  list="uds3.udsinformantdemo3.INBIRMO", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib14yob', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='sib14yob',
  required='No', proporder='121', attributes='', quickHelp='', 
  label="Sibling 14 - Birth year:", context="r",
  list="uds3.udsfamilyhistory3.FamYOB", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib14agd', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='sib14agd',
  required='No', proporder='122', attributes='', quickHelp='', 
  label="Sibling 14 - Age at death:", context="r",
  list="uds3.udsfamilyhistory3.DECAGE", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib14neu', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='sib14neu',
  required='No', proporder='123', attributes='', quickHelp='', 
  label="Sibling 14 - Neurological problem:", context="r",
  list="uds3.udsfamilyhistory3.NEURPROB", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib14pdx', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='sib14pdx',
  required='No', proporder='124', attributes='', quickHelp='', 
  label="Sibling 14 - Primary diagnosis:", context="r",
  list="uds3.udsfamilyhistory3.PrimDx", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib14moe', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='sib14moe',
  required='No', proporder='125', attributes='', quickHelp='', 
  label="Sibling 14 - Method of evaluation:", context="r",
  list="uds3.udsfamilyhistory3.EvalMethod", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib14ago', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='sib14ago',
  required='No', proporder='126', attributes='', quickHelp='', 
  label="Sibling 14 - Age of onset:", context="r",
  list="uds3.udsfamilyhistory3.FamAge", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib15mob', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='sib15mob',
  required='No', proporder='127', attributes='', quickHelp='', 
  label="Sibling 15 - Birth month:", context="r",
  list="uds3.udsinformantdemo3.INBIRMO", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib15yob', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='sib15yob',
  required='No', proporder='128', attributes='', quickHelp='', 
  label="Sibling 15 - Birth year:", context="r",
  list="uds3.udsfamilyhistory3.FamYOB", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib15agd', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='sib15agd',
  required='No', proporder='129', attributes='', quickHelp='', 
  label="Sibling 15 - Age at death:", context="r",
  list="uds3.udsfamilyhistory3.DECAGE", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib15neu', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='sib15neu',
  required='No', proporder='130', attributes='', quickHelp='', 
  label="Sibling 15 - Neurological problem:", context="r",
  list="uds3.udsfamilyhistory3.NEURPROB", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib15pdx', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='sib15pdx',
  required='No', proporder='131', attributes='', quickHelp='', 
  label="Sibling 15 - Primary diagnosis:", context="r",
  list="uds3.udsfamilyhistory3.PrimDx", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib15moe', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='sib15moe',
  required='No', proporder='132', attributes='', quickHelp='', 
  label="Sibling 15 - Method of evaluation:", context="r",
  list="uds3.udsfamilyhistory3.EvalMethod", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib15ago', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='sib15ago',
  required='No', proporder='133', attributes='', quickHelp='', 
  label="Sibling 15 - Age of onset:", context="r",
  list="uds3.udsfamilyhistory3.FamAge", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib16mob', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='sib16mob',
  required='No', proporder='134', attributes='', quickHelp='', 
  label="Sibling 16 - Birth month:", context="r",
  list="uds3.udsinformantdemo3.INBIRMO", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib16yob', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='sib16yob',
  required='No', proporder='135', attributes='', quickHelp='', 
  label="Sibling 16 - Birth year:", context="r",
  list="uds3.udsfamilyhistory3.FamYOB", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib16agd', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='sib16agd',
  required='No', proporder='136', attributes='', quickHelp='', 
  label="Sibling 16 - Age at death:", context="r",
  list="uds3.udsfamilyhistory3.DECAGE", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib16neu', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='sib16neu',
  required='No', proporder='137', attributes='', quickHelp='', 
  label="Sibling 16 - Neurological problem:", context="r",
  list="uds3.udsfamilyhistory3.NEURPROB", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib16pdx', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='sib16pdx',
  required='No', proporder='138', attributes='', quickHelp='', 
  label="Sibling 16 - Primary diagnosis:", context="r",
  list="uds3.udsfamilyhistory3.PrimDx", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib16moe', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='sib16moe',
  required='No', proporder='139', attributes='', quickHelp='', 
  label="Sibling 16 - Method of evaluation:", context="r",
  list="uds3.udsfamilyhistory3.EvalMethod", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib16ago', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='sib16ago',
  required='No', proporder='140', attributes='', quickHelp='', 
  label="Sibling 16 - Age of onset:", context="r",
  list="uds3.udsfamilyhistory3.FamAge", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib17mob', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='sib17mob',
  required='No', proporder='141', attributes='', quickHelp='', 
  label="Sibling 17 - Birth month:", context="r",
  list="uds3.udsinformantdemo3.INBIRMO", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib17yob', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='sib17yob',
  required='No', proporder='142', attributes='', quickHelp='', 
  label="Sibling 17 - Birth year:", context="r",
  list="uds3.udsfamilyhistory3.FamYOB", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib17agd', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='sib17agd',
  required='No', proporder='143', attributes='', quickHelp='', 
  label="Sibling 17 - Age at death:", context="r",
  list="uds3.udsfamilyhistory3.DECAGE", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib17neu', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='sib17neu',
  required='No', proporder='144', attributes='', quickHelp='', 
  label="Sibling 17 - Neurological problem:", context="r",
  list="uds3.udsfamilyhistory3.NEURPROB", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib17pdx', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='sib17pdx',
  required='No', proporder='145', attributes='', quickHelp='', 
  label="Sibling 17 - Primary diagnosis:", context="r",
  list="uds3.udsfamilyhistory3.PrimDx", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib17moe', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='sib17moe',
  required='No', proporder='146', attributes='', quickHelp='', 
  label="Sibling 17 - Method of evaluation:", context="r",
  list="uds3.udsfamilyhistory3.EvalMethod", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib17ago', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='sib17ago',
  required='No', proporder='147', attributes='', quickHelp='', 
  label="Sibling 17 - Age of onset:", context="r",
  list="uds3.udsfamilyhistory3.FamAge", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib18mob', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='sib18mob',
  required='No', proporder='148', attributes='', quickHelp='', 
  label="Sibling 18 - Birth month:", context="r",
  list="uds3.udsinformantdemo3.INBIRMO", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib18yob', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='sib18yob',
  required='No', proporder='149', attributes='', quickHelp='', 
  label="Sibling 18 - Birth year:", context="r",
  list="uds3.udsfamilyhistory3.FamYOB", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib18agd', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='sib18agd',
  required='No', proporder='150', attributes='', quickHelp='', 
  label="Sibling 18 - Age at death:", context="r",
  list="uds3.udsfamilyhistory3.DECAGE", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib18neu', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='sib18neu',
  required='No', proporder='151', attributes='', quickHelp='', 
  label="Sibling 18 - Neurological problem:", context="r",
  list="uds3.udsfamilyhistory3.NEURPROB", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib18pdx', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='sib18pdx',
  required='No', proporder='152', attributes='', quickHelp='', 
  label="Sibling 18 - Primary diagnosis:", context="r",
  list="uds3.udsfamilyhistory3.PrimDx", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib18moe', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='sib18moe',
  required='No', proporder='153', attributes='', quickHelp='', 
  label="Sibling 18 - Method of evaluation:", context="r",
  list="uds3.udsfamilyhistory3.EvalMethod", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib18ago', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='sib18ago',
  required='No', proporder='154', attributes='', quickHelp='', 
  label="Sibling 18 - Age of onset:", context="r",
  list="uds3.udsfamilyhistory3.FamAge", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib19mob', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='sib19mob',
  required='No', proporder='155', attributes='', quickHelp='', 
  label="Sibling 19 - Birth month:", context="r",
  list="uds3.udsinformantdemo3.INBIRMO", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib19yob', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='sib19yob',
  required='No', proporder='156', attributes='', quickHelp='', 
  label="Sibling 19 - Birth year:", context="r",
  list="uds3.udsfamilyhistory3.FamYOB", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib19agd', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='sib19agd',
  required='No', proporder='157', attributes='', quickHelp='', 
  label="Sibling 19 - Age at death:", context="r",
  list="uds3.udsfamilyhistory3.DECAGE", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib19neu', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='sib19neu',
  required='No', proporder='158', attributes='', quickHelp='', 
  label="Sibling 19 - Neurological problem:", context="r",
  list="uds3.udsfamilyhistory3.NEURPROB", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib19pdx', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='sib19pdx',
  required='No', proporder='159', attributes='', quickHelp='', 
  label="Sibling 19 - Primary diagnosis:", context="r",
  list="uds3.udsfamilyhistory3.PrimDx", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib19moe', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='sib19moe',
  required='No', proporder='160', attributes='', quickHelp='', 
  label="Sibling 19 - Method of evaluation:", context="r",
  list="uds3.udsfamilyhistory3.EvalMethod", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib19ago', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='sib19ago',
  required='No', proporder='161', attributes='', quickHelp='', 
  label="Sibling 19 - Age of onset:", context="r",
  list="uds3.udsfamilyhistory3.FamAge", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib20mob', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='sib20mob',
  required='No', proporder='162', attributes='', quickHelp='', 
  label="Sibling 20 - Birth month:", context="r",
  list="uds3.udsinformantdemo3.INBIRMO", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib20yob', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='sib20yob',
  required='No', proporder='163', attributes='', quickHelp='', 
  label="Sibling 20 - Birth year:", context="r",
  list="uds3.udsfamilyhistory3.FamYOB", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib20agd', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='sib20agd',
  required='No', proporder='164', attributes='', quickHelp='', 
  label="Sibling 20 - Age at death:", context="r",
  list="uds3.udsfamilyhistory3.DECAGE", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib20neu', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='sib20neu',
  required='No', proporder='165', attributes='', quickHelp='', 
  label="Sibling 20 - Neurological problem:", context="r",
  list="uds3.udsfamilyhistory3.NEURPROB", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib20pdx', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='sib20pdx',
  required='No', proporder='166', attributes='', quickHelp='', 
  label="Sibling 20 - Primary diagnosis:", context="r",
  list="uds3.udsfamilyhistory3.PrimDx", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib20moe', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='sib20moe',
  required='No', proporder='167', attributes='', quickHelp='', 
  label="Sibling 20 - Method of evaluation:", context="r",
  list="uds3.udsfamilyhistory3.EvalMethod", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.sib20ago', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='sib20ago',
  required='No', proporder='168', attributes='', quickHelp='', 
  label="Sibling 20 - Age of onset:", context="r",
  list="uds3.udsfamilyhistory3.FamAge", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kids', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='kids',
  required='No', proporder='169', attributes='', quickHelp='', 
  label="Number of biological children?:", context="r",
  list="uds3.common.range0_15", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid1mob', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='kid1mob',
  required='No', proporder='170', attributes='', quickHelp='', 
  label="Child 1 - Birth month:", context="r",
  list="uds3.udsinformantdemo3.INBIRMO", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid1yob', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='kid1yob',
  required='No', proporder='171', attributes='', quickHelp='', 
  label="Child 1 - Birth year:", context="r",
  list="uds3.udsfamilyhistory3.FamYOB2", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid1agd', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='kid1agd',
  required='No', proporder='172', attributes='', quickHelp='', 
  label="Child 1 - Age at death:", context="r",
  list="uds3.udsfamilyhistory3.DECAGE", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid1neu', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='kid1neu',
  required='No', proporder='173', attributes='', quickHelp='', 
  label="Child 1 - Neurological problem:", context="r",
  list="uds3.udsfamilyhistory3.NEURPROB", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid1pdx', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='kid1pdx',
  required='No', proporder='174', attributes='', quickHelp='', 
  label="Child 1 - Primary diagnosis:", context="r",
  list="uds3.udsfamilyhistory3.PrimDx", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid1moe', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='kid1moe',
  required='No', proporder='175', attributes='', quickHelp='', 
  label="Child 1 - Method of evaluation:", context="r",
  list="uds3.udsfamilyhistory3.EvalMethod", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid1ago', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='kid1ago',
  required='No', proporder='176', attributes='', quickHelp='', 
  label="Child 1 - Age of onset:", context="r",
  list="uds3.udsfamilyhistory3.FamAge", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid2mob', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='kid2mob',
  required='No', proporder='177', attributes='', quickHelp='', 
  label="Child 2 - Birth month:", context="r",
  list="uds3.udsinformantdemo3.INBIRMO", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid2yob', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='kid2yob',
  required='No', proporder='178', attributes='', quickHelp='', 
  label="Child 2 - Birth year:", context="r",
  list="uds3.udsfamilyhistory3.FamYOB2", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid2agd', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='kid2agd',
  required='No', proporder='179', attributes='', quickHelp='', 
  label="Child 2 - Age at death:", context="r",
  list="uds3.udsfamilyhistory3.DECAGE", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid2neu', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='kid2neu',
  required='No', proporder='180', attributes='', quickHelp='', 
  label="Child 2 - Neurological problem:", context="r",
  list="uds3.udsfamilyhistory3.NEURPROB", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid2pdx', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='kid2pdx',
  required='No', proporder='181', attributes='', quickHelp='', 
  label="Child 2 - Primary diagnosis:", context="r",
  list="uds3.udsfamilyhistory3.PrimDx", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid2moe', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='kid2moe',
  required='No', proporder='182', attributes='', quickHelp='', 
  label="Child 2 - Method of evaluation:", context="r",
  list="uds3.udsfamilyhistory3.EvalMethod", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid2ago', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='kid2ago',
  required='No', proporder='183', attributes='', quickHelp='', 
  label="Child 2 - Age of onset:", context="r",
  list="uds3.udsfamilyhistory3.FamAge", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid3mob', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='kid3mob',
  required='No', proporder='184', attributes='', quickHelp='', 
  label="Child 3 - Birth month:", context="r",
  list="uds3.udsinformantdemo3.INBIRMO", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid3yob', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='kid3yob',
  required='No', proporder='185', attributes='', quickHelp='', 
  label="Child 3 - Birth year:", context="r",
  list="uds3.udsfamilyhistory3.FamYOB2", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid3agd', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='kid3agd',
  required='No', proporder='186', attributes='', quickHelp='', 
  label="Child 3 - Age at death:", context="r",
  list="uds3.udsfamilyhistory3.DECAGE", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid3neu', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='kid3neu',
  required='No', proporder='187', attributes='', quickHelp='', 
  label="Child 3 - Neurological problem:", context="r",
  list="uds3.udsfamilyhistory3.NEURPROB", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid3pdx', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='kid3pdx',
  required='No', proporder='188', attributes='', quickHelp='', 
  label="Child 3 - Primary diagnosis:", context="r",
  list="uds3.udsfamilyhistory3.PrimDx", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid3moe', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='kid3moe',
  required='No', proporder='189', attributes='', quickHelp='', 
  label="Child 3 - Method of evaluation:", context="r",
  list="uds3.udsfamilyhistory3.EvalMethod", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid3ago', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='kid3ago',
  required='No', proporder='190', attributes='', quickHelp='', 
  label="Child 3 - Age of onset:", context="r",
  list="uds3.udsfamilyhistory3.FamAge", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid4mob', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='kid4mob',
  required='No', proporder='191', attributes='', quickHelp='', 
  label="Child 4 - Birth month:", context="r",
  list="uds3.udsinformantdemo3.INBIRMO", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid4yob', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='kid4yob',
  required='No', proporder='192', attributes='', quickHelp='', 
  label="Child 4 - Birth year:", context="r",
  list="uds3.udsfamilyhistory3.FamYOB2", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid4agd', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='kid4agd',
  required='No', proporder='193', attributes='', quickHelp='', 
  label="Child 4 - Age at death:", context="r",
  list="uds3.udsfamilyhistory3.DECAGE", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid4neu', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='kid4neu',
  required='No', proporder='194', attributes='', quickHelp='', 
  label="Child 4 - Neurological problem:", context="r",
  list="uds3.udsfamilyhistory3.NEURPROB", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid4pdx', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='kid4pdx',
  required='No', proporder='195', attributes='', quickHelp='', 
  label="Child 4 - Primary diagnosis:", context="r",
  list="uds3.udsfamilyhistory3.PrimDx", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid4moe', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='kid4moe',
  required='No', proporder='196', attributes='', quickHelp='', 
  label="Child 4 - Method of evaluation:", context="r",
  list="uds3.udsfamilyhistory3.EvalMethod", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid4ago', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='kid4ago',
  required='No', proporder='197', attributes='', quickHelp='', 
  label="Child 4 - Age of onset:", context="r",
  list="uds3.udsfamilyhistory3.FamAge", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid5mob', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='kid5mob',
  required='No', proporder='198', attributes='', quickHelp='', 
  label="Child 5 - Birth month:", context="r",
  list="uds3.udsinformantdemo3.INBIRMO", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid5yob', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='kid5yob',
  required='No', proporder='199', attributes='', quickHelp='', 
  label="Child 5 - Birth year:", context="r",
  list="uds3.udsfamilyhistory3.FamYOB2", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid5agd', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='kid5agd',
  required='No', proporder='200', attributes='', quickHelp='', 
  label="Child 5 - Age at death:", context="r",
  list="uds3.udsfamilyhistory3.DECAGE", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid5neu', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='kid5neu',
  required='No', proporder='201', attributes='', quickHelp='', 
  label="Child 5 - Neurological problem:", context="r",
  list="uds3.udsfamilyhistory3.NEURPROB", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid5pdx', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='kid5pdx',
  required='No', proporder='202', attributes='', quickHelp='', 
  label="Child 5 - Primary diagnosis:", context="r",
  list="uds3.udsfamilyhistory3.PrimDx", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid5moe', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='kid5moe',
  required='No', proporder='203', attributes='', quickHelp='', 
  label="Child 5 - Method of evaluation:", context="r",
  list="uds3.udsfamilyhistory3.EvalMethod", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid5ago', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='kid5ago',
  required='No', proporder='204', attributes='', quickHelp='', 
  label="Child 5 - Age of onset:", context="r",
  list="uds3.udsfamilyhistory3.FamAge", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid6mob', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='kid6mob',
  required='No', proporder='205', attributes='', quickHelp='', 
  label="Child 6 - Birth month:", context="r",
  list="uds3.udsinformantdemo3.INBIRMO", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid6yob', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='kid6yob',
  required='No', proporder='206', attributes='', quickHelp='', 
  label="Child 6 - Birth year:", context="r",
  list="uds3.udsfamilyhistory3.FamYOB2", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid6agd', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='kid6agd',
  required='No', proporder='207', attributes='', quickHelp='', 
  label="Child 6 - Age at death:", context="r",
  list="uds3.udsfamilyhistory3.DECAGE", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid6neu', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='kid6neu',
  required='No', proporder='208', attributes='', quickHelp='', 
  label="Child 6 - Neurological problem:", context="r",
  list="uds3.udsfamilyhistory3.NEURPROB", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid6pdx', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='kid6pdx',
  required='No', proporder='209', attributes='', quickHelp='', 
  label="Child 6 - Primary diagnosis:", context="r",
  list="uds3.udsfamilyhistory3.PrimDx", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid6moe', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='kid6moe',
  required='No', proporder='210', attributes='', quickHelp='', 
  label="Child 6 - Method of evaluation:", context="r",
  list="uds3.udsfamilyhistory3.EvalMethod", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid6ago', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='kid6ago',
  required='No', proporder='211', attributes='', quickHelp='', 
  label="Child 6 - Age of onset:", context="r",
  list="uds3.udsfamilyhistory3.FamAge", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid7mob', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='kid7mob',
  required='No', proporder='212', attributes='', quickHelp='', 
  label="Child 7 - Birth month:", context="r",
  list="uds3.udsinformantdemo3.INBIRMO", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid7yob', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='kid7yob',
  required='No', proporder='213', attributes='', quickHelp='', 
  label="Child 7 - Birth year:", context="r",
  list="uds3.udsfamilyhistory3.FamYOB2", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid7agd', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='kid7agd',
  required='No', proporder='214', attributes='', quickHelp='', 
  label="Child 7 - Age at death:", context="r",
  list="uds3.udsfamilyhistory3.DECAGE", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid7neu', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='kid7neu',
  required='No', proporder='215', attributes='', quickHelp='', 
  label="Child 7 - Neurological problem:", context="r",
  list="uds3.udsfamilyhistory3.NEURPROB", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid7pdx', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='kid7pdx',
  required='No', proporder='216', attributes='', quickHelp='', 
  label="Child 7 - Primary diagnosis:", context="r",
  list="uds3.udsfamilyhistory3.PrimDx", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid7moe', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='kid7moe',
  required='No', proporder='217', attributes='', quickHelp='', 
  label="Child 7 - Method of evaluation:", context="r",
  list="uds3.udsfamilyhistory3.EvalMethod", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid7ago', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='kid7ago',
  required='No', proporder='218', attributes='', quickHelp='', 
  label="Child 7 - Age of onset:", context="r",
  list="uds3.udsfamilyhistory3.FamAge", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid8mob', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='kid8mob',
  required='No', proporder='219', attributes='', quickHelp='', 
  label="Child 8 - Birth month:", context="r",
  list="uds3.udsinformantdemo3.INBIRMO", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid8yob', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='kid8yob',
  required='No', proporder='220', attributes='', quickHelp='', 
  label="Child 8 - Birth year:", context="r",
  list="uds3.udsfamilyhistory3.FamYOB2", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid8agd', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='kid8agd',
  required='No', proporder='221', attributes='', quickHelp='', 
  label="Child 8 - Age at death:", context="r",
  list="uds3.udsfamilyhistory3.DECAGE", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid8neu', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='kid8neu',
  required='No', proporder='222', attributes='', quickHelp='', 
  label="Child 8 - Neurological problem:", context="r",
  list="uds3.udsfamilyhistory3.NEURPROB", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid8pdx', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='kid8pdx',
  required='No', proporder='223', attributes='', quickHelp='', 
  label="Child 8 - Primary diagnosis:", context="r",
  list="uds3.udsfamilyhistory3.PrimDx", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid8moe', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='kid8moe',
  required='No', proporder='224', attributes='', quickHelp='', 
  label="Child 8 - Method of evaluation:", context="r",
  list="uds3.udsfamilyhistory3.EvalMethod", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid8ago', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='kid8ago',
  required='No', proporder='225', attributes='', quickHelp='', 
  label="Child 8 - Age of onset:", context="r",
  list="uds3.udsfamilyhistory3.FamAge", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid9mob', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='kid9mob',
  required='No', proporder='226', attributes='', quickHelp='', 
  label="Child 9 - Birth month:", context="r",
  list="uds3.udsinformantdemo3.INBIRMO", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid9yob', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='kid9yob',
  required='No', proporder='227', attributes='', quickHelp='', 
  label="Child 9 - Birth year:", context="r",
  list="uds3.udsfamilyhistory3.FamYOB2", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid9agd', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='kid9agd',
  required='No', proporder='228', attributes='', quickHelp='', 
  label="Child 9 - Age at death:", context="r",
  list="uds3.udsfamilyhistory3.DECAGE", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid9neu', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='kid9neu',
  required='No', proporder='229', attributes='', quickHelp='', 
  label="Child 9 - Neurological problem:", context="r",
  list="uds3.udsfamilyhistory3.NEURPROB", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid9pdx', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='kid9pdx',
  required='No', proporder='230', attributes='', quickHelp='', 
  label="Child 9 - Primary diagnosis:", context="r",
  list="uds3.udsfamilyhistory3.PrimDx", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid9moe', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='kid9moe',
  required='No', proporder='231', attributes='', quickHelp='', 
  label="Child 9 - Method of evaluation:", context="r",
  list="uds3.udsfamilyhistory3.EvalMethod", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid9ago', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='kid9ago',
  required='No', proporder='232', attributes='', quickHelp='', 
  label="Child 9 - Age of onset:", context="r",
  list="uds3.udsfamilyhistory3.FamAge", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid10mob', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='kid10mob',
  required='No', proporder='233', attributes='', quickHelp='', 
  label="Child 10 - Birth month:", context="r",
  list="uds3.udsinformantdemo3.INBIRMO", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid10yob', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='kid10yob',
  required='No', proporder='234', attributes='', quickHelp='', 
  label="Child 10 - Birth year:", context="r",
  list="uds3.udsfamilyhistory3.FamYOB2", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid10agd', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='kid10agd',
  required='No', proporder='235', attributes='', quickHelp='', 
  label="Child 10 - Age at death:", context="r",
  list="uds3.udsfamilyhistory3.DECAGE", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid10neu', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='kid10neu',
  required='No', proporder='236', attributes='', quickHelp='', 
  label="Child 10 - Neurological problem:", context="r",
  list="uds3.udsfamilyhistory3.NEURPROB", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid10pdx', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='kid10pdx',
  required='No', proporder='237', attributes='', quickHelp='', 
  label="Child 10 - Primary diagnosis:", context="r",
  list="uds3.udsfamilyhistory3.PrimDx", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid10moe', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='kid10moe',
  required='No', proporder='238', attributes='', quickHelp='', 
  label="Child 10 - Method of evaluation:", context="r",
  list="uds3.udsfamilyhistory3.EvalMethod", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid10ago', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='kid10ago',
  required='No', proporder='239', attributes='', quickHelp='', 
  label="Child 10 - Age of onset:", context="r",
  list="uds3.udsfamilyhistory3.FamAge", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid11mob', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='kid11mob',
  required='No', proporder='240', attributes='', quickHelp='', 
  label="Child 11 - Birth month:", context="r",
  list="uds3.udsinformantdemo3.INBIRMO", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid11yob', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='kid11yob',
  required='No', proporder='241', attributes='', quickHelp='', 
  label="Child 11 - Birth year:", context="r",
  list="uds3.udsfamilyhistory3.FamYOB2", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid11agd', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='kid11agd',
  required='No', proporder='242', attributes='', quickHelp='', 
  label="Child 11 - Age at death:", context="r",
  list="uds3.udsfamilyhistory3.DECAGE", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid11neu', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='kid11neu',
  required='No', proporder='243', attributes='', quickHelp='', 
  label="Child 11 - Neurological problem:", context="r",
  list="uds3.udsfamilyhistory3.NEURPROB", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid11pdx', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='kid11pdx',
  required='No', proporder='244', attributes='', quickHelp='', 
  label="Child 11 - Primary diagnosis:", context="r",
  list="uds3.udsfamilyhistory3.PrimDx", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid11moe', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='kid11moe',
  required='No', proporder='245', attributes='', quickHelp='', 
  label="Child 11 - Method of evaluation:", context="r",
  list="uds3.udsfamilyhistory3.EvalMethod", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid11ago', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='kid11ago',
  required='No', proporder='246', attributes='', quickHelp='', 
  label="Child 11 - Age of onset:", context="r",
  list="uds3.udsfamilyhistory3.FamAge", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid12mob', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='kid12mob',
  required='No', proporder='247', attributes='', quickHelp='', 
  label="Child 12 - Birth month:", context="r",
  list="uds3.udsinformantdemo3.INBIRMO", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid12yob', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='kid12yob',
  required='No', proporder='248', attributes='', quickHelp='', 
  label="Child 12 - Birth year:", context="r",
  list="uds3.udsfamilyhistory3.FamYOB2", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid12agd', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='kid12agd',
  required='No', proporder='249', attributes='', quickHelp='', 
  label="Child 12 - Age at death:", context="r",
  list="uds3.udsfamilyhistory3.DECAGE", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid12neu', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='kid12neu',
  required='No', proporder='250', attributes='', quickHelp='', 
  label="Child 12 - Neurological problem:", context="r",
  list="uds3.udsfamilyhistory3.NEURPROB", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid12pdx', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='kid12pdx',
  required='No', proporder='251', attributes='', quickHelp='', 
  label="Child 12 - Primary diagnosis:", context="r",
  list="uds3.udsfamilyhistory3.PrimDx", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid12moe', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='kid12moe',
  required='No', proporder='252', attributes='', quickHelp='', 
  label="Child 12 - Method of evaluation:", context="r",
  list="uds3.udsfamilyhistory3.EvalMethod", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid12ago', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='kid12ago',
  required='No', proporder='253', attributes='', quickHelp='', 
  label="Child 12 - Age of onset:", context="r",
  list="uds3.udsfamilyhistory3.FamAge", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid13mob', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='kid13mob',
  required='No', proporder='254', attributes='', quickHelp='', 
  label="Child 13 - Birth month:", context="r",
  list="uds3.udsinformantdemo3.INBIRMO", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid13yob', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='kid13yob',
  required='No', proporder='255', attributes='', quickHelp='', 
  label="Child 13 - Birth year:", context="r",
  list="uds3.udsfamilyhistory3.FamYOB2", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid13agd', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='kid13agd',
  required='No', proporder='256', attributes='', quickHelp='', 
  label="Child 13 - Age at death:", context="r",
  list="uds3.udsfamilyhistory3.DECAGE", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid13neu', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='kid13neu',
  required='No', proporder='257', attributes='', quickHelp='', 
  label="Child 13 - Neurological problem:", context="r",
  list="uds3.udsfamilyhistory3.NEURPROB", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid13pdx', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='kid13pdx',
  required='No', proporder='258', attributes='', quickHelp='', 
  label="Child 13 - Primary diagnosis:", context="r",
  list="uds3.udsfamilyhistory3.PrimDx", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid13moe', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='kid13moe',
  required='No', proporder='259', attributes='', quickHelp='', 
  label="Child 13 - Method of evaluation:", context="r",
  list="uds3.udsfamilyhistory3.EvalMethod", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid13ago', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='kid13ago',
  required='No', proporder='260', attributes='', quickHelp='', 
  label="Child 13 - Age of onset:", context="r",
  list="uds3.udsfamilyhistory3.FamAge", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid14mob', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='kid14mob',
  required='No', proporder='261', attributes='', quickHelp='', 
  label="Child 14 - Birth month:", context="r",
  list="uds3.udsinformantdemo3.INBIRMO", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid14yob', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='kid14yob',
  required='No', proporder='262', attributes='', quickHelp='', 
  label="Child 14 - Birth year:", context="r",
  list="uds3.udsfamilyhistory3.FamYOB2", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid14agd', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='kid14agd',
  required='No', proporder='263', attributes='', quickHelp='', 
  label="Child 14 - Age at death:", context="r",
  list="uds3.udsfamilyhistory3.DECAGE", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid14neu', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='kid14neu',
  required='No', proporder='264', attributes='', quickHelp='', 
  label="Child 14 - Neurological problem:", context="r",
  list="uds3.udsfamilyhistory3.NEURPROB", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid14pdx', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='kid14pdx',
  required='No', proporder='265', attributes='', quickHelp='', 
  label="Child 14 - Primary diagnosis:", context="r",
  list="uds3.udsfamilyhistory3.PrimDx", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid14moe', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='kid14moe',
  required='No', proporder='266', attributes='', quickHelp='', 
  label="Child 14 - Method of evaluation:", context="r",
  list="uds3.udsfamilyhistory3.EvalMethod", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid14ago', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='kid14ago',
  required='No', proporder='267', attributes='', quickHelp='', 
  label="Child 14 - Age of onset:", context="r",
  list="uds3.udsfamilyhistory3.FamAge", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid15mob', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='kid15mob',
  required='No', proporder='268', attributes='', quickHelp='', 
  label="Child 15 - Birth month:", context="r",
  list="uds3.udsinformantdemo3.INBIRMO", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid15yob', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='kid15yob',
  required='No', proporder='269', attributes='', quickHelp='', 
  label="Child 15 - Birth year:", context="r",
  list="uds3.udsfamilyhistory3.FamYOB2", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid15agd', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='kid15agd',
  required='No', proporder='270', attributes='', quickHelp='', 
  label="Child 15 - Age at death:", context="r",
  list="uds3.udsfamilyhistory3.DECAGE", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid15neu', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='kid15neu',
  required='No', proporder='271', attributes='', quickHelp='', 
  label="Child 15 - Neurological problem:", context="r",
  list="uds3.udsfamilyhistory3.NEURPROB", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid15pdx', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='kid15pdx',
  required='No', proporder='272', attributes='', quickHelp='', 
  label="Child 15 - Primary diagnosis:", context="r",
  list="uds3.udsfamilyhistory3.PrimDx", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid15moe', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='kid15moe',
  required='No', proporder='273', attributes='', quickHelp='', 
  label="Child 15 - Method of evaluation:", context="r",
  list="uds3.udsfamilyhistory3.EvalMethod", style="scale";

insert into viewproperty 
set messageCode='*.udsfamilyhistory3.kid15ago', locale='en', instance='lava', 
  scope='ucdlava', entity='udsfamilyhistory3', property='kid15ago',
  required='No', proporder='274', attributes='', quickHelp='', 
  label="Child 15 - Age of onset:", context="r",
  list="uds3.udsfamilyhistory3.FamAge", style="scale";


