update viewproperty set list='uds.c1f.range0_16Total' where entity='udsftldneuropsych3' and property='ftdsemsu';
update viewproperty set list='uds.c1f.range0_10Total' where  entity='udsftldneuropsych3' and property='ftdanats';

DELETE FROM versionhistory WHERE module='lava-crms-nacc-data' AND version='3.6.6';
INSERT INTO versionhistory(module,version,versiondate,major,minor,fix,updaterequired)
VALUES ('lava-crms-nacc-data','3.6.6','2015-08-28',3,6,6,0);
