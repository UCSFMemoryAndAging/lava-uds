
-- *********************************************************************************
-- UCSF fix bug for UDS Medications A4 form where columns were missing from db table
-- *********************************************************************************
ALTER TABLE `udsftldfamilyhistory` ADD COLUMN `FTDFA3F1` SMALLINT NULL DEFAULT NULL AFTER `InstrID` ;
ALTER TABLE `udsftldfamilyhistory` ADD COLUMN `FTDFA3F2` SMALLINT NULL DEFAULT NULL AFTER `FTDMOTHX` ;
ALTER TABLE `udsftldfamilyhistory` ADD COLUMN `FTDFA3F3` SMALLINT NULL DEFAULT NULL AFTER `FTDDADA` ;
ALTER TABLE `udsftldfamilyhistory` ADD COLUMN `FTDFA3F4` SMALLINT NULL DEFAULT NULL AFTER `FTDASM` ;
UPDATE `viewproperty` set label='' where entity='udsftldfamilyhistory2';

INSERT INTO versionhistory(`Module`,`Version`,`VersionDate`,`Major`,`Minor`,`Fix`,`UpdateRequired`)
	VALUES ('lava-crms-nacc-model','3.4.1',NOW(),3,4,1,0);

