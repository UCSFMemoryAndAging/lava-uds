DELETE FROM viewproperty WHERE entity="udssubjectdemo3";

ALTER TABLE udssubjectdemo
   ADD REFERSC SMALLINT AFTER REFER,
   ADD LEARNED SMALLINT AFTER REFERX,
   ADD SOURCENW SMALLINT AFTER SOURCE,
   ADD LIVSITUA SMALLINT AFTER LIVSIT;
   
-- Add columns to viewproperty table
-- only need metadata for new and recoded properties. properties that have not changed can use UDS 2.0 metadata
insert into viewproperty 
set messageCode='*.udssubjectdemo3.reason', locale='en', instance='lava', 
  scope='crms-nacc', entity='udssubjectdemo3', property='reason',
  required='No', proporder='1', attributes='', quickHelp='', 
  label="Primary reason for coming to ADC:", context="r",
  list="uds.subjectdemo3.REASON", style="scale";

-- TODO: UDS 2 "refer" used optionsAlignment="groupTopVertical" so what style should this be?   
insert into viewproperty 
set messageCode='*.udssubjectdemo3.referSc', locale='en', instance='lava', 
  scope='crms-nacc', entity='udssubjectdemo3', property='referSc',
  required='No', proporder='2', attributes='', quickHelp='', 
  label="Principal referral source::", context="r",
  list="uds.subjectdemo3.REFERSC", style="scale";

insert into viewproperty 
set messageCode='*.udssubjectdemo3.learned', locale='en', instance='lava', 
  scope='crms-nacc', entity='udssubjectdemo3', property='learned',
  required='No', proporder='3', attributes='', quickHelp='', 
  label="If the referral source was self-referral or a non-professional contact, how did the referral source learn of the ADC?:", context="r",
  list="uds.subjectdemo3.LEARNED", style="scale";

insert into viewproperty 
set messageCode='*.udssubjectdemo3.sourceNw', locale='en', instance='lava', 
  scope='crms-nacc', entity='udssubjectdemo3', property='sourceNw',
  required='No', proporder='6', attributes='', quickHelp='', 
  label="ADC enrollment type:", context="r",
  list="uds.subjectdemo3.SOURCENW", style="scale";

insert into viewproperty 
set messageCode='*.udssubjectdemo3.maristat', locale='en', instance='lava', 
  scope='crms-nacc', entity='udssubjectdemo3', property='maristat',
  required='No', proporder='22', attributes='', quickHelp='', 
  label="Subject's current marital status::", context="r",
  list="uds.subjectdemo3.MARISTAT", style="scale";

insert into viewproperty 
set messageCode='*.udssubjectdemo3.livSitua', locale='en', instance='lava', 
  scope='crms-nacc', entity='udssubjectdemo3', property='livSitua',
  required='No', proporder='23', attributes='', quickHelp='', 
  label="What is the subject's living situation?:", context="r",
  list="uds.subjectdemo3.LIVSITUA", style="scale";

insert into viewproperty 
set messageCode='*.udssubjectdemo3.residenc', locale='en', instance='lava', 
  scope='crms-nacc', entity='udssubjectdemo3', property='residenc',
  required='No', proporder='25', attributes='', quickHelp='', 
  label="What is the subject's primary type of residence?:", context="r",
  list="uds.subjectdemo3.RESIDENC", style="scale";



