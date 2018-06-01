-- UDS Language History

	
	-- Add to instrument table
	insert into instrument 
	set InstrName="UDS Language History", TableName="Multiple", 
	  FormName="LavaWebOnly", HasVersion=1;
	
	
	
	
	
	delete from viewproperty where entity="udslanguagehistory";
	insert into viewproperty 
	set messageCode='*.udslanguagehistory3.APREFLAN', locale='en', 
	  instance='lava', scope='crms-nacc', entity='udslanguagehistory3', 
	  property='APREFLAN',
	  required='No', proporder='1', attributes='', quickHelp='', 
	  label="In what language do you prefer to be evaluated?:", context="r",
	  list="udscls.language", style="scale";
	
	insert into viewproperty 
	set messageCode='*.udslanguagehistory3.AYRSPAN', locale='en', 
	  instance='lava', scope='crms-nacc', entity='udslanguagehistory3', 
	  property='AYRSPAN',
	  required='No', proporder='2', attributes='', quickHelp='', 
	  label="How many years have you lived in an environment where people speak spanish?:", context="r",
	  list="udscls.years", style="scale";
	
	insert into viewproperty 
	set messageCode='*.udslanguagehistory3.AYRENGL', locale='en', 
	  instance='lava', scope='crms-nacc', entity='udslanguagehistory3', 
	  property='AYRENGL',
	  required='No', proporder='3', attributes='', quickHelp='', 
	  label="How many years have you lived in an environment where people speak english?:", context="r",
	  list="udscls.years", style="scale";
	
	insert into viewproperty 
	set messageCode='*.udslanguagehistory3.APCSPAN', locale='en', 
	  instance='lava', scope='crms-nacc', entity='udslanguagehistory3', 
	  property='APCSPAN',
	  required='No', proporder='4', attributes='', quickHelp='', 
	  label="Approximate the percentage time during a normal day that you use Spanish:", context="r",
	  list="udscls.percent", style="scale";
	
	insert into viewproperty 
	set messageCode='*.udslanguagehistory3.APCENGL', locale='en', 
	  instance='lava', scope='crms-nacc', entity='udslanguagehistory3', 
	  property='APCENGL',
	  required='No', proporder='5', attributes='', quickHelp='', 
	  label="Approximate the percentage time during a normal day that you use English:", context="r",
	  list="udscls.percent", style="scale";
	
	insert into viewproperty 
	set messageCode='*.udslanguagehistory3.ASPKSPAN', locale='en', 
	  instance='lava', scope='crms-nacc', entity='udslanguagehistory3', 
	  property='ASPKSPAN',
	  required='No', proporder='6', attributes='', quickHelp='', 
	  label="What is your level of proficiency when you speak spanish?:", context="r",
	  list="udscls.proficiency", style="scale";
	
	insert into viewproperty 
	set messageCode='*.udslanguagehistory3.AREASPAN', locale='en', 
	  instance='lava', scope='crms-nacc', entity='udslanguagehistory3', 
	  property='AREASPAN',
	  required='No', proporder='7', attributes='', quickHelp='', 
	  label="What is your level of proficiency when you read spanish?:", context="r",
	  list="udscls.proficiency", style="scale";
	
	insert into viewproperty 
	set messageCode='*.udslanguagehistory3.AWRISPAN', locale='en', 
	  instance='lava', scope='crms-nacc', entity='udslanguagehistory3', 
	  property='AWRISPAN',
	  required='No', proporder='8', attributes='', quickHelp='', 
	  label="What is your level of proficiency when you write spanish?:", context="r",
	  list="udscls.proficiency", style="scale";
	
	insert into viewproperty 
	set messageCode='*.udslanguagehistory3.AUNDSPAN', locale='en', 
	  instance='lava', scope='crms-nacc', entity='udslanguagehistory3', 
	  property='AUNDSPAN',
	  required='No', proporder='9', attributes='', quickHelp='', 
	  label="What is your level of proficiency for understanding spoken spanish?:", context="r",
	  list="udscls.proficiency", style="scale";
	
	insert into viewproperty 
	set messageCode='*.udslanguagehistory3.ASPKENGL', locale='en', 
	  instance='lava', scope='crms-nacc', entity='udslanguagehistory3', 
	  property='ASPKENGL',
	  required='No', proporder='10', attributes='', quickHelp='', 
	  label="What is your level of proficiency when you speak english?:", context="r",
	  list="udscls.proficiency", style="scale";
	
	insert into viewproperty 
	set messageCode='*.udslanguagehistory3.AREAENGL', locale='en', 
	  instance='lava', scope='crms-nacc', entity='udslanguagehistory3', 
	  property='AREAENGL',
	  required='No', proporder='11', attributes='', quickHelp='', 
	  label="What is your level of proficiency when you read english?:", context="r",
	  list="udscls.proficiency", style="scale";
	
	insert into viewproperty 
	set messageCode='*.udslanguagehistory3.AWRIENGL', locale='en', 
	  instance='lava', scope='crms-nacc', entity='udslanguagehistory3', 
	  property='AWRIENGL',
	  required='No', proporder='12', attributes='', quickHelp='', 
	  label="What is your level of proficiency when you write english?:", context="r",
	  list="udscls.proficiency", style="scale";
	
	insert into viewproperty 
	set messageCode='*.udslanguagehistory3.AUNDENGL', locale='en', 
	  instance='lava', scope='crms-nacc', entity='udslanguagehistory3', 
	  property='AUNDENGL',
	  required='No', proporder='13', attributes='', quickHelp='', 
	  label="What is your level of proficiency for understanding spoken english?:", context="r",
	  list="udscls.proficiency", style="scale";
	
	
	
	
-- UDS Form Checklist X


-- Add to instrument table
insert into instrument 
set InstrName="UDS Form Checklist X", TableName="Multiple", 
  FormName="LavaWebOnly", HasVersion=1;




delete from viewproperty where entity="udsformchecklistx3";
insert into viewproperty 
set messageCode='*.udsformchecklistx3.langt1', locale='en', 
  instance='lava', scope='crms-nacc', entity='udsformchecklistx3', 
  property='langt1',
  required='No', proporder='1', attributes='', quickHelp='', 
  label="", context="i",
  list="udscls.language", style="scale";

insert into viewproperty 
set messageCode='*.udsformchecklistx3.langa1', locale='en', 
  instance='lava', scope='crms-nacc', entity='udsformchecklistx3', 
  property='langa1',
  required='No', proporder='2', attributes='', quickHelp='', 
  label="", context="r",
  list="udscls.language", style="scale";

insert into viewproperty 
set messageCode='*.udsformchecklistx3.langa2', locale='en', 
  instance='lava', scope='crms-nacc', entity='udsformchecklistx3', 
  property='langa2',
  required='No', proporder='3', attributes='', quickHelp='', 
  label="", context="r",
  list="udscls.language", style="scale";

insert into viewproperty 
set messageCode='*.udsformchecklistx3.a2sub', locale='en', 
  instance='lava', scope='crms-nacc', entity='udsformchecklistx3', 
  property='a2sub',
  required='No', proporder='4', attributes='', quickHelp='', 
  label="", context="r",
  list="uds.noYes01", style="scale";

insert into viewproperty 
set messageCode='*.udsformchecklistx3.a2not', locale='en', 
  instance='lava', scope='crms-nacc', entity='udsformchecklistx3', 
  property='a2not',
  required='No', proporder='5', attributes='', quickHelp='', 
  label="", context="r",
  list="udsformchecklistx.whyunable", style="scale";

insert into viewproperty 
set messageCode='*.udsformchecklistx3.langa3', locale='en', 
  instance='lava', scope='crms-nacc', entity='udsformchecklistx3', 
  property='langa3',
  required='No', proporder='6', attributes='', quickHelp='', 
  label="", context="r",
  list="udscls.language", style="scale";

insert into viewproperty 
set messageCode='*.udsformchecklistx3.a3sub', locale='en', 
  instance='lava', scope='crms-nacc', entity='udsformchecklistx3', 
  property='a3sub',
  required='No', proporder='7', attributes='', quickHelp='', 
  label="", context="r",
  list="uds.noYes01", style="scale";

insert into viewproperty 
set messageCode='*.udsformchecklistx3.a3not', locale='en', 
  instance='lava', scope='crms-nacc', entity='udsformchecklistx3', 
  property='a3not',
  required='No', proporder='8', attributes='', quickHelp='', 
  label="", context="r",
  list="udsformchecklistx.whyunable", style="scale";

insert into viewproperty 
set messageCode='*.udsformchecklistx3.langa4', locale='en', 
  instance='lava', scope='crms-nacc', entity='udsformchecklistx3', 
  property='langa4',
  required='No', proporder='9', attributes='', quickHelp='', 
  label="", context="r",
  list="udscls.language", style="scale";

insert into viewproperty 
set messageCode='*.udsformchecklistx3.a4sub', locale='en', 
  instance='lava', scope='crms-nacc', entity='udsformchecklistx3', 
  property='a4sub',
  required='No', proporder='10', attributes='', quickHelp='', 
  label="", context="r",
  list="uds.noYes01", style="scale";

insert into viewproperty 
set messageCode='*.udsformchecklistx3.a4not', locale='en', 
  instance='lava', scope='crms-nacc', entity='udsformchecklistx3', 
  property='a4not',
  required='No', proporder='11', attributes='', quickHelp='', 
  label="", context="r",
  list="udsformchecklistx.whyunable", style="scale";

insert into viewproperty 
set messageCode='*.udsformchecklistx3.langa5', locale='en', 
  instance='lava', scope='crms-nacc', entity='udsformchecklistx3', 
  property='langa5',
  required='No', proporder='12', attributes='', quickHelp='', 
  label="", context="i",
  list="udscls.language", style="scale";


insert into viewproperty 
set messageCode='*.udsformchecklistx3.langb1', locale='en', 
  instance='lava', scope='crms-nacc', entity='udsformchecklistx3', 
  property='langb1',
  required='No', proporder='2', attributes='', quickHelp='', 
  label="", context="i",
  list="udscls.language", style="scale";

insert into viewproperty 
set messageCode='*.udsformchecklistx3.b1sub', locale='en', 
  instance='lava', scope='crms-nacc', entity='udsformchecklistx3', 
  property='b1sub',
  required='No', proporder='14', attributes='', quickHelp='', 
  label="", context="i",
  list="uds.noYes01", style="scale";

insert into viewproperty 
set messageCode='*.udsformchecklistx3.b1not', locale='en', 
  instance='lava', scope='crms-nacc', entity='udsformchecklistx3', 
  property='b1not',
  required='No', proporder='15', attributes='', quickHelp='', 
  label="", context="i",
  list="udsformchecklistx.whyunable", style="scale";

insert into viewproperty 
set messageCode='*.udsformchecklistx3.langb4', locale='en', 
  instance='lava', scope='crms-nacc', entity='udsformchecklistx3', 
  property='langb4',
  required='No', proporder='16', attributes='', quickHelp='', 
  label="", context="i",
  list="udscls.language", style="scale";

insert into viewproperty 
set messageCode='*.udsformchecklistx3.langb5', locale='en', 
  instance='lava', scope='crms-nacc', entity='udsformchecklistx3', 
  property='langb5',
  required='No', proporder='17', attributes='', quickHelp='', 
  label="", context="r",
  list="udscls.language", style="scale";

insert into viewproperty 
set messageCode='*.udsformchecklistx3.b5sub', locale='en', 
  instance='lava', scope='crms-nacc', entity='udsformchecklistx3', 
  property='b5sub',
  required='No', proporder='18', attributes='', quickHelp='', 
  label="", context="r",
  list="uds.noYes01", style="scale";

insert into viewproperty 
set messageCode='*.udsformchecklistx3.b5not', locale='en', 
  instance='lava', scope='crms-nacc', entity='udsformchecklistx3', 
  property='b5not',
  required='No', proporder='19', attributes='', quickHelp='', 
  label="", context="r",
  list="udsformchecklistx.whyunable", style="scale";

insert into viewproperty 
set messageCode='*.udsformchecklistx3.langb6', locale='en', 
  instance='lava', scope='crms-nacc', entity='udsformchecklistx3', 
  property='langb6',
  required='No', proporder='20', attributes='', quickHelp='', 
  label="", context="i",
  list="udscls.language", style="scale";

insert into viewproperty 
set messageCode='*.udsformchecklistx3.b6sub', locale='en', 
  instance='lava', scope='crms-nacc', entity='udsformchecklistx3', 
  property='b6sub',
  required='No', proporder='21', attributes='', quickHelp='', 
  label="", context="i",
  list="uds.noYes01", style="scale";

insert into viewproperty 
set messageCode='*.udsformchecklistx3.b6not', locale='en', 
  instance='lava', scope='crms-nacc', entity='udsformchecklistx3', 
  property='b6not',
  required='No', proporder='22', attributes='', quickHelp='', 
  label="", context="i",
  list="udsformchecklistx.whyunable", style="scale";

insert into viewproperty 
set messageCode='*.udsformchecklistx3.langb7', locale='en', 
  instance='lava', scope='crms-nacc', entity='udsformchecklistx3', 
  property='langb7',
  required='No', proporder='23', attributes='', quickHelp='', 
  label="", context="r",
  list="udscls.language", style="scale";

insert into viewproperty 
set messageCode='*.udsformchecklistx3.b7sub', locale='en', 
  instance='lava', scope='crms-nacc', entity='udsformchecklistx3', 
  property='b7sub',
  required='No', proporder='24', attributes='', quickHelp='', 
  label="", context="r",
  list="uds.noYes01", style="scale";

insert into viewproperty 
set messageCode='*.udsformchecklistx3.b7not', locale='en', 
  instance='lava', scope='crms-nacc', entity='udsformchecklistx3', 
  property='b7not',
  required='No', proporder='25', attributes='', quickHelp='', 
  label="", context="r",
  list="udsformchecklistx.whyunable", style="scale";

insert into viewproperty 
set messageCode='*.udsformchecklistx3.langb8', locale='en', 
  instance='lava', scope='crms-nacc', entity='udsformchecklistx3', 
  property='langb8',
  required='No', proporder='26', attributes='', quickHelp='', 
  label="", context="i",
  list="udscls.language", style="scale";

insert into viewproperty 
set messageCode='*.udsformchecklistx3.langb9', locale='en', 
  instance='lava', scope='crms-nacc', entity='udsformchecklistx3', 
  property='langb9',
  required='No', proporder='27', attributes='', quickHelp='', 
  label="", context="r",
  list="udscls.language", style="scale";

insert into viewproperty 
set messageCode='*.udsformchecklistx3.langc1', locale='en', 
  instance='lava', scope='crms-nacc', entity='udsformchecklistx3', 
  property='langc1',
  required='No', proporder='28', attributes='', quickHelp='', 
  label="", context="i",
  list="udscls.language", style="scale";

insert into viewproperty 
set messageCode='*.udsformchecklistx3.langc2', locale='en', 
  instance='lava', scope='crms-nacc', entity='udsformchecklistx3', 
  property='langc2',
  required='No', proporder='29', attributes='', quickHelp='', 
  label="", context="i",
  list="udscls.language", style="scale";

insert into viewproperty 
set messageCode='*.udsformchecklistx3.langd1', locale='en', 
  instance='lava', scope='crms-nacc', entity='udsformchecklistx3', 
  property='langd1',
  required='No', proporder='30', attributes='', quickHelp='', 
  label="", context="r",
  list="udscls.language", style="scale";

insert into viewproperty 
set messageCode='*.udsformchecklistx3.langd2', locale='en', 
  instance='lava', scope='crms-nacc', entity='udsformchecklistx3', 
  property='langd2',
  required='No', proporder='31', attributes='', quickHelp='', 
  label="", context="r",
  list="udscls.language", style="scale";

insert into viewproperty 
set messageCode='*.udsformchecklistx3.langa3a', locale='en', 
  instance='lava', scope='crms-nacc', entity='udsformchecklistx3', 
  property='langa3a',
  required='No', proporder='32', attributes='', quickHelp='', 
  label="", context="i",
  list="udscls.language", style="scale";

insert into viewproperty 
set messageCode='*.udsformchecklistx3.ftda3afs', locale='en', 
  instance='lava', scope='crms-nacc', entity='udsformchecklistx3', 
  property='ftda3afs',
  required='No', proporder='33', attributes='', quickHelp='', 
  label="", context="i",
  list="uds.noYes01", style="scale";

insert into viewproperty 
set messageCode='*.udsformchecklistx3.ftda3afr', locale='en', 
  instance='lava', scope='crms-nacc', entity='udsformchecklistx3', 
  property='ftda3afr',
  required='No', proporder='34', attributes='', quickHelp='', 
  label="", context="i",
  list="udsformchecklistx.whyunable2", style="scale";

insert into viewproperty 
set messageCode='*.udsformchecklistx3.langb3f', locale='en', 
  instance='lava', scope='crms-nacc', entity='udsformchecklistx3', 
  property='langb3f',
  required='No', proporder='35', attributes='', quickHelp='', 
  label="", context="i",
  list="udscls.language", style="scale";

insert into viewproperty 
set messageCode='*.udsformchecklistx3.langb9f', locale='en', 
  instance='lava', scope='crms-nacc', entity='udsformchecklistx3', 
  property='langb9f',
  required='No', proporder='36', attributes='', quickHelp='', 
  label="", context="i",
  list="udscls.language", style="scale";

insert into viewproperty 
set messageCode='*.udsformchecklistx3.langc1f', locale='en', 
  instance='lava', scope='crms-nacc', entity='udsformchecklistx3', 
  property='langc1f',
  required='No', proporder='37', attributes='', quickHelp='', 
  label="", context="i",
  list="udscls.language", style="scale";

insert into viewproperty 
set messageCode='*.udsformchecklistx3.langc2f', locale='en', 
  instance='lava', scope='crms-nacc', entity='udsformchecklistx3', 
  property='langc2f',
  required='No', proporder='38', attributes='', quickHelp='', 
  label="", context="i",
  list="udscls.language", style="scale";

insert into viewproperty 
set messageCode='*.udsformchecklistx3.langc3f', locale='en', 
  instance='lava', scope='crms-nacc', entity='udsformchecklistx3', 
  property='langc3f',
  required='No', proporder='39', attributes='', quickHelp='', 
  label="", context="i",
  list="udscls.language", style="scale";

insert into viewproperty 
set messageCode='*.udsformchecklistx3.langc4f', locale='en', 
  instance='lava', scope='crms-nacc', entity='udsformchecklistx3', 
  property='langc4f',
  required='No', proporder='40', attributes='', quickHelp='', 
  label="", context="i",
  list="udscls.language", style="scale";

insert into viewproperty 
set messageCode='*.udsformchecklistx3.ftdc4fs', locale='en', 
  instance='lava', scope='crms-nacc', entity='udsformchecklistx3', 
  property='ftdc4fs',
  required='No', proporder='41', attributes='', quickHelp='', 
  label="", context="i",
  list="uds.noYes01", style="scale";

insert into viewproperty 
set messageCode='*.udsformchecklistx3.ftdc4fr', locale='en', 
  instance='lava', scope='crms-nacc', entity='udsformchecklistx3', 
  property='ftdc4fr',
  required='No', proporder='42', attributes='', quickHelp='', 
  label="", context="i",
  list="udsformchecklistx.whyunable2", style="scale";

insert into viewproperty 
set messageCode='*.udsformchecklistx3.langc5f', locale='en', 
  instance='lava', scope='crms-nacc', entity='udsformchecklistx3', 
  property='langc5f',
  required='No', proporder='43', attributes='', quickHelp='', 
  label="", context="i",
  list="udscls.language", style="scale";

insert into viewproperty 
set messageCode='*.udsformchecklistx3.ftdc5fs', locale='en', 
  instance='lava', scope='crms-nacc', entity='udsformchecklistx3', 
  property='ftdc5fs',
  required='No', proporder='44', attributes='', quickHelp='', 
  label="", context="i",
  list="uds.noYes01", style="scale";

insert into viewproperty 
set messageCode='*.udsformchecklistx3.ftdc5fr', locale='en', 
  instance='lava', scope='crms-nacc', entity='udsformchecklistx3', 
  property='ftdc5fr',
  required='No', proporder='45', attributes='', quickHelp='', 
  label="", context="i",
  list="udsformchecklistx.whyunable2", style="scale";

insert into viewproperty 
set messageCode='*.udsformchecklistx3.langc6f', locale='en', 
  instance='lava', scope='crms-nacc', entity='udsformchecklistx3', 
  property='langc6f',
  required='No', proporder='46', attributes='', quickHelp='', 
  label="", context="i",
  list="udscls.language", style="scale";

insert into viewproperty 
set messageCode='*.udsformchecklistx3.ftdc6fs', locale='en', 
  instance='lava', scope='crms-nacc', entity='udsformchecklistx3', 
  property='ftdc6fs',
  required='No', proporder='47', attributes='', quickHelp='', 
  label="", context="i",
  list="uds.noYes01", style="scale";

insert into viewproperty 
set messageCode='*.udsformchecklistx3.ftdc6fr', locale='en', 
  instance='lava', scope='crms-nacc', entity='udsformchecklistx3', 
  property='ftdc6fr',
  required='No', proporder='48', attributes='', quickHelp='', 
  label="", context="i",
  list="udsformchecklistx.whyunable2", style="scale";

insert into viewproperty 
set messageCode='*.udsformchecklistx3.lange2f', locale='en', 
  instance='lava', scope='crms-nacc', entity='udsformchecklistx3', 
  property='lange2f',
  required='No', proporder='49', attributes='', quickHelp='', 
  label="", context="i",
  list="udscls.language", style="scale";

insert into viewproperty 
set messageCode='*.udsformchecklistx3.lange3f', locale='en', 
  instance='lava', scope='crms-nacc', entity='udsformchecklistx3', 
  property='lange3f',
  required='No', proporder='50', attributes='', quickHelp='', 
  label="", context="i",
  list="udscls.language", style="scale";

insert into viewproperty 
set messageCode='*.udsformchecklistx3.langcls', locale='en', 
  instance='lava', scope='crms-nacc', entity='udsformchecklistx3', 
  property='langcls',
  required='No', proporder='51', attributes='', quickHelp='', 
  label="", context="i",
  list="udscls.language", style="scale";

insert into viewproperty 
set messageCode='*.udsformchecklistx3.clssub', locale='en', 
  instance='lava', scope='crms-nacc', entity='udsformchecklistx3', 
  property='clssub',
  required='No', proporder='52', attributes='', quickHelp='', 
  label="", context="i",
  list="uds.noYes01", style="scale";


DELETE FROM versionhistory WHERE module='lava-crms-nacc-data' AND version='3.6.9';
INSERT INTO versionhistory(module,version,versiondate,major,minor,fix,updaterequired)
VALUES ('lava-crms-nacc-data','3.6.9','2018-05-31',3,6,9,0);

