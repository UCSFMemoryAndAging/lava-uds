use lava_demo;

INSERT IGNORE INTO query_objects(instance,scope,module,section,target,short_desc,standard,primary_link,secondary_link) values('lava','crms','query','nacc','udsmilestone3','UDS Milestone',1,1,1);

-- -----------------------------------------------------
-- view lq_view_udsmilestone
-- -----------------------------------------------------
DROP VIEW IF EXISTS `lq_view_udsmilestone`;
CREATE OR REPLACE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `lq_view_udsmilestone` AS select 
`t2`.`InstrID`,
`t2`.`DECEASED`,
`t2`.`DEATHMO`,
`t2`.`DEATHDY`,
`t2`.`DEATHYR`,
`t2`.`AUTOPSY`,
`t2`.`DISCONT`,
`t2`.`DISCMO`,
`t2`.`DISCDY`,
`t2`.`DISCYR`,
`t2`.`DISCREAS`,
`t2`.`DISCREAX`,
`t2`.`REJOINED`,
`t2`.`NURSEHOME`,
`t2`.`NURSEMO`,
`t2`.`NURSEDY`,
`t2`.`NURSEYR`,
`t2`.`PROTOCOL`,
`t2`.`NPSYTEST`,
`t2`.`NPCOGIMP`,
`t2`.`NPPHYILL`,
`t2`.`NPHOMEN`,
`t2`.`NPREFUS`,
`t2`.`NPOTHREA`,
`t2`.`NPOTHREX`,
`t2`.`PHYNDATA`,
`t2`.`PHYCOG`,
`t2`.`PHYILL`,
`t2`.`PHYHOME`,
`t2`.`PHYREFUS`,
`t2`.`PHYOTH`,
`t2`.`PHYOTHX`,
`t2`.`UDSACTIV`,
`t2`.`CHANGEMO`,
`t2`.`CHANGEDY`,
`t2`.`CHANGEYR`,
`t2`.`ACONSENT`,
`t2`.`RECOGIM`,
`t2`.`REPHYILL`,
`t2`.`REREFUSE`,
`t2`.`RENAVAIL`,
`t2`.`RENURSE`,
`t2`.`REJOIN`,
`t2`.`FTLDDISC`,
`t2`.`FTLDREAS`,
`t2`.`FTLDREAX`,
`t2`.`DROPREAS`,
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
FROM `instrumenttracking` `t1` join `udsmilestone` `t2` on (`t1`.`InstrID` = `t2`.`InstrID`) join `udstracking` `t3` on (`t1`.`InstrID` = `t3`.`InstrID`)
WHERE `t1`.`InstrType` = 'UDS Milestone';


-- -----------------------------------------------------
-- procedure lq_get_nacc_udsmilestone3
-- -----------------------------------------------------

DROP PROCEDURE IF EXISTS `lq_get_nacc_udsmilestone3`;
DELIMITER $$

CREATE PROCEDURE `lq_get_nacc_udsmilestone3`(user_name varchar(50), host_name varchar(50), query_type varchar(25), query_subtype VARCHAR(25), query_days INTEGER)
BEGIN
CALL lq_audit_event(user_name, host_name, 'crms-nacc.nacc.udsmilestone3', query_type);

IF query_type = 'Simple' THEN
	SELECT p.PIDN, it.InstrType, it.DCDate, v.VType, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it 
	    INNER JOIN visit v ON (it.VID = v.VID) 
		INNER JOIN lq_view_udsmilestone i ON (it.InstrID = i.instr_id) 
		INNER JOIN temp_pidn p ON (p.PIDN = it.PIDN) 
	WHERE it.InstrType = 'UDS Milestone' or it.InstrType is null 
	ORDER BY p.pidn, it.DCDate;
      
ELSEIF query_type = 'SimpleAllPatients' THEN
	SELECT p.PIDN, it.InstrType, it.DCDate, v.VType, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it  
	    INNER JOIN visit v ON (it.VID = v.VID) 
		INNER JOIN lq_view_udsmilestone i ON (it.InstrID = i.instr_id)  
		RIGHT OUTER JOIN temp_pidn p ON (p.PIDN = it.PIDN)  
	WHERE it.InstrType =  'UDS Milestone' or it.InstrType is null 
	ORDER BY P.pidn, it.DCDate;
	
ELSEIF query_type = 'VisitGrouping' THEN
    SELECT l.PIDN, l.link_date, l.link_id, v.VType, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*
    FROM temp_linkdata l LEFT OUTER JOIN (visit v, instrumenttracking i, lq_view_udsmilestone d)
      ON (l.link_id=v.vid AND v.vid=i.vid AND i.InstrID=d.instr_id AND
          NOT i.DCStatus = 'Scheduled' AND NOT i.DCStatus like 'Canceled%')
    ORDER BY l.PIDN, l.link_date, l.link_id;
	
ELSEIF query_type = 'PrimaryAll' THEN 
	CREATE TEMPORARY TABLE temp_linkdata as 
		SELECT p.PIDN,i.DCDate as link_date, i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
		FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
			INNER JOIN lq_view_udsmilestone d ON (i.InstrID=d.instr_id) 
		WHERE NOT i.DCStatus = 'Scheduled' AND NOT i.DCStatus like 'Canceled%' 
		ORDER BY p.pidn, i.DCDate, i.InstrID ;
	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
	SELECT * from temp_linkdata;
	
ELSEIF query_type = 'PrimaryLatest' THEN  
	CREATE TEMPORARY TABLE temp_linkdata as 
		SELECT p.PIDN, i.DCDate as link_date, i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
		FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
			INNER JOIN lq_view_udsmilestone d ON (i.InstrID=d.instr_id) 
		WHERE i.DCDate = (SELECT MAX(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND  
			i2.InstrType = 'UDS Milestone' AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%') 
		ORDER BY p.pidn, i.DCDate, i.InstrID;
	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
	SELECT * from temp_linkdata;
	
ELSEIF query_type = 'PrimaryFirst' THEN
	CREATE TEMPORARY TABLE temp_linkdata as 
		SELECT p.PIDN,i.DCDate as link_date, i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.* 
		FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN) 
			INNER JOIN lq_view_udsmilestone d ON (i.InstrID=d.instr_id)
		WHERE i.DCDate = (SELECT MIN(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND 
			i2.InstrType = 'UDS Milestone' AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%')
		ORDER BY p.pidn, i.InstrID;
	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
	SELECT * from temp_linkdata;
	
ELSEIF query_type IN ('SecondaryAll','SecondaryClosest') THEN
	#Create candidate table with secondary instruments 
	CREATE TEMPORARY TABLE temp_secondary_candidates AS
		SELECT l.PIDN, l.link_date, l.link_id, i2.InstrType, i2.InstrID, DATEDIFF(l.link_date, i2.DCDate) AS Days 
		FROM temp_linkdata l INNER JOIN instrumenttracking i2 ON (i2.PIDN=l.PIDN) 
		WHERE i2.InstrType = 'UDS Milestone';
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
		LEFT JOIN lq_view_udsmilestone d ON (i.InstrID=d.instr_id) ORDER BY l.pidn, l.link_date, l.link_id;

	DROP TABLE temp_secondary_candidates;

END IF;

END$$

$$
DELIMITER ;


