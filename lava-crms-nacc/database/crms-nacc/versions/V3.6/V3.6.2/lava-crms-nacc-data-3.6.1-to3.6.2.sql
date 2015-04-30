update viewproperty 
set label = '5. Since the last visit, is new information available concerning the status of the subject''s biological mother or father?'
where messageCode = '*.udsfamilyhistory3.nwinfpar';

update viewproperty
set label = '6. Number of full siblings?'
where messageCode = '*.udsfamilyhistory3.sibs';

update viewproperty
set label = '6a. Since the last visit, is new information available concerning the status of the subject''s siblings?'
where messageCode = '*.udsfamilyhistory3.nwinfsib';

update viewproperty
set label = '7. Number of biological children?:'
where messageCode = '*.udsfamilyhistory3.kids';

update viewproperty
set label = '7a. Since the last visit, is new information available concerning the status of the subject''s biological children?'
where messageCode = '*.udsfamilyhistory3.nwinfkid'

DELETE FROM versionhistory WHERE module='lava-crms-nacc-data' AND version='3.6.2';
INSERT INTO versionhistory(module,version,versiondate,major,minor,fix,updaterequired)
VALUES ('lava-crms-nacc-data','3.6.2','2015-04-30',3,6,2,0);
