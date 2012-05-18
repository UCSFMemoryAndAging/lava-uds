delete from instrumentsummary where InstrID < 0;delete from udstracking where InstrID < 0;delete from instrumenttracking where InstrID < 0;delete from instrumentnotes where InstrID < 0;delete from visit where vid < 0;
update instrumenttracking set dcdate = ADDDATE(dcdate,1095) where not dcdate is null;update instrumenttracking set dedate = ADDDATE(dedate,1095) where not dcdate is null;update instrumenttracking set dvdate = ADDDATE(dvdate,1095) where not dcdate is null;update instrumentTracking set ageAtDC = AgeAtDC + 3 where not AgeAtDC is null; 
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
update udsmilestone set DISCYR = DISCYR + 3 where DISCYR > 0;update visit set vdate = ADDDATE(vdate,1095) where not vdate is null;update visit set ageAtVisit = AgeAtVisit + 3 where not AgeAtVisit is null; 
update visit set VShortDesc = CONCAT(DATE_FORMAT(vdate,'%m/%d/%y'), MID(VshortDesc,9));
update visit set VNOTES = null;

delete from enrollmentstatus where enrollstatid < 0;update enrollmentstatus set LatestDate = ADDDATE(LatestDate,1095) where not LatestDate is null;update enrollmentstatus set ReferredDate = ADDDATE(ReferredDate,1095) where not ReferredDate is null;update enrollmentstatus set DeferredDate = ADDDATE(DeferredDate,1095) where not DeferredDate is null;update enrollmentstatus set EligibleDate = ADDDATE(EligibleDate,1095) where not EligibleDate is null;update enrollmentstatus set IneligibleDate = ADDDATE(IneligibleDate,1095) where not IneligibleDate is null;update enrollmentstatus set DeclinedDate = ADDDATE(DeclinedDate,1095) where not DeclinedDate is null;update enrollmentstatus set EnrolledDate = ADDDATE(EnrolledDate,1095) where not EnrolledDate is null;update enrollmentstatus set ExcludedDate = ADDDATE(ExcludedDate,1095) where not ExcludedDate is null;update enrollmentstatus set WithdrewDate = ADDDATE(WithdrewDate,1095) where not WithdrewDate is null;update enrollmentstatus set InactiveDate = ADDDATE(InactiveDate,1095) where not InactiveDate is null;update enrollmentstatus set DeceasedDate = ADDDATE(DeceasedDate,1095) where not DeceasedDate is null;update enrollmentstatus set AutopsyDate = ADDDATE(AutopsyDate,1095) where not AutopsyDate is null;update enrollmentstatus set ClosedDate = ADDDATE(ClosedDate,1095) where not ClosedDate is null;update enrollmentstatus set LatestNote = null, ReferredNote = null, DeferredNote = null, EligibleNote = null, IneligibleNote = null, DeclinedNote = null, EnrolledNote = null, ExcludedNote = null, WithdrewNote = null, InactiveNote = null, DeceasedNote = null, AutopsyNote = null, ClosedNote = null, EnrollmentNotes = null;


ALTER TABLE `patientconsent` DROP COLUMN `CTcarepart` , DROP COLUMN `CTpart` , DROP COLUMN `CTmusic` , DROP COLUMN `CTfollowup` , DROP COLUMN `CTotherstudy` , DROP COLUMN `CT4t` , DROP COLUMN `CT1point5T` ,DROP COLUMN `CTmediaedu` , DROP COLUMN `CTaudio` , DROP COLUMN `CTvideo` , DROP COLUMN `CTlumbar` , DROP COLUMN `CTGeneticShare` , DROP COLUMN `CTGenetic` , DROP COLUMN `CTDNA` , DROP COLUMN `CTneuro` , DROP COLUMN `CTreasearch` , ADD COLUMN `HIPAA` TINYINT(4) NULL DEFAULT NULL  AFTER `ConsentType`;

Update PatientConsent set HIPAA = 1;update patientconsent set ConsentDate = ADDDate(ConsentDate,1095) where not ConsentDate is null;update patientconsent set ExpirationDate = ADDDate(ExpirationDate,1095) where not ExpirationDate is null;update patientconsent set WithdrawlDate = ADDDate(WithdrawlDate,1095) where not WithdrawlDate is null;

update projectunit set expdate = '1/1/2012';
update projectunit set expdate = null where projUnitDesc in (select projname from instrumenttracking);



delete from tasks;
delete from crms_file;
delete from lava_file;
delete from visit where  projname IN (select projunitdesc from projectunit where not expdate is null);delete from patientconsent where  projname IN (select projunitdesc from projectunit where not expdate is null);delete from contactlog where  projname IN (select projunitdesc from projectunit where not expdate is null);delete from enrollmentstatus where  projname IN (select projunitdesc from projectunit where not expdate is null);delete from projectunit where not expdate is null;delete from patientdoctors;
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
delete from audit_text_work;delete from audit_text_history;delete from audit_property_work;delete from audit_property_history;delete from audit_entity_work;delete from audit_entity_history;delete from audit_event_work;delete from audit_event_history;
delete from crmsauthuserrole;
delete from authuserrole;delete from crmsauthrole;
delete from authpermission;
delete from authrole;
delete from authusergroup;
delete from authgroup;delete from crmsauthuser;
delete from lava_session;
delete from preference;
delete from authuser;

