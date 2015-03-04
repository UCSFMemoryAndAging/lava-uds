-- --------------------------------------------------------------------------------
-- util_CreateLQUDSView
-- --------------------------------------------------------------------------------

DROP PROCEDURE IF EXISTS `util_CreateLQUDSView`;

DELIMITER $$

CREATE PROCEDURE `util_CreateLQUDSView`(TableName varchar(50), Instrument varchar(50))
BEGIN

DECLARE lqTargetName varchar(50);
DECLARE sqlText varchar(10000) DEFAULT '';
DECLARE columnName varchar(50);
DECLARE selectColumns varchar(10000) DEFAULT '';
DECLARE udsColumns varchar(5000) DEFAULT '';
DECLARE done INT DEFAULT 0;
DECLARE c CURSOR FOR SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME=TableName;
DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

SET lqTargetName = lower(Instrument);
SET lqTargetName = replace(lqTargetName, ' ', '');

SET sqlText = CONCAT(
'-- -----------------------------------------------------\n',
'-- view lq_view_', lqTargetName, '\n',
'-- -----------------------------------------------------\n',
'DROP VIEW IF EXISTS `lq_view_', lqTargetName, '`;\n',
'CREATE OR REPLACE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `lq_view_', lqTargetName, '` AS select \n'
);

OPEN c;
read_loop: LOOP
  FETCH c INTO columnName;
  IF done THEN
    LEAVE read_loop;
  END IF;
  SET selectColumns = CONCAT(selectColumns, '`t2`.`', columnName, '`,\n');
END LOOP;
CLOSE c;

SET udsColumns = CONCAT(
'`t3`.`Packet`,\n',
'`t3`.`FormID`,\n',
'`t3`.`FormVer`,\n',
'`t3`.`ADCID`,\n',
'`t3`.`PTID`,\n',
'`t3`.`VisitMo`,\n',
'`t3`.`VisitDay`,\n',
'`t3`.`VisitYr`,\n',
'`t3`.`VisitNum`,\n',
'`t3`.`Initials`,\n',
'`t3`.`PacketDate`,\n',
'`t3`.`PacketBy`,\n',
'`t3`.`PacketStatus`,\n',
'`t3`.`PacketReason`,\n',
'`t3`.`PacketNotes`,\n',
'`t3`.`DSDate`,\n',
'`t3`.`DSBy`,\n',
'`t3`.`DSStatus`,\n',
'`t3`.`DSReason`,\n',
'`t3`.`DSNotes`,\n',
'`t3`.`LCDate`,\n',
'`t3`.`LCBy`,\n',
'`t3`.`LCStatus`,\n',
'`t3`.`LCReason`,\n',
'`t3`.`LCNotes`'
);

SET sqlText = CONCAT(
sqlText,
selectColumns,
udsColumns,
'\nFROM `instrumenttracking` `t1` join `', TableName, '` `t2` on (`t1`.`InstrID` = `t2`.`InstrID`) join `udstracking` `t3` on (`t1`.`InstrID` = `t3`.`InstrID`)\n',
'WHERE `t1`.`InstrType` = \'', Instrument, '\';\n'
);

SELECT sqlText;

END

$$
DELIMITER ;


-- --------------------------------------------------------------------------------
-- util_CreateUDSChangeVersionProc
-- --------------------------------------------------------------------------------

DROP PROCEDURE IF EXISTS `util_CreateUDSChangeVersionProc`;

DELIMITER $$

CREATE PROCEDURE `util_CreateUDSChangeVersionProc`(TableName varchar(50), EntityPrefix varchar(50))
BEGIN
-- NOTE: This only works if the database column names are the same (case insensitive)
-- as the viewproperty property names. (E.g. UDS Phone Inclusion doesn't work because
-- for some reason the developer chose property names that are different
-- from the database column names.

DECLARE entityVersion1 varchar(50) DEFAULT CONCAT(EntityPrefix,'1');
DECLARE entityVersion2 varchar(50) DEFAULT CONCAT(EntityPrefix,'2');
DECLARE entityVersion3 varchar(50) DEFAULT CONCAT(EntityPrefix,'3');

DECLARE entityVersion1Exists INT DEFAULT 0;
DECLARE entityVersion2Exists INT DEFAULT 0;
DECLARE entityVersion3Exists INT DEFAULT 0;

DECLARE version1Value varchar(10) DEFAULT 'NULL';
DECLARE version2Value varchar(10) DEFAULT 'NULL';
DECLARE version3Value varchar(10) DEFAULT 'NULL';

DECLARE nullValue varchar(10) DEFAULT 'NULL';
DECLARE unusedValue varchar(10) DEFAULT '-8';

DECLARE sqlText varchar(50000) DEFAULT '';
DECLARE columnText varchar(500) DEFAULT '';

DECLARE columnName varchar(50);
DECLARE done INT DEFAULT 0;
DECLARE c CURSOR FOR SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME=TableName ORDER BY ORDINAL_POSITION;
DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

SET sqlText = CONCAT('\n',
'DROP PROCEDURE IF EXISTS `proc_', EntityPrefix, '_change_version`;\n\n',
'DELIMITER ;;\n',
'CREATE PROCEDURE `proc_', EntityPrefix, '_change_version`(instrument_id INT, new_version VARCHAR(25))\n',
'BEGIN\n\n');

IF (SELECT EXISTS(SELECT 1 FROM viewproperty WHERE entity=entityVersion1)) THEN
  SET entityVersion1Exists = 1;
END IF;
IF (SELECT EXISTS(SELECT 1 FROM viewproperty WHERE entity=entityVersion2)) THEN
  SET entityVersion2Exists = 1;
END IF;
IF (SELECT EXISTS(SELECT 1 FROM viewproperty WHERE entity=entityVersion3)) THEN
  SET entityVersion3Exists = 1;
END IF;

IF ((entityVersion1Exists + entityVersion2Exists + entityVersion3Exists) > 1) THEN

  SET sqlText = CONCAT(sqlText,
    'DECLARE existing_version VARCHAR(25);\n',
    '\n',
    'SELECT `InstrVer` INTO existing_version FROM `instrumenttracking` WHERE `InstrID`=instrument_id;\n',
    'IF existing_version <> new_version THEN \n',
    '	UPDATE `instrumenttracking` SET `InstrVer`= new_version WHERE `InstrID`=instrument_id;\n',
    '	UPDATE `udstracking` SET `FormVer`= new_version WHERE `InstrID`=instrument_id;\n',
    '	UPDATE `', TableName,'` SET \n');

  OPEN c;
  read_loop: LOOP
    FETCH c INTO columnName;
    IF done THEN
      LEAVE read_loop;
    END IF;
    
    SET columnText = CONCAT('`', columnName, '` = CASE ');

    IF entityVersion1Exists = 1 THEN
      IF (SELECT NOT EXISTS(SELECT 1 FROM viewproperty WHERE entity=entityVersion1 AND property=columnName)) THEN
        SET version1Value = unusedValue;
      END IF;
      SET columnText = CONCAT(columnText, 'WHEN new_version = "1" THEN ', version1Value, ' ');
    END IF;  

    IF entityVersion2Exists = 1 THEN
      IF (SELECT NOT EXISTS(SELECT 1 FROM viewproperty WHERE entity=entityVersion2 AND property=columnName)) THEN
        SET version2Value = unusedValue;
      END IF;
      SET columnText = CONCAT(columnText, 'WHEN new_version = "2" THEN ', version2Value, ' ');
    END IF;  

    IF entityVersion3Exists = 1 THEN
      IF (SELECT NOT EXISTS(SELECT 1 FROM viewproperty WHERE entity=entityVersion3 AND property=columnName)) THEN
        SET version3Value = unusedValue;
      END IF;
      SET columnText = CONCAT(columnText, 'WHEN new_version = "3" THEN ', version3Value, ' ');
    END IF;  

    SET columnText = CONCAT(columnText, 'END,');

    IF NOT ((columnName = 'InstrID') OR (version1Value = nullValue AND version2Value = nullValue AND version3Value = nullValue)) THEN
      SET sqlText = CONCAT(sqlText, '\t\t', columnText, '\n');
    ELSE
      SET sqlText = sqlText;
    END IF; 
    
    -- reset back to NULL
    SET version1Value = nullValue;
    SET version2Value = nullValue;
    SET version3Value = nullValue;    
  
  END LOOP;
  CLOSE c;
  
  SET sqlText = CONCAT(sqlText, '\tWHERE InstrID=instrument_id;\nEND IF;\n\n');
  
  -- remove trailing comma for last column
  SET sqlText = REPLACE(sqlText, 'END,\n\tWHERE InstrID=instrument_id', 'END\n\tWHERE InstrID=instrument_id');
  
ELSE
  -- if there's only 1 version available, just default to the following
  SET sqlText = CONCAT(sqlText, 'CALL proc_uds_change_version(instrument_id,new_version);\n\n');
  
END IF;

SET sqlText = CONCAT(sqlText, 
  'END ;;\n',
  'DELIMITER ;\n');

SELECT sqlText;

END

$$
DELIMITER ;
