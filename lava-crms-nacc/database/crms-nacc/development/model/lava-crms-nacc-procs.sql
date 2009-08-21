
DELIMITER //
DROP procedure IF EXISTS `proc_uds_change_version` //
CREATE PROCEDURE `proc_uds_change_version`(instrument_id INT, new_version VARCHAR(25))
    SQL SECURITY INVOKER
BEGIN

DECLARE existing_version VARCHAR(25);

SELECT `InstrVer` INTO existing_version FROM `instrumenttracking` WHERE `InstrID`=instrument_id;
IF existing_version <> new_version THEN 
	UPDATE `instrumenttracking` SET `InstrVer`= new_version WHERE `InstrID`=instrument_id;
	UPDATE `udstracking` SET `FormVer`= new_version WHERE `InstrID`=instrument_id;
END IF;


END//
DROP procedure IF EXISTS `proc_udsappraisal_change_version` //
CREATE PROCEDURE `proc_udsappraisal_change_version`(instrument_id INT, new_version VARCHAR(25))
    SQL SECURITY INVOKER
BEGIN

CALL proc_uds_change_version(instrument_id,new_version);
END//
DROP procedure IF EXISTS `proc_udscdr_change_version` //
CREATE PROCEDURE `proc_udscdr_change_version`(instrument_id INT, new_version VARCHAR(25))
    SQL SECURITY INVOKER
BEGIN

DECLARE existing_version VARCHAR(25);


SELECT `InstrVer` INTO existing_version FROM `instrumenttracking` WHERE `InstrID`=instrument_id;
IF existing_version <> new_version THEN 
	UPDATE `instrumenttracking` SET `InstrVer`= new_version WHERE `InstrID`=instrument_id;
	UPDATE `udstracking` SET `FormVer`= new_version WHERE `InstrID`=instrument_id;
	UPDATE `udscdr` SET `COMPORT`=CASE WHEN new_version = '1' THEN -8 WHEN new_version = '2' THEN NULL END,
		`CDRLANG`=CASE WHEN new_version = '1' THEN -8  WHEN new_version = '2' THEN NULL END WHERE InstrID = instrument_id;


END IF;

END//
DROP procedure IF EXISTS `proc_udsdiagnosis_change_version` //
CREATE PROCEDURE `proc_udsdiagnosis_change_version`(instrument_id INT, new_version VARCHAR(25))
    SQL SECURITY INVOKER
BEGIN

DECLARE existing_version VARCHAR(25);


SELECT `InstrVer` INTO existing_version FROM `instrumenttracking` WHERE `InstrID`=instrument_id;
IF existing_version <> new_version THEN 
	UPDATE `instrumenttracking` SET `InstrVer`= new_version WHERE `InstrID`=instrument_id;
	UPDATE `udstracking` SET `FormVer`= new_version WHERE `InstrID`=instrument_id;
	UPDATE `udsdiagnosis` SET `VASCPS`=CASE WHEN new_version = '1' THEN -8 WHEN new_version = '2' THEN NULL END,
		`VASCPSIF`=CASE WHEN new_version = '1' THEN -8  WHEN new_version = '2' THEN NULL END,
		`COGOTH2`=CASE WHEN new_version = '1' THEN -8  WHEN new_version = '2' THEN NULL END,
		`COGOTH2IF`=CASE WHEN new_version = '1' THEN -8  WHEN new_version = '2' THEN NULL END,
		`COGOTH2X`=CASE WHEN new_version = '1' THEN -8  WHEN new_version = '2' THEN NULL END,
		`COGOTH3`=CASE WHEN new_version = '1' THEN -8  WHEN new_version = '2' THEN NULL END,
		`COGOTH3IF`=CASE WHEN new_version = '1' THEN -8  WHEN new_version = '2' THEN NULL END,
		`COGOTH3X`=CASE WHEN new_version = '1' THEN -8  WHEN new_version = '2' THEN NULL END WHERE InstrID=instrument_id;



END IF;
END//
DROP procedure IF EXISTS `proc_udsfamilyhistory_change_version` //
CREATE PROCEDURE `proc_udsfamilyhistory_change_version`(instrument_id INT, new_version VARCHAR(25))
    SQL SECURITY INVOKER
BEGIN

DECLARE existing_version VARCHAR(25);

SELECT `InstrVer` INTO existing_version FROM `instrumenttracking` WHERE `InstrID`=instrument_id;
IF existing_version <> new_version THEN 
	UPDATE `instrumenttracking` SET `InstrVer`= new_version WHERE `InstrID`=instrument_id;
	UPDATE `udstracking` SET `FormVer`= new_version WHERE `InstrID`=instrument_id;
	
	IF new_version = "2" THEN
	
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

END//
DROP procedure IF EXISTS `proc_udsfaq_change_version` //
CREATE PROCEDURE `proc_udsfaq_change_version`(instrument_id INT, new_version VARCHAR(25))
    SQL SECURITY INVOKER
BEGIN

CALL proc_uds_change_version(instrument_id,new_version);
END//
DROP procedure IF EXISTS `proc_udsformchecklist_change_version` //
CREATE PROCEDURE `proc_udsformchecklist_change_version`(instrument_id INT, new_version VARCHAR(25))
    SQL SECURITY INVOKER
BEGIN

CALL proc_uds_change_version(instrument_id,new_version);
END//
DROP procedure IF EXISTS `proc_udsgds_change_version` //
CREATE PROCEDURE `proc_udsgds_change_version`(instrument_id INT, new_version VARCHAR(25))
    SQL SECURITY INVOKER
BEGIN

CALL proc_uds_change_version(instrument_id,new_version);
END//
DROP procedure IF EXISTS `proc_udshachinski_change_version` //
CREATE PROCEDURE `proc_udshachinski_change_version`(instrument_id INT, new_version VARCHAR(25))
    SQL SECURITY INVOKER
BEGIN

DECLARE existing_version VARCHAR(25);

SELECT `InstrVer` INTO existing_version FROM `instrumenttracking` WHERE `InstrID`=instrument_id;
IF existing_version <> new_version THEN 
	UPDATE `instrumenttracking` SET `InstrVer`= new_version WHERE `InstrID`=instrument_id;
	UPDATE `udstracking` SET `FormVer`= new_version WHERE `InstrID`=instrument_id;
	UPDATE `udshachinski` SET `CVDCOG`=CASE WHEN new_version = '1' THEN -8 WHEN new_version = '2' THEN NULL END,
		`STROKCOG`=CASE WHEN new_version = '1' THEN -8  WHEN new_version = '2' THEN NULL END,
		`CVDIMAG`=CASE WHEN new_version = '1' THEN -8  WHEN new_version = '2' THEN NULL END,
		`CVDIMAG1`=CASE WHEN new_version = '1' THEN -8  WHEN new_version = '2' THEN NULL END,
		`CVDIMAG2`=CASE WHEN new_version = '1' THEN -8  WHEN new_version = '2' THEN NULL END,
		`CVDIMAG3`=CASE WHEN new_version = '1' THEN -8  WHEN new_version = '2' THEN NULL END,
		`CVDIMAG4`=CASE WHEN new_version = '1' THEN -8  WHEN new_version = '2' THEN NULL END,
		`CVDIMAGX`=CASE WHEN new_version = '1' THEN -8  WHEN new_version = '2' THEN NULL END WHERE InstrID=instrument_id;



END IF;

END//
DROP procedure IF EXISTS `proc_udshealthhistory_change_version` //
CREATE PROCEDURE `proc_udshealthhistory_change_version`(instrument_id INT, new_version VARCHAR(25))
    SQL SECURITY INVOKER
BEGIN

CALL proc_uds_change_version(instrument_id,new_version);
END//
DROP procedure IF EXISTS `proc_udsinformantdemo_change_version` //
CREATE PROCEDURE `proc_udsinformantdemo_change_version`(instrument_id INT, new_version VARCHAR(25))
    SQL SECURITY INVOKER
BEGIN

CALL proc_uds_change_version(instrument_id,new_version);
END//
DROP procedure IF EXISTS `proc_udslabsimaging_change_version` //
CREATE PROCEDURE `proc_udslabsimaging_change_version`(instrument_id INT, new_version VARCHAR(25))
    SQL SECURITY INVOKER
BEGIN

CALL proc_uds_change_version(instrument_id,new_version);
END//
DROP procedure IF EXISTS `proc_udsmedications_change_version` //
CREATE PROCEDURE `proc_udsmedications_change_version`(instrument_id INT, new_version VARCHAR(25))
    SQL SECURITY INVOKER
BEGIN

DECLARE existing_version VARCHAR(25);



SELECT `InstrVer` INTO existing_version FROM `instrumenttracking` WHERE `InstrID`=instrument_id;
IF existing_version <> new_version THEN 
	UPDATE `instrumenttracking` SET `InstrVer`= new_version WHERE `InstrID`=instrument_id;
	UPDATE `udstracking` SET `FormVer`= new_version WHERE `InstrID`=instrument_id;
	
	IF new_version = "2" THEN
	
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

END//
DROP procedure IF EXISTS `proc_udsmilestone_change_version` //
CREATE PROCEDURE `proc_udsmilestone_change_version`(instrument_id INT, new_version VARCHAR(25))
    SQL SECURITY INVOKER
BEGIN

DECLARE existing_version VARCHAR(25);


SELECT `InstrVer` INTO existing_version FROM `instrumenttracking` WHERE `InstrID`=instrument_id;
IF existing_version <> new_version THEN 
	UPDATE `instrumenttracking` SET `InstrVer`= new_version WHERE `InstrID`=instrument_id;
	UPDATE `udstracking` SET `FormVer`= new_version WHERE `InstrID`=instrument_id;
	UPDATE `udsmilestone` SET `REJOINED`=CASE WHEN new_version = '1' THEN -8 WHEN new_version = '2' THEN NULL END,
		`PROTOCOL`=CASE WHEN new_version = '1' THEN -8  WHEN new_version = '2' THEN NULL END,
		`NPREFUS`=CASE WHEN new_version = '1' THEN -8  WHEN new_version = '2' THEN NULL END,
		`PHYREFUS`=CASE WHEN new_version = '1' THEN -8  WHEN new_version = '2' THEN NULL END,
		`UDSACTIV`=CASE WHEN new_version = '1' THEN -8  WHEN new_version = '2' THEN NULL END WHERE InstrID=instrument_id;



END IF;
END//
DROP procedure IF EXISTS `proc_udsneuropsych_change_version` //
CREATE PROCEDURE `proc_udsneuropsych_change_version`(instrument_id INT, new_version VARCHAR(25))
    SQL SECURITY INVOKER
BEGIN

DECLARE existing_version VARCHAR(25);


SELECT `InstrVer` INTO existing_version FROM `instrumenttracking` WHERE `InstrID`=instrument_id;
IF existing_version <> new_version THEN 
	UPDATE `instrumenttracking` SET `InstrVer`= new_version WHERE `InstrID`=instrument_id;
	UPDATE `udstracking` SET `FormVer`= new_version WHERE `InstrID`=instrument_id;
	UPDATE `udsneuropsych` SET `PENTAGON`=CASE WHEN new_version = '1' THEN -8 WHEN new_version = '2' THEN NULL END,
		`TRAILARR`=CASE WHEN new_version = '1' THEN -8  WHEN new_version = '2' THEN NULL END,
		`TRAILALI`=CASE WHEN new_version = '1' THEN -8  WHEN new_version = '2' THEN NULL END,
		`TRAILBRR`=CASE WHEN new_version = '1' THEN -8  WHEN new_version = '2' THEN NULL END,
		`TRAILBLI`=CASE WHEN new_version = '1' THEN -8  WHEN new_version = '2' THEN NULL END WHERE InstrID=instrument_id;



END IF;
END//
DROP procedure IF EXISTS `proc_udsnpi_change_version` //
CREATE PROCEDURE `proc_udsnpi_change_version`(instrument_id INT, new_version VARCHAR(25))
    SQL SECURITY INVOKER
BEGIN

CALL proc_uds_change_version(instrument_id,new_version);
END//
DROP procedure IF EXISTS `proc_udsphysical_change_version` //
CREATE PROCEDURE `proc_udsphysical_change_version`(instrument_id INT, new_version VARCHAR(25))
    SQL SECURITY INVOKER
BEGIN

CALL proc_uds_change_version(instrument_id,new_version);
END//
DROP procedure IF EXISTS `proc_udssubjectdemo_change_version` //
CREATE PROCEDURE `proc_udssubjectdemo_change_version`(instrument_id INT, new_version VARCHAR(25))
    SQL SECURITY INVOKER
BEGIN

CALL proc_uds_change_version(instrument_id,new_version);
END//
DROP procedure IF EXISTS `proc_udssymptomsonset_change_version` //
CREATE PROCEDURE `proc_udssymptomsonset_change_version`(instrument_id INT, new_version VARCHAR(25))
    SQL SECURITY INVOKER
BEGIN

DECLARE existing_version VARCHAR(25);


SELECT `InstrVer` INTO existing_version FROM `instrumenttracking` WHERE `InstrID`=instrument_id;
IF existing_version <> new_version THEN 
	UPDATE `instrumenttracking` SET `InstrVer`= new_version WHERE `InstrID`=instrument_id;
	UPDATE `udstracking` SET `FormVer`= new_version WHERE `InstrID`=instrument_id;
	UPDATE `udssymptomsonset` SET `COGFLUC`=CASE WHEN new_version = '1' THEN -8 WHEN new_version = '2' THEN NULL END,
		`BEVWELL`=CASE WHEN new_version = '1' THEN -8  WHEN new_version = '2' THEN NULL END,
		`BEREM`=CASE WHEN new_version = '1' THEN -8  WHEN new_version = '2' THEN NULL END,
		`MOMOPARK`=CASE WHEN new_version = '1' THEN -8  WHEN new_version = '2' THEN NULL END WHERE InstrID=instrument_id;



END IF;
END//
DROP procedure IF EXISTS `proc_udsupdrs_change_version` //
CREATE PROCEDURE `proc_udsupdrs_change_version`(instrument_id INT, new_version VARCHAR(25))
    SQL SECURITY INVOKER
BEGIN

DECLARE existing_version VARCHAR(25);


SELECT `InstrVer` INTO existing_version FROM `instrumenttracking` WHERE `InstrID`=instrument_id;
IF existing_version <> new_version THEN 
	UPDATE `instrumenttracking` SET `InstrVer`= new_version WHERE `InstrID`=instrument_id;
	UPDATE `udstracking` SET `FormVer`= new_version WHERE `InstrID`=instrument_id;
	UPDATE `udsupdrs` SET `SPEECHX`=CASE WHEN new_version = '1' THEN -8 WHEN new_version = '2' THEN NULL END,
		`FACEXPX`=CASE WHEN new_version = '1' THEN -8  WHEN new_version = '2' THEN NULL END,
		`TRESTFAX`=CASE WHEN new_version = '1' THEN -8  WHEN new_version = '2' THEN NULL END,
		`TRESTRHX`=CASE WHEN new_version = '1' THEN -8  WHEN new_version = '2' THEN NULL END,
		`TRESTLHX`=CASE WHEN new_version = '1' THEN -8  WHEN new_version = '2' THEN NULL END,		`TRESTRFX`=CASE WHEN new_version = '1' THEN -8  WHEN new_version = '2' THEN NULL END,
		`TRESTLFX`=CASE WHEN new_version = '1' THEN -8  WHEN new_version = '2' THEN NULL END,
		`TRACTRHX`=CASE WHEN new_version = '1' THEN -8  WHEN new_version = '2' THEN NULL END,		`TRACTLHX`=CASE WHEN new_version = '1' THEN -8  WHEN new_version = '2' THEN NULL END,
		`RIGDNEX`=CASE WHEN new_version = '1' THEN -8  WHEN new_version = '2' THEN NULL END,		`RIGDUPRX`=CASE WHEN new_version = '1' THEN -8  WHEN new_version = '2' THEN NULL END,
		`RIGDUPLX`=CASE WHEN new_version = '1' THEN -8  WHEN new_version = '2' THEN NULL END,		`RIGDLORX`=CASE WHEN new_version = '1' THEN -8  WHEN new_version = '2' THEN NULL END,
		`RIGDLOLX`=CASE WHEN new_version = '1' THEN -8  WHEN new_version = '2' THEN NULL END,		`BRADYKIX`=CASE WHEN new_version = '1' THEN -8  WHEN new_version = '2' THEN NULL END WHERE InstrID=instrument_id;



END IF;
END//

DELIMITER ;

