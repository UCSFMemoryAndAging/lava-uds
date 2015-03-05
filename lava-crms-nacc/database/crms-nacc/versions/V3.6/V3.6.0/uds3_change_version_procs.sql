DROP PROCEDURE IF EXISTS `proc_udssubjectdemo_change_version`;

DELIMITER ;;
CREATE PROCEDURE `proc_udssubjectdemo_change_version`(instrument_id INT, new_version VARCHAR(25))
BEGIN

DECLARE existing_version VARCHAR(25);

SELECT `InstrVer` INTO existing_version FROM `instrumenttracking` WHERE `InstrID`=instrument_id;
IF existing_version <> new_version THEN 
	UPDATE `instrumenttracking` SET `InstrVer`= new_version WHERE `InstrID`=instrument_id;
	UPDATE `udstracking` SET `FormVer`= new_version WHERE `InstrID`=instrument_id;
	UPDATE `udssubjectdemo` SET 
		`INMDS` = CASE WHEN new_version = "1" THEN NULL WHEN new_version = "2" THEN NULL WHEN new_version = "3" THEN -8 END,
		`REASONX` = CASE WHEN new_version = "1" THEN NULL WHEN new_version = "2" THEN NULL WHEN new_version = "3" THEN -8 END,
		`REFER` = CASE WHEN new_version = "1" THEN NULL WHEN new_version = "2" THEN NULL WHEN new_version = "3" THEN -8 END,
		`REFERX` = CASE WHEN new_version = "1" THEN NULL WHEN new_version = "2" THEN NULL WHEN new_version = "3" THEN -8 END,
		`SOURCE` = CASE WHEN new_version = "1" THEN NULL WHEN new_version = "2" THEN NULL WHEN new_version = "3" THEN -8 END,
		`LIVSIT` = CASE WHEN new_version = "1" THEN NULL WHEN new_version = "2" THEN NULL WHEN new_version = "3" THEN -8 END,
		`LIVSITX` = CASE WHEN new_version = "1" THEN NULL WHEN new_version = "2" THEN NULL WHEN new_version = "3" THEN -8 END,
		`MARISTAX` = CASE WHEN new_version = "1" THEN NULL WHEN new_version = "2" THEN NULL WHEN new_version = "3" THEN -8 END,
		`RESIDENX` = CASE WHEN new_version = "1" THEN NULL WHEN new_version = "2" THEN NULL WHEN new_version = "3" THEN -8 END,
		`REFERSC` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`LEARNED` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`SOURCENW` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`LIVSITUA` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END
	WHERE InstrID=instrument_id;
END IF;

END ;;
DELIMITER ;



DROP PROCEDURE IF EXISTS `proc_udsinformantdemo_change_version`;

DELIMITER ;;
CREATE PROCEDURE `proc_udsinformantdemo_change_version`(instrument_id INT, new_version VARCHAR(25))
BEGIN

DECLARE existing_version VARCHAR(25);

SELECT `InstrVer` INTO existing_version FROM `instrumenttracking` WHERE `InstrID`=instrument_id;
IF existing_version <> new_version THEN 
	UPDATE `instrumenttracking` SET `InstrVer`= new_version WHERE `InstrID`=instrument_id;
	UPDATE `udstracking` SET `FormVer`= new_version WHERE `InstrID`=instrument_id;
	UPDATE `udsinformantdemo` SET 
		`INRELTOX` = CASE WHEN new_version = "1" THEN NULL WHEN new_version = "2" THEN NULL WHEN new_version = "3" THEN -8 END,
		`INKNOWN` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END
	WHERE InstrID=instrument_id;
END IF;

END ;;
DELIMITER ;




DROP PROCEDURE IF EXISTS `proc_udsfamilyhistory_change_version`;

DELIMITER ;;
CREATE PROCEDURE `proc_udsfamilyhistory_change_version`(instrument_id INT, new_version VARCHAR(25))
BEGIN

DECLARE existing_version VARCHAR(25);

SELECT `InstrVer` INTO existing_version FROM `instrumenttracking` WHERE `InstrID`=instrument_id;
IF existing_version <> new_version THEN 
	UPDATE `instrumenttracking` SET `InstrVer`= new_version WHERE `InstrID`=instrument_id;
	UPDATE `udstracking` SET `FormVer`= new_version WHERE `InstrID`=instrument_id;
	
	IF new_version = '3' THEN

		DELETE FROM udsfamilyhistory1 where instrId = instrument_id;
		DELETE FROM udsfamilyhistory2 where instrId = instrument_id;
		DELETE FROM udsfamilyhistorychildren2 where instrId = instrument_id;
		DELETE FROM udsfamilyhistoryrelatives2 where instrId = instrument_id;
		INSERT INTO udsfamilyhistory3 (InstrID) VALUES (instrument_id);

	ELSEIF (new_version = '2') THEN
	
		DELETE FROM udsfamilyhistory1 where instrId = instrument_id;
		INSERT INTO udsfamilyhistory2 (InstrID) VALUES (instrument_id);
		INSERT INTO udsfamilyhistorychildren2 (InstrID) VALUES (instrument_id);
		INSERT INTO udsfamilyhistoryrelatives2 (InstrID) VALUES (instrument_id);
		
	ELSEIF (new_version = '1') THEN
	
		DELETE FROM udsfamilyhistory2 where instrId = instrument_id;
		DELETE FROM udsfamilyhistorychildren2 where instrId = instrument_id;
		DELETE FROM udsfamilyhistoryrelatives2 where instrId = instrument_id;
		INSERT INTO UDSFamilyHistory1 (InstrID) VALUES (instrument_id);
			
	END IF;

END IF;

END ;;
DELIMITER ;





DROP PROCEDURE IF EXISTS `proc_udsmedications_change_version`;

DELIMITER ;;
CREATE PROCEDURE `proc_udsmedications_change_version`(instrument_id INT, new_version VARCHAR(25))
BEGIN

DECLARE existing_version VARCHAR(25);


SELECT `InstrVer` INTO existing_version FROM `instrumenttracking` WHERE `InstrID`=instrument_id;
IF existing_version <> new_version THEN 
	UPDATE `instrumenttracking` SET `InstrVer`= new_version WHERE `InstrID`=instrument_id;
	UPDATE `udstracking` SET `FormVer`= new_version WHERE `InstrID`=instrument_id;
	
	IF (new_version = '2' OR new_version = '3') THEN
	
		DELETE FROM udsmedicationspre1 where instrId = instrument_id;
		DELETE FROM udsmedicationsnon1 where instrId = instrument_id;
		DELETE FROM udsmedicationsvit1 where instrId = instrument_id;
		INSERT INTO udsmedications2 (InstrID) VALUES (instrument_id);
			
	ELSEIF (new_version = '1') THEN
	
		DELETE FROM udsmedications2 where instrId = instrument_id;
		DELETE FROM udsmedicationsdetails2 where instrId = instrument_id;
		INSERT INTO udsmedicationspre1 (InstrID) VALUES (instrument_id);
		INSERT INTO udsmedicationsnon1 (InstrID) VALUES (instrument_id);
		INSERT INTO udsmedicationsvit1 (InstrID) VALUES (instrument_id);

			
	END IF;

END IF;

END ;;
DELIMITER ;




DROP PROCEDURE IF EXISTS `proc_udshealthhistory_change_version`;

DELIMITER ;;
CREATE PROCEDURE `proc_udshealthhistory_change_version`(instrument_id INT, new_version VARCHAR(25))
BEGIN

DECLARE existing_version VARCHAR(25);

SELECT `InstrVer` INTO existing_version FROM `instrumenttracking` WHERE `InstrID`=instrument_id;
IF existing_version <> new_version THEN 
	UPDATE `instrumenttracking` SET `InstrVer`= new_version WHERE `InstrID`=instrument_id;
	UPDATE `udstracking` SET `FormVer`= new_version WHERE `InstrID`=instrument_id;
	UPDATE `udshealthhistory` SET 
		`CVPACE` = CASE WHEN new_version = "1" THEN NULL WHEN new_version = "2" THEN NULL WHEN new_version = "3" THEN -8 END,
		`STROK1YR` = CASE WHEN new_version = "1" THEN NULL WHEN new_version = "2" THEN NULL WHEN new_version = "3" THEN -8 END,
		`STROK2YR` = CASE WHEN new_version = "1" THEN NULL WHEN new_version = "2" THEN NULL WHEN new_version = "3" THEN -8 END,
		`STROK3YR` = CASE WHEN new_version = "1" THEN NULL WHEN new_version = "2" THEN NULL WHEN new_version = "3" THEN -8 END,
		`STROK4YR` = CASE WHEN new_version = "1" THEN NULL WHEN new_version = "2" THEN NULL WHEN new_version = "3" THEN -8 END,
		`STROK5YR` = CASE WHEN new_version = "1" THEN NULL WHEN new_version = "2" THEN NULL WHEN new_version = "3" THEN -8 END,
		`STROK6YR` = CASE WHEN new_version = "1" THEN NULL WHEN new_version = "2" THEN NULL WHEN new_version = "3" THEN -8 END,
		`TIA1YR` = CASE WHEN new_version = "1" THEN NULL WHEN new_version = "2" THEN NULL WHEN new_version = "3" THEN -8 END,
		`TIA2YR` = CASE WHEN new_version = "1" THEN NULL WHEN new_version = "2" THEN NULL WHEN new_version = "3" THEN -8 END,
		`TIA3YR` = CASE WHEN new_version = "1" THEN NULL WHEN new_version = "2" THEN NULL WHEN new_version = "3" THEN -8 END,
		`TIA4YR` = CASE WHEN new_version = "1" THEN NULL WHEN new_version = "2" THEN NULL WHEN new_version = "3" THEN -8 END,
		`TIA5YR` = CASE WHEN new_version = "1" THEN NULL WHEN new_version = "2" THEN NULL WHEN new_version = "3" THEN -8 END,
		`TIA6YR` = CASE WHEN new_version = "1" THEN NULL WHEN new_version = "2" THEN NULL WHEN new_version = "3" THEN -8 END,
		`CBOTHR` = CASE WHEN new_version = "1" THEN NULL WHEN new_version = "2" THEN NULL WHEN new_version = "3" THEN -8 END,
		`CBOTHRX` = CASE WHEN new_version = "1" THEN NULL WHEN new_version = "2" THEN NULL WHEN new_version = "3" THEN -8 END,
		`TRAUMBRF` = CASE WHEN new_version = "1" THEN NULL WHEN new_version = "2" THEN NULL WHEN new_version = "3" THEN -8 END,
		`TRAUMEXT` = CASE WHEN new_version = "1" THEN NULL WHEN new_version = "2" THEN NULL WHEN new_version = "3" THEN -8 END,
		`TRAUMCHR` = CASE WHEN new_version = "1" THEN NULL WHEN new_version = "2" THEN NULL WHEN new_version = "3" THEN -8 END,
		`NCOTHR` = CASE WHEN new_version = "1" THEN NULL WHEN new_version = "2" THEN NULL WHEN new_version = "3" THEN -8 END,
		`NCOTHRX` = CASE WHEN new_version = "1" THEN NULL WHEN new_version = "2" THEN NULL WHEN new_version = "3" THEN -8 END,
		`ALCOCCAS` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`ALCFREQ` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`HATTMULT` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`HATTYEAR` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`CVPACDEF` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`CVANGINA` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`CVHVALVE` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`STROKMUL` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`STROKYR` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`TIAMULT` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`TIAYEAR` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`TBI` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`TBIBRIEF` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`TBIEXTEN` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`TBIWOLOS` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`TBIYEAR` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`DIABTYPE` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`ARTHRIT` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`ARTHTYPE` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`ARTHTYPX` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`ARTHUPEX` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`ARTHLOEX` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`ARTHSPIN` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`ARTHUNK` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`APNEA` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`RBD` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`INSOMN` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`OTHSLEEP` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`OTHSLEEX` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`PTSD` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`BIPOLAR` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`SCHIZ` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`ANXIETY` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`OCD` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`NPSYDEV` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END
	WHERE InstrID=instrument_id;
END IF;

END ;;
DELIMITER ;




DROP PROCEDURE IF EXISTS `proc_udsphysical_change_version`;

DELIMITER ;;
CREATE PROCEDURE `proc_udsphysical_change_version`(instrument_id INT, new_version VARCHAR(25))
BEGIN

CALL proc_uds_change_version(instrument_id,new_version);

END ;;
DELIMITER ;




DROP PROCEDURE IF EXISTS `proc_udscdr_change_version`;

DELIMITER ;;
CREATE PROCEDURE `proc_udscdr_change_version`(instrument_id INT, new_version VARCHAR(25))
BEGIN

DECLARE existing_version VARCHAR(25);

SELECT `InstrVer` INTO existing_version FROM `instrumenttracking` WHERE `InstrID`=instrument_id;
IF existing_version <> new_version THEN 
	UPDATE `instrumenttracking` SET `InstrVer`= new_version WHERE `InstrID`=instrument_id;
	UPDATE `udstracking` SET `FormVer`= new_version WHERE `InstrID`=instrument_id;
	UPDATE `udscdr` SET 
		`COMPORT` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN NULL WHEN new_version = "3" THEN NULL END,
 		`CDRLANG` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN NULL WHEN new_version = "3" THEN NULL END
	WHERE InstrID=instrument_id;
END IF;

END ;;
DELIMITER ;



DROP PROCEDURE IF EXISTS `proc_udsnpi_change_version`;

DELIMITER ;;
CREATE PROCEDURE `proc_udsnpi_change_version`(instrument_id INT, new_version VARCHAR(25))
BEGIN

CALL proc_uds_change_version(instrument_id,new_version);

END ;;
DELIMITER ;



DROP PROCEDURE IF EXISTS `proc_udsgds_change_version`;

DELIMITER ;;
CREATE PROCEDURE `proc_udsgds_change_version`(instrument_id INT, new_version VARCHAR(25))
BEGIN

CALL proc_uds_change_version(instrument_id,new_version);

END ;;
DELIMITER ;



DROP PROCEDURE IF EXISTS `proc_udsfaq_change_version`;

DELIMITER ;;
CREATE PROCEDURE `proc_udsfaq_change_version`(instrument_id INT, new_version VARCHAR(25))
BEGIN

CALL proc_uds_change_version(instrument_id,new_version);

END ;;
DELIMITER ;




DROP PROCEDURE IF EXISTS `proc_udsappraisal_change_version`;

DELIMITER ;;
CREATE PROCEDURE `proc_udsappraisal_change_version`(instrument_id INT, new_version VARCHAR(25))
BEGIN

DECLARE existing_version VARCHAR(25);

SELECT `InstrVer` INTO existing_version FROM `instrumenttracking` WHERE `InstrID`=instrument_id;
IF existing_version <> new_version THEN 
	UPDATE `instrumenttracking` SET `InstrVer`= new_version WHERE `InstrID`=instrument_id;
	UPDATE `udstracking` SET `FormVer`= new_version WHERE `InstrID`=instrument_id;
	UPDATE `udsappraisal` SET 
		`NORMAL` = CASE WHEN new_version = "1" THEN NULL WHEN new_version = "2" THEN NULL WHEN new_version = "3" THEN -8 END,
		`FOCLDEF` = CASE WHEN new_version = "1" THEN NULL WHEN new_version = "2" THEN NULL WHEN new_version = "3" THEN -8 END,
		`GAITDIS` = CASE WHEN new_version = "1" THEN NULL WHEN new_version = "2" THEN NULL WHEN new_version = "3" THEN -8 END,
		`EYEMOVE` = CASE WHEN new_version = "1" THEN NULL WHEN new_version = "2" THEN NULL WHEN new_version = "3" THEN -8 END,
		`NORMEXAM` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`PARKSIGN` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`RESTTRL` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`RESTTRR` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`SLOWINGL` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`SLOWINGR` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`RIGIDL` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`RIGIDR` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`BRADY` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`PARKGAIT` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`POSTINST` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`CVDSIGNS` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`CORTDEF` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`SIVDFIND` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`CVDMOTL` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`CVDMOTR` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`CORTVISL` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`CORTVISR` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`SOMATL` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`SOMATR` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`POSTCORT` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`PSPCBS` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`EYEPSP` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`DYSPSP` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`AXIALPSP` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`GAITPSP` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`APRAXSP` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`APRAXL` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`APRAXR` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`CORTSENL` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`CORTSENR` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`ATAXL` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`ATAXR` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`ALIENLML` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`ALIENLMR` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`DYSTONL` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`DYSTONR` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`MYOCLLT` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`MYOCLRT` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`ALSFIND` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`GAITNPH` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`OTHNEUR` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`OTHNEURX` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END
	WHERE InstrID=instrument_id;
END IF;

END ;;
DELIMITER ;




DROP PROCEDURE IF EXISTS `proc_udssymptomsonset_change_version`;

DELIMITER ;;
CREATE PROCEDURE `proc_udssymptomsonset_change_version`(instrument_id INT, new_version VARCHAR(25))
BEGIN

DECLARE existing_version VARCHAR(25);

SELECT `InstrVer` INTO existing_version FROM `instrumenttracking` WHERE `InstrID`=instrument_id;
IF existing_version <> new_version THEN 
	UPDATE `instrumenttracking` SET `InstrVer`= new_version WHERE `InstrID`=instrument_id;
	UPDATE `udstracking` SET `FormVer`= new_version WHERE `InstrID`=instrument_id;
	UPDATE `udssymptomsonset` SET 
		`BEVWELL` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN NULL WHEN new_version = "3" THEN NULL END,
		`BEREM` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN NULL WHEN new_version = "3" THEN NULL END,
		`MOMOPARK` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN NULL WHEN new_version = "3" THEN NULL END,
		`COGFLUC` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN NULL WHEN new_version = "3" THEN NULL END,
		`B9CHG` = CASE WHEN new_version = "1" THEN NULL WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN -8 END,
		`DECCLIN` = CASE WHEN new_version = "1" THEN NULL WHEN new_version = "2" THEN NULL WHEN new_version = "3" THEN -8 END,
		`COGFRST` = CASE WHEN new_version = "1" THEN NULL WHEN new_version = "2" THEN NULL WHEN new_version = "3" THEN -8 END,
		`COGFRSTX` = CASE WHEN new_version = "1" THEN NULL WHEN new_version = "2" THEN NULL WHEN new_version = "3" THEN -8 END,
		`BEFRST` = CASE WHEN new_version = "1" THEN NULL WHEN new_version = "2" THEN NULL WHEN new_version = "3" THEN -8 END,
		`BEFRSTX` = CASE WHEN new_version = "1" THEN NULL WHEN new_version = "2" THEN NULL WHEN new_version = "3" THEN -8 END,
		`DECCLCOG` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`COGORI` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`COGFLAGO` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`COGFPRED` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`COGFPREX` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`DECCLBE` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`BEVHAGO` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`BEREMAGO` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`BEANX` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`BEFPRED` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`BEFPREDX` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`BEAGE` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`DECCLMOT` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`PARKAGE` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`MOMOALS` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`ALSAGE` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`MOAGE` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`LBDEVAL` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`FTLDEVAL` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END
	WHERE InstrID=instrument_id;
END IF;

END ;;
DELIMITER ;





DROP PROCEDURE IF EXISTS `proc_udsdiagnosis_change_version`;

DELIMITER ;;
CREATE PROCEDURE `proc_udsdiagnosis_change_version`(instrument_id INT, new_version VARCHAR(25))
BEGIN

DECLARE existing_version VARCHAR(25);

SELECT `InstrVer` INTO existing_version FROM `instrumenttracking` WHERE `InstrID`=instrument_id;
IF existing_version <> new_version THEN 
	UPDATE `instrumenttracking` SET `InstrVer`= new_version WHERE `InstrID`=instrument_id;
	UPDATE `udstracking` SET `FormVer`= new_version WHERE `InstrID`=instrument_id;
	UPDATE `udsdiagnosis` SET 
		`WHODIDDX` = CASE WHEN new_version = "1" THEN NULL WHEN new_version = "2" THEN NULL WHEN new_version = "3" THEN -8 END,
		`PROBAD` = CASE WHEN new_version = "1" THEN NULL WHEN new_version = "2" THEN NULL WHEN new_version = "3" THEN -8 END,
		`PROBADIF` = CASE WHEN new_version = "1" THEN NULL WHEN new_version = "2" THEN NULL WHEN new_version = "3" THEN -8 END,
		`POSSAD` = CASE WHEN new_version = "1" THEN NULL WHEN new_version = "2" THEN NULL WHEN new_version = "3" THEN -8 END,
		`POSSADIF` = CASE WHEN new_version = "1" THEN NULL WHEN new_version = "2" THEN NULL WHEN new_version = "3" THEN -8 END,
		`DLB` = CASE WHEN new_version = "1" THEN NULL WHEN new_version = "2" THEN NULL WHEN new_version = "3" THEN -8 END,
		`DLBIF` = CASE WHEN new_version = "1" THEN NULL WHEN new_version = "2" THEN NULL WHEN new_version = "3" THEN -8 END,
		`VASC` = CASE WHEN new_version = "1" THEN NULL WHEN new_version = "2" THEN NULL WHEN new_version = "3" THEN -8 END,
		`VASCIF` = CASE WHEN new_version = "1" THEN NULL WHEN new_version = "2" THEN NULL WHEN new_version = "3" THEN -8 END,
		`VASCPS` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN NULL WHEN new_version = "3" THEN -8 END,
		`VASCPSIF` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN NULL WHEN new_version = "3" THEN -8 END,
		`DEMUN` = CASE WHEN new_version = "1" THEN NULL WHEN new_version = "2" THEN NULL WHEN new_version = "3" THEN -8 END,
		`DEMUNIF` = CASE WHEN new_version = "1" THEN NULL WHEN new_version = "2" THEN NULL WHEN new_version = "3" THEN -8 END,
		`FTD` = CASE WHEN new_version = "1" THEN NULL WHEN new_version = "2" THEN NULL WHEN new_version = "3" THEN -8 END,
		`FTDIF` = CASE WHEN new_version = "1" THEN NULL WHEN new_version = "2" THEN NULL WHEN new_version = "3" THEN -8 END,
		`PPAPH` = CASE WHEN new_version = "1" THEN NULL WHEN new_version = "2" THEN NULL WHEN new_version = "3" THEN -8 END,
		`PPAPHIF` = CASE WHEN new_version = "1" THEN NULL WHEN new_version = "2" THEN NULL WHEN new_version = "3" THEN -8 END,
		`PNAPH` = CASE WHEN new_version = "1" THEN NULL WHEN new_version = "2" THEN NULL WHEN new_version = "3" THEN -8 END,
		`SEMDEMAN` = CASE WHEN new_version = "1" THEN NULL WHEN new_version = "2" THEN NULL WHEN new_version = "3" THEN -8 END,
		`SEMDEMAG` = CASE WHEN new_version = "1" THEN NULL WHEN new_version = "2" THEN NULL WHEN new_version = "3" THEN -8 END,
		`PPAOTHR` = CASE WHEN new_version = "1" THEN NULL WHEN new_version = "2" THEN NULL WHEN new_version = "3" THEN -8 END,
		`PARKIF` = CASE WHEN new_version = "1" THEN NULL WHEN new_version = "2" THEN NULL WHEN new_version = "3" THEN -8 END,
		`STROKE` = CASE WHEN new_version = "1" THEN NULL WHEN new_version = "2" THEN NULL WHEN new_version = "3" THEN -8 END,
		`STROKIF` = CASE WHEN new_version = "1" THEN NULL WHEN new_version = "2" THEN NULL WHEN new_version = "3" THEN -8 END,
		`COGOTH2` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN NULL WHEN new_version = "3" THEN NULL END,
		`COGOTH2IF` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN NULL WHEN new_version = "3" THEN NULL END,
		`COGOTH2X` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN NULL WHEN new_version = "3" THEN NULL END,
		`COGOTH3` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN NULL WHEN new_version = "3" THEN NULL END,
		`COGOTH3IF` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN NULL WHEN new_version = "3" THEN NULL END,
		`COGOTH3X` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN NULL WHEN new_version = "3" THEN NULL END,
		`DXMETHOD` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`AMNDEM` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`PCA` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`PPASYN` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`PPASYNT` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`FTDSYN` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`LBDSYN` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`NAMNDEM` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`AMYLPET` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`AMYLCSF` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`FDGAD` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`HIPPATR` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`TAUPETAD` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`CSFTAU` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`FDGFTLD` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`TPETFTLD` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`MRFTLD` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`DATSCAN` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`OTHBIOM` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`OTHBIOMX` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`IMAGLINF` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`IMAGLAC` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`IMAGMACH` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`IMAGMICH` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`IMAGMWMH` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`IMAGEWMH` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`ADMUT` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`FTLDMUT` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`OTHMUT` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`OTHMUTX` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`ALZDIS` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`ALZDISIF` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`LBDIS` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`LBDIF` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`MSA` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`MSAIF` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`FTLDMO` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`FTLDMOIF` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`FTLDNOS` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`FTLDNOIF` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`FTLDSUBT` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`FTLDSUBX` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`CVD` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`CVDIF` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`PREVSTK` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`STROKDEC` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`STKIMAG` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`INFNETW` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`INFWMH` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`ESSTREM` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`ESSTREIF` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`BRNINCTE` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`EPILEP` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`EPILEPIF` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`NEOPSTAT` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`HIV` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`HIVIF` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`OTHCOG` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`OTHCOGIF` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`OTHCOGX` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`DEPTREAT` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`BIPOLDX` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`BIPOLDIF` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`SCHIZOP` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`SCHIZOIF` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`ANXIET` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`ANXIETIF` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`DELIR` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`DELIRIF` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`PTSDDX` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`PTSDDXIF` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`OTHPSYX` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`ALCABUSE` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`IMPSUB` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`IMPSUBIF` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END
	WHERE InstrID=instrument_id;
END IF;

END ;;
DELIMITER ;


DROP PROCEDURE IF EXISTS `proc_udsformchecklist_change_version`;

DELIMITER ;;
CREATE PROCEDURE `proc_udsformchecklist_change_version`(instrument_id INT, new_version VARCHAR(25))
BEGIN

DECLARE existing_version VARCHAR(25);

SELECT `InstrVer` INTO existing_version FROM `instrumenttracking` WHERE `InstrID`=instrument_id;
IF existing_version <> new_version THEN 
	UPDATE `instrumenttracking` SET `InstrVer`= new_version WHERE `InstrID`=instrument_id;
	UPDATE `udstracking` SET `FormVer`= new_version WHERE `InstrID`=instrument_id;
	UPDATE `udsformchecklist` SET 
		`B2SUB` = CASE WHEN new_version = "1" THEN NULL WHEN new_version = "2" THEN NULL WHEN new_version = "3" THEN -8 END,
		`B2NOT` = CASE WHEN new_version = "1" THEN NULL WHEN new_version = "2" THEN NULL WHEN new_version = "3" THEN -8 END,
		`B2COMM` = CASE WHEN new_version = "1" THEN NULL WHEN new_version = "2" THEN NULL WHEN new_version = "3" THEN -8 END,
		`B3SUB` = CASE WHEN new_version = "1" THEN NULL WHEN new_version = "2" THEN NULL WHEN new_version = "3" THEN -8 END,
		`B3NOT` = CASE WHEN new_version = "1" THEN NULL WHEN new_version = "2" THEN NULL WHEN new_version = "3" THEN -8 END,
		`B3COMM` = CASE WHEN new_version = "1" THEN NULL WHEN new_version = "2" THEN NULL WHEN new_version = "3" THEN -8 END,
		`B8SUB` = CASE WHEN new_version = "1" THEN NULL WHEN new_version = "2" THEN NULL WHEN new_version = "3" THEN -8 END,
		`B8NOT` = CASE WHEN new_version = "1" THEN NULL WHEN new_version = "2" THEN NULL WHEN new_version = "3" THEN -8 END,
		`B8COMM` = CASE WHEN new_version = "1" THEN NULL WHEN new_version = "2" THEN NULL WHEN new_version = "3" THEN -8 END
	WHERE InstrID=instrument_id;
END IF;

END ;;
DELIMITER ;


DROP PROCEDURE IF EXISTS `proc_udsmedicalconditions_change_version`;

DELIMITER ;;
CREATE PROCEDURE `proc_udsmedicalconditions_change_version`(instrument_id INT, new_version VARCHAR(25))
BEGIN

CALL proc_uds_change_version(instrument_id,new_version);

END ;;
DELIMITER ;


DROP PROCEDURE IF EXISTS `proc_udsmilestone_change_version`;

DELIMITER ;;
CREATE PROCEDURE `proc_udsmilestone_change_version`(instrument_id INT, new_version VARCHAR(25))
BEGIN

DECLARE existing_version VARCHAR(25);

SELECT `InstrVer` INTO existing_version FROM `instrumenttracking` WHERE `InstrID`=instrument_id;
IF existing_version <> new_version THEN 
	UPDATE `instrumenttracking` SET `InstrVer`= new_version WHERE `InstrID`=instrument_id;
	UPDATE `udstracking` SET `FormVer`= new_version WHERE `InstrID`=instrument_id;
	UPDATE `udsmilestone` SET 
		`DISCREAS` = CASE WHEN new_version = "1" THEN NULL WHEN new_version = "2" THEN NULL WHEN new_version = "3" THEN -8 END,
		`DISCREAX` = CASE WHEN new_version = "1" THEN NULL WHEN new_version = "2" THEN NULL WHEN new_version = "3" THEN -8 END,
		`REJOINED` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN NULL WHEN new_version = "3" THEN -8 END,
		`NURSEHOME` = CASE WHEN new_version = "1" THEN NULL WHEN new_version = "2" THEN NULL WHEN new_version = "3" THEN -8 END,
		`PROTOCOL` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN NULL WHEN new_version = "3" THEN NULL END,
		`NPSYTEST` = CASE WHEN new_version = "1" THEN NULL WHEN new_version = "2" THEN NULL WHEN new_version = "3" THEN -8 END,
		`NPCOGIMP` = CASE WHEN new_version = "1" THEN NULL WHEN new_version = "2" THEN NULL WHEN new_version = "3" THEN -8 END,
		`NPPHYILL` = CASE WHEN new_version = "1" THEN NULL WHEN new_version = "2" THEN NULL WHEN new_version = "3" THEN -8 END,
		`NPHOMEN` = CASE WHEN new_version = "1" THEN NULL WHEN new_version = "2" THEN NULL WHEN new_version = "3" THEN -8 END,
		`NPREFUS` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN NULL WHEN new_version = "3" THEN -8 END,
		`NPOTHREA` = CASE WHEN new_version = "1" THEN NULL WHEN new_version = "2" THEN NULL WHEN new_version = "3" THEN -8 END,
		`NPOTHREX` = CASE WHEN new_version = "1" THEN NULL WHEN new_version = "2" THEN NULL WHEN new_version = "3" THEN -8 END,
		`PHYNDATA` = CASE WHEN new_version = "1" THEN NULL WHEN new_version = "2" THEN NULL WHEN new_version = "3" THEN -8 END,
		`PHYCOG` = CASE WHEN new_version = "1" THEN NULL WHEN new_version = "2" THEN NULL WHEN new_version = "3" THEN -8 END,
		`PHYILL` = CASE WHEN new_version = "1" THEN NULL WHEN new_version = "2" THEN NULL WHEN new_version = "3" THEN -8 END,
		`PHYHOME` = CASE WHEN new_version = "1" THEN NULL WHEN new_version = "2" THEN NULL WHEN new_version = "3" THEN -8 END,
		`PHYREFUS` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN NULL WHEN new_version = "3" THEN -8 END,
		`PHYOTH` = CASE WHEN new_version = "1" THEN NULL WHEN new_version = "2" THEN NULL WHEN new_version = "3" THEN -8 END,
		`PHYOTHX` = CASE WHEN new_version = "1" THEN NULL WHEN new_version = "2" THEN NULL WHEN new_version = "3" THEN -8 END,
		`UDSACTIV` = CASE WHEN new_version = "1" THEN NULL WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN -8 END,
		`CHANGEMO` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`CHANGEDY` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`CHANGEYR` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`ACONSENT` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`RECOGIM` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`REPHYILL` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`REREFUSE` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`RENAVAIL` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`RENURSE` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`REJOIN` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`FTLDDISC` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`FTLDREAS` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`FTLDREAX` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END,
		`DROPREAS` = CASE WHEN new_version = "1" THEN -8 WHEN new_version = "2" THEN -8 WHEN new_version = "3" THEN NULL END
	WHERE InstrID=instrument_id;
END IF;

END ;;
DELIMITER ;


DROP PROCEDURE IF EXISTS `proc_udsneuropsychmoca_change_version`;

DELIMITER ;;
CREATE PROCEDURE `proc_udsneuropsychmoca_change_version`(instrument_id INT, new_version VARCHAR(25))
BEGIN

CALL proc_uds_change_version(instrument_id,new_version);

END ;;
DELIMITER ;


DROP PROCEDURE IF EXISTS `proc_udsphoneinclusion_change_version`;

DELIMITER ;;
CREATE PROCEDURE `proc_udsphoneinclusion_change_version`(instrument_id INT, new_version VARCHAR(25))
BEGIN

CALL proc_uds_change_version(instrument_id,new_version);

END ;;
DELIMITER ;



DROP PROCEDURE IF EXISTS `proc_udsftldformchecklist_change_version`;

DELIMITER ;;
CREATE PROCEDURE `proc_udsftldformchecklist_change_version`(instrument_id INT, new_version VARCHAR(25))
BEGIN

DECLARE existing_version VARCHAR(25);

SELECT `InstrVer` INTO existing_version FROM `instrumenttracking` WHERE `InstrID`=instrument_id;
IF existing_version <> new_version THEN 
	UPDATE `instrumenttracking` SET `InstrVer`= new_version WHERE `InstrID`=instrument_id;
	UPDATE `udstracking` SET `FormVer`= new_version WHERE `InstrID`=instrument_id;
	UPDATE `udsftldformchecklist` SET 
		`FTDA3FS` = CASE WHEN new_version = "2" THEN NULL WHEN new_version = "3" THEN -8 END,
		`FTDA3FR` = CASE WHEN new_version = "2" THEN NULL WHEN new_version = "3" THEN -8 END,
		`FTDA3FC` = CASE WHEN new_version = "2" THEN NULL WHEN new_version = "3" THEN -8 END
	WHERE InstrID=instrument_id;
END IF;

END ;;
DELIMITER ;



DROP PROCEDURE IF EXISTS `proc_udsftldspecimenconsent_change_version`;

DELIMITER ;;
CREATE PROCEDURE `proc_udsftldspecimenconsent_change_version`(instrument_id INT, new_version VARCHAR(25))
BEGIN

CALL proc_uds_change_version(instrument_id,new_version);

END ;;
DELIMITER ;



DROP PROCEDURE IF EXISTS `proc_udsftldupdrs_change_version`;

DELIMITER ;;
CREATE PROCEDURE `proc_udsftldupdrs_change_version`(instrument_id INT, new_version VARCHAR(25))
BEGIN

DECLARE existing_version VARCHAR(25);

SELECT `InstrVer` INTO existing_version FROM `instrumenttracking` WHERE `InstrID`=instrument_id;
IF existing_version <> new_version THEN 
	UPDATE `instrumenttracking` SET `InstrVer`= new_version WHERE `InstrID`=instrument_id;
	UPDATE `udstracking` SET `FormVer`= new_version WHERE `InstrID`=instrument_id;
	UPDATE `udsftldupdrs` SET 
		`FTDEYE` = CASE WHEN new_version = "2" THEN NULL WHEN new_version = "3" THEN -8 END,
		`FTDDYST` = CASE WHEN new_version = "2" THEN NULL WHEN new_version = "3" THEN -8 END,
		`FTDIDEO` = CASE WHEN new_version = "2" THEN NULL WHEN new_version = "3" THEN -8 END,
		`FTDALIEN` = CASE WHEN new_version = "2" THEN NULL WHEN new_version = "3" THEN -8 END,
		`FTDMYOCL` = CASE WHEN new_version = "2" THEN NULL WHEN new_version = "3" THEN -8 END,
		`FTDCORTS` = CASE WHEN new_version = "2" THEN NULL WHEN new_version = "3" THEN -8 END
	WHERE InstrID=instrument_id;
END IF;

END ;;
DELIMITER ;



DROP PROCEDURE IF EXISTS `proc_udsftldclinfeatures_change_version`;

DELIMITER ;;
CREATE PROCEDURE `proc_udsftldclinfeatures_change_version`(instrument_id INT, new_version VARCHAR(25))
BEGIN

CALL proc_uds_change_version(instrument_id,new_version);

END ;;
DELIMITER ;




DROP PROCEDURE IF EXISTS `proc_udsftldneuropsych_change_version`;

DELIMITER ;;
CREATE PROCEDURE `proc_udsftldneuropsych_change_version`(instrument_id INT, new_version VARCHAR(25))
BEGIN

DECLARE existing_version VARCHAR(25);

SELECT `InstrVer` INTO existing_version FROM `instrumenttracking` WHERE `InstrID`=instrument_id;
IF existing_version <> new_version THEN 
	UPDATE `instrumenttracking` SET `InstrVer`= new_version WHERE `InstrID`=instrument_id;
	UPDATE `udstracking` SET `FormVer`= new_version WHERE `InstrID`=instrument_id;
	UPDATE `udsftldneuropsych` SET 
		`FTDBENTC` = CASE WHEN new_version = "2" THEN NULL WHEN new_version = "3" THEN -8 END,
		`FTDVERFC` = CASE WHEN new_version = "2" THEN NULL WHEN new_version = "3" THEN -8 END,
		`FTDVERFN` = CASE WHEN new_version = "2" THEN NULL WHEN new_version = "3" THEN -8 END,
		`FTDVERNF` = CASE WHEN new_version = "2" THEN NULL WHEN new_version = "3" THEN -8 END,
		`FTDVERLC` = CASE WHEN new_version = "2" THEN NULL WHEN new_version = "3" THEN -8 END,
		`FTDVERLR` = CASE WHEN new_version = "2" THEN NULL WHEN new_version = "3" THEN -8 END,
		`FTDVERLN` = CASE WHEN new_version = "2" THEN NULL WHEN new_version = "3" THEN -8 END,
		`FTDVERTN` = CASE WHEN new_version = "2" THEN NULL WHEN new_version = "3" THEN -8 END,
		`FTDVERTE` = CASE WHEN new_version = "2" THEN NULL WHEN new_version = "3" THEN -8 END,
		`FTDVERTI` = CASE WHEN new_version = "2" THEN NULL WHEN new_version = "3" THEN -8 END,
		`FTDBENTD` = CASE WHEN new_version = "2" THEN NULL WHEN new_version = "3" THEN -8 END,
		`FTDBENRS` = CASE WHEN new_version = "2" THEN NULL WHEN new_version = "3" THEN -8 END
	WHERE InstrID=instrument_id;
END IF;

END ;;
DELIMITER ;



DROP PROCEDURE IF EXISTS `proc_udsftldsnq_change_version`;

DELIMITER ;;
CREATE PROCEDURE `proc_udsftldsnq_change_version`(instrument_id INT, new_version VARCHAR(25))
BEGIN

CALL proc_uds_change_version(instrument_id,new_version);

END ;;
DELIMITER ;




DROP PROCEDURE IF EXISTS `proc_udsftldsboc_change_version`;

DELIMITER ;;
CREATE PROCEDURE `proc_udsftldsboc_change_version`(instrument_id INT, new_version VARCHAR(25))
BEGIN

CALL proc_uds_change_version(instrument_id,new_version);

END ;;
DELIMITER ;




DROP PROCEDURE IF EXISTS `proc_udsftldbis_change_version`;

DELIMITER ;;
CREATE PROCEDURE `proc_udsftldbis_change_version`(instrument_id INT, new_version VARCHAR(25))
BEGIN

CALL proc_uds_change_version(instrument_id,new_version);

END ;;
DELIMITER ;




DROP PROCEDURE IF EXISTS `proc_udsftldiri_change_version`;

DELIMITER ;;
CREATE PROCEDURE `proc_udsftldiri_change_version`(instrument_id INT, new_version VARCHAR(25))
BEGIN

CALL proc_uds_change_version(instrument_id,new_version);

END ;;
DELIMITER ;




DROP PROCEDURE IF EXISTS `proc_udsftldrsms_change_version`;

DELIMITER ;;
CREATE PROCEDURE `proc_udsftldrsms_change_version`(instrument_id INT, new_version VARCHAR(25))
BEGIN

CALL proc_uds_change_version(instrument_id,new_version);

END ;;
DELIMITER ;





DROP PROCEDURE IF EXISTS `proc_udsftldimagingavail_change_version`;

DELIMITER ;;
CREATE PROCEDURE `proc_udsftldimagingavail_change_version`(instrument_id INT, new_version VARCHAR(25))
BEGIN

CALL proc_uds_change_version(instrument_id,new_version);

END ;;
DELIMITER ;



DROP PROCEDURE IF EXISTS `proc_udsftldimagingdiag_change_version`;

DELIMITER ;;
CREATE PROCEDURE `proc_udsftldimagingdiag_change_version`(instrument_id INT, new_version VARCHAR(25))
BEGIN

CALL proc_uds_change_version(instrument_id,new_version);

END ;;
DELIMITER ;

