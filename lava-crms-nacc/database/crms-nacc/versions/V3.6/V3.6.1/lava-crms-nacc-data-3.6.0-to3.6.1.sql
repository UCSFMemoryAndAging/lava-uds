UPDATE viewproperty SET list = 'uds.noYes01' WHERE entity = 'udsftldclinfeatures2' AND property IN ('ftdppasl','ftdbvcln');
UPDATE viewproperty SET list = 'uds.a2.birthMo' WHERE entity = 'udsinformantdemo3' AND property = 'inBirMo';
UPDATE viewproperty SET list = 'uds.a2.birthYr' WHERE entity = 'udsinformantdemo3' AND property = 'inBirYr';

DELETE FROM versionhistory WHERE module='lava-crms-nacc-data' AND version='3.6.1';
INSERT INTO versionhistory(module,version,versiondate,major,minor,fix,updaterequired)
VALUES ('lava-crms-nacc-data','3.6.1','2015-04-23',3,6,1,0);
