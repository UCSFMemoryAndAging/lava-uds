
-- -----------------------------------------------------
-- View `lq_view_udsdiagnosis2`
-- -----------------------------------------------------
DROP VIEW IF EXISTS `lq_view_udsdiagnosis2` ;
DROP TABLE IF EXISTS `lq_view_udsdiagnosis2`;
CREATE  OR REPLACE ALGORITHM=UNDEFINED  SQL SECURITY DEFINER VIEW `lq_view_udsdiagnosis2` AS
SELECT
	`t1`.`InstrID` AS `instrid`,
	`t2`.`WHODIDDX` AS `whodiddx`,
	`t2`.`NORMCOG` AS `normcog`,
	`t2`.`DEMENTED` AS `demented`,
	`t2`.`MCIAMEM` AS `mciamem`,
	`t2`.`MCIAPLUS` AS `mciaplus`,
	`t2`.`MCIAPLAN` AS `mciaplan`,
	`t2`.`MCIAPATT` AS `mciapatt`,
	`t2`.`MCIAPEX` AS `mciapex`,
	`t2`.`MCIAPVIS` AS `mciapvis`,
	`t2`.`MCINON1` AS `mcinon1`,
	`t2`.`MCIN1LAN` AS `mcin1lan`,
	`t2`.`MCIN1ATT` AS `mcin1att`,
	`t2`.`MCIN1EX` AS `mcin1ex`,
	`t2`.`MCIN1VIS` AS `mcin1vis`,
	`t2`.`MCINON2` AS `mcinon2`,
	`t2`.`MCIN2LAN` AS `mcin2lan`,
	`t2`.`MCIN2ATT` AS `mcin2att`,
	`t2`.`MCIN2EX` AS `mcin2ex`,
	`t2`.`MCIN2VIS` AS `mcin2vis`,
	`t2`.`IMPNOMCI` AS `impnomci`,
	`t2`.`PROBAD` AS `probad`,
	`t2`.`PROBADIF` AS `probadif`,
	`t2`.`POSSAD` AS `possad`,
	`t2`.`POSSADIF` AS `possadif`,
	`t2`.`DLB` AS `dlb`,
	`t2`.`DLBIF` AS `dlbif`,
	`t2`.`VASC` AS `vasc`,
	`t2`.`VASCIF` AS `vascif`,
	`t2`.`VASCPS` AS `vascps`,
	`t2`.`VASCPSIF` AS `vascpsif`,
	`t2`.`ALCDEM` AS `alcdem`,
	`t2`.`ALCDEMIF` AS `alcdemif`,
	`t2`.`DEMUN` AS `demun`,
	`t2`.`DEMUNIF` AS `demunif`,
	`t2`.`FTD` AS `ftd`,
	`t2`.`FTDIF` AS `ftdif`,
	`t2`.`PPAPH` AS `ppaph`,
	`t2`.`PPAPHIF` AS `ppaphif`,
	`t2`.`PNAPH` AS `pnaph`,
	`t2`.`SEMDEMAN` AS `semdeman`,
	`t2`.`SEMDEMAG` AS `semdemag`,
	`t2`.`PPAOTHR` AS `ppaothr`,
	`t2`.`PSP` AS `psp`,
	`t2`.`PSPIF` AS `pspif`,
	`t2`.`CORT` AS `cort`,
	`t2`.`CORTIF` AS `cortif`,
	`t2`.`HUNT` AS `hunt`,
	`t2`.`HUNTIF` AS `huntif`,
	`t2`.`PRION` AS `prion`,
	`t2`.`PRIONIF` AS `prionif`,
	`t2`.`MEDS` AS `meds`,
	`t2`.`MEDSIF` AS `medsif`,
	`t2`.`DYSILL` AS `dysill`,
	`t2`.`DYSILLIF` AS `dysillif`,
	`t2`.`DEP` AS `dep`,
	`t2`.`DEPIF` AS `depif`,
	`t2`.`OTHPSY` AS `othpsy`,
	`t2`.`OTHPSYIF` AS `othpsyif`,
	`t2`.`DOWNS` AS `downs`,
	`t2`.`DOWNSIF` AS `downsif`,
	`t2`.`PARK` AS `park`,
	`t2`.`PARKIF` AS `parkif`,
	`t2`.`STROKE` AS `stroke`,
	`t2`.`STROKIF` AS `strokif`,
	`t2`.`HYCEPH` AS `hyceph`,
	`t2`.`HYCEPHIF` AS `hycephif`,
	`t2`.`BRNINJ` AS `brninj`,
	`t2`.`BRNINJIF` AS `brninjif`,
	`t2`.`NEOP` AS `neop`,
	`t2`.`NEOPIF` AS `neopif`,
	`t2`.`COGOTH` AS `cogoth`,
	`t2`.`COGOTHIF` AS `cogothif`,
	`t2`.`COGOTHX` AS `cogothx`,
	`t2`.`COGOTH2` AS `cogoth2`,
	`t2`.`COGOTH2IF` AS `cogoth2if`,
	`t2`.`COGOTH2X` AS `cogoth2x`,
	`t2`.`COGOTH3` AS `cogoth3`,
	`t2`.`COGOTH3IF` AS `cogoth3if`,
	`t2`.`COGOTH3X` AS `cogoth3x`,
	`t3`.`Packet` AS `packet`,
	`t3`.`FormID` AS `formid`,
	`t3`.`FormVer` AS `formver`,
	`t3`.`ADCID` AS `adcid`,
	`t3`.`PTID` AS `ptid`,
	`t3`.`VisitMo` AS `visitmo`,
	`t3`.`VisitDay` AS `visitday`,
	`t3`.`VisitYr` AS `visityr`,
	`t3`.`VisitNum` AS `visitnum`,
	`t3`.`Initials` AS `initials`,
	`t3`.`PacketDate` AS `packetdate`,
	`t3`.`PacketBy` AS `packetby`,
	`t3`.`PacketStatus` AS `packetstatus`,
	`t3`.`PacketReason` AS `packetreason`,
	`t3`.`PacketNotes` AS `packetnotes`,
	`t3`.`DSDate` AS `dsdate`,
	`t3`.`DSBy` AS `dsby`,
	`t3`.`DSStatus` AS `dsstatus`,
	`t3`.`DSReason` AS `dsreason`,
	`t3`.`DSNotes` AS `dsnotes`,
	`t3`.`LCDate` AS `lcdate`,
	`t3`.`LCBy` AS `lcby`,
	`t3`.`LCStatus` AS `lcstatus`,
	`t3`.`LCReason` AS `lcreason`,
	`t3`.`LCNotes` AS `lcnotes`
FROM
	(
		(
			`instrumenttracking` `t1`
			JOIN `udsdiagnosis` `t2` ON (
				(`t1`.`InstrID` = `t2`.`InstrID`)
			)
		)
		JOIN `udstracking` `t3` ON (
			(`t1`.`InstrID` = `t3`.`InstrID`)
		)
	)
WHERE
	(
		`t1`.`InstrType` = _latin1 'UDS Diagnosis' and `t3`.`FormVer` = '2'
	);
	

-- -----------------------------------------------------
-- View `lq_view_udsdiagnosis3`
-- -----------------------------------------------------
DROP VIEW IF EXISTS `lq_view_udsdiagnosis3` ;
DROP TABLE IF EXISTS `lq_view_udsdiagnosis3`;
CREATE  OR REPLACE ALGORITHM=UNDEFINED  SQL SECURITY DEFINER VIEW `lq_view_udsdiagnosis3` AS
SELECT
	`t1`.`InstrID` AS `instrid`,
	`t2`.`DXMETHOD` AS `dxmethod`,
	`t2`.`NORMCOG` AS `normcog`,
	`t2`.`DEMENTED` AS `demented`,
	`t2`.`AMNDEM` AS `amndem`,
	`t2`.`PCA` AS `pca`,
	`t2`.`PPASYN` AS `ppasyn`,
	`t2`.`PPASYNT` AS `ppasynt`,
	`t2`.`FTDSYN` AS `ftdsyn`,
	`t2`.`LBDSYN` AS `lbdsyn`,
	`t2`.`NAMNDEM` AS `namndem`,
	`t2`.`MCIAMEM` AS `mciamem`,
	`t2`.`MCIAPLUS` AS `mciaplus`,
	`t2`.`MCIAPLAN` AS `mciaplan`,
	`t2`.`MCIAPATT` AS `mciapatt`,
	`t2`.`MCIAPEX` AS `mciapex`,
	`t2`.`MCIAPVIS` AS `mciapvis`,
	`t2`.`MCINON1` AS `mcinon1`,
	`t2`.`MCIN1LAN` AS `mcin1lan`,
	`t2`.`MCIN1ATT` AS `mcin1att`,
	`t2`.`MCIN1EX` AS `mcin1ex`,
	`t2`.`MCIN1VIS` AS `mcin1vis`,
	`t2`.`MCINON2` AS `mcinon2`,
	`t2`.`MCIN2LAN` AS `mcin2lan`,
	`t2`.`MCIN2ATT` AS `mcin2att`,
	`t2`.`MCIN2EX` AS `mcin2ex`,
	`t2`.`MCIN2VIS` AS `mcin2vis`,
	`t2`.`IMPNOMCI` AS `impnomci`,
	`t2`.`AMYLPET` AS `amylpet`,
	`t2`.`AMYLCSF` AS `amylcsf`,
	`t2`.`FDGAD` AS `fdgad`,
	`t2`.`HIPPATR` AS `hippatr`,
	`t2`.`TAUPETAD` AS `taupetad`,
	`t2`.`CSFTAU` AS `csftau`,
	`t2`.`FDGFTLD` AS `fdgftld`,
	`t2`.`TPETFTLD` AS `tpetftld`,
	`t2`.`MRFTLD` AS `mrftld`,
	`t2`.`DATSCAN` AS `datscan`,
	`t2`.`OTHBIOM` AS `othbiom`,
	`t2`.`OTHBIOMX` AS `othbiomx`,
	`t2`.`IMAGLINF` AS `imaglinf`,
	`t2`.`IMAGLAC` AS `imaglac`,
	`t2`.`IMAGMACH` AS `imagmach`,
	`t2`.`IMAGMICH` AS `imagmich`,
	`t2`.`IMAGMWMH` AS `imagmwmh`,
	`t2`.`IMAGEWMH` AS `imagewmh`,
	`t2`.`ADMUT` AS `admut`,
	`t2`.`FTLDMUT` AS `ftldmut`,
	`t2`.`OTHMUT` AS `othmut`,
	`t2`.`OTHMUTX` AS `othmutx`,
	`t2`.`ALZDIS` AS `alzdis`,
	`t2`.`ALZDISIF` AS `alzdisif`,
	`t2`.`LBDIS` AS `lbdis`,
	`t2`.`LBDIF` AS `lbdif`,
	`t2`.`PARK` AS `park`,
	`t2`.`MSA` AS `msa`,
	`t2`.`MSAIF` AS `msaif`,
	`t2`.`PSP` AS `psp`,
	`t2`.`PSPIF` AS `pspif`,
	`t2`.`CORT` AS `cort`,
	`t2`.`CORTIF` AS `cortif`,
	`t2`.`FTLDMO` AS `ftldmo`,
	`t2`.`FTLDMOIF` AS `ftldmoif`,
	`t2`.`FTLDNOS` AS `ftldnos`,
	`t2`.`FTLDNOIF` AS `ftldnoif`,
	`t2`.`FTLDSUBT` AS `ftldsubt`,
	`t2`.`FTLDSUBX` AS `ftldsubx`,
	`t2`.`CVD` AS `cvd`,
	`t2`.`CVDIF` AS `cvdif`,
	`t2`.`PREVSTK` AS `prevstk`,
	`t2`.`STROKDEC` AS `strokdec`,
	`t2`.`STKIMAG` AS `stkimag`,
	`t2`.`INFNETW` AS `infnetw`,
	`t2`.`INFWMH` AS `infwmh`,
	`t2`.`ESSTREM` AS `esstrem`,
	`t2`.`ESSTREIF` AS `esstreif`,
	`t2`.`DOWNS` AS `downs`,
	`t2`.`DOWNSIF` AS `downsif`,
	`t2`.`HUNT` AS `hunt`,
	`t2`.`HUNTIF` AS `huntif`,
	`t2`.`PRION` AS `prion`,
	`t2`.`PRIONIF` AS `prionif`,
	`t2`.`BRNINJ` AS `brninj`,
	`t2`.`BRNINJIF` AS `brninjif`,
	`t2`.`BRNINCTE` AS `brnincte`,
	`t2`.`HYCEPH` AS `hyceph`,
	`t2`.`HYCEPHIF` AS `hycephif`,
	`t2`.`EPILEP` AS `epilep`,
	`t2`.`EPILEPIF` AS `epilepif`,
	`t2`.`NEOP` AS `neop`,
	`t2`.`NEOPIF` AS `neopif`,
	`t2`.`NEOPSTAT` AS `neopstat`,
	`t2`.`HIV` AS `hiv`,
	`t2`.`HIVIF` AS `hivif`,
	`t2`.`OTHCOG` AS `othcog`,
	`t2`.`OTHCOGIF` AS `othcogif`,
	`t2`.`OTHCOGX` AS `othcogx`,
	`t2`.`DEP` AS `dep`,
	`t2`.`DEPIF` AS `depif`,
	`t2`.`DEPTREAT` AS `deptreat`,
	`t2`.`BIPOLDX` AS `bipoldx`,
	`t2`.`BIPOLDIF` AS `bipoldif`,
	`t2`.`SCHIZOP` AS `schizop`,
	`t2`.`SCHIZOIF` AS `schizoif`,
	`t2`.`ANXIET` AS `anxiet`,
	`t2`.`ANXIETIF` AS `anxietif`,
	`t2`.`DELIR` AS `delir`,
	`t2`.`DELIRIF` AS `delirif`,
	`t2`.`PTSDDX` AS `ptsddx`,
	`t2`.`PTSDDXIF` AS `ptsddxif`,
	`t2`.`OTHPSY` AS `othpsy`,
	`t2`.`OTHPSYIF` AS `othpsyif`,
	`t2`.`OTHPSYX` AS `othpsyx`,
	`t2`.`ALCDEM` AS `alcdem`,
	`t2`.`ALCDEMIF` AS `alcdemif`,
	`t2`.`ALCABUSE` AS `alcabuse`,
	`t2`.`IMPSUB` AS `impsub`,
	`t2`.`IMPSUBIF` AS `impsubif`,
	`t2`.`DYSILL` AS `dysill`,
	`t2`.`DYSILLIF` AS `dysillif`,
	`t2`.`MEDS` AS `meds`,
	`t2`.`MEDSIF` AS `medsif`,
	`t2`.`COGOTH` AS `cogoth`,
	`t2`.`COGOTHIF` AS `cogothif`,
	`t2`.`COGOTHX` AS `cogothx`,
	`t2`.`COGOTH2` AS `cogoth2`,
	`t2`.`COGOTH2IF` AS `cogoth2if`,
	`t2`.`COGOTH2X` AS `cogoth2x`,
	`t2`.`COGOTH3` AS `cogoth3`,
	`t2`.`COGOTH3IF` AS `cogoth3if`,
	`t2`.`COGOTH3X` AS `cogoth3x`,
	`t3`.`Packet` AS `packet`,
	`t3`.`FormID` AS `formid`,
	`t3`.`FormVer` AS `formver`,
	`t3`.`ADCID` AS `adcid`,
	`t3`.`PTID` AS `ptid`,
	`t3`.`VisitMo` AS `visitmo`,
	`t3`.`VisitDay` AS `visitday`,
	`t3`.`VisitYr` AS `visityr`,
	`t3`.`VisitNum` AS `visitnum`,
	`t3`.`Initials` AS `initials`,
	`t3`.`PacketDate` AS `packetdate`,
	`t3`.`PacketBy` AS `packetby`,
	`t3`.`PacketStatus` AS `packetstatus`,
	`t3`.`PacketReason` AS `packetreason`,
	`t3`.`PacketNotes` AS `packetnotes`,
	`t3`.`DSDate` AS `dsdate`,
	`t3`.`DSBy` AS `dsby`,
	`t3`.`DSStatus` AS `dsstatus`,
	`t3`.`DSReason` AS `dsreason`,
	`t3`.`DSNotes` AS `dsnotes`,
	`t3`.`LCDate` AS `lcdate`,
	`t3`.`LCBy` AS `lcby`,
	`t3`.`LCStatus` AS `lcstatus`,
	`t3`.`LCReason` AS `lcreason`,
	`t3`.`LCNotes` AS `lcnotes`
FROM
	(
		(
			`instrumenttracking` `t1`
			JOIN `udsdiagnosis` `t2` ON (
				(`t1`.`InstrID` = `t2`.`InstrID`)
			)
		)
		JOIN `udstracking` `t3` ON (
			(`t1`.`InstrID` = `t3`.`InstrID`)
		)
	)
WHERE
	(
		`t1`.`InstrType` = _latin1 'UDS Diagnosis' and `t3`.`FormVer` = '3'
	);	



-- -----------------------------------------------------
-- procedure lq_get_nacc_udsdiagnosis2
-- -----------------------------------------------------

DROP PROCEDURE IF EXISTS `lq_get_nacc_udsdiagnosis2`;
DELIMITER $$

CREATE PROCEDURE `lq_get_nacc_udsdiagnosis2`(user_name varchar(50), host_name varchar(50), query_type varchar(25), query_subtype VARCHAR(25), query_days INTEGER)
BEGIN
CALL lq_audit_event(user_name, host_name, 'crms.nacc.udsdiagnosis2', query_type);

IF query_type = 'Simple' THEN
	SELECT p.PIDN, it.InstrType, it.DCDate, v.VType, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it 
	    INNER JOIN visit v ON (it.VID = v.VID) 
		INNER JOIN lq_view_udsdiagnosis2 i ON (it.InstrID = i.InstrId) 
		INNER JOIN temp_pidn p ON (p.PIDN = it.PIDN) 
	WHERE it.InstrType = 'UDS Diagnosis' or it.InstrType is null 
	ORDER BY p.pidn, it.DCDate;
      
ELSEIF query_type = 'SimpleAllPatients' THEN
	SELECT p.PIDN, it.InstrType, it.DCDate, v.VType, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it  
	    INNER JOIN visit v ON (it.VID = v.VID) 
		INNER JOIN lq_view_udsdiagnosis2 i ON (it.InstrID = i.InstrId)  
		RIGHT OUTER JOIN temp_pidn p ON (p.PIDN = it.PIDN)  
	WHERE it.InstrType =  'UDS Diagnosis' or it.InstrType is null 
	ORDER BY P.pidn, it.DCDate;
	
ELSEIF query_type = 'VisitGrouping' THEN
    SELECT l.PIDN, l.link_date, l.link_id, v.VType, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*
    FROM temp_linkdata l LEFT OUTER JOIN (visit v, instrumenttracking i, lq_view_udsdiagnosis2 d)
      ON (l.link_id=v.vid AND v.vid=i.vid AND i.InstrID=d.InstrId AND
          NOT i.DCStatus = 'Scheduled' AND NOT i.DCStatus like 'Canceled%')
    ORDER BY l.PIDN, l.link_date, l.link_id;
	
ELSEIF query_type = 'PrimaryAll' THEN 
	CREATE TEMPORARY TABLE temp_linkdata as 
		SELECT p.PIDN,i.DCDate as link_date, i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
		FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
			INNER JOIN lq_view_udsdiagnosis2 d ON (i.InstrID=d.InstrId) 
		WHERE NOT i.DCStatus = 'Scheduled' AND NOT i.DCStatus like 'Canceled%' 
		ORDER BY p.pidn, i.DCDate, i.InstrID ;
	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
	SELECT * from temp_linkdata;
	
ELSEIF query_type = 'PrimaryLatest' THEN  
	CREATE TEMPORARY TABLE temp_linkdata as 
		SELECT p.PIDN, i.DCDate as link_date, i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
		FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
			INNER JOIN lq_view_udsdiagnosis2 d ON (i.InstrID=d.InstrId) 
		WHERE i.DCDate = (SELECT MAX(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND  
			i2.InstrType = 'UDS Diagnosis' AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%') 
		ORDER BY p.pidn, i.DCDate, i.InstrID;
	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
	SELECT * from temp_linkdata;
	
ELSEIF query_type = 'PrimaryFirst' THEN
	CREATE TEMPORARY TABLE temp_linkdata as 
		SELECT p.PIDN,i.DCDate as link_date, i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.* 
		FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN) 
			INNER JOIN lq_view_udsdiagnosis2 d ON (i.InstrID=d.InstrId)
		WHERE i.DCDate = (SELECT MIN(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND 
			i2.InstrType = 'UDS Diagnosis' AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%')
		ORDER BY p.pidn, i.InstrID;
	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
	SELECT * from temp_linkdata;
	
ELSEIF query_type IN ('SecondaryAll','SecondaryClosest') THEN
	#Create candidate table with secondary instruments 
	CREATE TEMPORARY TABLE temp_secondary_candidates AS
		SELECT l.PIDN, l.link_date, l.link_id, i2.InstrType, i2.InstrID, DATEDIFF(l.link_date, i2.DCDate) AS Days 
		FROM temp_linkdata l INNER JOIN instrumenttracking i2 ON (i2.PIDN=l.PIDN) 
		WHERE i2.InstrType = 'UDS Diagnosis';
	ALTER TABLE temp_secondary_candidates ADD INDEX(pidn,link_date,link_id,Days);
	
	#get rid of earlier or later instruments as necessary
	IF query_subtype = 'Earlier' THEN DELETE from temp_secondary_candidates WHERE Days >0;
	ELSEIF query_subtype = 'MoreRecent' THEN DELETE from temp_secondary_candidates WHERE Days <0;
	END IF;
	
	#limit records to specified day range      
	DELETE FROM temp_secondary_candidates WHERE abs(Days) > query_days;

	#only keep closest if appropriate
	IF query_type = 'SecondaryClosest' THEN
		CREATE TEMPORARY TABLE temp_secondary_closest AS
			SELECT pidn,link_date,link_id,MIN(ABS(Days)) as min_days 
			FROM temp_secondary_candidates
			GROUP BY pidn,link_date,link_id;
		ALTER TABLE temp_secondary_closest ADD INDEX (pidn,link_date,link_id);
		DELETE FROM temp_secondary_candidates
			WHERE ABS(days) <> 
				(SELECT min_days 
				FROM temp_secondary_closest s2 
				WHERE (s2.pidn = temp_secondary_candidates.pidn and s2.link_date=temp_secondary_candidates.link_date and s2.link_id=temp_secondary_candidates.link_id));
		DROP TABLE temp_secondary_closest;
	END IF;

	SELECT l.PIDN, l.link_date, l.link_id, v.VType, i.InstrType, i.DCDate, temp_secondary_candidates.days as DayDiff, i.DCStatus, i.AgeAtDC, d.* 
	FROM temp_linkdata l
		LEFT OUTER JOIN temp_secondary_candidates ON (l.pidn=temp_secondary_candidates.pidn and l.link_date = temp_secondary_candidates.link_date and l.link_id=temp_secondary_candidates.link_id) 
		LEFT JOIN instrumenttracking i ON (temp_secondary_candidates.InstrID=i.InstrID)
		LEFT JOIN visit v ON (i.VID = v.VID)
		LEFT JOIN lq_view_udsdiagnosis2 d ON (i.InstrID=d.InstrId) ORDER BY l.pidn, l.link_date, l.link_id;

	DROP TABLE temp_secondary_candidates;

END IF;

END$$

$$
DELIMITER ;


-- -----------------------------------------------------
-- procedure lq_get_nacc_udsdiagnosis3
-- -----------------------------------------------------

DROP PROCEDURE IF EXISTS `lq_get_nacc_udsdiagnosis3`;
DELIMITER $$

CREATE PROCEDURE `lq_get_nacc_udsdiagnosis3`(user_name varchar(50), host_name varchar(50), query_type varchar(25), query_subtype VARCHAR(25), query_days INTEGER)
BEGIN
CALL lq_audit_event(user_name, host_name, 'crms.nacc.udsdiagnosis3', query_type);

IF query_type = 'Simple' THEN
	SELECT p.PIDN, it.InstrType, it.DCDate, v.VType, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it 
	    INNER JOIN visit v ON (it.VID = v.VID) 
		INNER JOIN lq_view_udsdiagnosis3 i ON (it.InstrID = i.InstrId) 
		INNER JOIN temp_pidn p ON (p.PIDN = it.PIDN) 
	WHERE it.InstrType = 'UDS Diagnosis' or it.InstrType is null 
	ORDER BY p.pidn, it.DCDate;
      
ELSEIF query_type = 'SimpleAllPatients' THEN
	SELECT p.PIDN, it.InstrType, it.DCDate, v.VType, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it  
	    INNER JOIN visit v ON (it.VID = v.VID) 
		INNER JOIN lq_view_udsdiagnosis3 i ON (it.InstrID = i.InstrId)  
		RIGHT OUTER JOIN temp_pidn p ON (p.PIDN = it.PIDN)  
	WHERE it.InstrType =  'UDS Diagnosis' or it.InstrType is null 
	ORDER BY P.pidn, it.DCDate;
	
ELSEIF query_type = 'VisitGrouping' THEN
    SELECT l.PIDN, l.link_date, l.link_id, v.VType, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*
    FROM temp_linkdata l LEFT OUTER JOIN (visit v, instrumenttracking i, lq_view_udsdiagnosis3 d)
      ON (l.link_id=v.vid AND v.vid=i.vid AND i.InstrID=d.InstrId AND
          NOT i.DCStatus = 'Scheduled' AND NOT i.DCStatus like 'Canceled%')
    ORDER BY l.PIDN, l.link_date, l.link_id;
	
ELSEIF query_type = 'PrimaryAll' THEN 
	CREATE TEMPORARY TABLE temp_linkdata as 
		SELECT p.PIDN,i.DCDate as link_date, i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
		FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
			INNER JOIN lq_view_udsdiagnosis3 d ON (i.InstrID=d.InstrId) 
		WHERE NOT i.DCStatus = 'Scheduled' AND NOT i.DCStatus like 'Canceled%' 
		ORDER BY p.pidn, i.DCDate, i.InstrID ;
	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
	SELECT * from temp_linkdata;
	
ELSEIF query_type = 'PrimaryLatest' THEN  
	CREATE TEMPORARY TABLE temp_linkdata as 
		SELECT p.PIDN, i.DCDate as link_date, i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
		FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
			INNER JOIN lq_view_udsdiagnosis3 d ON (i.InstrID=d.InstrId) 
		WHERE i.DCDate = (SELECT MAX(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND  
			i2.InstrType = 'UDS Diagnosis' AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%') 
		ORDER BY p.pidn, i.DCDate, i.InstrID;
	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
	SELECT * from temp_linkdata;
	
ELSEIF query_type = 'PrimaryFirst' THEN
	CREATE TEMPORARY TABLE temp_linkdata as 
		SELECT p.PIDN,i.DCDate as link_date, i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.* 
		FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN) 
			INNER JOIN lq_view_udsdiagnosis3 d ON (i.InstrID=d.InstrId)
		WHERE i.DCDate = (SELECT MIN(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND 
			i2.InstrType = 'UDS Diagnosis' AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%')
		ORDER BY p.pidn, i.InstrID;
	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
	SELECT * from temp_linkdata;
	
ELSEIF query_type IN ('SecondaryAll','SecondaryClosest') THEN
	#Create candidate table with secondary instruments 
	CREATE TEMPORARY TABLE temp_secondary_candidates AS
		SELECT l.PIDN, l.link_date, l.link_id, i2.InstrType, i2.InstrID, DATEDIFF(l.link_date, i2.DCDate) AS Days 
		FROM temp_linkdata l INNER JOIN instrumenttracking i2 ON (i2.PIDN=l.PIDN) 
		WHERE i2.InstrType = 'UDS Diagnosis';
	ALTER TABLE temp_secondary_candidates ADD INDEX(pidn,link_date,link_id,Days);
	
	#get rid of earlier or later instruments as necessary
	IF query_subtype = 'Earlier' THEN DELETE from temp_secondary_candidates WHERE Days >0;
	ELSEIF query_subtype = 'MoreRecent' THEN DELETE from temp_secondary_candidates WHERE Days <0;
	END IF;
	
	#limit records to specified day range      
	DELETE FROM temp_secondary_candidates WHERE abs(Days) > query_days;

	#only keep closest if appropriate
	IF query_type = 'SecondaryClosest' THEN
		CREATE TEMPORARY TABLE temp_secondary_closest AS
			SELECT pidn,link_date,link_id,MIN(ABS(Days)) as min_days 
			FROM temp_secondary_candidates
			GROUP BY pidn,link_date,link_id;
		ALTER TABLE temp_secondary_closest ADD INDEX (pidn,link_date,link_id);
		DELETE FROM temp_secondary_candidates
			WHERE ABS(days) <> 
				(SELECT min_days 
				FROM temp_secondary_closest s2 
				WHERE (s2.pidn = temp_secondary_candidates.pidn and s2.link_date=temp_secondary_candidates.link_date and s2.link_id=temp_secondary_candidates.link_id));
		DROP TABLE temp_secondary_closest;
	END IF;

	SELECT l.PIDN, l.link_date, l.link_id, v.VType, i.InstrType, i.DCDate, temp_secondary_candidates.days as DayDiff, i.DCStatus, i.AgeAtDC, d.* 
	FROM temp_linkdata l
		LEFT OUTER JOIN temp_secondary_candidates ON (l.pidn=temp_secondary_candidates.pidn and l.link_date = temp_secondary_candidates.link_date and l.link_id=temp_secondary_candidates.link_id) 
		LEFT JOIN instrumenttracking i ON (temp_secondary_candidates.InstrID=i.InstrID)
		LEFT JOIN visit v ON (i.VID = v.VID)
		LEFT JOIN lq_view_udsdiagnosis3 d ON (i.InstrID=d.InstrId) ORDER BY l.pidn, l.link_date, l.link_id;

	DROP TABLE temp_secondary_candidates;

END IF;

END$$

$$
DELIMITER ;


	
INSERT INTO query_objects(instance,scope,module,section,target,short_desc,standard,primary_link,secondary_link) 
  VALUES('lava','crms','query','nacc','udsdiagnosis2','UDS Diagnosis (V2)',1,1,1);
INSERT INTO query_objects(instance,scope,module,section,target,short_desc,standard,primary_link,secondary_link) 
  VALUES('lava','crms','query','nacc','udsdiagnosis3','UDS Diagnosis (V3)',1,1,1);


DELETE FROM versionhistory WHERE module='lava-crms-nacc-lavaquery' AND version='3.6.8';
INSERT INTO versionhistory(module,version,versiondate,major,minor,fix,updaterequired)
VALUES ('lava-crms-nacc-lavaquery','3.6.8','2016-02-02',3,6,8,0);
