use lava_demo;

INSERT IGNORE INTO query_objects(instance,scope,module,section,target,short_desc,standard,primary_link,secondary_link) values('lava','crms','query','nacc','udsdiagnosis3','UDS Diagnosis',1,1,1);

-- -----------------------------------------------------
-- view lq_view_udsdiagnosis
-- -----------------------------------------------------
DROP VIEW IF EXISTS `lq_view_udsdiagnosis`;
CREATE OR REPLACE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `lq_view_udsdiagnosis` AS select 
`t2`.`InstrID`,
`t2`.`WHODIDDX`,
`t2`.`NORMCOG`,
`t2`.`DEMENTED`,
`t2`.`MCIAMEM`,
`t2`.`MCIAPLUS`,
`t2`.`MCIAPLAN`,
`t2`.`MCIAPATT`,
`t2`.`MCIAPEX`,
`t2`.`MCIAPVIS`,
`t2`.`MCINON1`,
`t2`.`MCIN1LAN`,
`t2`.`MCIN1ATT`,
`t2`.`MCIN1EX`,
`t2`.`MCIN1VIS`,
`t2`.`MCINON2`,
`t2`.`MCIN2LAN`,
`t2`.`MCIN2ATT`,
`t2`.`MCIN2EX`,
`t2`.`MCIN2VIS`,
`t2`.`IMPNOMCI`,
`t2`.`PROBAD`,
`t2`.`PROBADIF`,
`t2`.`POSSAD`,
`t2`.`POSSADIF`,
`t2`.`DLB`,
`t2`.`DLBIF`,
`t2`.`VASC`,
`t2`.`VASCIF`,
`t2`.`VASCPS`,
`t2`.`VASCPSIF`,
`t2`.`ALCDEM`,
`t2`.`ALCDEMIF`,
`t2`.`DEMUN`,
`t2`.`DEMUNIF`,
`t2`.`FTD`,
`t2`.`FTDIF`,
`t2`.`PPAPH`,
`t2`.`PPAPHIF`,
`t2`.`PNAPH`,
`t2`.`SEMDEMAN`,
`t2`.`SEMDEMAG`,
`t2`.`PPAOTHR`,
`t2`.`PSP`,
`t2`.`PSPIF`,
`t2`.`CORT`,
`t2`.`CORTIF`,
`t2`.`HUNT`,
`t2`.`HUNTIF`,
`t2`.`PRION`,
`t2`.`PRIONIF`,
`t2`.`MEDS`,
`t2`.`MEDSIF`,
`t2`.`DYSILL`,
`t2`.`DYSILLIF`,
`t2`.`DEP`,
`t2`.`DEPIF`,
`t2`.`OTHPSY`,
`t2`.`OTHPSYIF`,
`t2`.`DOWNS`,
`t2`.`DOWNSIF`,
`t2`.`PARK`,
`t2`.`PARKIF`,
`t2`.`STROKE`,
`t2`.`STROKIF`,
`t2`.`HYCEPH`,
`t2`.`HYCEPHIF`,
`t2`.`BRNINJ`,
`t2`.`BRNINJIF`,
`t2`.`NEOP`,
`t2`.`NEOPIF`,
`t2`.`COGOTH`,
`t2`.`COGOTHIF`,
`t2`.`COGOTHX`,
`t2`.`COGOTH2`,
`t2`.`COGOTH2IF`,
`t2`.`COGOTH2X`,
`t2`.`COGOTH3`,
`t2`.`COGOTH3IF`,
`t2`.`COGOTH3X`,
`t2`.`DXMETHOD`,
`t2`.`AMNDEM`,
`t2`.`PCA`,
`t2`.`PPASYN`,
`t2`.`PPASYNT`,
`t2`.`FTDSYN`,
`t2`.`LBDSYN`,
`t2`.`NAMNDEM`,
`t2`.`AMYLPET`,
`t2`.`AMYLCSF`,
`t2`.`FDGAD`,
`t2`.`HIPPATR`,
`t2`.`TAUPETAD`,
`t2`.`CSFTAU`,
`t2`.`FDGFTLD`,
`t2`.`TPETFTLD`,
`t2`.`MRFTLD`,
`t2`.`DATSCAN`,
`t2`.`OTHBIOM`,
`t2`.`OTHBIOMX`,
`t2`.`IMAGLINF`,
`t2`.`IMAGLAC`,
`t2`.`IMAGMACH`,
`t2`.`IMAGMICH`,
`t2`.`IMAGMWMH`,
`t2`.`IMAGEWMH`,
`t2`.`ADMUT`,
`t2`.`FTLDMUT`,
`t2`.`OTHMUT`,
`t2`.`OTHMUTX`,
`t2`.`ALZDIS`,
`t2`.`ALZDISIF`,
`t2`.`LBDIS`,
`t2`.`LBDIF`,
`t2`.`MSA`,
`t2`.`MSAIF`,
`t2`.`FTLDMO`,
`t2`.`FTLDMOIF`,
`t2`.`FTLDNOS`,
`t2`.`FTLDNOIF`,
`t2`.`FTLDSUBT`,
`t2`.`FTLDSUBX`,
`t2`.`CVD`,
`t2`.`CVDIF`,
`t2`.`PREVSTK`,
`t2`.`STROKDEC`,
`t2`.`STKIMAG`,
`t2`.`INFNETW`,
`t2`.`INFWMH`,
`t2`.`ESSTREM`,
`t2`.`ESSTREIF`,
`t2`.`BRNINCTE`,
`t2`.`EPILEP`,
`t2`.`EPILEPIF`,
`t2`.`NEOPSTAT`,
`t2`.`HIV`,
`t2`.`HIVIF`,
`t2`.`OTHCOG`,
`t2`.`OTHCOGIF`,
`t2`.`OTHCOGX`,
`t2`.`DEPTREAT`,
`t2`.`BIPOLDX`,
`t2`.`BIPOLDIF`,
`t2`.`SCHIZOP`,
`t2`.`SCHIZOIF`,
`t2`.`ANXIET`,
`t2`.`ANXIETIF`,
`t2`.`DELIR`,
`t2`.`DELIRIF`,
`t2`.`PTSDDX`,
`t2`.`PTSDDXIF`,
`t2`.`OTHPSYX`,
`t2`.`ALCABUSE`,
`t2`.`IMPSUB`,
`t2`.`IMPSUBIF`,
`t3`.`Packet`,
`t3`.`FormID`,
`t3`.`FormVer`,
`t3`.`ADCID`,
`t3`.`PTID`,
`t3`.`VisitMo`,
`t3`.`VisitDay`,
`t3`.`VisitYr`,
`t3`.`VisitNum`,
`t3`.`Initials`,
`t3`.`PacketDate`,
`t3`.`PacketBy`,
`t3`.`PacketStatus`,
`t3`.`PacketReason`,
`t3`.`PacketNotes`,
`t3`.`DSDate`,
`t3`.`DSBy`,
`t3`.`DSStatus`,
`t3`.`DSReason`,
`t3`.`DSNotes`,
`t3`.`LCDate`,
`t3`.`LCBy`,
`t3`.`LCStatus`,
`t3`.`LCReason`,
`t3`.`LCNotes`
FROM `instrumenttracking` `t1` join `udsdiagnosis` `t2` on (`t1`.`InstrID` = `t2`.`InstrID`) join `udstracking` `t3` on (`t1`.`InstrID` = `t3`.`InstrID`)
WHERE `t1`.`InstrType` = 'UDS Diagnosis';


-- -----------------------------------------------------
-- procedure lq_get_nacc_udsdiagnosis3
-- -----------------------------------------------------

DROP PROCEDURE IF EXISTS `lq_get_nacc_udsdiagnosis3`;
DELIMITER $$

CREATE PROCEDURE `lq_get_nacc_udsdiagnosis3`(user_name varchar(50), host_name varchar(50), query_type varchar(25), query_subtype VARCHAR(25), query_days INTEGER)
BEGIN
CALL lq_audit_event(user_name, host_name, 'crms-nacc.nacc.udsdiagnosis3', query_type);

IF query_type = 'Simple' THEN
	SELECT p.PIDN, it.InstrType, it.DCDate, v.VType, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it 
	    INNER JOIN visit v ON (it.VID = v.VID) 
		INNER JOIN lq_view_udsdiagnosis i ON (it.InstrID = i.instr_id) 
		INNER JOIN temp_pidn p ON (p.PIDN = it.PIDN) 
	WHERE it.InstrType = 'UDS Diagnosis' or it.InstrType is null 
	ORDER BY p.pidn, it.DCDate;
      
ELSEIF query_type = 'SimpleAllPatients' THEN
	SELECT p.PIDN, it.InstrType, it.DCDate, v.VType, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it  
	    INNER JOIN visit v ON (it.VID = v.VID) 
		INNER JOIN lq_view_udsdiagnosis i ON (it.InstrID = i.instr_id)  
		RIGHT OUTER JOIN temp_pidn p ON (p.PIDN = it.PIDN)  
	WHERE it.InstrType =  'UDS Diagnosis' or it.InstrType is null 
	ORDER BY P.pidn, it.DCDate;
	
ELSEIF query_type = 'VisitGrouping' THEN
    SELECT l.PIDN, l.link_date, l.link_id, v.VType, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*
    FROM temp_linkdata l LEFT OUTER JOIN (visit v, instrumenttracking i, lq_view_udsdiagnosis d)
      ON (l.link_id=v.vid AND v.vid=i.vid AND i.InstrID=d.instr_id AND
          NOT i.DCStatus = 'Scheduled' AND NOT i.DCStatus like 'Canceled%')
    ORDER BY l.PIDN, l.link_date, l.link_id;
	
ELSEIF query_type = 'PrimaryAll' THEN 
	CREATE TEMPORARY TABLE temp_linkdata as 
		SELECT p.PIDN,i.DCDate as link_date, i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
		FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
			INNER JOIN lq_view_udsdiagnosis d ON (i.InstrID=d.instr_id) 
		WHERE NOT i.DCStatus = 'Scheduled' AND NOT i.DCStatus like 'Canceled%' 
		ORDER BY p.pidn, i.DCDate, i.InstrID ;
	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
	SELECT * from temp_linkdata;
	
ELSEIF query_type = 'PrimaryLatest' THEN  
	CREATE TEMPORARY TABLE temp_linkdata as 
		SELECT p.PIDN, i.DCDate as link_date, i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
		FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
			INNER JOIN lq_view_udsdiagnosis d ON (i.InstrID=d.instr_id) 
		WHERE i.DCDate = (SELECT MAX(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND  
			i2.InstrType = 'UDS Diagnosis' AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%') 
		ORDER BY p.pidn, i.DCDate, i.InstrID;
	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
	SELECT * from temp_linkdata;
	
ELSEIF query_type = 'PrimaryFirst' THEN
	CREATE TEMPORARY TABLE temp_linkdata as 
		SELECT p.PIDN,i.DCDate as link_date, i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.* 
		FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN) 
			INNER JOIN lq_view_udsdiagnosis d ON (i.InstrID=d.instr_id)
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
		LEFT JOIN lq_view_udsdiagnosis d ON (i.InstrID=d.instr_id) ORDER BY l.pidn, l.link_date, l.link_id;

	DROP TABLE temp_secondary_candidates;

END IF;

END$$

$$
DELIMITER ;


