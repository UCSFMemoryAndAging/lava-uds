-- fix bug when changing from version 3 to version 2 (or version 1)
DROP PROCEDURE IF EXISTS `proc_udsfamilyhistory_change_version`;

delimiter $$

CREATE PROCEDURE `proc_udsfamilyhistory_change_version`(instrument_id INT, new_version VARCHAR(25))
BEGIN

DECLARE existing_version VARCHAR(25);

SELECT `InstrVer` INTO existing_version FROM `instrumenttracking` WHERE `InstrID`=instrument_id;
IF existing_version <> new_version THEN 
	UPDATE `instrumenttracking` SET `InstrVer`= new_version WHERE `InstrID`=instrument_id;
	UPDATE `udstracking` SET `FormVer`= new_version WHERE `InstrID`=instrument_id;
	
	IF new_version = '3' THEN

		DELETE FROM udsfamilyhistory1 WHERE instrId = instrument_id;
		DELETE FROM udsfamilyhistory2 WHERE instrId = instrument_id;
		DELETE FROM udsfamilyhistorychildren2 WHERE instrId = instrument_id;
		DELETE FROM udsfamilyhistoryrelatives2 WHERE instrId = instrument_id;
		INSERT INTO udsfamilyhistory3 (InstrID) VALUES (instrument_id);

	ELSEIF (new_version = '2') THEN
	
		DELETE FROM udsfamilyhistory1 WHERE instrId = instrument_id;
		DELETE FROM udsfamilyhistory3 WHERE instrId = instrument_id;
		INSERT INTO udsfamilyhistory2 (InstrID) VALUES (instrument_id);
		INSERT INTO udsfamilyhistorychildren2 (InstrID) VALUES (instrument_id);
		INSERT INTO udsfamilyhistoryrelatives2 (InstrID) VALUES (instrument_id);
		
	ELSEIF (new_version = '1') THEN
	
		DELETE FROM udsfamilyhistory2 WHERE instrId = instrument_id;
		DELETE FROM udsfamilyhistorychildren2 WHERE instrId = instrument_id;
		DELETE FROM udsfamilyhistoryrelatives2 WHERE instrId = instrument_id;
		DELETE FROM udsfamilyhistory3 WHERE instrId = instrument_id;
		INSERT INTO UDSFamilyHistory1 (InstrID) VALUES (instrument_id);
			
	END IF;

END IF;

END$$

DELIMITER ;

DELETE FROM versionhistory WHERE module='lava-crms-nacc-model' AND version='3.6.7';
INSERT INTO versionhistory(module,version,versiondate,major,minor,fix,updaterequired)
VALUES ('lava-crms-nacc-model','3.6.7','2015-10-05',3,6,7,0);
