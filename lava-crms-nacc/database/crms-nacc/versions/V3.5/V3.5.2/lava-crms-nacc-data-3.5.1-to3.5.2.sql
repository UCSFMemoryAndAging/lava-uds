-- *********************************************************************************
-- Bug Fix for NACC Pathology 10, item 12g, list metadata 
-- *********************************************************************************
UPDATE viewproperty SET list = 'naccpathology10.noYesUnkMissing' WHERE messageCode = '*.naccpathology10.nppath';

INSERT INTO versionhistory(module,version,versiondate,major,minor,fix,updaterequired)
VALUES ('lava-crms-nacc-data','3.5.2','2014-09-17',3,5,2,0);