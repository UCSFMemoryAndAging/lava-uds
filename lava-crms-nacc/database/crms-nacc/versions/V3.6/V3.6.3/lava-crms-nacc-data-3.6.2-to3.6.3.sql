UPDATE viewproperty SET label = '3.a Hallucinations: Does the patient have hallucinations such as false visions or voices? Does he or she seem to hear or see things that are not present?'
WHERE messageCode = '*.udsnpi3.hall';

DELETE FROM versionhistory WHERE module='lava-crms-nacc-data' AND version='3.6.3';
INSERT INTO versionhistory(module,version,versiondate,major,minor,fix,updaterequired)
VALUES ('lava-crms-nacc-data','3.6.3','2015-06-30',3,6,3,0);
