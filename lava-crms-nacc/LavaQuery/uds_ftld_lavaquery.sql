-- LavaQuery db code for UDS FTLD module (8/19/2014, alee7)

DELETE FROM query_objects WHERE instance='lava' and scope='crms' and module='query' and section='nacc' and target like 'udsftld%';

INSERT INTO query_objects(instance,scope,module,section,target,short_desc,standard,primary_link,secondary_link) values('lava','crms','query','nacc','udsftldbis2','UDS FTLD BIS',1,1,1);
INSERT INTO query_objects(instance,scope,module,section,target,short_desc,standard,primary_link,secondary_link) values('lava','crms','query','nacc','udsftldclinfeatures2','UDS FTLD Clin Features',1,1,1);
INSERT INTO query_objects(instance,scope,module,section,target,short_desc,standard,primary_link,secondary_link) values('lava','crms','query','nacc','udsftldfamilyhistory2','UDS FTLD Family History',1,1,1);
INSERT INTO query_objects(instance,scope,module,section,target,short_desc,standard,primary_link,secondary_link) values('lava','crms','query','nacc','udsftldformchecklist2','UDS FTLD Form Checklist',1,1,1);
INSERT INTO query_objects(instance,scope,module,section,target,short_desc,standard,primary_link,secondary_link) values('lava','crms','query','nacc','udsftldimagingavail2','UDS FTLD Imaging Avail',1,1,1);
INSERT INTO query_objects(instance,scope,module,section,target,short_desc,standard,primary_link,secondary_link) values('lava','crms','query','nacc','udsftldimagingdiag2','UDS FTLD Imaging Diag',1,1,1);
INSERT INTO query_objects(instance,scope,module,section,target,short_desc,standard,primary_link,secondary_link) values('lava','crms','query','nacc','udsftldiri2','UDS FTLD IRI',1,1,1);
INSERT INTO query_objects(instance,scope,module,section,target,short_desc,standard,primary_link,secondary_link) values('lava','crms','query','nacc','udsftldneuropsych2','UDS FTLD Neuropsych',1,1,1);
INSERT INTO query_objects(instance,scope,module,section,target,short_desc,standard,primary_link,secondary_link) values('lava','crms','query','nacc','udsftldrsms2','UDS FTLD RSMS',1,1,1);
INSERT INTO query_objects(instance,scope,module,section,target,short_desc,standard,primary_link,secondary_link) values('lava','crms','query','nacc','udsftldsboc2','UDS FTLD SBOC',1,1,1);
INSERT INTO query_objects(instance,scope,module,section,target,short_desc,standard,primary_link,secondary_link) values('lava','crms','query','nacc','udsftldsnq2','UDS FTLD SNQ',1,1,1);
INSERT INTO query_objects(instance,scope,module,section,target,short_desc,standard,primary_link,secondary_link) values('lava','crms','query','nacc','udsftldspecimenconsent2','UDS FTLD Specimen Consent',1,1,1);
INSERT INTO query_objects(instance,scope,module,section,target,short_desc,standard,primary_link,secondary_link) values('lava','crms','query','nacc','udsftldupdrs2','UDS FTLD UPDRS',1,1,1);


-- -----------------------------------------------------
-- view lq_view_udsftldbis
-- -----------------------------------------------------
DROP VIEW IF EXISTS `lq_view_udsftldbis`;
CREATE OR REPLACE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `lq_view_udsftldbis` AS select 
`t1`.`InstrID`,
`t2`.`FTDCPC4F`,
`t2`.`FTDWORKU`,
`t2`.`FTDMIST`,
`t2`.`FTDCRIT`,
`t2`.`FTDWORR`,
`t2`.`FTDBAD`,
`t2`.`FTDPOOR`,
`t2`.`FTDFFEAR`,
`t2`.`FTDBIST`,
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
FROM `instrumenttracking` `t1` join `udsftldbis` `t2` on (`t1`.`InstrID` = `t2`.`InstrID`) join `udstracking` `t3` on (`t1`.`InstrID` = `t3`.`InstrID`)
WHERE `t1`.`InstrType` = 'UDS FTLD BIS';


-- -----------------------------------------------------
-- procedure lq_get_nacc_udsftldbis2
-- -----------------------------------------------------

DROP PROCEDURE IF EXISTS `lq_get_nacc_udsftldbis2`;
DELIMITER $$

CREATE PROCEDURE `lq_get_nacc_udsftldbis2`(user_name varchar(50), host_name varchar(50), query_type varchar(25), query_subtype VARCHAR(25), query_days INTEGER)
BEGIN
CALL lq_audit_event(user_name, host_name, 'crms-nacc.nacc.udsftldbis2', query_type);

IF query_type = 'Simple' THEN
	SELECT p.PIDN, it.InstrType, it.DCDate, v.VType, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it 
	    INNER JOIN visit v ON (it.VID = v.VID) 
		INNER JOIN lq_view_udsftldbis i ON (it.InstrID = i.InstrID) 
		INNER JOIN temp_pidn p ON (p.PIDN = it.PIDN) 
	WHERE it.InstrType = 'UDS FTLD BIS' or it.InstrType is null 
	ORDER BY p.pidn, it.DCDate;
      
ELSEIF query_type = 'SimpleAllPatients' THEN
	SELECT p.PIDN, it.InstrType, it.DCDate, v.VType, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it  
	    INNER JOIN visit v ON (it.VID = v.VID) 
		INNER JOIN lq_view_udsftldbis i ON (it.InstrID = i.InstrID)  
		RIGHT OUTER JOIN temp_pidn p ON (p.PIDN = it.PIDN)  
	WHERE it.InstrType =  'UDS FTLD BIS' or it.InstrType is null 
	ORDER BY P.pidn, it.DCDate;
	
ELSEIF query_type = 'VisitGrouping' THEN
    SELECT l.PIDN, l.link_date, l.link_id, v.VType, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*
    FROM temp_linkdata l LEFT OUTER JOIN (visit v, instrumenttracking i, lq_view_udsftldbis d)
      ON (l.link_id=v.vid AND v.vid=i.vid AND i.InstrID=d.InstrID AND
          NOT i.DCStatus = 'Scheduled' AND NOT i.DCStatus like 'Canceled%')
    ORDER BY l.PIDN, l.link_date, l.link_id;
	
ELSEIF query_type = 'PrimaryAll' THEN 
	CREATE TEMPORARY TABLE temp_linkdata as 
		SELECT p.PIDN,i.DCDate as link_date, i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
		FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
			INNER JOIN lq_view_udsftldbis d ON (i.InstrID=d.InstrID) 
		WHERE NOT i.DCStatus = 'Scheduled' AND NOT i.DCStatus like 'Canceled%' 
		ORDER BY p.pidn, i.DCDate, i.InstrID ;
	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
	SELECT * from temp_linkdata;
	
ELSEIF query_type = 'PrimaryLatest' THEN  
	CREATE TEMPORARY TABLE temp_linkdata as 
		SELECT p.PIDN, i.DCDate as link_date, i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
		FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
			INNER JOIN lq_view_udsftldbis d ON (i.InstrID=d.InstrID) 
		WHERE i.DCDate = (SELECT MAX(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND  
			i2.InstrType = 'UDS FTLD BIS' AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%') 
		ORDER BY p.pidn, i.DCDate, i.InstrID;
	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
	SELECT * from temp_linkdata;
	
ELSEIF query_type = 'PrimaryFirst' THEN
	CREATE TEMPORARY TABLE temp_linkdata as 
		SELECT p.PIDN,i.DCDate as link_date, i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.* 
		FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN) 
			INNER JOIN lq_view_udsftldbis d ON (i.InstrID=d.InstrID)
		WHERE i.DCDate = (SELECT MIN(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND 
			i2.InstrType = 'UDS FTLD BIS' AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%')
		ORDER BY p.pidn, i.InstrID;
	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
	SELECT * from temp_linkdata;
	
ELSEIF query_type IN ('SecondaryAll','SecondaryClosest') THEN
	#Create candidate table with secondary instruments 
	CREATE TEMPORARY TABLE temp_secondary_candidates AS
		SELECT l.PIDN, l.link_date, l.link_id, i2.InstrType, i2.InstrID, DATEDIFF(l.link_date, i2.DCDate) AS Days 
		FROM temp_linkdata l INNER JOIN instrumenttracking i2 ON (i2.PIDN=l.PIDN) 
		WHERE i2.InstrType = 'UDS FTLD BIS';
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
		LEFT JOIN lq_view_udsftldbis d ON (i.InstrID=d.InstrID) ORDER BY l.pidn, l.link_date, l.link_id;

	DROP TABLE temp_secondary_candidates;

END IF;

END$$

$$
DELIMITER ;

-- -----------------------------------------------------
-- view lq_view_udsftldclinfeatures
-- -----------------------------------------------------
DROP VIEW IF EXISTS `lq_view_udsftldclinfeatures`;
CREATE OR REPLACE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `lq_view_udsftldclinfeatures` AS select 
`t1`.`InstrID`,
`t2`.`FTDPPASL`,
`t2`.`FTDPPAPO`,
`t2`.`FTDPPAIW`,
`t2`.`FTDPPASW`,
`t2`.`FTDPPAPK`,
`t2`.`FTDPPAGS`,
`t2`.`FTDPPAEH`,
`t2`.`FTDPPACS`,
`t2`.`FTDPPASS`,
`t2`.`FTDPPASR`,
`t2`.`FTDPPASD`,
`t2`.`FTDCPPA`,
`t2`.`FTDCPPAS`,
`t2`.`FTDBVCLN`,
`t2`.`FTDBVDIS`,
`t2`.`FTDBVAPA`,
`t2`.`FTDBVLOS`,
`t2`.`FTDBVRIT`,
`t2`.`FTDBVHYP`,
`t2`.`FTDBVNEU`,
`t2`.`FTDBVIDL`,
`t2`.`FTDBVFT`,
`t2`.`FTDEMGPV`,
`t2`.`FTDEMGPY`,
`t2`.`FTDEMGMN`,
`t2`.`FTDPABVF`,
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
FROM `instrumenttracking` `t1` join `udsftldclinfeatures` `t2` on (`t1`.`InstrID` = `t2`.`InstrID`) join `udstracking` `t3` on (`t1`.`InstrID` = `t3`.`InstrID`)
WHERE `t1`.`InstrType` = 'UDS FTLD Clin Features';


-- -----------------------------------------------------
-- procedure lq_get_nacc_udsftldclinfeatures2
-- -----------------------------------------------------

DROP PROCEDURE IF EXISTS `lq_get_nacc_udsftldclinfeatures2`;
DELIMITER $$

CREATE PROCEDURE `lq_get_nacc_udsftldclinfeatures2`(user_name varchar(50), host_name varchar(50), query_type varchar(25), query_subtype VARCHAR(25), query_days INTEGER)
BEGIN
CALL lq_audit_event(user_name, host_name, 'crms-nacc.nacc.udsftldclinfeatures2', query_type);

IF query_type = 'Simple' THEN
	SELECT p.PIDN, it.InstrType, it.DCDate, v.VType, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it 
	    INNER JOIN visit v ON (it.VID = v.VID) 
		INNER JOIN lq_view_udsftldclinfeatures i ON (it.InstrID = i.InstrID) 
		INNER JOIN temp_pidn p ON (p.PIDN = it.PIDN) 
	WHERE it.InstrType = 'UDS FTLD Clin Features' or it.InstrType is null 
	ORDER BY p.pidn, it.DCDate;
      
ELSEIF query_type = 'SimpleAllPatients' THEN
	SELECT p.PIDN, it.InstrType, it.DCDate, v.VType, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it  
	    INNER JOIN visit v ON (it.VID = v.VID) 
		INNER JOIN lq_view_udsftldclinfeatures i ON (it.InstrID = i.InstrID)  
		RIGHT OUTER JOIN temp_pidn p ON (p.PIDN = it.PIDN)  
	WHERE it.InstrType =  'UDS FTLD Clin Features' or it.InstrType is null 
	ORDER BY P.pidn, it.DCDate;
	
ELSEIF query_type = 'VisitGrouping' THEN
    SELECT l.PIDN, l.link_date, l.link_id, v.VType, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*
    FROM temp_linkdata l LEFT OUTER JOIN (visit v, instrumenttracking i, lq_view_udsftldclinfeatures d)
      ON (l.link_id=v.vid AND v.vid=i.vid AND i.InstrID=d.InstrID AND
          NOT i.DCStatus = 'Scheduled' AND NOT i.DCStatus like 'Canceled%')
    ORDER BY l.PIDN, l.link_date, l.link_id;
	
ELSEIF query_type = 'PrimaryAll' THEN 
	CREATE TEMPORARY TABLE temp_linkdata as 
		SELECT p.PIDN,i.DCDate as link_date, i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
		FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
			INNER JOIN lq_view_udsftldclinfeatures d ON (i.InstrID=d.InstrID) 
		WHERE NOT i.DCStatus = 'Scheduled' AND NOT i.DCStatus like 'Canceled%' 
		ORDER BY p.pidn, i.DCDate, i.InstrID ;
	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
	SELECT * from temp_linkdata;
	
ELSEIF query_type = 'PrimaryLatest' THEN  
	CREATE TEMPORARY TABLE temp_linkdata as 
		SELECT p.PIDN, i.DCDate as link_date, i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
		FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
			INNER JOIN lq_view_udsftldclinfeatures d ON (i.InstrID=d.InstrID) 
		WHERE i.DCDate = (SELECT MAX(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND  
			i2.InstrType = 'UDS FTLD Clin Features' AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%') 
		ORDER BY p.pidn, i.DCDate, i.InstrID;
	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
	SELECT * from temp_linkdata;
	
ELSEIF query_type = 'PrimaryFirst' THEN
	CREATE TEMPORARY TABLE temp_linkdata as 
		SELECT p.PIDN,i.DCDate as link_date, i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.* 
		FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN) 
			INNER JOIN lq_view_udsftldclinfeatures d ON (i.InstrID=d.InstrID)
		WHERE i.DCDate = (SELECT MIN(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND 
			i2.InstrType = 'UDS FTLD Clin Features' AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%')
		ORDER BY p.pidn, i.InstrID;
	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
	SELECT * from temp_linkdata;
	
ELSEIF query_type IN ('SecondaryAll','SecondaryClosest') THEN
	#Create candidate table with secondary instruments 
	CREATE TEMPORARY TABLE temp_secondary_candidates AS
		SELECT l.PIDN, l.link_date, l.link_id, i2.InstrType, i2.InstrID, DATEDIFF(l.link_date, i2.DCDate) AS Days 
		FROM temp_linkdata l INNER JOIN instrumenttracking i2 ON (i2.PIDN=l.PIDN) 
		WHERE i2.InstrType = 'UDS FTLD Clin Features';
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
		LEFT JOIN lq_view_udsftldclinfeatures d ON (i.InstrID=d.InstrID) ORDER BY l.pidn, l.link_date, l.link_id;

	DROP TABLE temp_secondary_candidates;

END IF;

END$$

$$
DELIMITER ;




-- -----------------------------------------------------
-- view lq_view_udsftldfamilyhistory
-- -----------------------------------------------------
DROP VIEW IF EXISTS `lq_view_udsftldfamilyhistory`;
CREATE OR REPLACE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `lq_view_udsftldfamilyhistory` AS select 
`t1`.`InstrID`,
`t2`.`FTDFA3F1`,
`t2`.`FTDAFF`,
`t2`.`FTDMUTAT`,
`t2`.`FTDPMUT`,
`t2`.`FTDPMUTX`,
`t2`.`FTDMCLAB`,
`t2`.`FTDMRLAB`,
`t2`.`FTDMFAMR`,
`t2`.`FTDMOTH`,
`t2`.`FTDMOTHX`,
`t2`.`FTDFA3F2`,
`t2`.`FTDMOMN`,
`t2`.`FTDMOMP`,
`t2`.`FTDMOME`,
`t2`.`FTDMOMA`,
`t2`.`FTDDADN`,
`t2`.`FTDDADP`,
`t2`.`FTDDADE`,
`t2`.`FTDDADA`,
`t2`.`FTDFA3F3`,
`t2`.`FTDBSAM`,
`t2`.`FTDBSA`,
`t2`.`FTDNSA`,
`t2`.`FTDPSA`,
`t2`.`FTDMSA`,
`t2`.`FTDASA`,
`t2`.`FTDBSBM`,
`t2`.`FTDBSB`,
`t2`.`FTDNSB`,
`t2`.`FTDPSB`,
`t2`.`FTDMSB`,
`t2`.`FTDASB`,
`t2`.`FTDBSCM`,
`t2`.`FTDBSC`,
`t2`.`FTDNSC`,
`t2`.`FTDPSC`,
`t2`.`FTDMSC`,
`t2`.`FTDASC`,
`t2`.`FTDBSDM`,
`t2`.`FTDBSD`,
`t2`.`FTDNSD`,
`t2`.`FTDPSD`,
`t2`.`FTDMSD`,
`t2`.`FTDASD`,
`t2`.`FTDBSEM`,
`t2`.`FTDBSE`,
`t2`.`FTDNSE`,
`t2`.`FTDPSE`,
`t2`.`FTDMSE`,
`t2`.`FTDASE`,
`t2`.`FTDBSFM`,
`t2`.`FTDBSF`,
`t2`.`FTDNSF`,
`t2`.`FTDPSF`,
`t2`.`FTDMSF`,
`t2`.`FTDASF`,
`t2`.`FTDBSGM`,
`t2`.`FTDBSG`,
`t2`.`FTDNSG`,
`t2`.`FTDPSG`,
`t2`.`FTDMSG`,
`t2`.`FTDASG`,
`t2`.`FTDBSHM`,
`t2`.`FTDBSH`,
`t2`.`FTDNSH`,
`t2`.`FTDPSH`,
`t2`.`FTDMSH`,
`t2`.`FTDASH`,
`t2`.`FTDBSIM`,
`t2`.`FTDBSI`,
`t2`.`FTDNSI`,
`t2`.`FTDPSI`,
`t2`.`FTDMSI`,
`t2`.`FTDASI`,
`t2`.`FTDBSJM`,
`t2`.`FTDBSJ`,
`t2`.`FTDNSJ`,
`t2`.`FTDPSJ`,
`t2`.`FTDMSJ`,
`t2`.`FTDASJ`,
`t2`.`FTDBSKM`,
`t2`.`FTDBSK`,
`t2`.`FTDNSK`,
`t2`.`FTDPSK`,
`t2`.`FTDMSK`,
`t2`.`FTDASK`,
`t2`.`FTDBSLM`,
`t2`.`FTDBSL`,
`t2`.`FTDNSL`,
`t2`.`FTDPSL`,
`t2`.`FTDMSL`,
`t2`.`FTDASL`,
`t2`.`FTDBSMM`,
`t2`.`FTDBSM`,
`t2`.`FTDNSM`,
`t2`.`FTDPSM`,
`t2`.`FTDMSM`,
`t2`.`FTDASM`,
`t2`.`FTDFA3F4`,
`t2`.`FTDBCAM`,
`t2`.`FTDBCA`,
`t2`.`FTDNCA`,
`t2`.`FTDPCA`,
`t2`.`FTDMCA`,
`t2`.`FTDACA`,
`t2`.`FTDBCBM`,
`t2`.`FTDBCB`,
`t2`.`FTDNCB`,
`t2`.`FTDPCB`,
`t2`.`FTDMCB`,
`t2`.`FTDACB`,
`t2`.`FTDBCCM`,
`t2`.`FTDBCC`,
`t2`.`FTDNCC`,
`t2`.`FTDPCC`,
`t2`.`FTDMCC`,
`t2`.`FTDACC`,
`t2`.`FTDBCDM`,
`t2`.`FTDBCD`,
`t2`.`FTDNCD`,
`t2`.`FTDPCD`,
`t2`.`FTDMCD`,
`t2`.`FTDACD`,
`t2`.`FTDBCEM`,
`t2`.`FTDBCE`,
`t2`.`FTDNCE`,
`t2`.`FTDPCE`,
`t2`.`FTDMCE`,
`t2`.`FTDACE`,
`t2`.`FTDBCFM`,
`t2`.`FTDBCF`,
`t2`.`FTDNCF`,
`t2`.`FTDPCF`,
`t2`.`FTDMCF`,
`t2`.`FTDACF`,
`t2`.`FTDBCGM`,
`t2`.`FTDBCG`,
`t2`.`FTDNCG`,
`t2`.`FTDPCG`,
`t2`.`FTDMCG`,
`t2`.`FTDACG`,
`t2`.`FTDBCHM`,
`t2`.`FTDBCH`,
`t2`.`FTDNCH`,
`t2`.`FTDPCH`,
`t2`.`FTDMCH`,
`t2`.`FTDACH`,
`t2`.`FTDBCIM`,
`t2`.`FTDBCI`,
`t2`.`FTDNCI`,
`t2`.`FTDPCI`,
`t2`.`FTDMCI`,
`t2`.`FTDACI`,
`t2`.`FTDBCJM`,
`t2`.`FTDBCJ`,
`t2`.`FTDNCJ`,
`t2`.`FTDPCJ`,
`t2`.`FTDMCJ`,
`t2`.`FTDACJ`,
`t2`.`FTDBCKM`,
`t2`.`FTDBCK`,
`t2`.`FTDNCK`,
`t2`.`FTDPCK`,
`t2`.`FTDMCK`,
`t2`.`FTDACK`,
`t2`.`FTDBCLM`,
`t2`.`FTDBCL`,
`t2`.`FTDNCL`,
`t2`.`FTDPCL`,
`t2`.`FTDMCL`,
`t2`.`FTDACL`,
`t2`.`FTDBCMM`,
`t2`.`FTDBCM`,
`t2`.`FTDNCM`,
`t2`.`FTDPCM`,
`t2`.`FTDMCM`,
`t2`.`FTDACM`,
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
FROM `instrumenttracking` `t1` join `udsftldfamilyhistory` `t2` on (`t1`.`InstrID` = `t2`.`InstrID`) join `udstracking` `t3` on (`t1`.`InstrID` = `t3`.`InstrID`)
WHERE `t1`.`InstrType` = 'UDS FTLD Family History';


-- -----------------------------------------------------
-- procedure lq_get_nacc_udsftldfamilyhistory2
-- -----------------------------------------------------

DROP PROCEDURE IF EXISTS `lq_get_nacc_udsftldfamilyhistory2`;
DELIMITER $$

CREATE PROCEDURE `lq_get_nacc_udsftldfamilyhistory2`(user_name varchar(50), host_name varchar(50), query_type varchar(25), query_subtype VARCHAR(25), query_days INTEGER)
BEGIN
CALL lq_audit_event(user_name, host_name, 'crms-nacc.nacc.udsftldfamilyhistory2', query_type);

IF query_type = 'Simple' THEN
	SELECT p.PIDN, it.InstrType, it.DCDate, v.VType, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it 
	    INNER JOIN visit v ON (it.VID = v.VID) 
		INNER JOIN lq_view_udsftldfamilyhistory i ON (it.InstrID = i.InstrID) 
		INNER JOIN temp_pidn p ON (p.PIDN = it.PIDN) 
	WHERE it.InstrType = 'UDS FTLD Family History' or it.InstrType is null 
	ORDER BY p.pidn, it.DCDate;
      
ELSEIF query_type = 'SimpleAllPatients' THEN
	SELECT p.PIDN, it.InstrType, it.DCDate, v.VType, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it  
	    INNER JOIN visit v ON (it.VID = v.VID) 
		INNER JOIN lq_view_udsftldfamilyhistory i ON (it.InstrID = i.InstrID)  
		RIGHT OUTER JOIN temp_pidn p ON (p.PIDN = it.PIDN)  
	WHERE it.InstrType =  'UDS FTLD Family History' or it.InstrType is null 
	ORDER BY P.pidn, it.DCDate;
	
ELSEIF query_type = 'VisitGrouping' THEN
    SELECT l.PIDN, l.link_date, l.link_id, v.VType, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*
    FROM temp_linkdata l LEFT OUTER JOIN (visit v, instrumenttracking i, lq_view_udsftldfamilyhistory d)
      ON (l.link_id=v.vid AND v.vid=i.vid AND i.InstrID=d.InstrID AND
          NOT i.DCStatus = 'Scheduled' AND NOT i.DCStatus like 'Canceled%')
    ORDER BY l.PIDN, l.link_date, l.link_id;
	
ELSEIF query_type = 'PrimaryAll' THEN 
	CREATE TEMPORARY TABLE temp_linkdata as 
		SELECT p.PIDN,i.DCDate as link_date, i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
		FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
			INNER JOIN lq_view_udsftldfamilyhistory d ON (i.InstrID=d.InstrID) 
		WHERE NOT i.DCStatus = 'Scheduled' AND NOT i.DCStatus like 'Canceled%' 
		ORDER BY p.pidn, i.DCDate, i.InstrID ;
	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
	SELECT * from temp_linkdata;
	
ELSEIF query_type = 'PrimaryLatest' THEN  
	CREATE TEMPORARY TABLE temp_linkdata as 
		SELECT p.PIDN, i.DCDate as link_date, i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
		FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
			INNER JOIN lq_view_udsftldfamilyhistory d ON (i.InstrID=d.InstrID) 
		WHERE i.DCDate = (SELECT MAX(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND  
			i2.InstrType = 'UDS FTLD Family History' AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%') 
		ORDER BY p.pidn, i.DCDate, i.InstrID;
	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
	SELECT * from temp_linkdata;
	
ELSEIF query_type = 'PrimaryFirst' THEN
	CREATE TEMPORARY TABLE temp_linkdata as 
		SELECT p.PIDN,i.DCDate as link_date, i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.* 
		FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN) 
			INNER JOIN lq_view_udsftldfamilyhistory d ON (i.InstrID=d.InstrID)
		WHERE i.DCDate = (SELECT MIN(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND 
			i2.InstrType = 'UDS FTLD Family History' AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%')
		ORDER BY p.pidn, i.InstrID;
	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
	SELECT * from temp_linkdata;
	
ELSEIF query_type IN ('SecondaryAll','SecondaryClosest') THEN
	#Create candidate table with secondary instruments 
	CREATE TEMPORARY TABLE temp_secondary_candidates AS
		SELECT l.PIDN, l.link_date, l.link_id, i2.InstrType, i2.InstrID, DATEDIFF(l.link_date, i2.DCDate) AS Days 
		FROM temp_linkdata l INNER JOIN instrumenttracking i2 ON (i2.PIDN=l.PIDN) 
		WHERE i2.InstrType = 'UDS FTLD Family History';
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
		LEFT JOIN lq_view_udsftldfamilyhistory d ON (i.InstrID=d.InstrID) ORDER BY l.pidn, l.link_date, l.link_id;

	DROP TABLE temp_secondary_candidates;

END IF;

END$$

$$
DELIMITER ;




-- -----------------------------------------------------
-- view lq_view_udsftldformchecklist
-- -----------------------------------------------------
DROP VIEW IF EXISTS `lq_view_udsftldformchecklist`;
CREATE OR REPLACE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `lq_view_udsftldformchecklist` AS select 
`t1`.`InstrID`,
`t2`.`FTDA3AFS`,
`t2`.`FTDA3AFR`,
`t2`.`FTDA3AFC`,
`t2`.`FTDA3FS`,
`t2`.`FTDA3FR`,
`t2`.`FTDA3FC`,
`t2`.`FTDC4FS`,
`t2`.`FTDC4FR`,
`t2`.`FTDC4FC`,
`t2`.`FTDC5FS`,
`t2`.`FTDC5FR`,
`t2`.`FTDC5FC`,
`t2`.`FTDC6FS`,
`t2`.`FTDC6FR`,
`t2`.`FTDC6FC`,
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
FROM `instrumenttracking` `t1` join `udsftldformchecklist` `t2` on (`t1`.`InstrID` = `t2`.`InstrID`) join `udstracking` `t3` on (`t1`.`InstrID` = `t3`.`InstrID`)
WHERE `t1`.`InstrType` = 'UDS FTLD Form Checklist';


-- -----------------------------------------------------
-- procedure lq_get_nacc_udsftldformchecklist2
-- -----------------------------------------------------

DROP PROCEDURE IF EXISTS `lq_get_nacc_udsftldformchecklist2`;
DELIMITER $$

CREATE PROCEDURE `lq_get_nacc_udsftldformchecklist2`(user_name varchar(50), host_name varchar(50), query_type varchar(25), query_subtype VARCHAR(25), query_days INTEGER)
BEGIN
CALL lq_audit_event(user_name, host_name, 'crms-nacc.nacc.udsftldformchecklist2', query_type);

IF query_type = 'Simple' THEN
	SELECT p.PIDN, it.InstrType, it.DCDate, v.VType, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it 
	    INNER JOIN visit v ON (it.VID = v.VID) 
		INNER JOIN lq_view_udsftldformchecklist i ON (it.InstrID = i.InstrID) 
		INNER JOIN temp_pidn p ON (p.PIDN = it.PIDN) 
	WHERE it.InstrType = 'UDS FTLD Form Checklist' or it.InstrType is null 
	ORDER BY p.pidn, it.DCDate;
      
ELSEIF query_type = 'SimpleAllPatients' THEN
	SELECT p.PIDN, it.InstrType, it.DCDate, v.VType, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it  
	    INNER JOIN visit v ON (it.VID = v.VID) 
		INNER JOIN lq_view_udsftldformchecklist i ON (it.InstrID = i.InstrID)  
		RIGHT OUTER JOIN temp_pidn p ON (p.PIDN = it.PIDN)  
	WHERE it.InstrType =  'UDS FTLD Form Checklist' or it.InstrType is null 
	ORDER BY P.pidn, it.DCDate;
	
ELSEIF query_type = 'VisitGrouping' THEN
    SELECT l.PIDN, l.link_date, l.link_id, v.VType, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*
    FROM temp_linkdata l LEFT OUTER JOIN (visit v, instrumenttracking i, lq_view_udsftldformchecklist d)
      ON (l.link_id=v.vid AND v.vid=i.vid AND i.InstrID=d.InstrID AND
          NOT i.DCStatus = 'Scheduled' AND NOT i.DCStatus like 'Canceled%')
    ORDER BY l.PIDN, l.link_date, l.link_id;
	
ELSEIF query_type = 'PrimaryAll' THEN 
	CREATE TEMPORARY TABLE temp_linkdata as 
		SELECT p.PIDN,i.DCDate as link_date, i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
		FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
			INNER JOIN lq_view_udsftldformchecklist d ON (i.InstrID=d.InstrID) 
		WHERE NOT i.DCStatus = 'Scheduled' AND NOT i.DCStatus like 'Canceled%' 
		ORDER BY p.pidn, i.DCDate, i.InstrID ;
	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
	SELECT * from temp_linkdata;
	
ELSEIF query_type = 'PrimaryLatest' THEN  
	CREATE TEMPORARY TABLE temp_linkdata as 
		SELECT p.PIDN, i.DCDate as link_date, i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
		FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
			INNER JOIN lq_view_udsftldformchecklist d ON (i.InstrID=d.InstrID) 
		WHERE i.DCDate = (SELECT MAX(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND  
			i2.InstrType = 'UDS FTLD Form Checklist' AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%') 
		ORDER BY p.pidn, i.DCDate, i.InstrID;
	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
	SELECT * from temp_linkdata;
	
ELSEIF query_type = 'PrimaryFirst' THEN
	CREATE TEMPORARY TABLE temp_linkdata as 
		SELECT p.PIDN,i.DCDate as link_date, i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.* 
		FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN) 
			INNER JOIN lq_view_udsftldformchecklist d ON (i.InstrID=d.InstrID)
		WHERE i.DCDate = (SELECT MIN(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND 
			i2.InstrType = 'UDS FTLD Form Checklist' AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%')
		ORDER BY p.pidn, i.InstrID;
	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
	SELECT * from temp_linkdata;
	
ELSEIF query_type IN ('SecondaryAll','SecondaryClosest') THEN
	#Create candidate table with secondary instruments 
	CREATE TEMPORARY TABLE temp_secondary_candidates AS
		SELECT l.PIDN, l.link_date, l.link_id, i2.InstrType, i2.InstrID, DATEDIFF(l.link_date, i2.DCDate) AS Days 
		FROM temp_linkdata l INNER JOIN instrumenttracking i2 ON (i2.PIDN=l.PIDN) 
		WHERE i2.InstrType = 'UDS FTLD Form Checklist';
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
		LEFT JOIN lq_view_udsftldformchecklist d ON (i.InstrID=d.InstrID) ORDER BY l.pidn, l.link_date, l.link_id;

	DROP TABLE temp_secondary_candidates;

END IF;

END$$

$$
DELIMITER ;





-- -----------------------------------------------------
-- view lq_view_udsftldimagingavail
-- -----------------------------------------------------
DROP VIEW IF EXISTS `lq_view_udsftldimagingavail`;
CREATE OR REPLACE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `lq_view_udsftldimagingavail` AS select 
`t1`.`InstrID`,
`t2`.`FTDSMRI`,
`t2`.`FTDSMMO`,
`t2`.`FTDSMDY`,
`t2`.`FTDSMYR`,
`t2`.`FTDSMDIC`,
`t2`.`FTDSMDIS`,
`t2`.`FTDSMADN`,
`t2`.`FTDSMADV`,
`t2`.`FTDSMMAN`,
`t2`.`FTDSMMAO`,
`t2`.`FTDSMMAM`,
`t2`.`FTDSMFS`,
`t2`.`FTDSMFSO`,
`t2`.`FTDSMQU`,
`t2`.`FTDFDGPT`,
`t2`.`FTDFPMO`,
`t2`.`FTDFPDY`,
`t2`.`FTDFPYR`,
`t2`.`FTDFDDIC`,
`t2`.`FTDFDDID`,
`t2`.`FTDFDADN`,
`t2`.`FTDFDADV`,
`t2`.`FTDFDMAN`,
`t2`.`FTDFDMAO`,
`t2`.`FTDFDMAM`,
`t2`.`FTDFDQU`,
`t2`.`FTDAMYPT`,
`t2`.`FTDAMMO`,
`t2`.`FTDAMDY`,
`t2`.`FTDAMYR`,
`t2`.`FTDAMDIC`,
`t2`.`FTDAMDID`,
`t2`.`FTDAMLIG`,
`t2`.`FTDAMLIO`,
`t2`.`FTDAMADN`,
`t2`.`FTDAMADV`,
`t2`.`FTDAMMAN`,
`t2`.`FTDAMMAO`,
`t2`.`FTDAMMAM`,
`t2`.`FTDAMQU`,
`t2`.`FTDOTHER`,
`t2`.`FTDOTDOP`,
`t2`.`FTDOTSER`,
`t2`.`FTDOTCHO`,
`t2`.`FTDOTANO`,
`t2`.`FTDOTANS`,
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
FROM `instrumenttracking` `t1` join `udsftldimagingavail` `t2` on (`t1`.`InstrID` = `t2`.`InstrID`) join `udstracking` `t3` on (`t1`.`InstrID` = `t3`.`InstrID`)
WHERE `t1`.`InstrType` = 'UDS FTLD Imaging Avail';


-- -----------------------------------------------------
-- procedure lq_get_nacc_udsftldimagingavail2
-- -----------------------------------------------------

DROP PROCEDURE IF EXISTS `lq_get_nacc_udsftldimagingavail2`;
DELIMITER $$

CREATE PROCEDURE `lq_get_nacc_udsftldimagingavail2`(user_name varchar(50), host_name varchar(50), query_type varchar(25), query_subtype VARCHAR(25), query_days INTEGER)
BEGIN
CALL lq_audit_event(user_name, host_name, 'crms-nacc.nacc.udsftldimagingavail2', query_type);

IF query_type = 'Simple' THEN
	SELECT p.PIDN, it.InstrType, it.DCDate, v.VType, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it 
	    INNER JOIN visit v ON (it.VID = v.VID) 
		INNER JOIN lq_view_udsftldimagingavail i ON (it.InstrID = i.InstrID) 
		INNER JOIN temp_pidn p ON (p.PIDN = it.PIDN) 
	WHERE it.InstrType = 'UDS FTLD Imaging Avail' or it.InstrType is null 
	ORDER BY p.pidn, it.DCDate;
      
ELSEIF query_type = 'SimpleAllPatients' THEN
	SELECT p.PIDN, it.InstrType, it.DCDate, v.VType, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it  
	    INNER JOIN visit v ON (it.VID = v.VID) 
		INNER JOIN lq_view_udsftldimagingavail i ON (it.InstrID = i.InstrID)  
		RIGHT OUTER JOIN temp_pidn p ON (p.PIDN = it.PIDN)  
	WHERE it.InstrType =  'UDS FTLD Imaging Avail' or it.InstrType is null 
	ORDER BY P.pidn, it.DCDate;
	
ELSEIF query_type = 'VisitGrouping' THEN
    SELECT l.PIDN, l.link_date, l.link_id, v.VType, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*
    FROM temp_linkdata l LEFT OUTER JOIN (visit v, instrumenttracking i, lq_view_udsftldimagingavail d)
      ON (l.link_id=v.vid AND v.vid=i.vid AND i.InstrID=d.InstrID AND
          NOT i.DCStatus = 'Scheduled' AND NOT i.DCStatus like 'Canceled%')
    ORDER BY l.PIDN, l.link_date, l.link_id;
	
ELSEIF query_type = 'PrimaryAll' THEN 
	CREATE TEMPORARY TABLE temp_linkdata as 
		SELECT p.PIDN,i.DCDate as link_date, i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
		FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
			INNER JOIN lq_view_udsftldimagingavail d ON (i.InstrID=d.InstrID) 
		WHERE NOT i.DCStatus = 'Scheduled' AND NOT i.DCStatus like 'Canceled%' 
		ORDER BY p.pidn, i.DCDate, i.InstrID ;
	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
	SELECT * from temp_linkdata;
	
ELSEIF query_type = 'PrimaryLatest' THEN  
	CREATE TEMPORARY TABLE temp_linkdata as 
		SELECT p.PIDN, i.DCDate as link_date, i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
		FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
			INNER JOIN lq_view_udsftldimagingavail d ON (i.InstrID=d.InstrID) 
		WHERE i.DCDate = (SELECT MAX(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND  
			i2.InstrType = 'UDS FTLD Imaging Avail' AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%') 
		ORDER BY p.pidn, i.DCDate, i.InstrID;
	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
	SELECT * from temp_linkdata;
	
ELSEIF query_type = 'PrimaryFirst' THEN
	CREATE TEMPORARY TABLE temp_linkdata as 
		SELECT p.PIDN,i.DCDate as link_date, i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.* 
		FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN) 
			INNER JOIN lq_view_udsftldimagingavail d ON (i.InstrID=d.InstrID)
		WHERE i.DCDate = (SELECT MIN(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND 
			i2.InstrType = 'UDS FTLD Imaging Avail' AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%')
		ORDER BY p.pidn, i.InstrID;
	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
	SELECT * from temp_linkdata;
	
ELSEIF query_type IN ('SecondaryAll','SecondaryClosest') THEN
	#Create candidate table with secondary instruments 
	CREATE TEMPORARY TABLE temp_secondary_candidates AS
		SELECT l.PIDN, l.link_date, l.link_id, i2.InstrType, i2.InstrID, DATEDIFF(l.link_date, i2.DCDate) AS Days 
		FROM temp_linkdata l INNER JOIN instrumenttracking i2 ON (i2.PIDN=l.PIDN) 
		WHERE i2.InstrType = 'UDS FTLD Imaging Avail';
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
		LEFT JOIN lq_view_udsftldimagingavail d ON (i.InstrID=d.InstrID) ORDER BY l.pidn, l.link_date, l.link_id;

	DROP TABLE temp_secondary_candidates;

END IF;

END$$

$$
DELIMITER ;





-- -----------------------------------------------------
-- view lq_view_udsftldimagingdiag
-- -----------------------------------------------------
DROP VIEW IF EXISTS `lq_view_udsftldimagingdiag`;
CREATE OR REPLACE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `lq_view_udsftldimagingdiag` AS select 
`t1`.`InstrID`,
`t2`.`FTDIDIAG`,
`t2`.`FTDSMRIO`,
`t2`.`FTDMRIFA`,
`t2`.`FTDMRIRF`,
`t2`.`FTDMRILF`,
`t2`.`FTDMRIRT`,
`t2`.`FTDMRILT`,
`t2`.`FTDMRIRM`,
`t2`.`FTDMRILM`,
`t2`.`FTDMRIRP`,
`t2`.`FTDMRILP`,
`t2`.`FTDMRIRB`,
`t2`.`FTDMRILB`,
`t2`.`FTDMRIOB`,
`t2`.`FTDMRIOS`,
`t2`.`FTDFDGPE`,
`t2`.`FTDFDGFH`,
`t2`.`FTDFDGRF`,
`t2`.`FTDFDGLF`,
`t2`.`FTDFDGRT`,
`t2`.`FTDFDGLT`,
`t2`.`FTDFDGRM`,
`t2`.`FTDFDGLM`,
`t2`.`FTDFDGRP`,
`t2`.`FTDFDGLP`,
`t2`.`FTDFDGRB`,
`t2`.`FTDFDGLB`,
`t2`.`FTDFDGOA`,
`t2`.`FTDFDGOS`,
`t2`.`FTDAMYP`,
`t2`.`FTDAMYVI`,
`t2`.`FTDAMYRF`,
`t2`.`FTDAMYLF`,
`t2`.`FTDAMYRT`,
`t2`.`FTDAMYLT`,
`t2`.`FTDAMYRM`,
`t2`.`FTDAMYLM`,
`t2`.`FTDAMYRP`,
`t2`.`FTDAMYLP`,
`t2`.`FTDAMYRB`,
`t2`.`FTDAMYLB`,
`t2`.`FTDAMYOA`,
`t2`.`FTDAMYOS`,
`t2`.`FTDCBFSP`,
`t2`.`FTDCBFVI`,
`t2`.`FTDCBFRF`,
`t2`.`FTDCBFLF`,
`t2`.`FTDCBFRT`,
`t2`.`FTDCBFLT`,
`t2`.`FTDCBFRM`,
`t2`.`FTDCBFLM`,
`t2`.`FTDCBFRP`,
`t2`.`FTDCBFLP`,
`t2`.`FTDCBFRB`,
`t2`.`FTDCBFLB`,
`t2`.`FTDCBFOA`,
`t2`.`FTDCBFOS`,
`t2`.`FTDOTHI`,
`t2`.`FTDOTHIS`,
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
FROM `instrumenttracking` `t1` join `udsftldimagingdiag` `t2` on (`t1`.`InstrID` = `t2`.`InstrID`) join `udstracking` `t3` on (`t1`.`InstrID` = `t3`.`InstrID`)
WHERE `t1`.`InstrType` = 'UDS FTLD Imaging Diag';


-- -----------------------------------------------------
-- procedure lq_get_nacc_udsftldimagingdiag2
-- -----------------------------------------------------

DROP PROCEDURE IF EXISTS `lq_get_nacc_udsftldimagingdiag2`;
DELIMITER $$

CREATE PROCEDURE `lq_get_nacc_udsftldimagingdiag2`(user_name varchar(50), host_name varchar(50), query_type varchar(25), query_subtype VARCHAR(25), query_days INTEGER)
BEGIN
CALL lq_audit_event(user_name, host_name, 'crms-nacc.nacc.udsftldimagingdiag2', query_type);

IF query_type = 'Simple' THEN
	SELECT p.PIDN, it.InstrType, it.DCDate, v.VType, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it 
	    INNER JOIN visit v ON (it.VID = v.VID) 
		INNER JOIN lq_view_udsftldimagingdiag i ON (it.InstrID = i.InstrID) 
		INNER JOIN temp_pidn p ON (p.PIDN = it.PIDN) 
	WHERE it.InstrType = 'UDS FTLD Imaging Diag' or it.InstrType is null 
	ORDER BY p.pidn, it.DCDate;
      
ELSEIF query_type = 'SimpleAllPatients' THEN
	SELECT p.PIDN, it.InstrType, it.DCDate, v.VType, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it  
	    INNER JOIN visit v ON (it.VID = v.VID) 
		INNER JOIN lq_view_udsftldimagingdiag i ON (it.InstrID = i.InstrID)  
		RIGHT OUTER JOIN temp_pidn p ON (p.PIDN = it.PIDN)  
	WHERE it.InstrType =  'UDS FTLD Imaging Diag' or it.InstrType is null 
	ORDER BY P.pidn, it.DCDate;
	
ELSEIF query_type = 'VisitGrouping' THEN
    SELECT l.PIDN, l.link_date, l.link_id, v.VType, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*
    FROM temp_linkdata l LEFT OUTER JOIN (visit v, instrumenttracking i, lq_view_udsftldimagingdiag d)
      ON (l.link_id=v.vid AND v.vid=i.vid AND i.InstrID=d.InstrID AND
          NOT i.DCStatus = 'Scheduled' AND NOT i.DCStatus like 'Canceled%')
    ORDER BY l.PIDN, l.link_date, l.link_id;
	
ELSEIF query_type = 'PrimaryAll' THEN 
	CREATE TEMPORARY TABLE temp_linkdata as 
		SELECT p.PIDN,i.DCDate as link_date, i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
		FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
			INNER JOIN lq_view_udsftldimagingdiag d ON (i.InstrID=d.InstrID) 
		WHERE NOT i.DCStatus = 'Scheduled' AND NOT i.DCStatus like 'Canceled%' 
		ORDER BY p.pidn, i.DCDate, i.InstrID ;
	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
	SELECT * from temp_linkdata;
	
ELSEIF query_type = 'PrimaryLatest' THEN  
	CREATE TEMPORARY TABLE temp_linkdata as 
		SELECT p.PIDN, i.DCDate as link_date, i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
		FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
			INNER JOIN lq_view_udsftldimagingdiag d ON (i.InstrID=d.InstrID) 
		WHERE i.DCDate = (SELECT MAX(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND  
			i2.InstrType = 'UDS FTLD Imaging Diag' AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%') 
		ORDER BY p.pidn, i.DCDate, i.InstrID;
	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
	SELECT * from temp_linkdata;
	
ELSEIF query_type = 'PrimaryFirst' THEN
	CREATE TEMPORARY TABLE temp_linkdata as 
		SELECT p.PIDN,i.DCDate as link_date, i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.* 
		FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN) 
			INNER JOIN lq_view_udsftldimagingdiag d ON (i.InstrID=d.InstrID)
		WHERE i.DCDate = (SELECT MIN(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND 
			i2.InstrType = 'UDS FTLD Imaging Diag' AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%')
		ORDER BY p.pidn, i.InstrID;
	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
	SELECT * from temp_linkdata;
	
ELSEIF query_type IN ('SecondaryAll','SecondaryClosest') THEN
	#Create candidate table with secondary instruments 
	CREATE TEMPORARY TABLE temp_secondary_candidates AS
		SELECT l.PIDN, l.link_date, l.link_id, i2.InstrType, i2.InstrID, DATEDIFF(l.link_date, i2.DCDate) AS Days 
		FROM temp_linkdata l INNER JOIN instrumenttracking i2 ON (i2.PIDN=l.PIDN) 
		WHERE i2.InstrType = 'UDS FTLD Imaging Diag';
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
		LEFT JOIN lq_view_udsftldimagingdiag d ON (i.InstrID=d.InstrID) ORDER BY l.pidn, l.link_date, l.link_id;

	DROP TABLE temp_secondary_candidates;

END IF;

END$$

$$
DELIMITER ;





-- -----------------------------------------------------
-- view lq_view_udsftldiri
-- -----------------------------------------------------
DROP VIEW IF EXISTS `lq_view_udsftldiri`;
CREATE OR REPLACE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `lq_view_udsftldiri` AS select 
`t1`.`InstrID`,
`t2`.`FTDCPC5F`,
`t2`.`FTDINSEX`,
`t2`.`FTDINFMO`,
`t2`.`FTDINFYR`,
`t2`.`FTDINFRE`,
`t2`.`FTDFEEL`,
`t2`.`FTDDIFF`,
`t2`.`FTDSORR`,
`t2`.`FTDSIDE`,
`t2`.`FTDADVAN`,
`t2`.`FTDIMAG`,
`t2`.`FTDMISF`,
`t2`.`FTDWASTE`,
`t2`.`FTDPITY`,
`t2`.`FTDQTOUC`,
`t2`.`FTDSIDES`,
`t2`.`FTDSOFTH`,
`t2`.`FTDUPSET`,
`t2`.`FTDCRITI`,
`t2`.`FTDIRIEC`,
`t2`.`FTDIRIPT`,
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
FROM `instrumenttracking` `t1` join `udsftldiri` `t2` on (`t1`.`InstrID` = `t2`.`InstrID`) join `udstracking` `t3` on (`t1`.`InstrID` = `t3`.`InstrID`)
WHERE `t1`.`InstrType` = 'UDS FTLD IRI';


-- -----------------------------------------------------
-- procedure lq_get_nacc_udsftldiri2
-- -----------------------------------------------------

DROP PROCEDURE IF EXISTS `lq_get_nacc_udsftldiri2`;
DELIMITER $$

CREATE PROCEDURE `lq_get_nacc_udsftldiri2`(user_name varchar(50), host_name varchar(50), query_type varchar(25), query_subtype VARCHAR(25), query_days INTEGER)
BEGIN
CALL lq_audit_event(user_name, host_name, 'crms-nacc.nacc.udsftldiri2', query_type);

IF query_type = 'Simple' THEN
	SELECT p.PIDN, it.InstrType, it.DCDate, v.VType, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it 
	    INNER JOIN visit v ON (it.VID = v.VID) 
		INNER JOIN lq_view_udsftldiri i ON (it.InstrID = i.InstrID) 
		INNER JOIN temp_pidn p ON (p.PIDN = it.PIDN) 
	WHERE it.InstrType = 'UDS FTLD IRI' or it.InstrType is null 
	ORDER BY p.pidn, it.DCDate;
      
ELSEIF query_type = 'SimpleAllPatients' THEN
	SELECT p.PIDN, it.InstrType, it.DCDate, v.VType, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it  
	    INNER JOIN visit v ON (it.VID = v.VID) 
		INNER JOIN lq_view_udsftldiri i ON (it.InstrID = i.InstrID)  
		RIGHT OUTER JOIN temp_pidn p ON (p.PIDN = it.PIDN)  
	WHERE it.InstrType =  'UDS FTLD IRI' or it.InstrType is null 
	ORDER BY P.pidn, it.DCDate;
	
ELSEIF query_type = 'VisitGrouping' THEN
    SELECT l.PIDN, l.link_date, l.link_id, v.VType, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*
    FROM temp_linkdata l LEFT OUTER JOIN (visit v, instrumenttracking i, lq_view_udsftldiri d)
      ON (l.link_id=v.vid AND v.vid=i.vid AND i.InstrID=d.InstrID AND
          NOT i.DCStatus = 'Scheduled' AND NOT i.DCStatus like 'Canceled%')
    ORDER BY l.PIDN, l.link_date, l.link_id;
	
ELSEIF query_type = 'PrimaryAll' THEN 
	CREATE TEMPORARY TABLE temp_linkdata as 
		SELECT p.PIDN,i.DCDate as link_date, i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
		FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
			INNER JOIN lq_view_udsftldiri d ON (i.InstrID=d.InstrID) 
		WHERE NOT i.DCStatus = 'Scheduled' AND NOT i.DCStatus like 'Canceled%' 
		ORDER BY p.pidn, i.DCDate, i.InstrID ;
	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
	SELECT * from temp_linkdata;
	
ELSEIF query_type = 'PrimaryLatest' THEN  
	CREATE TEMPORARY TABLE temp_linkdata as 
		SELECT p.PIDN, i.DCDate as link_date, i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
		FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
			INNER JOIN lq_view_udsftldiri d ON (i.InstrID=d.InstrID) 
		WHERE i.DCDate = (SELECT MAX(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND  
			i2.InstrType = 'UDS FTLD IRI' AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%') 
		ORDER BY p.pidn, i.DCDate, i.InstrID;
	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
	SELECT * from temp_linkdata;
	
ELSEIF query_type = 'PrimaryFirst' THEN
	CREATE TEMPORARY TABLE temp_linkdata as 
		SELECT p.PIDN,i.DCDate as link_date, i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.* 
		FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN) 
			INNER JOIN lq_view_udsftldiri d ON (i.InstrID=d.InstrID)
		WHERE i.DCDate = (SELECT MIN(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND 
			i2.InstrType = 'UDS FTLD IRI' AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%')
		ORDER BY p.pidn, i.InstrID;
	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
	SELECT * from temp_linkdata;
	
ELSEIF query_type IN ('SecondaryAll','SecondaryClosest') THEN
	#Create candidate table with secondary instruments 
	CREATE TEMPORARY TABLE temp_secondary_candidates AS
		SELECT l.PIDN, l.link_date, l.link_id, i2.InstrType, i2.InstrID, DATEDIFF(l.link_date, i2.DCDate) AS Days 
		FROM temp_linkdata l INNER JOIN instrumenttracking i2 ON (i2.PIDN=l.PIDN) 
		WHERE i2.InstrType = 'UDS FTLD IRI';
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
		LEFT JOIN lq_view_udsftldiri d ON (i.InstrID=d.InstrID) ORDER BY l.pidn, l.link_date, l.link_id;

	DROP TABLE temp_secondary_candidates;

END IF;

END$$

$$
DELIMITER ;





-- -----------------------------------------------------
-- view lq_view_udsftldneuropsych
-- -----------------------------------------------------
DROP VIEW IF EXISTS `lq_view_udsftldneuropsych`;
CREATE OR REPLACE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `lq_view_udsftldneuropsych` AS select 
`t1`.`InstrID`,
`t2`.`FTDBENTC`,
`t2`.`FTDVERFC`,
`t2`.`FTDVERFN`,
`t2`.`FTDVERNF`,
`t2`.`FTDVERLC`,
`t2`.`FTDVERLR`,
`t2`.`FTDVERLN`,
`t2`.`FTDVERTN`,
`t2`.`FTDVERTE`,
`t2`.`FTDVERTI`,
`t2`.`FTDWORRC`,
`t2`.`FTDWORRS`,
`t2`.`FTDWORRR`,
`t2`.`FTDWORIC`,
`t2`.`FTDWORIS`,
`t2`.`FTDWORIR`,
`t2`.`FTDWORIP`,
`t2`.`FTDBENTD`,
`t2`.`FTDBENRS`,
`t2`.`FTDSEMMT`,
`t2`.`FTDSEMAA`,
`t2`.`FTDSEMTA`,
`t2`.`FTDSEMSU`,
`t2`.`FTDANASW`,
`t2`.`FTDANAOW`,
`t2`.`FTDANATS`,
`t2`.`FTDSENAS`,
`t2`.`FTDSENOS`,
`t2`.`FTDSENSR`,
`t2`.`FTDSENPR`,
`t2`.`FTDNOUNC`,
`t2`.`FTDVERBC`,
`t2`.`FTDRATIO`,
`t2`.`FTDREAAS`,
`t2`.`FTDREAOS`,
`t2`.`FTDREASR`,
`t2`.`FTDREAPR`,
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
FROM `instrumenttracking` `t1` join `udsftldneuropsych` `t2` on (`t1`.`InstrID` = `t2`.`InstrID`) join `udstracking` `t3` on (`t1`.`InstrID` = `t3`.`InstrID`)
WHERE `t1`.`InstrType` = 'UDS FTLD Neuropsych';


-- -----------------------------------------------------
-- procedure lq_get_nacc_udsftldneuropsych2
-- -----------------------------------------------------

DROP PROCEDURE IF EXISTS `lq_get_nacc_udsftldneuropsych2`;
DELIMITER $$

CREATE PROCEDURE `lq_get_nacc_udsftldneuropsych2`(user_name varchar(50), host_name varchar(50), query_type varchar(25), query_subtype VARCHAR(25), query_days INTEGER)
BEGIN
CALL lq_audit_event(user_name, host_name, 'crms-nacc.nacc.udsftldneuropsych2', query_type);

IF query_type = 'Simple' THEN
	SELECT p.PIDN, it.InstrType, it.DCDate, v.VType, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it 
	    INNER JOIN visit v ON (it.VID = v.VID) 
		INNER JOIN lq_view_udsftldneuropsych i ON (it.InstrID = i.InstrID) 
		INNER JOIN temp_pidn p ON (p.PIDN = it.PIDN) 
	WHERE it.InstrType = 'UDS FTLD Neuropsych' or it.InstrType is null 
	ORDER BY p.pidn, it.DCDate;
      
ELSEIF query_type = 'SimpleAllPatients' THEN
	SELECT p.PIDN, it.InstrType, it.DCDate, v.VType, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it  
	    INNER JOIN visit v ON (it.VID = v.VID) 
		INNER JOIN lq_view_udsftldneuropsych i ON (it.InstrID = i.InstrID)  
		RIGHT OUTER JOIN temp_pidn p ON (p.PIDN = it.PIDN)  
	WHERE it.InstrType =  'UDS FTLD Neuropsych' or it.InstrType is null 
	ORDER BY P.pidn, it.DCDate;
	
ELSEIF query_type = 'VisitGrouping' THEN
    SELECT l.PIDN, l.link_date, l.link_id, v.VType, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*
    FROM temp_linkdata l LEFT OUTER JOIN (visit v, instrumenttracking i, lq_view_udsftldneuropsych d)
      ON (l.link_id=v.vid AND v.vid=i.vid AND i.InstrID=d.InstrID AND
          NOT i.DCStatus = 'Scheduled' AND NOT i.DCStatus like 'Canceled%')
    ORDER BY l.PIDN, l.link_date, l.link_id;
	
ELSEIF query_type = 'PrimaryAll' THEN 
	CREATE TEMPORARY TABLE temp_linkdata as 
		SELECT p.PIDN,i.DCDate as link_date, i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
		FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
			INNER JOIN lq_view_udsftldneuropsych d ON (i.InstrID=d.InstrID) 
		WHERE NOT i.DCStatus = 'Scheduled' AND NOT i.DCStatus like 'Canceled%' 
		ORDER BY p.pidn, i.DCDate, i.InstrID ;
	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
	SELECT * from temp_linkdata;
	
ELSEIF query_type = 'PrimaryLatest' THEN  
	CREATE TEMPORARY TABLE temp_linkdata as 
		SELECT p.PIDN, i.DCDate as link_date, i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
		FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
			INNER JOIN lq_view_udsftldneuropsych d ON (i.InstrID=d.InstrID) 
		WHERE i.DCDate = (SELECT MAX(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND  
			i2.InstrType = 'UDS FTLD Neuropsych' AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%') 
		ORDER BY p.pidn, i.DCDate, i.InstrID;
	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
	SELECT * from temp_linkdata;
	
ELSEIF query_type = 'PrimaryFirst' THEN
	CREATE TEMPORARY TABLE temp_linkdata as 
		SELECT p.PIDN,i.DCDate as link_date, i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.* 
		FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN) 
			INNER JOIN lq_view_udsftldneuropsych d ON (i.InstrID=d.InstrID)
		WHERE i.DCDate = (SELECT MIN(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND 
			i2.InstrType = 'UDS FTLD Neuropsych' AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%')
		ORDER BY p.pidn, i.InstrID;
	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
	SELECT * from temp_linkdata;
	
ELSEIF query_type IN ('SecondaryAll','SecondaryClosest') THEN
	#Create candidate table with secondary instruments 
	CREATE TEMPORARY TABLE temp_secondary_candidates AS
		SELECT l.PIDN, l.link_date, l.link_id, i2.InstrType, i2.InstrID, DATEDIFF(l.link_date, i2.DCDate) AS Days 
		FROM temp_linkdata l INNER JOIN instrumenttracking i2 ON (i2.PIDN=l.PIDN) 
		WHERE i2.InstrType = 'UDS FTLD Neuropsych';
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
		LEFT JOIN lq_view_udsftldneuropsych d ON (i.InstrID=d.InstrID) ORDER BY l.pidn, l.link_date, l.link_id;

	DROP TABLE temp_secondary_candidates;

END IF;

END$$

$$
DELIMITER ;





-- -----------------------------------------------------
-- view lq_view_udsftldrsms
-- -----------------------------------------------------
DROP VIEW IF EXISTS `lq_view_udsftldrsms`;
CREATE OR REPLACE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `lq_view_udsftldrsms` AS select 
`t1`.`InstrID`,
`t2`.`FTDCPC6F`,
`t2`.`FTDALTER`,
`t2`.`FTDEMOT`,
`t2`.`FTDACROS`,
`t2`.`FTDCONV`,
`t2`.`FTDINTUI`,
`t2`.`FTDJOKE`,
`t2`.`FTDIMAGP`,
`t2`.`FTDINAPP`,
`t2`.`FTDCHBEH`,
`t2`.`FTDADBEH`,
`t2`.`FTDLYING`,
`t2`.`FTDGOODF`,
`t2`.`FTDREGUL`,
`t2`.`FTDSMSCR`,
`t2`.`FTDSPSCR`,
`t2`.`FTDRSMST`,
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
FROM `instrumenttracking` `t1` join `udsftldrsms` `t2` on (`t1`.`InstrID` = `t2`.`InstrID`) join `udstracking` `t3` on (`t1`.`InstrID` = `t3`.`InstrID`)
WHERE `t1`.`InstrType` = 'UDS FTLD RSMS';


-- -----------------------------------------------------
-- procedure lq_get_nacc_udsftldrsms2
-- -----------------------------------------------------

DROP PROCEDURE IF EXISTS `lq_get_nacc_udsftldrsms2`;
DELIMITER $$

CREATE PROCEDURE `lq_get_nacc_udsftldrsms2`(user_name varchar(50), host_name varchar(50), query_type varchar(25), query_subtype VARCHAR(25), query_days INTEGER)
BEGIN
CALL lq_audit_event(user_name, host_name, 'crms-nacc.nacc.udsftldrsms2', query_type);

IF query_type = 'Simple' THEN
	SELECT p.PIDN, it.InstrType, it.DCDate, v.VType, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it 
	    INNER JOIN visit v ON (it.VID = v.VID) 
		INNER JOIN lq_view_udsftldrsms i ON (it.InstrID = i.InstrID) 
		INNER JOIN temp_pidn p ON (p.PIDN = it.PIDN) 
	WHERE it.InstrType = 'UDS FTLD RSMS' or it.InstrType is null 
	ORDER BY p.pidn, it.DCDate;
      
ELSEIF query_type = 'SimpleAllPatients' THEN
	SELECT p.PIDN, it.InstrType, it.DCDate, v.VType, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it  
	    INNER JOIN visit v ON (it.VID = v.VID) 
		INNER JOIN lq_view_udsftldrsms i ON (it.InstrID = i.InstrID)  
		RIGHT OUTER JOIN temp_pidn p ON (p.PIDN = it.PIDN)  
	WHERE it.InstrType =  'UDS FTLD RSMS' or it.InstrType is null 
	ORDER BY P.pidn, it.DCDate;
	
ELSEIF query_type = 'VisitGrouping' THEN
    SELECT l.PIDN, l.link_date, l.link_id, v.VType, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*
    FROM temp_linkdata l LEFT OUTER JOIN (visit v, instrumenttracking i, lq_view_udsftldrsms d)
      ON (l.link_id=v.vid AND v.vid=i.vid AND i.InstrID=d.InstrID AND
          NOT i.DCStatus = 'Scheduled' AND NOT i.DCStatus like 'Canceled%')
    ORDER BY l.PIDN, l.link_date, l.link_id;
	
ELSEIF query_type = 'PrimaryAll' THEN 
	CREATE TEMPORARY TABLE temp_linkdata as 
		SELECT p.PIDN,i.DCDate as link_date, i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
		FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
			INNER JOIN lq_view_udsftldrsms d ON (i.InstrID=d.InstrID) 
		WHERE NOT i.DCStatus = 'Scheduled' AND NOT i.DCStatus like 'Canceled%' 
		ORDER BY p.pidn, i.DCDate, i.InstrID ;
	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
	SELECT * from temp_linkdata;
	
ELSEIF query_type = 'PrimaryLatest' THEN  
	CREATE TEMPORARY TABLE temp_linkdata as 
		SELECT p.PIDN, i.DCDate as link_date, i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
		FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
			INNER JOIN lq_view_udsftldrsms d ON (i.InstrID=d.InstrID) 
		WHERE i.DCDate = (SELECT MAX(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND  
			i2.InstrType = 'UDS FTLD RSMS' AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%') 
		ORDER BY p.pidn, i.DCDate, i.InstrID;
	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
	SELECT * from temp_linkdata;
	
ELSEIF query_type = 'PrimaryFirst' THEN
	CREATE TEMPORARY TABLE temp_linkdata as 
		SELECT p.PIDN,i.DCDate as link_date, i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.* 
		FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN) 
			INNER JOIN lq_view_udsftldrsms d ON (i.InstrID=d.InstrID)
		WHERE i.DCDate = (SELECT MIN(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND 
			i2.InstrType = 'UDS FTLD RSMS' AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%')
		ORDER BY p.pidn, i.InstrID;
	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
	SELECT * from temp_linkdata;
	
ELSEIF query_type IN ('SecondaryAll','SecondaryClosest') THEN
	#Create candidate table with secondary instruments 
	CREATE TEMPORARY TABLE temp_secondary_candidates AS
		SELECT l.PIDN, l.link_date, l.link_id, i2.InstrType, i2.InstrID, DATEDIFF(l.link_date, i2.DCDate) AS Days 
		FROM temp_linkdata l INNER JOIN instrumenttracking i2 ON (i2.PIDN=l.PIDN) 
		WHERE i2.InstrType = 'UDS FTLD RSMS';
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
		LEFT JOIN lq_view_udsftldrsms d ON (i.InstrID=d.InstrID) ORDER BY l.pidn, l.link_date, l.link_id;

	DROP TABLE temp_secondary_candidates;

END IF;

END$$

$$
DELIMITER ;





-- -----------------------------------------------------
-- view lq_view_udsftldsboc
-- -----------------------------------------------------
DROP VIEW IF EXISTS `lq_view_udsftldsboc`;
CREATE OR REPLACE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `lq_view_udsftldsboc` AS select 
`t1`.`InstrID`,
`t2`.`FTDSELF`,
`t2`.`FTDBADLY`,
`t2`.`FTDDEPR`,
`t2`.`FTDEMOTD`,
`t2`.`FTDLSELF`,
`t2`.`FTDDISR`,
`t2`.`FTDBELCH`,
`t2`.`FTDGIGG`,
`t2`.`FTDPRIV`,
`t2`.`FTDNEGAT`,
`t2`.`FTDECOMM`,
`t2`.`FTDINAPJ`,
`t2`.`FTDFAILA`,
`t2`.`FTDRESIS`,
`t2`.`FTDINTER`,
`t2`.`FTDVERBA`,
`t2`.`FTDPHYSI`,
`t2`.`FTDTOPIC`,
`t2`.`FTDPROTO`,
`t2`.`FTDPREO`,
`t2`.`FTDFINI`,
`t2`.`FTDACTED`,
`t2`.`FTDABS`,
`t2`.`FTDFEEDB`,
`t2`.`FTDFRUST`,
`t2`.`FTDANXI`,
`t2`.`FTDNERVO`,
`t2`.`FTDNDIAG`,
`t2`.`FTDSTIMB`,
`t2`.`FTDSTIME`,
`t2`.`FTDOBJEC`,
`t2`.`FTDCIRCU`,
`t2`.`FTDPERSE`,
`t2`.`FTDREPEA`,
`t2`.`FTDANECD`,
`t2`.`FTDDINIT`,
`t2`.`FTDDELAY`,
`t2`.`FTDADDVE`,
`t2`.`FTDFLUCT`,
`t2`.`FTDLOSTT`,
`t2`.`FTDREPRU`,
`t2`.`FTDTRAIN`,
`t2`.`FTDDISCL`,
`t2`.`FTDSPONT`,
`t2`.`FTDSPONR`,
`t2`.`FTDSTOOD`,
`t2`.`FTDTOUCH`,
`t2`.`FTDDSOCI`,
`t2`.`FTDEXAGG`,
`t2`.`FTDSBTOT`,
`t2`.`FTDSBCTO`,
`t2`.`FTDLENGT`,
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
FROM `instrumenttracking` `t1` join `udsftldsboc` `t2` on (`t1`.`InstrID` = `t2`.`InstrID`) join `udstracking` `t3` on (`t1`.`InstrID` = `t3`.`InstrID`)
WHERE `t1`.`InstrType` = 'UDS FTLD SBOC';


-- -----------------------------------------------------
-- procedure lq_get_nacc_udsftldsboc2
-- -----------------------------------------------------

DROP PROCEDURE IF EXISTS `lq_get_nacc_udsftldsboc2`;
DELIMITER $$

CREATE PROCEDURE `lq_get_nacc_udsftldsboc2`(user_name varchar(50), host_name varchar(50), query_type varchar(25), query_subtype VARCHAR(25), query_days INTEGER)
BEGIN
CALL lq_audit_event(user_name, host_name, 'crms-nacc.nacc.udsftldsboc2', query_type);

IF query_type = 'Simple' THEN
	SELECT p.PIDN, it.InstrType, it.DCDate, v.VType, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it 
	    INNER JOIN visit v ON (it.VID = v.VID) 
		INNER JOIN lq_view_udsftldsboc i ON (it.InstrID = i.InstrID) 
		INNER JOIN temp_pidn p ON (p.PIDN = it.PIDN) 
	WHERE it.InstrType = 'UDS FTLD SBOC' or it.InstrType is null 
	ORDER BY p.pidn, it.DCDate;
      
ELSEIF query_type = 'SimpleAllPatients' THEN
	SELECT p.PIDN, it.InstrType, it.DCDate, v.VType, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it  
	    INNER JOIN visit v ON (it.VID = v.VID) 
		INNER JOIN lq_view_udsftldsboc i ON (it.InstrID = i.InstrID)  
		RIGHT OUTER JOIN temp_pidn p ON (p.PIDN = it.PIDN)  
	WHERE it.InstrType =  'UDS FTLD SBOC' or it.InstrType is null 
	ORDER BY P.pidn, it.DCDate;
	
ELSEIF query_type = 'VisitGrouping' THEN
    SELECT l.PIDN, l.link_date, l.link_id, v.VType, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*
    FROM temp_linkdata l LEFT OUTER JOIN (visit v, instrumenttracking i, lq_view_udsftldsboc d)
      ON (l.link_id=v.vid AND v.vid=i.vid AND i.InstrID=d.InstrID AND
          NOT i.DCStatus = 'Scheduled' AND NOT i.DCStatus like 'Canceled%')
    ORDER BY l.PIDN, l.link_date, l.link_id;
	
ELSEIF query_type = 'PrimaryAll' THEN 
	CREATE TEMPORARY TABLE temp_linkdata as 
		SELECT p.PIDN,i.DCDate as link_date, i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
		FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
			INNER JOIN lq_view_udsftldsboc d ON (i.InstrID=d.InstrID) 
		WHERE NOT i.DCStatus = 'Scheduled' AND NOT i.DCStatus like 'Canceled%' 
		ORDER BY p.pidn, i.DCDate, i.InstrID ;
	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
	SELECT * from temp_linkdata;
	
ELSEIF query_type = 'PrimaryLatest' THEN  
	CREATE TEMPORARY TABLE temp_linkdata as 
		SELECT p.PIDN, i.DCDate as link_date, i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
		FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
			INNER JOIN lq_view_udsftldsboc d ON (i.InstrID=d.InstrID) 
		WHERE i.DCDate = (SELECT MAX(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND  
			i2.InstrType = 'UDS FTLD SBOC' AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%') 
		ORDER BY p.pidn, i.DCDate, i.InstrID;
	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
	SELECT * from temp_linkdata;
	
ELSEIF query_type = 'PrimaryFirst' THEN
	CREATE TEMPORARY TABLE temp_linkdata as 
		SELECT p.PIDN,i.DCDate as link_date, i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.* 
		FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN) 
			INNER JOIN lq_view_udsftldsboc d ON (i.InstrID=d.InstrID)
		WHERE i.DCDate = (SELECT MIN(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND 
			i2.InstrType = 'UDS FTLD SBOC' AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%')
		ORDER BY p.pidn, i.InstrID;
	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
	SELECT * from temp_linkdata;
	
ELSEIF query_type IN ('SecondaryAll','SecondaryClosest') THEN
	#Create candidate table with secondary instruments 
	CREATE TEMPORARY TABLE temp_secondary_candidates AS
		SELECT l.PIDN, l.link_date, l.link_id, i2.InstrType, i2.InstrID, DATEDIFF(l.link_date, i2.DCDate) AS Days 
		FROM temp_linkdata l INNER JOIN instrumenttracking i2 ON (i2.PIDN=l.PIDN) 
		WHERE i2.InstrType = 'UDS FTLD SBOC';
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
		LEFT JOIN lq_view_udsftldsboc d ON (i.InstrID=d.InstrID) ORDER BY l.pidn, l.link_date, l.link_id;

	DROP TABLE temp_secondary_candidates;

END IF;

END$$

$$
DELIMITER ;





-- -----------------------------------------------------
-- view lq_view_udsftldsnq
-- -----------------------------------------------------
DROP VIEW IF EXISTS `lq_view_udsftldsnq`;
CREATE OR REPLACE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `lq_view_udsftldsnq` AS select 
`t1`.`InstrID`,
`t2`.`FTDCPC2F`,
`t2`.`FTDHAIRD`,
`t2`.`FTDSPIT`,
`t2`.`FTDNOSE`,
`t2`.`FTDCOAGE`,
`t2`.`FTDCRY`,
`t2`.`FTDCUT`,
`t2`.`FTDYTRIP`,
`t2`.`FTDEATP`,
`t2`.`FTDTELLA`,
`t2`.`FTDOPIN`,
`t2`.`FTDLAUGH`,
`t2`.`FTDSHIRT`,
`t2`.`FTDKEEPM`,
`t2`.`FTDPICKN`,
`t2`.`FTDOVER`,
`t2`.`FTDEATR`,
`t2`.`FTDHAIRL`,
`t2`.`FTDSHIRW`,
`t2`.`FTDMOVE`,
`t2`.`FTDHUGS`,
`t2`.`FTDLOUD`,
`t2`.`FTDLOST`,
`t2`.`FTDSNTOT`,
`t2`.`FTDSNTBS`,
`t2`.`FTDSNTOS`,
`t2`.`FTDSNRAT`,
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
FROM `instrumenttracking` `t1` join `udsftldsnq` `t2` on (`t1`.`InstrID` = `t2`.`InstrID`) join `udstracking` `t3` on (`t1`.`InstrID` = `t3`.`InstrID`)
WHERE `t1`.`InstrType` = 'UDS FTLD SNQ';


-- -----------------------------------------------------
-- procedure lq_get_nacc_udsftldsnq2
-- -----------------------------------------------------

DROP PROCEDURE IF EXISTS `lq_get_nacc_udsftldsnq2`;
DELIMITER $$

CREATE PROCEDURE `lq_get_nacc_udsftldsnq2`(user_name varchar(50), host_name varchar(50), query_type varchar(25), query_subtype VARCHAR(25), query_days INTEGER)
BEGIN
CALL lq_audit_event(user_name, host_name, 'crms-nacc.nacc.udsftldsnq2', query_type);

IF query_type = 'Simple' THEN
	SELECT p.PIDN, it.InstrType, it.DCDate, v.VType, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it 
	    INNER JOIN visit v ON (it.VID = v.VID) 
		INNER JOIN lq_view_udsftldsnq i ON (it.InstrID = i.InstrID) 
		INNER JOIN temp_pidn p ON (p.PIDN = it.PIDN) 
	WHERE it.InstrType = 'UDS FTLD SNQ' or it.InstrType is null 
	ORDER BY p.pidn, it.DCDate;
      
ELSEIF query_type = 'SimpleAllPatients' THEN
	SELECT p.PIDN, it.InstrType, it.DCDate, v.VType, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it  
	    INNER JOIN visit v ON (it.VID = v.VID) 
		INNER JOIN lq_view_udsftldsnq i ON (it.InstrID = i.InstrID)  
		RIGHT OUTER JOIN temp_pidn p ON (p.PIDN = it.PIDN)  
	WHERE it.InstrType =  'UDS FTLD SNQ' or it.InstrType is null 
	ORDER BY P.pidn, it.DCDate;
	
ELSEIF query_type = 'VisitGrouping' THEN
    SELECT l.PIDN, l.link_date, l.link_id, v.VType, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*
    FROM temp_linkdata l LEFT OUTER JOIN (visit v, instrumenttracking i, lq_view_udsftldsnq d)
      ON (l.link_id=v.vid AND v.vid=i.vid AND i.InstrID=d.InstrID AND
          NOT i.DCStatus = 'Scheduled' AND NOT i.DCStatus like 'Canceled%')
    ORDER BY l.PIDN, l.link_date, l.link_id;
	
ELSEIF query_type = 'PrimaryAll' THEN 
	CREATE TEMPORARY TABLE temp_linkdata as 
		SELECT p.PIDN,i.DCDate as link_date, i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
		FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
			INNER JOIN lq_view_udsftldsnq d ON (i.InstrID=d.InstrID) 
		WHERE NOT i.DCStatus = 'Scheduled' AND NOT i.DCStatus like 'Canceled%' 
		ORDER BY p.pidn, i.DCDate, i.InstrID ;
	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
	SELECT * from temp_linkdata;
	
ELSEIF query_type = 'PrimaryLatest' THEN  
	CREATE TEMPORARY TABLE temp_linkdata as 
		SELECT p.PIDN, i.DCDate as link_date, i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
		FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
			INNER JOIN lq_view_udsftldsnq d ON (i.InstrID=d.InstrID) 
		WHERE i.DCDate = (SELECT MAX(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND  
			i2.InstrType = 'UDS FTLD SNQ' AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%') 
		ORDER BY p.pidn, i.DCDate, i.InstrID;
	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
	SELECT * from temp_linkdata;
	
ELSEIF query_type = 'PrimaryFirst' THEN
	CREATE TEMPORARY TABLE temp_linkdata as 
		SELECT p.PIDN,i.DCDate as link_date, i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.* 
		FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN) 
			INNER JOIN lq_view_udsftldsnq d ON (i.InstrID=d.InstrID)
		WHERE i.DCDate = (SELECT MIN(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND 
			i2.InstrType = 'UDS FTLD SNQ' AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%')
		ORDER BY p.pidn, i.InstrID;
	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
	SELECT * from temp_linkdata;
	
ELSEIF query_type IN ('SecondaryAll','SecondaryClosest') THEN
	#Create candidate table with secondary instruments 
	CREATE TEMPORARY TABLE temp_secondary_candidates AS
		SELECT l.PIDN, l.link_date, l.link_id, i2.InstrType, i2.InstrID, DATEDIFF(l.link_date, i2.DCDate) AS Days 
		FROM temp_linkdata l INNER JOIN instrumenttracking i2 ON (i2.PIDN=l.PIDN) 
		WHERE i2.InstrType = 'UDS FTLD SNQ';
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
		LEFT JOIN lq_view_udsftldsnq d ON (i.InstrID=d.InstrID) ORDER BY l.pidn, l.link_date, l.link_id;

	DROP TABLE temp_secondary_candidates;

END IF;

END$$

$$
DELIMITER ;





-- -----------------------------------------------------
-- view lq_view_udsftldspecimenconsent
-- -----------------------------------------------------
DROP VIEW IF EXISTS `lq_view_udsftldspecimenconsent`;
CREATE OR REPLACE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `lq_view_udsftldspecimenconsent` AS select 
`t1`.`InstrID`,
`t2`.`FTDRELCO`,
`t2`.`FTDSIBBY`,
`t2`.`FTDCHDBY`,
`t2`.`FTDSTORE`,
`t2`.`FTDSLEAR`,
`t2`.`FTDCOMME`,
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
FROM `instrumenttracking` `t1` join `udsftldspecimenconsent` `t2` on (`t1`.`InstrID` = `t2`.`InstrID`) join `udstracking` `t3` on (`t1`.`InstrID` = `t3`.`InstrID`)
WHERE `t1`.`InstrType` = 'UDS FTLD Specimen Consent';


-- -----------------------------------------------------
-- procedure lq_get_nacc_udsftldspecimenconsent2
-- -----------------------------------------------------

DROP PROCEDURE IF EXISTS `lq_get_nacc_udsftldspecimenconsent2`;
DELIMITER $$

CREATE PROCEDURE `lq_get_nacc_udsftldspecimenconsent2`(user_name varchar(50), host_name varchar(50), query_type varchar(25), query_subtype VARCHAR(25), query_days INTEGER)
BEGIN
CALL lq_audit_event(user_name, host_name, 'crms-nacc.nacc.udsftldspecimenconsent2', query_type);

IF query_type = 'Simple' THEN
	SELECT p.PIDN, it.InstrType, it.DCDate, v.VType, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it 
	    INNER JOIN visit v ON (it.VID = v.VID) 
		INNER JOIN lq_view_udsftldspecimenconsent i ON (it.InstrID = i.InstrID) 
		INNER JOIN temp_pidn p ON (p.PIDN = it.PIDN) 
	WHERE it.InstrType = 'UDS FTLD Specimen Consent' or it.InstrType is null 
	ORDER BY p.pidn, it.DCDate;
      
ELSEIF query_type = 'SimpleAllPatients' THEN
	SELECT p.PIDN, it.InstrType, it.DCDate, v.VType, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it  
	    INNER JOIN visit v ON (it.VID = v.VID) 
		INNER JOIN lq_view_udsftldspecimenconsent i ON (it.InstrID = i.InstrID)  
		RIGHT OUTER JOIN temp_pidn p ON (p.PIDN = it.PIDN)  
	WHERE it.InstrType =  'UDS FTLD Specimen Consent' or it.InstrType is null 
	ORDER BY P.pidn, it.DCDate;
	
ELSEIF query_type = 'VisitGrouping' THEN
    SELECT l.PIDN, l.link_date, l.link_id, v.VType, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*
    FROM temp_linkdata l LEFT OUTER JOIN (visit v, instrumenttracking i, lq_view_udsftldspecimenconsent d)
      ON (l.link_id=v.vid AND v.vid=i.vid AND i.InstrID=d.InstrID AND
          NOT i.DCStatus = 'Scheduled' AND NOT i.DCStatus like 'Canceled%')
    ORDER BY l.PIDN, l.link_date, l.link_id;
	
ELSEIF query_type = 'PrimaryAll' THEN 
	CREATE TEMPORARY TABLE temp_linkdata as 
		SELECT p.PIDN,i.DCDate as link_date, i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
		FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
			INNER JOIN lq_view_udsftldspecimenconsent d ON (i.InstrID=d.InstrID) 
		WHERE NOT i.DCStatus = 'Scheduled' AND NOT i.DCStatus like 'Canceled%' 
		ORDER BY p.pidn, i.DCDate, i.InstrID ;
	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
	SELECT * from temp_linkdata;
	
ELSEIF query_type = 'PrimaryLatest' THEN  
	CREATE TEMPORARY TABLE temp_linkdata as 
		SELECT p.PIDN, i.DCDate as link_date, i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
		FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
			INNER JOIN lq_view_udsftldspecimenconsent d ON (i.InstrID=d.InstrID) 
		WHERE i.DCDate = (SELECT MAX(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND  
			i2.InstrType = 'UDS FTLD Specimen Consent' AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%') 
		ORDER BY p.pidn, i.DCDate, i.InstrID;
	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
	SELECT * from temp_linkdata;
	
ELSEIF query_type = 'PrimaryFirst' THEN
	CREATE TEMPORARY TABLE temp_linkdata as 
		SELECT p.PIDN,i.DCDate as link_date, i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.* 
		FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN) 
			INNER JOIN lq_view_udsftldspecimenconsent d ON (i.InstrID=d.InstrID)
		WHERE i.DCDate = (SELECT MIN(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND 
			i2.InstrType = 'UDS FTLD Specimen Consent' AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%')
		ORDER BY p.pidn, i.InstrID;
	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
	SELECT * from temp_linkdata;
	
ELSEIF query_type IN ('SecondaryAll','SecondaryClosest') THEN
	#Create candidate table with secondary instruments 
	CREATE TEMPORARY TABLE temp_secondary_candidates AS
		SELECT l.PIDN, l.link_date, l.link_id, i2.InstrType, i2.InstrID, DATEDIFF(l.link_date, i2.DCDate) AS Days 
		FROM temp_linkdata l INNER JOIN instrumenttracking i2 ON (i2.PIDN=l.PIDN) 
		WHERE i2.InstrType = 'UDS FTLD Specimen Consent';
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
		LEFT JOIN lq_view_udsftldspecimenconsent d ON (i.InstrID=d.InstrID) ORDER BY l.pidn, l.link_date, l.link_id;

	DROP TABLE temp_secondary_candidates;

END IF;

END$$

$$
DELIMITER ;





-- -----------------------------------------------------
-- view lq_view_udsftldupdrs
-- -----------------------------------------------------
DROP VIEW IF EXISTS `lq_view_udsftldupdrs`;
CREATE OR REPLACE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `lq_view_udsftldupdrs` AS select 
`t1`.`InstrID`,
`t2`.`FTDLTFAS`,
`t2`.`FTDLIMB`,
`t2`.`FTDBULB`,
`t2`.`FTDEYE`,
`t2`.`FTDDYST`,
`t2`.`FTDIDEO`,
`t2`.`FTDALIEN`,
`t2`.`FTDMYOCL`,
`t2`.`FTDCORTS`,
`t2`.`FTDGSEV`,
`t2`.`FTDGSEVX`,
`t2`.`FTDGTYP`,
`t2`.`FTDGTYPG`,
`t2`.`FTDGTYPX`,
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
FROM `instrumenttracking` `t1` join `udsftldupdrs` `t2` on (`t1`.`InstrID` = `t2`.`InstrID`) join `udstracking` `t3` on (`t1`.`InstrID` = `t3`.`InstrID`)
WHERE `t1`.`InstrType` = 'UDS FTLD UPDRS';


-- -----------------------------------------------------
-- procedure lq_get_nacc_udsftldupdrs2
-- -----------------------------------------------------

DROP PROCEDURE IF EXISTS `lq_get_nacc_udsftldupdrs2`;
DELIMITER $$

CREATE PROCEDURE `lq_get_nacc_udsftldupdrs2`(user_name varchar(50), host_name varchar(50), query_type varchar(25), query_subtype VARCHAR(25), query_days INTEGER)
BEGIN
CALL lq_audit_event(user_name, host_name, 'crms-nacc.nacc.udsftldupdrs2', query_type);

IF query_type = 'Simple' THEN
	SELECT p.PIDN, it.InstrType, it.DCDate, v.VType, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it 
	    INNER JOIN visit v ON (it.VID = v.VID) 
		INNER JOIN lq_view_udsftldupdrs i ON (it.InstrID = i.InstrID) 
		INNER JOIN temp_pidn p ON (p.PIDN = it.PIDN) 
	WHERE it.InstrType = 'UDS FTLD UPDRS' or it.InstrType is null 
	ORDER BY p.pidn, it.DCDate;
      
ELSEIF query_type = 'SimpleAllPatients' THEN
	SELECT p.PIDN, it.InstrType, it.DCDate, v.VType, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it  
	    INNER JOIN visit v ON (it.VID = v.VID) 
		INNER JOIN lq_view_udsftldupdrs i ON (it.InstrID = i.InstrID)  
		RIGHT OUTER JOIN temp_pidn p ON (p.PIDN = it.PIDN)  
	WHERE it.InstrType =  'UDS FTLD UPDRS' or it.InstrType is null 
	ORDER BY P.pidn, it.DCDate;
	
ELSEIF query_type = 'VisitGrouping' THEN
    SELECT l.PIDN, l.link_date, l.link_id, v.VType, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*
    FROM temp_linkdata l LEFT OUTER JOIN (visit v, instrumenttracking i, lq_view_udsftldupdrs d)
      ON (l.link_id=v.vid AND v.vid=i.vid AND i.InstrID=d.InstrID AND
          NOT i.DCStatus = 'Scheduled' AND NOT i.DCStatus like 'Canceled%')
    ORDER BY l.PIDN, l.link_date, l.link_id;
	
ELSEIF query_type = 'PrimaryAll' THEN 
	CREATE TEMPORARY TABLE temp_linkdata as 
		SELECT p.PIDN,i.DCDate as link_date, i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
		FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
			INNER JOIN lq_view_udsftldupdrs d ON (i.InstrID=d.InstrID) 
		WHERE NOT i.DCStatus = 'Scheduled' AND NOT i.DCStatus like 'Canceled%' 
		ORDER BY p.pidn, i.DCDate, i.InstrID ;
	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
	SELECT * from temp_linkdata;
	
ELSEIF query_type = 'PrimaryLatest' THEN  
	CREATE TEMPORARY TABLE temp_linkdata as 
		SELECT p.PIDN, i.DCDate as link_date, i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
		FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
			INNER JOIN lq_view_udsftldupdrs d ON (i.InstrID=d.InstrID) 
		WHERE i.DCDate = (SELECT MAX(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND  
			i2.InstrType = 'UDS FTLD UPDRS' AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%') 
		ORDER BY p.pidn, i.DCDate, i.InstrID;
	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
	SELECT * from temp_linkdata;
	
ELSEIF query_type = 'PrimaryFirst' THEN
	CREATE TEMPORARY TABLE temp_linkdata as 
		SELECT p.PIDN,i.DCDate as link_date, i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.* 
		FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN) 
			INNER JOIN lq_view_udsftldupdrs d ON (i.InstrID=d.InstrID)
		WHERE i.DCDate = (SELECT MIN(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND 
			i2.InstrType = 'UDS FTLD UPDRS' AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%')
		ORDER BY p.pidn, i.InstrID;
	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
	SELECT * from temp_linkdata;
	
ELSEIF query_type IN ('SecondaryAll','SecondaryClosest') THEN
	#Create candidate table with secondary instruments 
	CREATE TEMPORARY TABLE temp_secondary_candidates AS
		SELECT l.PIDN, l.link_date, l.link_id, i2.InstrType, i2.InstrID, DATEDIFF(l.link_date, i2.DCDate) AS Days 
		FROM temp_linkdata l INNER JOIN instrumenttracking i2 ON (i2.PIDN=l.PIDN) 
		WHERE i2.InstrType = 'UDS FTLD UPDRS';
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
		LEFT JOIN lq_view_udsftldupdrs d ON (i.InstrID=d.InstrID) ORDER BY l.pidn, l.link_date, l.link_id;

	DROP TABLE temp_secondary_candidates;

END IF;

END$$

$$
DELIMITER ;





