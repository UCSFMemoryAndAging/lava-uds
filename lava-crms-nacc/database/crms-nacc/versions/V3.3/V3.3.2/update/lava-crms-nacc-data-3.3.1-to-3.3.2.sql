-- ************************************************************
-- EMORY: allow users to enter decimals in udsphsysical.height
-- ************************************************************
UPDATE viewproperty
  SET attributes='onkeypress="onlyNumsAllowed(event,true,false)"'
  WHERE instance='lava' AND scope='crms-nacc' AND entity like 'udsphysical%' AND property='height';



INSERT INTO versionhistory(`Module`,`Version`,`VersionDate`,`Major`,`Minor`,`Fix`,`UpdateRequired`)
	VALUES ('lava-crms-nacc-model','3.3.2',NOW(),3,3,2,0);


 