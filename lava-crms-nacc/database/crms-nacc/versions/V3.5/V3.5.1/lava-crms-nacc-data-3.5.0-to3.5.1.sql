-- *********************************************************************************
-- UCSF Add FTLD Module Visit Types
-- *********************************************************************************
INSERT INTO listvalues (ListId, instance, scope, ValueKey, ValueDesc, OrderID, modified) select ListID, 'lava', 'crms-nacc','IF','FTLD Initial Visit', 5, now()  from list where listname = 'UDSPacketTypes';
INSERT INTO listvalues (ListId, instance, scope, ValueKey, ValueDesc, OrderID, modified) select ListID, 'lava', 'crms-nacc','FF','FTLD Follow Up Visit', 6, now()  from list where listname = 'UDSPacketTypes';

UPDATE udstracking SET packet = 'IF' WHERE packet = 'I' AND formid LIKE '%F';
UPDATE udstracking SET packet = 'FF' WHERE packet = 'F' AND formid LIKE '%F';

INSERT INTO versionhistory(module,version,versiondate,major,minor,fix,updaterequired)
VALUES ('lava-crms-nacc-data','3.5.1','2014-03-07',3,5,1,0);