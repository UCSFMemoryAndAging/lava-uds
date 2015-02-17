-- only allow users to create new UDS 3.0 instruments. the only way to create a UDS 2.0 instrument is through Change Version
DELETE FROM instrument where InstrName='UDS Informant Demo';
DELETE FROM instrument where InstrName='UDS Co-Participant Demo';

-- in UDS 3.0 the form name changes from A2: Information Demographics to A2: Co-Participant Demographics, but still using the same underlying table
ALTER TABLE udsinformantdemo
   ADD INKNOWN SMALLINT AFTER INRELTOX;
   
INSERT INTO instrument (InstrName, TableName, FormName, HasVersion) VALUES ('UDS Co-Participant Demo', 'udsinformantdemo', 'LavaWebOnly', 0);
   
-- Add columns to viewproperty table

-- not using UDS 2 metadata because text changed from "informant" to "co-participant"
-- note: need separate metadata record for followup because item numbers different   
DELETE FROM viewproperty where entity="udscoparticipantdemo3";

insert into viewproperty 
set messageCode='*.udscoparticipantdemo3.inBirMo', locale='en', instance='lava', 
  scope='crms-nacc', entity='udscoparticipantdemo3', property='inBirMo',
  required='No', proporder='1', attributes='', quickHelp='', size="3",
  label="1. Co-participant's month and year of birth (MM/YYYY) (99/9999 = unknown)", context="r",
  list="uds.subjectdemo3.birthMo", style="scale";

insert into viewproperty 
set messageCode='*.udscoparticipantdemo3.inBirYr', locale='en', instance='lava', 
  scope='crms-nacc', entity='udscoparticipantdemo3', property='inBirYr',
  required='No', proporder='2', attributes='', quickHelp='', 
  label="1. Co-participant's year of birth", context="r", size="3",
  list="uds.subjectdemo3.birthYr", style="scale";

insert into viewproperty 
set messageCode='*.udscoparticipantdemo3.inSex', locale='en', instance='lava', 
  scope='crms-nacc', entity='udscoparticipantdemo3', property='inSex',
  required='No', proporder='3', attributes='', quickHelp='', 
  label="2. Co-participant's sex", context="r",
  list="uds.gender", style="scale";

insert into viewproperty 
set messageCode='*.udscoparticipantdemo3.newInf', locale='en', instance='lava', 
  scope='crms-nacc', entity='udscoparticipantdemo3', property='newInf',
  required='No', proporder='4', attributes='', quickHelp='', 
  label="Is this a new co-participant - i.e., one who was not a co-participant at any past UDS visit?", context="h",
  list="uds.noYes01", style="scale";

insert into viewproperty 
set messageCode='*.udscoparticipantdemo3.inHisp', locale='en', instance='lava', 
  scope='crms-nacc', entity='udscoparticipantdemo3', property='inHisp',
  required='No', proporder='5', attributes='', quickHelp='', 
  label="3. Does the co-participant report being of Hispanic/ Latino ethnicity (i.e., having origins from mainly Spanish-speaking Latin American country), regardless of race?", context="r",
  list="uds.noYesUnknown019", style="scale";

insert into viewproperty 
set messageCode='*.udscoparticipantdemo3.inHispOr', locale='en', instance='lava', 
  scope='crms-nacc', entity='udscoparticipantdemo3', property='inHispOr',
  required='No', proporder='6', attributes='', quickHelp='', 
  label="3a. If yes, what are the co-participant's reported origins?", context="r",
  list="uds.a1.hispanic", style="scale";

insert into viewproperty 
set messageCode='*.udscoparticipantdemo3.inHispOx', locale='en', instance='lava', 
  scope='crms-nacc', entity='udscoparticipantdemo3', property='inHispOx',
  required='No', proporder='7', attributes='onkeypress="UDS_onlyNaccCharactersAllowed(event)"', quickHelp='', 
  label="Other (specify)", context="i", maxLength="60", size="60", style="string";

insert into viewproperty 
set messageCode='*.udscoparticipantdemo3.inRace', locale='en', instance='lava', 
  scope='crms-nacc', entity='udscoparticipantdemo3', property='inRace',
  required='No', proporder='8', attributes='', quickHelp='', 
  label="4. What does the co-participant report as his or her race?", context="r",
  list="uds.a1.race", style="scale";

insert into viewproperty 
set messageCode='*.udscoparticipantdemo3.inRacex', locale='en', instance='lava', 
  scope='crms-nacc', entity='udscoparticipantdemo3', property='inRacex',
  required='No', proporder='9', attributes='onkeypress="UDS_onlyNaccCharactersAllowed(event)"', quickHelp='', 
  label="Other (specify)", context="i", maxLength="60", size="60", style="string";

insert into viewproperty 
set messageCode='*.udscoparticipantdemo3.inRaSec', locale='en', instance='lava', 
  scope='crms-nacc', entity='udscoparticipantdemo3', property='inRaSec',
  required='No', proporder='10', attributes='', quickHelp='', 
  label="5. What additional race does co-participant report?", context="r",
  list="uds.subjectdemo3.raceNone", style="scale";

insert into viewproperty 
set messageCode='*.udscoparticipantdemo3.inRaSecx', locale='en', instance='lava', 
  scope='crms-nacc', entity='udscoparticipantdemo3', property='inRaSecx',
  required='No', proporder='11', attributes='onkeypress="UDS_onlyNaccCharactersAllowed(event)"', quickHelp='', 
  label="Other (specify)", context="i", maxLength="60", size="60", style="string";

insert into viewproperty 
set messageCode='*.udscoparticipantdemo3.inRaTer', locale='en', instance='lava', 
  scope='crms-nacc', entity='udscoparticipantdemo3', property='inRaTer',
  required='No', proporder='12', attributes='', quickHelp='', 
  label="6. What additional race, beyond those reported in Questions 4 and 5, does the co-participant report?", context="r",
  list="uds.subjectdemo3.raceNone", style="scale";

insert into viewproperty 
set messageCode='*.udscoparticipantdemo3.inRaTerx', locale='en', instance='lava', 
  scope='crms-nacc', entity='udscoparticipantdemo3', property='inRaTerx',
  required='No', proporder='13', attributes='onkeypress="UDS_onlyNaccCharactersAllowed(event)"', quickHelp='', 
  label="Other (specify)", context="i", maxLength="60", size="60", style="string";

insert into viewproperty 
set messageCode='*.udscoparticipantdemo3.inEduc', locale='en', instance='lava', 
  scope='crms-nacc', entity='udscoparticipantdemo3', property='inEduc',
  required='No', proporder='14', attributes='', quickHelp='', 
  label="7. Co-participant's years of education", context="r",
  list="uds.range0_30", style="scale";

insert into viewproperty 
set messageCode='*.udscoparticipantdemo3.inRelTo', locale='en', instance='lava', 
  scope='crms-nacc', entity='udscoparticipantdemo3', property='inRelTo',
  required='No', proporder='15', attributes='', quickHelp='', 
  label="8. What is co-participant's relationship to subject?", context="r",
  list="uds.coparticipantdemo3.relation", style="scale";

insert into viewproperty 
set messageCode='*.udscoparticipantdemo3.inKnown', locale='en', instance='lava', 
  scope='crms-nacc', entity='udscoparticipantdemo3', property='inKnown',
  required='No', proporder='16', attributes='', quickHelp='', 
  label="8a. How long has the co-participant known the subject?", context="r",
  list="uds.coparticipantdemo3.inKnown", style="scale";

insert into viewproperty 
set messageCode='*.udscoparticipantdemo3.inLivWth', locale='en', instance='lava', 
  scope='crms-nacc', entity='udscoparticipantdemo3', property='inLivWth',
  required='No', proporder='17', attributes='', quickHelp='', 
  label="9. Does the co-participant live with the subject?", context="r",
  list="uds.noYes01", style="scale";

insert into viewproperty 
set messageCode='*.udscoparticipantdemo3.inVisits', locale='en', instance='lava', 
  scope='crms-nacc', entity='udscoparticipantdemo3', property='inVisits',
  required='No', proporder='18', attributes='', quickHelp='', 
  label="9a. If no, approximate frequency of in-person visits?", context="r",
  list="uds.a2.freq", style="scale";

insert into viewproperty 
set messageCode='*.udscoparticipantdemo3.inCalls', locale='en', instance='lava', 
  scope='crms-nacc', entity='udscoparticipantdemo3', property='inCalls',
  required='No', proporder='19', attributes='', quickHelp='', 
  label="9b. If no, approximate frequency of telephone contact?", context="r",
  list="uds.a2.freq", style="scale";

insert into viewproperty 
set messageCode='*.udscoparticipantdemo3.inRely', locale='en', instance='lava', 
  scope='crms-nacc', entity='udscoparticipantdemo3', property='inRely',
  required='No', proporder='20', attributes='', quickHelp='', 
  label="10. Is there a question about the co-participant's reliability?", context="r",
  list="uds.noYes01", style="scale";

-- followup metadata (item numbering differs, a little text differs, newInf is not hidden)
insert into viewproperty 
set messageCode='followup.udscoparticipantdemo3.inBirMo', locale='en', instance='lava', 
  scope='crms-nacc', prefix='followup', entity='udscoparticipantdemo3', property='inBirMo',
  required='No', proporder='1', attributes='', quickHelp='', size="3", 
  label="1. Co-participant's month and year of birth (MM/YYYY) (99/9999 = unknown)", context="r",
  list="uds.subjectdemo3.birthMo", style="scale";

insert into viewproperty 
set messageCode='followup.udscoparticipantdemo3.inBirYr', locale='en', instance='lava', 
  scope='crms-nacc', prefix='followup', entity='udscoparticipantdemo3', property='inBirYr',
  required='No', proporder='2', attributes='', quickHelp='',  size="3",
  label="Co-participant's year of birth", context="r",
  list="uds.subjectdemo3.birthYr", style="scale";

insert into viewproperty 
set messageCode='followup.udscoparticipantdemo3.inSex', locale='en', instance='lava', 
  scope='crms-nacc', prefix='followup', entity='udscoparticipantdemo3', property='inSex',
  required='No', proporder='3', attributes='', quickHelp='', 
  label="2. Co-participant's sex", context="r",
  list="uds.gender", style="scale";

insert into viewproperty 
set messageCode='followup.udscoparticipantdemo3.newInf', locale='en', instance='lava', 
  scope='crms-nacc', prefix='followup', entity='udscoparticipantdemo3', property='newInf',
  required='No', proporder='4', attributes='', quickHelp='', 
  label="3. Is this a new co-participant - i.e., one who was not a co-participant at any past UDS visit?", context="r",
  list="uds.noYes01", style="scale";

insert into viewproperty 
set messageCode='followup.udscoparticipantdemo3.inHisp', locale='en', instance='lava', 
  scope='crms-nacc', prefix='followup', entity='udscoparticipantdemo3', property='inHisp',
  required='No', proporder='5', attributes='', quickHelp='', 
  label="4. Does the co-participant report being of Hispanic/ Latino ethnicity (i.e., having origins from mainly Spanish-speaking Latin American country), regardless of race?", context="r",
  list="uds.noYesUnknown019", style="scale";

insert into viewproperty 
set messageCode='followup.udscoparticipantdemo3.inHispOr', locale='en', instance='lava', 
  scope='crms-nacc', prefix='followup', entity='udscoparticipantdemo3', property='inHispOr',
  required='No', proporder='6', attributes='', quickHelp='', 
  label="4a. If yes, what are the co-participant's reported origins?", context="r",
  list="uds.a1.hispanic", style="scale";

insert into viewproperty 
set messageCode='followup.udscoparticipantdemo3.inHispOx', locale='en', instance='lava', 
  scope='crms-nacc', prefix='followup', entity='udscoparticipantdemo3', property='inHispOx',
  required='No', proporder='7', attributes='onkeypress="UDS_onlyNaccCharactersAllowed(event)"', quickHelp='', 
  label="Other (specify)", context="i", maxLength="60", size="60", style="string";

insert into viewproperty 
set messageCode='followup.udscoparticipantdemo3.inRace', locale='en', instance='lava', 
  scope='crms-nacc', prefix='followup', entity='udscoparticipantdemo3', property='inRace',
  required='No', proporder='8', attributes='', quickHelp='', 
  label="5. What does the co-participant report as his or her race?", context="r",
  list="uds.a1.race", style="scale";

insert into viewproperty 
set messageCode='followup.udscoparticipantdemo3.inRacex', locale='en', instance='lava', 
  scope='crms-nacc', prefix='followup', entity='udscoparticipantdemo3', property='inRacex',
  required='No', proporder='9', attributes='onkeypress="UDS_onlyNaccCharactersAllowed(event)"', quickHelp='', 
  label="Other (specify)", context="i", maxLength="60", size="60", style="string";

insert into viewproperty 
set messageCode='followup.udscoparticipantdemo3.inRaSec', locale='en', instance='lava', 
  scope='crms-nacc', prefix='followup', entity='udscoparticipantdemo3', property='inRaSec',
  required='No', proporder='10', attributes='', quickHelp='', 
  label="6. What additional race does co-participant report?", context="r",
  list="uds.subjectdemo3.raceNone", style="scale";

insert into viewproperty 
set messageCode='followup.udscoparticipantdemo3.inRaSecx', locale='en', instance='lava', 
  scope='crms-nacc', prefix='followup', entity='udscoparticipantdemo3', property='inRaSecx',
  required='No', proporder='11', attributes='onkeypress="UDS_onlyNaccCharactersAllowed(event)"', quickHelp='', 
  label="Other (specify)", context="i", maxLength="60", size="60", style="string";

insert into viewproperty 
set messageCode='followup.udscoparticipantdemo3.inRaTer', locale='en', instance='lava', 
  scope='crms-nacc', prefix='followup', entity='udscoparticipantdemo3', property='inRaTer',
  required='No', proporder='12', attributes='', quickHelp='', 
  label="7. What additional race, beyond those reported in Questions 5 and 6, does the co-participant report?", context="r",
  list="uds.subjectdemo3.raceNone", style="scale";

insert into viewproperty 
set messageCode='followup.udscoparticipantdemo3.inRaTerx', locale='en', instance='lava', 
  scope='crms-nacc', prefix='followup', entity='udscoparticipantdemo3', property='inRaTerx',
  required='No', proporder='13', attributes='onkeypress="UDS_onlyNaccCharactersAllowed(event)"', quickHelp='', 
  label="Other (specify)", context="i", maxLength="60", size="60", style="string";

insert into viewproperty 
set messageCode='followup.udscoparticipantdemo3.inEduc', locale='en', instance='lava', 
  scope='crms-nacc', prefix='followup', entity='udscoparticipantdemo3', property='inEduc',
  required='No', proporder='14', attributes='', quickHelp='', 
  label="8. Co-participant's years of education", context="r",
  list="uds.range0_30", style="scale";

insert into viewproperty 
set messageCode='followup.udscoparticipantdemo3.inRelTo', locale='en', instance='lava', 
  scope='crms-nacc', prefix='followup', entity='udscoparticipantdemo3', property='inRelTo',
  required='No', proporder='15', attributes='', quickHelp='', 
  label="9. What is co-participant's relationship to subject?", context="r",
  list="uds.coparticipantdemo3.relation", style="scale";

insert into viewproperty 
set messageCode='followup.udscoparticipantdemo3.inKnown', locale='en', instance='lava', 
  scope='crms-nacc', prefix='followup', entity='udscoparticipantdemo3', property='inKnown',
  required='No', proporder='16', attributes='', quickHelp='', 
  label="9a. How long has the co-participant known the subject?", context="r",
  list="uds.coparticipantdemo3.inKnown", style="scale";

insert into viewproperty 
set messageCode='followup.udscoparticipantdemo3.inLivWth', locale='en', instance='lava', 
  scope='crms-nacc', prefix='followup', entity='udscoparticipantdemo3', property='inLivWth',
  required='No', proporder='17', attributes='', quickHelp='', 
  label="10. Does the co-participant live with the subject?", context="r",
  list="uds.noYes01", style="scale";

insert into viewproperty 
set messageCode='followup.udscoparticipantdemo3.inVisits', locale='en', instance='lava', 
  scope='crms-nacc', prefix='followup', entity='udscoparticipantdemo3', property='inVisits',
  required='No', proporder='18', attributes='', quickHelp='', 
  label="10a. If no, approximate frequency of in-person visits?", context="r",
  list="uds.a2.freq", style="scale";

insert into viewproperty 
set messageCode='followup.udscoparticipantdemo3.inCalls', locale='en', instance='lava', 
  scope='crms-nacc', prefix='followup', entity='udscoparticipantdemo3', property='inCalls',
  required='No', proporder='19', attributes='', quickHelp='', 
  label="10b. If no, approximate frequency of telephone contact?", context="r",
  list="uds.a2.freq", style="scale";

insert into viewproperty 
set messageCode='followup.udscoparticipantdemo3.inRely', locale='en', instance='lava', 
  scope='crms-nacc', prefix='followup', entity='udscoparticipantdemo3', property='inRely',
  required='No', proporder='20', attributes='', quickHelp='', 
  label="11. Is there a question about the co-participant's reliability?", context="r",
  list="uds.noYes01", style="scale";



  



