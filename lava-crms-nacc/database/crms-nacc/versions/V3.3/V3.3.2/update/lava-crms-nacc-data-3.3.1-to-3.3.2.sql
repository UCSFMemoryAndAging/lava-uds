-- ************************************************************
-- EMORY: allow users to enter decimals in udsphsysical.height
-- ************************************************************
UPDATE viewproperty
  SET attributes='onkeypress="onlyNumsAllowed(event,true,false)"'
  WHERE instance='lava' AND scope='crms-nacc' AND entity like 'udsphysical%' AND property='height';

-- ***********************************************************************************
-- EMORY: fixes problem with HTML interpretation of list data (some browsers, e.g. IE)
-- ***********************************************************************************
-- ValueKey used to be "<=6 months"
SET @LISTID=(SELECT ListID FROM list WHERE ListName='udsb9mode' AND
instance='lava' AND scope='crms-nacc');
UPDATE listvalues SET ValueDesc='Subacute(&lt;=6 months)' WHERE
ListID=@LISTID AND ValueKey='2';

-- ****************************************************************************************
-- UCSF fix bug that prevented from entering a drug that was not listed in UDS Medications2
-- ****************************************************************************************
UPDATE viewproperty SET attributes = NULL WHERE entity='udsmedications2' AND property='notListed';

-- *********************************************************************************
-- UCSF fix bug for UDS Medications A4 form where columns were missing from db table
-- *********************************************************************************
ALTER TABLE `udsftldfamilyhistory` ADD COLUMN `FTDFA3F1` SMALLINT NULL DEFAULT NULL AFTER `InstrID` ;
ALTER TABLE `udsftldfamilyhistory` ADD COLUMN `FTDFA3F2` SMALLINT NULL DEFAULT NULL AFTER `FTDMOTHX` ;
ALTER TABLE `udsftldfamilyhistory` ADD COLUMN `FTDFA3F3` SMALLINT NULL DEFAULT NULL AFTER `FTDDADA` ;
ALTER TABLE `udsftldfamilyhistory` ADD COLUMN `FTDFA3F4` SMALLINT NULL DEFAULT NULL AFTER `FTDASM` ;
UPDATE `viewproperty` set label='' where entity='udsftldfamilyhistory2';

INSERT INTO versionhistory(`Module`,`Version`,`VersionDate`,`Major`,`Minor`,`Fix`,`UpdateRequired`)
	VALUES ('lava-crms-nacc-model','3.3.2',NOW(),3,3,2,0);

