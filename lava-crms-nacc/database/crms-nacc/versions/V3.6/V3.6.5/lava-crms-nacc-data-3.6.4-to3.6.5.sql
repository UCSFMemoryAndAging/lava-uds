update viewproperty set list='uds.rangeUnknown0_30' where entity='udsinformantdemo3' and property='inEduc';

update viewproperty set list='uds.rangeUnknown0_30' where  entity='udssubjectdemo3' and property='educ';


DROP PROCEDURE IF EXISTS `proc_udsmedications_change_version`;

DELIMITER $$

CREATE PROCEDURE `proc_udsmedications_change_version`(instrument_id INT, new_version VARCHAR(25))
BEGIN

DECLARE existing_version VARCHAR(25);


SELECT `InstrVer` INTO existing_version FROM `instrumenttracking` WHERE `InstrID`=instrument_id;
IF existing_version <> new_version THEN 
	UPDATE `instrumenttracking` SET `InstrVer`= new_version WHERE `InstrID`=instrument_id;
	UPDATE `udstracking` SET `FormVer`= new_version WHERE `InstrID`=instrument_id;
	
	IF ((new_version = '2' OR new_version = '3') AND existing_version = '1') THEN
	
		DELETE FROM udsmedicationspre1 where instrId = instrument_id;
		DELETE FROM udsmedicationsnon1 where instrId = instrument_id;
		DELETE FROM udsmedicationsvit1 where instrId = instrument_id;
		IF (existing_version = '1') THEN
			INSERT INTO udsmedications2 (InstrID) VALUES (instrument_id);
		END IF;
			
	ELSEIF (new_version = '1') THEN
	
		DELETE FROM udsmedications2 where instrId = instrument_id;
		DELETE FROM udsmedicationsdetails2 where instrId = instrument_id;
		INSERT INTO udsmedicationspre1 (InstrID) VALUES (instrument_id);
		INSERT INTO udsmedicationsnon1 (InstrID) VALUES (instrument_id);
		INSERT INTO udsmedicationsvit1 (InstrID) VALUES (instrument_id);

			
	END IF;

END IF;

END$$

DELIMITER ;

DELETE FROM versionhistory WHERE module='lava-crms-nacc-data' AND version='3.6.5';
INSERT INTO versionhistory(module,version,versiondate,major,minor,fix,updaterequired)
VALUES ('lava-crms-nacc-data','3.6.5','2015-08-11',3,6,5,0);





