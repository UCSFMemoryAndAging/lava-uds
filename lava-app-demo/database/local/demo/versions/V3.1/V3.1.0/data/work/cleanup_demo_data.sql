delete from instrumentsummary where InstrID < 0;

update patient set DOB = ADDDATE(DOB, 1095) where not DOB is null;
update patient set DOD = ADDDATE(DOD, 1095) where not DOD is null;
alter table patient drop column age;

update NACCPathology set NPFORM = ADDDATE(npform,1095) where not NPFORM is null;
update NACCPathology set NPFORMMO = MONTH(npform), NPFORMDY=DAY(npform),NPFORMYR = YEAR(npform) where not NPFORM is Null;
update NACCPathology set NPDOD = ADDDATE(NPDOD,1095) where not NPDOD is null;
update NACCPathology set NPDODMO = MONTH(NPDOD), NPDODDY=DAY(NPDOD),NPDODYR = YEAR(NPDOD) where not NPDOD is Null;

update udstracking set visitMo = (select month(dcdate) from instrumenttracking it where it.instrid = udstracking.instrid);
update udstracking set visitDay = (select day(dcdate) from instrumenttracking it where it.instrid = udstracking.instrid);
update udstracking set visitYr= (select year(dcdate) from instrumenttracking it where it.instrid = udstracking.instrid);


update udsmilestone set DEATHYR = DEATHYR + 3 where DEATHYR > 0;
update udsmilestone set DISCYR = DISCYR + 3 where DISCYR > 0;
update visit set VShortDesc = CONCAT(DATE_FORMAT(vdate,'%m/%d/%y'), MID(VshortDesc,9));
update visit set VNOTES = null;

delete from enrollmentstatus where enrollstatid < 0;




Update PatientConsent set HIPAA = 1;

update projectunit set expdate = '1/1/2012';
update projectunit set expdate = null where projUnitDesc in (select projname from instrumenttracking);



delete from tasks;
delete from crms_file;
delete from lava_file;
delete from visit where  projname IN (select projunitdesc from projectunit where not expdate is null);
delete from doctor;

update caregiver set gender = 1 where gender is null;
update caregiver set Occupation = null, iscontactNotes=null;
update contactinfo set ContactNameRev = (select FullNameRevNoSuffix from patient p where p.PIDN = contactinfo.PIDN) where careID is null;
update contactinfo set ContactNameRev = (select FullNameRev from caregiver c where c.careId = contactinfo.CareID) where not careID is null;

update contactinfo set address = concat(cast(cInfoID as char)," Parnassus Avenue"), address2 = null, city='San Francisco', state = 'CA', zip='94117';
update contactinfo set phone1 = '(555) 502-0590' where not PhoneType1 is null;
update contactinfo set phone1 = null where PhoneType1 is null;
update contactinfo set phone2 = '(555) 476-4800' where not PhoneType2 is null;
update contactinfo set phone2 = null where PhoneType2 is null;
update contactinfo set phone3 = '(555) 476-8400' where not PhoneType3 is null;
update contactinfo set phone3 = null where PhoneType3 is null;
update contactinfo set email=null,notes=null;

delete from crmsauthuserrole;
delete from authuserrole;
delete from authpermission;
delete from authrole;
delete from authusergroup;
delete from authgroup;
delete from lava_session;
delete from preference;
delete from authuser;

