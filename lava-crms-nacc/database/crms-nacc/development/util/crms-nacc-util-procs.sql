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
