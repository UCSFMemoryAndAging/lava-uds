-- no table mods

DELETE from viewproperty where entity = 'udsphysical3';

insert into viewproperty 
set messageCode='*.udsphysical3.height', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsphysical3', property='height',
  required='No', proporder='1', attributes='', quickHelp='', size=4,
  label="1. Subject height (inches) (88.8 = not assessed)", context="r", 
  list="uds.physical.HEIGHT", style="scale";

insert into viewproperty 
set messageCode='*.udsphysical3.weight', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsphysical3', property='weight',
  required='No', proporder='2', attributes='', quickHelp='', size=4,
  label="2. Subject weight (lbs) (888 = not assessed)", context="r",
  list="uds.physical.WEIGHT", style="scale";

insert into viewproperty 
set messageCode='*.udsphysical3.bpSys', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsphysical3', property='bpSys',
  required='No', proporder='3', attributes='', quickHelp='', size=4,
  label="3a/3b. Subject blood pressure - systolic/diastolic (888/888 = not assessed)", context="r",
  list="uds.physical.BPSYS", style="scale";

insert into viewproperty 
set messageCode='*.udsphysical3.bpDias', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsphysical3', property='bpDias',
  required='No', proporder='4', attributes='', quickHelp='', size=4,
  label="3b. Subject blood pressure - diastolic (888 = not assessed)", context="r",
  list="uds.physical.BPDIAS", style="scale";

insert into viewproperty 
set messageCode='*.udsphysical3.hrate', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsphysical3', property='hrate',
  required='No', proporder='5', attributes='', quickHelp='', size=4,
  label="4. Subject resting heart rate (pulse) (888 = not assessed)", context="r",
  list="uds.physical.HRATE", style="scale";

insert into viewproperty 
set messageCode='*.udsphysical3.vision', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsphysical3', property='vision',
  required='No', proporder='6', attributes='', quickHelp='', 
  label="5. Without corrective lenses, is the subject''s vision functionally normal?", context="r",
  list="uds.noYesUnknown019", style="scale";

insert into viewproperty 
set messageCode='*.udsphysical3.visCorr', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsphysical3', property='visCorr',
  required='No', proporder='7', attributes='', quickHelp='', 
  label="6. Does the subject usually wear corrective lenses?", context="r",
  list="uds.noYesUnknown019", style="scale";

insert into viewproperty 
set messageCode='*.udsphysical3.visWCorr', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsphysical3', property='visWCorr',
  required='No', proporder='8', attributes='', quickHelp='', indentLevel=1,
  label="6a. If yes, is the subject''s vision functionally normal with corrective lenses?", context="r",
  list="uds.noYesUnknown019", style="scale";

insert into viewproperty 
set messageCode='*.udsphysical3.hearing', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsphysical3', property='hearing',
  required='No', proporder='9', attributes='', quickHelp='', 
  label="7. Without a hearing aid(s), is the subject''s hearing functionally normal?", context="r",
  list="uds.noYesUnknown019", style="scale";

insert into viewproperty 
set messageCode='*.udsphysical3.hearAid', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsphysical3', property='hearAid',
  required='No', proporder='10', attributes='', quickHelp='', 
  label="8. Does the subject usually wear a hearing aid(s)?", context="r",
  list="uds.noYesUnknown019", style="scale";

insert into viewproperty 
set messageCode='*.udsphysical3.hearWAid', locale='en', instance='lava', 
  scope='crms-nacc', entity='udsphysical3', property='hearWAid',
  required='No', proporder='11', attributes='', quickHelp='', indentLevel=1,
  label="8a. If yes, is the subject''s hearing functionally normal with a hearing aid(s)?", context="r",
  list="uds.noYesUnknown019", style="scale";


