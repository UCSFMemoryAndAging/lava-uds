use lava_demo;

INSERT IGNORE INTO query_objects(instance,scope,module,section,target,short_desc,standard,primary_link,secondary_link) values('lava','crms','query','nacc','udsneuropsychmoca3','UDS Neuropsych Moca',1,1,1);

-- -----------------------------------------------------
-- view lq_view_udsneuropsychmoca
-- -----------------------------------------------------
DROP VIEW IF EXISTS `lq_view_udsneuropsychmoca`;
CREATE OR REPLACE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `lq_view_udsneuropsychmoca` AS select 
`t2`.`InstrID`,
`t2`.`MOCACOMP`,
`t2`.`MOCAREAS`,
`t2`.`MOCALOC`,
`t2`.`MOCALAN`,
`t2`.`MOCALANX`,
`t2`.`MOCAVIS`,
`t2`.`MOCAHEAR`,
`t2`.`MOCATOTS`,
`t2`.`MOCATRAI`,
`t2`.`MOCACUBE`,
`t2`.`MOCACLOC`,
`t2`.`MOCACLON`,
`t2`.`MOCACLOH`,
`t2`.`MOCANAMI`,
`t2`.`MOCAREGI`,
`t2`.`MOCADIGI`,
`t2`.`MOCALETT`,
`t2`.`MOCASER7`,
`t2`.`MOCAREPE`,
`t2`.`MOCAFLUE`,
`t2`.`MOCAABST`,
`t2`.`MOCARECN`,
`t2`.`MOCARECC`,
`t2`.`MOCARECR`,
`t2`.`MOCAORDT`,
`t2`.`MOCAORMO`,
`t2`.`MOCAORYR`,
`t2`.`MOCAORDY`,
`t2`.`MOCAORPL`,
`t2`.`MOCAORCT`,
`t2`.`NPSYCLOC`,
`t2`.`NPSYLAN`,
`t2`.`NPSYLANX`,
`t2`.`CRAFTVRS`,
`t2`.`CRAFTURS`,
`t2`.`UDSBENTC`,
`t2`.`DIGFORCT`,
`t2`.`DIGFORSL`,
`t2`.`DIGBACCT`,
`t2`.`DIGBACLS`,
`t2`.`ANIMALS`,
`t2`.`VEG`,
`t2`.`TRAILA`,
`t2`.`TRAILARR`,
`t2`.`TRAILALI`,
`t2`.`TRAILB`,
`t2`.`TRAILBRR`,
`t2`.`TRAILBLI`,
`t2`.`CRAFTDVR`,
`t2`.`CRAFTDRE`,
`t2`.`CRAFTDTI`,
`t2`.`CRAFTCUE`,
`t2`.`UDSBENTD`,
`t2`.`UDSBENRS`,
`t2`.`MINTTOTS`,
`t2`.`MINTTOTW`,
`t2`.`MINTSCNG`,
`t2`.`MINTSCNC`,
`t2`.`MINTPCNG`,
`t2`.`MINTPCNC`,
`t2`.`UDSVERFC`,
`t2`.`UDSVERFN`,
`t2`.`UDSVERNF`,
`t2`.`UDSVERLC`,
`t2`.`UDSVERLR`,
`t2`.`UDSVERLN`,
`t2`.`UDSVERTN`,
`t2`.`UDSVERTE`,
`t2`.`UDSVERTI`,
`t2`.`COGSTAT`,
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
FROM `instrumenttracking` `t1` join `udsneuropsychmoca` `t2` on (`t1`.`InstrID` = `t2`.`InstrID`) join `udstracking` `t3` on (`t1`.`InstrID` = `t3`.`InstrID`)
WHERE `t1`.`InstrType` = 'UDS Neuropsych Moca';


-- -----------------------------------------------------
-- procedure lq_get_nacc_udsneuropsychmoca3
-- -----------------------------------------------------

DROP PROCEDURE IF EXISTS `lq_get_nacc_udsneuropsychmoca3`;
DELIMITER $$

CREATE PROCEDURE `lq_get_nacc_udsneuropsychmoca3`(user_name varchar(50), host_name varchar(50), query_type varchar(25), query_subtype VARCHAR(25), query_days INTEGER)
BEGIN
CALL lq_audit_event(user_name, host_name, 'crms-nacc.nacc.udsneuropsychmoca3', query_type);

IF query_type = 'Simple' THEN
	SELECT p.PIDN, it.InstrType, it.DCDate, v.VType, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it 
	    INNER JOIN visit v ON (it.VID = v.VID) 
		INNER JOIN lq_view_udsneuropsychmoca i ON (it.InstrID = i.instr_id) 
		INNER JOIN temp_pidn p ON (p.PIDN = it.PIDN) 
	WHERE it.InstrType = 'UDS Neuropsych Moca' or it.InstrType is null 
	ORDER BY p.pidn, it.DCDate;
      
ELSEIF query_type = 'SimpleAllPatients' THEN
	SELECT p.PIDN, it.InstrType, it.DCDate, v.VType, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it  
	    INNER JOIN visit v ON (it.VID = v.VID) 
		INNER JOIN lq_view_udsneuropsychmoca i ON (it.InstrID = i.instr_id)  
		RIGHT OUTER JOIN temp_pidn p ON (p.PIDN = it.PIDN)  
	WHERE it.InstrType =  'UDS Neuropsych Moca' or it.InstrType is null 
	ORDER BY P.pidn, it.DCDate;
	
ELSEIF query_type = 'VisitGrouping' THEN
    SELECT l.PIDN, l.link_date, l.link_id, v.VType, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*
    FROM temp_linkdata l LEFT OUTER JOIN (visit v, instrumenttracking i, lq_view_udsneuropsychmoca d)
      ON (l.link_id=v.vid AND v.vid=i.vid AND i.InstrID=d.instr_id AND
          NOT i.DCStatus = 'Scheduled' AND NOT i.DCStatus like 'Canceled%')
    ORDER BY l.PIDN, l.link_date, l.link_id;
	
ELSEIF query_type = 'PrimaryAll' THEN 
	CREATE TEMPORARY TABLE temp_linkdata as 
		SELECT p.PIDN,i.DCDate as link_date, i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
		FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
			INNER JOIN lq_view_udsneuropsychmoca d ON (i.InstrID=d.instr_id) 
		WHERE NOT i.DCStatus = 'Scheduled' AND NOT i.DCStatus like 'Canceled%' 
		ORDER BY p.pidn, i.DCDate, i.InstrID ;
	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
	SELECT * from temp_linkdata;
	
ELSEIF query_type = 'PrimaryLatest' THEN  
	CREATE TEMPORARY TABLE temp_linkdata as 
		SELECT p.PIDN, i.DCDate as link_date, i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
		FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
			INNER JOIN lq_view_udsneuropsychmoca d ON (i.InstrID=d.instr_id) 
		WHERE i.DCDate = (SELECT MAX(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND  
			i2.InstrType = 'UDS Neuropsych Moca' AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%') 
		ORDER BY p.pidn, i.DCDate, i.InstrID;
	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
	SELECT * from temp_linkdata;
	
ELSEIF query_type = 'PrimaryFirst' THEN
	CREATE TEMPORARY TABLE temp_linkdata as 
		SELECT p.PIDN,i.DCDate as link_date, i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.* 
		FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN) 
			INNER JOIN lq_view_udsneuropsychmoca d ON (i.InstrID=d.instr_id)
		WHERE i.DCDate = (SELECT MIN(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND 
			i2.InstrType = 'UDS Neuropsych Moca' AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%')
		ORDER BY p.pidn, i.InstrID;
	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
	SELECT * from temp_linkdata;
	
ELSEIF query_type IN ('SecondaryAll','SecondaryClosest') THEN
	#Create candidate table with secondary instruments 
	CREATE TEMPORARY TABLE temp_secondary_candidates AS
		SELECT l.PIDN, l.link_date, l.link_id, i2.InstrType, i2.InstrID, DATEDIFF(l.link_date, i2.DCDate) AS Days 
		FROM temp_linkdata l INNER JOIN instrumenttracking i2 ON (i2.PIDN=l.PIDN) 
		WHERE i2.InstrType = 'UDS Neuropsych Moca';
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
		LEFT JOIN lq_view_udsneuropsychmoca d ON (i.InstrID=d.instr_id) ORDER BY l.pidn, l.link_date, l.link_id;

	DROP TABLE temp_secondary_candidates;

END IF;

END$$

$$
DELIMITER ;


