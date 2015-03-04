
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

