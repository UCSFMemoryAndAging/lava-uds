-- this script contains all of the views and stored procedures for the UDS 3 / FTLD 3 instruments. the views and
-- stored procedures for instruments that were removed in UDS 3 / FTLD 3 still exist but are not in this script.
-- even instruments that did not have any field changes got a new view because the view now includes the UDS
-- header fields

DELETE from query_objects where instance='lava' and scope in ('crms','crms-nacc') and module='query' and section='nacc';

INSERT INTO query_objects(instance,scope,module,section,target,short_desc,standard,primary_link,secondary_link) values('lava','crms-nacc','query','nacc','udssubjectdemo','UDS Subject Demo',1,1,1);
INSERT INTO query_objects(instance,scope,module,section,target,short_desc,standard,primary_link,secondary_link) values('lava','crms-nacc','query','nacc','udsinformantdemo','UDS Informant Demo',1,1,1);
INSERT INTO query_objects(instance,scope,module,section,target,short_desc,standard,primary_link,secondary_link) values('lava','crms-nacc','query','nacc','udsfamilyhistory3','UDS Family History(V3)',1,1,1);
INSERT INTO query_objects(instance,scope,module,section,target,short_desc,standard,primary_link,secondary_link) values('lava','crms-nacc','query','nacc','udsmedications2','UDS Medications 2(UDS V2,V3)',1,1,1);
INSERT INTO query_objects(instance,scope,module,section,target,short_desc,standard,primary_link,secondary_link) values('lava','crms-nacc','query','nacc','udshealthhistory','UDS Health History',1,1,1);
INSERT INTO query_objects(instance,scope,module,section,target,short_desc,standard,primary_link,secondary_link) values('lava','crms-nacc','query','nacc','udsphysical','UDS Physical',1,1,1);
INSERT INTO query_objects(instance,scope,module,section,target,short_desc,standard,primary_link,secondary_link) values('lava','crms-nacc','query','nacc','udscdr','UDS CDR',1,1,1);
INSERT INTO query_objects(instance,scope,module,section,target,short_desc,standard,primary_link,secondary_link) values('lava','crms-nacc','query','nacc','udsnpi','UDS NPI',1,1,1);
INSERT INTO query_objects(instance,scope,module,section,target,short_desc,standard,primary_link,secondary_link) values('lava','crms-nacc','query','nacc','udsgds','UDS GDS',1,1,1);
INSERT INTO query_objects(instance,scope,module,section,target,short_desc,standard,primary_link,secondary_link) values('lava','crms-nacc','query','nacc','udsfaq','UDS FAQ',1,1,1);
INSERT INTO query_objects(instance,scope,module,section,target,short_desc,standard,primary_link,secondary_link) values('lava','crms-nacc','query','nacc','udsappraisal','UDS Appraisal',1,1,1);
INSERT INTO query_objects(instance,scope,module,section,target,short_desc,standard,primary_link,secondary_link) values('lava','crms-nacc','query','nacc','udssymptomsonset','UDS Symptoms Onset',1,1,1);
INSERT INTO query_objects(instance,scope,module,section,target,short_desc,standard,primary_link,secondary_link) values('lava','crms-nacc','query','nacc','udsneuropsychmoca','UDS Neuropsych Moca',1,1,1);
INSERT INTO query_objects(instance,scope,module,section,target,short_desc,standard,primary_link,secondary_link) values('lava','crms-nacc','query','nacc','udsdiagnosis','UDS Diagnosis',1,1,1);
INSERT INTO query_objects(instance,scope,module,section,target,short_desc,standard,primary_link,secondary_link) values('lava','crms-nacc','query','nacc','udsmedicalconditions','UDS Medical Conditions',1,1,1);
INSERT INTO query_objects(instance,scope,module,section,target,short_desc,standard,primary_link,secondary_link) values('lava','crms-nacc','query','nacc','udsmilestone','UDS Milestone',1,1,1);
INSERT INTO query_objects(instance,scope,module,section,target,short_desc,standard,primary_link,secondary_link) values('lava','crms-nacc','query','nacc','udsphoneinclusion','UDS Phone Inclusion',1,1,1);
INSERT INTO query_objects(instance,scope,module,section,target,short_desc,standard,primary_link,secondary_link) values('lava','crms-nacc','query','nacc','udsformchecklist','UDS Form Checklist',1,1,1);
INSERT INTO query_objects(instance,scope,module,section,target,short_desc,standard,primary_link,secondary_link) values('lava','crms-nacc','query','nacc','udsftldspecimenconsent','UDS FTLD Specimen Consent',1,1,1);
INSERT INTO query_objects(instance,scope,module,section,target,short_desc,standard,primary_link,secondary_link) values('lava','crms-nacc','query','nacc','udsftldupdrs','UDS FTLD UPDRS',1,1,1);
INSERT INTO query_objects(instance,scope,module,section,target,short_desc,standard,primary_link,secondary_link) values('lava','crms-nacc','query','nacc','udsftldclinfeatures','UDS FTLD Clin Features',1,1,1);
INSERT INTO query_objects(instance,scope,module,section,target,short_desc,standard,primary_link,secondary_link) values('lava','crms-nacc','query','nacc','udsftldneuropsych','UDS FTLD Neuropsych',1,1,1);
INSERT INTO query_objects(instance,scope,module,section,target,short_desc,standard,primary_link,secondary_link) values('lava','crms-nacc','query','nacc','udsftldsnq','UDS FTLD SNQ',1,1,1);
INSERT INTO query_objects(instance,scope,module,section,target,short_desc,standard,primary_link,secondary_link) values('lava','crms-nacc','query','nacc','udsftldsboc','UDS FTLD SBOC',1,1,1);
INSERT INTO query_objects(instance,scope,module,section,target,short_desc,standard,primary_link,secondary_link) values('lava','crms-nacc','query','nacc','udsftldbis','UDS FTLD BIS',1,1,1);
INSERT INTO query_objects(instance,scope,module,section,target,short_desc,standard,primary_link,secondary_link) values('lava','crms-nacc','query','nacc','udsftldiri','UDS FTLD IRI',1,1,1);
INSERT INTO query_objects(instance,scope,module,section,target,short_desc,standard,primary_link,secondary_link) values('lava','crms-nacc','query','nacc','udsftldrsms','UDS FTLD RSMS',1,1,1);
INSERT INTO query_objects(instance,scope,module,section,target,short_desc,standard,primary_link,secondary_link) values('lava','crms-nacc','query','nacc','udsftldimagingavail','UDS FTLD Imaging Avail',1,1,1);
INSERT INTO query_objects(instance,scope,module,section,target,short_desc,standard,primary_link,secondary_link) values('lava','crms-nacc','query','nacc','udsftldimagingdiag','UDS FTLD Imaging Diag',1,1,1);
INSERT INTO query_objects(instance,scope,module,section,target,short_desc,standard,primary_link,secondary_link) values('lava','crms-nacc','query','nacc','udsftldformchecklist','UDS FTLD Form Checklist',1,1,1);

-- the following are query objects for instruments that were discontinued in UDS 3 / FTLD 3 but are still supported so
-- users can query UDS 1 and 2 data. the views and stored procedures for these are not defined in this script.
INSERT INTO query_objects(instance,scope,module,section,target,short_desc,standard,primary_link,secondary_link) 
  VALUES('lava','crms-nacc','query','nacc','udsfamilyhistory1','UDS Family History(V1)',1,1,1);
INSERT INTO query_objects(instance,scope,module,section,target,short_desc,standard,primary_link,secondary_link) 
  VALUES('lava','crms-nacc','query','nacc','udsfamilyhistory2','UDS Family History(V2)',1,1,1);
INSERT INTO query_objects(instance,scope,module,section,target,short_desc,standard,primary_link,secondary_link) 
  VALUES('lava','crms-nacc','query','nacc','udsfamilyhistory2Extended','UDS Family History(V2-Extended)',1,1,1);
INSERT INTO query_objects(instance,scope,module,section,target,short_desc,standard,primary_link,secondary_link) 
  VALUES('lava','crms','query','nacc','udshachinski','UDS Hachinski',1,1,1);
INSERT INTO query_objects(instance,scope,module,section,target,short_desc,standard,primary_link,secondary_link) 
  VALUES('lava','crms-nacc','query','nacc','udsupdrs','UDS UPDRS',1,1,1);
INSERT INTO query_objects(instance,scope,module,section,target,short_desc,standard,primary_link,secondary_link) 
  VALUES('lava','crms','query','nacc','udsneuropsych','UDS Neuropsych',1,1,1);
INSERT INTO query_objects(instance,scope,module,section,target,short_desc,standard,primary_link,secondary_link) 
  VALUES('lava','crms-nacc','query','nacc','udslabsimaging','UDS Labs Imaging',1,1,1);
INSERT INTO query_objects(instance,scope,module,section,target,short_desc,standard,primary_link,secondary_link) 
  values('lava','crms-nacc','query','nacc','udsftldfamilyhistory2','UDS FTLD Family History',1,1,1);
  
-- the view and stored procedure for this query object did not change at all so is not in this script
INSERT INTO query_objects(instance,scope,module,section,target,short_desc,standard,primary_link,secondary_link) 
  VALUES('lava','crms-nacc','query','nacc','udsmedications2','UDS Medication Details (V2)',1,0,0);
  
  

-- A1: UDS Subject Demo
-- -----------------------------------------------------
-- view lq_view_udssubjectdemo
-- -----------------------------------------------------
DROP VIEW IF EXISTS `lq_view_udssubjectdemo`;
CREATE OR REPLACE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `lq_view_udssubjectdemo` AS select 
`t2`.`InstrID`,
`t2`.`INMDS`,
`t2`.`REASON`,
`t2`.`REASONX`,
`t2`.`REFER`,
`t2`.`REFERSC`,
`t2`.`REFERX`,
`t2`.`LEARNED`,
`t2`.`PRESTAT`,
`t2`.`PRESPART`,
`t2`.`SOURCE`,
`t2`.`SOURCENW`,
`t2`.`BIRTHMO`,
`t2`.`BIRTHYR`,
`t2`.`SEX`,
`t2`.`HISPANIC`,
`t2`.`HISPOR`,
`t2`.`HISPORX`,
`t2`.`RACE`,
`t2`.`RACEX`,
`t2`.`RACESEC`,
`t2`.`RACESECX`,
`t2`.`RACETER`,
`t2`.`RACETERX`,
`t2`.`PRIMLANG`,
`t2`.`PRIMLANX`,
`t2`.`EDUC`,
`t2`.`LIVSIT`,
`t2`.`LIVSITUA`,
`t2`.`LIVSITX`,
`t2`.`INDEPEND`,
`t2`.`RESIDENC`,
`t2`.`RESIDENX`,
`t2`.`ZIP`,
`t2`.`MARISTAT`,
`t2`.`MARISTAX`,
`t2`.`HANDED`,
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
FROM `instrumenttracking` `t1` join `udssubjectdemo` `t2` on (`t1`.`InstrID` = `t2`.`InstrID`) join `udstracking` `t3` on (`t1`.`InstrID` = `t3`.`InstrID`)
WHERE `t1`.`InstrType` = 'UDS Subject Demo';


-- -----------------------------------------------------
-- procedure lq_get_nacc_udssubjectdemo
-- -----------------------------------------------------

DROP PROCEDURE IF EXISTS `lq_get_nacc_udssubjectdemo`;
DELIMITER $$

CREATE PROCEDURE `lq_get_nacc_udssubjectdemo`(user_name varchar(50), host_name varchar(50), query_type varchar(25), query_subtype VARCHAR(25), query_days INTEGER)
BEGIN
CALL lq_audit_event(user_name, host_name, 'crms-nacc.nacc.udssubjectdemo', query_type);

IF query_type = 'Simple' THEN
	SELECT p.PIDN, it.InstrType, it.DCDate, v.VType, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it 
	    INNER JOIN visit v ON (it.VID = v.VID) 
		INNER JOIN lq_view_udssubjectdemo i ON (it.InstrID = i.instr_id) 
		INNER JOIN temp_pidn p ON (p.PIDN = it.PIDN) 
	WHERE it.InstrType = 'UDS Subject Demo' or it.InstrType is null 
	ORDER BY p.pidn, it.DCDate;
      
ELSEIF query_type = 'SimpleAllPatients' THEN
	SELECT p.PIDN, it.InstrType, it.DCDate, v.VType, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it  
	    INNER JOIN visit v ON (it.VID = v.VID) 
		INNER JOIN lq_view_udssubjectdemo i ON (it.InstrID = i.instr_id)  
		RIGHT OUTER JOIN temp_pidn p ON (p.PIDN = it.PIDN)  
	WHERE it.InstrType =  'UDS Subject Demo' or it.InstrType is null 
	ORDER BY P.pidn, it.DCDate;
	
ELSEIF query_type = 'VisitGrouping' THEN
    SELECT l.PIDN, l.link_date, l.link_id, v.VType, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*
    FROM temp_linkdata l LEFT OUTER JOIN (visit v, instrumenttracking i, lq_view_udssubjectdemo d)
      ON (l.link_id=v.vid AND v.vid=i.vid AND i.InstrID=d.instr_id AND
          NOT i.DCStatus = 'Scheduled' AND NOT i.DCStatus like 'Canceled%')
    ORDER BY l.PIDN, l.link_date, l.link_id;
	
ELSEIF query_type = 'PrimaryAll' THEN 
	CREATE TEMPORARY TABLE temp_linkdata as 
		SELECT p.PIDN,i.DCDate as link_date, i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
		FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
			INNER JOIN lq_view_udssubjectdemo d ON (i.InstrID=d.instr_id) 
		WHERE NOT i.DCStatus = 'Scheduled' AND NOT i.DCStatus like 'Canceled%' 
		ORDER BY p.pidn, i.DCDate, i.InstrID ;
	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
	SELECT * from temp_linkdata;
	
ELSEIF query_type = 'PrimaryLatest' THEN  
	CREATE TEMPORARY TABLE temp_linkdata as 
		SELECT p.PIDN, i.DCDate as link_date, i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
		FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
			INNER JOIN lq_view_udssubjectdemo d ON (i.InstrID=d.instr_id) 
		WHERE i.DCDate = (SELECT MAX(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND  
			i2.InstrType = 'UDS Subject Demo' AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%') 
		ORDER BY p.pidn, i.DCDate, i.InstrID;
	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
	SELECT * from temp_linkdata;
	
ELSEIF query_type = 'PrimaryFirst' THEN
	CREATE TEMPORARY TABLE temp_linkdata as 
		SELECT p.PIDN,i.DCDate as link_date, i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.* 
		FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN) 
			INNER JOIN lq_view_udssubjectdemo d ON (i.InstrID=d.instr_id)
		WHERE i.DCDate = (SELECT MIN(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND 
			i2.InstrType = 'UDS Subject Demo' AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%')
		ORDER BY p.pidn, i.InstrID;
	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
	SELECT * from temp_linkdata;
	
ELSEIF query_type IN ('SecondaryAll','SecondaryClosest') THEN
	#Create candidate table with secondary instruments 
	CREATE TEMPORARY TABLE temp_secondary_candidates AS
		SELECT l.PIDN, l.link_date, l.link_id, i2.InstrType, i2.InstrID, DATEDIFF(l.link_date, i2.DCDate) AS Days 
		FROM temp_linkdata l INNER JOIN instrumenttracking i2 ON (i2.PIDN=l.PIDN) 
		WHERE i2.InstrType = 'UDS Subject Demo';
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
		LEFT JOIN lq_view_udssubjectdemo d ON (i.InstrID=d.instr_id) ORDER BY l.pidn, l.link_date, l.link_id;

	DROP TABLE temp_secondary_candidates;

END IF;

END$$

$$
DELIMITER ;



  
  
-- A2 UDS Informant Demo  
-- -----------------------------------------------------
-- view lq_view_udsinformantdemo
-- -----------------------------------------------------
DROP VIEW IF EXISTS `lq_view_udsinformantdemo`;
CREATE OR REPLACE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `lq_view_udsinformantdemo` AS select 
`t2`.`InstrID`,
`t2`.`INBIRMO`,
`t2`.`INBIRYR`,
`t2`.`INSEX`,
`t2`.`NEWINF`,
`t2`.`INHISP`,
`t2`.`INHISPOR`,
`t2`.`INHISPOX`,
`t2`.`INRACE`,
`t2`.`INRACEX`,
`t2`.`INRASEC`,
`t2`.`INRASECX`,
`t2`.`INRATER`,
`t2`.`INRATERX`,
`t2`.`INEDUC`,
`t2`.`INRELTO`,
`t2`.`INRELTOX`,
`t2`.`INKNOWN`,
`t2`.`INLIVWTH`,
`t2`.`INVISITS`,
`t2`.`INCALLS`,
`t2`.`INRELY`,
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
FROM `instrumenttracking` `t1` join `udsinformantdemo` `t2` on (`t1`.`InstrID` = `t2`.`InstrID`) join `udstracking` `t3` on (`t1`.`InstrID` = `t3`.`InstrID`)
WHERE `t1`.`InstrType` = 'UDS Informant Demo';


-- -----------------------------------------------------
-- procedure lq_get_nacc_udsinformantdemo
-- -----------------------------------------------------

DROP PROCEDURE IF EXISTS `lq_get_nacc_udsinformantdemo`;
DELIMITER $$

CREATE PROCEDURE `lq_get_nacc_udsinformantdemo`(user_name varchar(50), host_name varchar(50), query_type varchar(25), query_subtype VARCHAR(25), query_days INTEGER)
BEGIN
CALL lq_audit_event(user_name, host_name, 'crms-nacc.nacc.udsinformantdemo', query_type);

IF query_type = 'Simple' THEN
	SELECT p.PIDN, it.InstrType, it.DCDate, v.VType, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it 
	    INNER JOIN visit v ON (it.VID = v.VID) 
		INNER JOIN lq_view_udsinformantdemo i ON (it.InstrID = i.instr_id) 
		INNER JOIN temp_pidn p ON (p.PIDN = it.PIDN) 
	WHERE it.InstrType = 'UDS Informant Demo' or it.InstrType is null 
	ORDER BY p.pidn, it.DCDate;
      
ELSEIF query_type = 'SimpleAllPatients' THEN
	SELECT p.PIDN, it.InstrType, it.DCDate, v.VType, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it  
	    INNER JOIN visit v ON (it.VID = v.VID) 
		INNER JOIN lq_view_udsinformantdemo i ON (it.InstrID = i.instr_id)  
		RIGHT OUTER JOIN temp_pidn p ON (p.PIDN = it.PIDN)  
	WHERE it.InstrType =  'UDS Informant Demo' or it.InstrType is null 
	ORDER BY P.pidn, it.DCDate;
	
ELSEIF query_type = 'VisitGrouping' THEN
    SELECT l.PIDN, l.link_date, l.link_id, v.VType, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*
    FROM temp_linkdata l LEFT OUTER JOIN (visit v, instrumenttracking i, lq_view_udsinformantdemo d)
      ON (l.link_id=v.vid AND v.vid=i.vid AND i.InstrID=d.instr_id AND
          NOT i.DCStatus = 'Scheduled' AND NOT i.DCStatus like 'Canceled%')
    ORDER BY l.PIDN, l.link_date, l.link_id;
	
ELSEIF query_type = 'PrimaryAll' THEN 
	CREATE TEMPORARY TABLE temp_linkdata as 
		SELECT p.PIDN,i.DCDate as link_date, i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
		FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
			INNER JOIN lq_view_udsinformantdemo d ON (i.InstrID=d.instr_id) 
		WHERE NOT i.DCStatus = 'Scheduled' AND NOT i.DCStatus like 'Canceled%' 
		ORDER BY p.pidn, i.DCDate, i.InstrID ;
	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
	SELECT * from temp_linkdata;
	
ELSEIF query_type = 'PrimaryLatest' THEN  
	CREATE TEMPORARY TABLE temp_linkdata as 
		SELECT p.PIDN, i.DCDate as link_date, i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
		FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
			INNER JOIN lq_view_udsinformantdemo d ON (i.InstrID=d.instr_id) 
		WHERE i.DCDate = (SELECT MAX(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND  
			i2.InstrType = 'UDS Informant Demo' AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%') 
		ORDER BY p.pidn, i.DCDate, i.InstrID;
	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
	SELECT * from temp_linkdata;
	
ELSEIF query_type = 'PrimaryFirst' THEN
	CREATE TEMPORARY TABLE temp_linkdata as 
		SELECT p.PIDN,i.DCDate as link_date, i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.* 
		FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN) 
			INNER JOIN lq_view_udsinformantdemo d ON (i.InstrID=d.instr_id)
		WHERE i.DCDate = (SELECT MIN(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND 
			i2.InstrType = 'UDS Informant Demo' AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%')
		ORDER BY p.pidn, i.InstrID;
	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
	SELECT * from temp_linkdata;
	
ELSEIF query_type IN ('SecondaryAll','SecondaryClosest') THEN
	#Create candidate table with secondary instruments 
	CREATE TEMPORARY TABLE temp_secondary_candidates AS
		SELECT l.PIDN, l.link_date, l.link_id, i2.InstrType, i2.InstrID, DATEDIFF(l.link_date, i2.DCDate) AS Days 
		FROM temp_linkdata l INNER JOIN instrumenttracking i2 ON (i2.PIDN=l.PIDN) 
		WHERE i2.InstrType = 'UDS Informant Demo';
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
		LEFT JOIN lq_view_udsinformantdemo d ON (i.InstrID=d.instr_id) ORDER BY l.pidn, l.link_date, l.link_id;

	DROP TABLE temp_secondary_candidates;

END IF;

END$$

$$
DELIMITER ;




-- A3 UDS Family History
-- -----------------------------------------------------
-- view lq_view_udsfamilyhistory3
-- -----------------------------------------------------
DROP VIEW IF EXISTS `lq_view_udsfamilyhistory3`;
CREATE OR REPLACE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `lq_view_udsfamilyhistory3` AS select 
`t2`.`InstrID`,
`t2`.`AFFFAMM`,
`t2`.`NWINFMUT`,
`t2`.`FADMUT`,
`t2`.`FADMUTX`,
`t2`.`FADMUSO`,
`t2`.`FADMUSOX`,
`t2`.`FFTDMUT`,
`t2`.`FFTDMUTX`,
`t2`.`FFTDMUSO`,
`t2`.`FFTDMUSX`,
`t2`.`FOTHMUT`,
`t2`.`FOTHMUTX`,
`t2`.`FOTHMUSO`,
`t2`.`FOTHMUSX`,
`t2`.`NWINFPAR`,
`t2`.`MOMMOB`,
`t2`.`MOMYOB`,
`t2`.`MOMDAGE`,
`t2`.`MOMNEUR`,
`t2`.`MOMPRDX`,
`t2`.`MOMMOE`,
`t2`.`MOMAGEO`,
`t2`.`DADMOB`,
`t2`.`DADYOB`,
`t2`.`DADDAGE`,
`t2`.`DADNEUR`,
`t2`.`DADPRDX`,
`t2`.`DADMOE`,
`t2`.`DADAGEO`,
`t2`.`SIBS`,
`t2`.`NWINFSIB`,
`t2`.`SIB1MOB`,
`t2`.`SIB1YOB`,
`t2`.`SIB1AGD`,
`t2`.`SIB1NEU`,
`t2`.`SIB1PDX`,
`t2`.`SIB1MOE`,
`t2`.`SIB1AGO`,
`t2`.`SIB2MOB`,
`t2`.`SIB2YOB`,
`t2`.`SIB2AGD`,
`t2`.`SIB2NEU`,
`t2`.`SIB2PDX`,
`t2`.`SIB2MOE`,
`t2`.`SIB2AGO`,
`t2`.`SIB3MOB`,
`t2`.`SIB3YOB`,
`t2`.`SIB3AGD`,
`t2`.`SIB3NEU`,
`t2`.`SIB3PDX`,
`t2`.`SIB3MOE`,
`t2`.`SIB3AGO`,
`t2`.`SIB4MOB`,
`t2`.`SIB4YOB`,
`t2`.`SIB4AGD`,
`t2`.`SIB4NEU`,
`t2`.`SIB4PDX`,
`t2`.`SIB4MOE`,
`t2`.`SIB4AGO`,
`t2`.`SIB5MOB`,
`t2`.`SIB5YOB`,
`t2`.`SIB5AGD`,
`t2`.`SIB5NEU`,
`t2`.`SIB5PDX`,
`t2`.`SIB5MOE`,
`t2`.`SIB5AGO`,
`t2`.`SIB6MOB`,
`t2`.`SIB6YOB`,
`t2`.`SIB6AGD`,
`t2`.`SIB6NEU`,
`t2`.`SIB6PDX`,
`t2`.`SIB6MOE`,
`t2`.`SIB6AGO`,
`t2`.`SIB7MOB`,
`t2`.`SIB7YOB`,
`t2`.`SIB7AGD`,
`t2`.`SIB7NEU`,
`t2`.`SIB7PDX`,
`t2`.`SIB7MOE`,
`t2`.`SIB7AGO`,
`t2`.`SIB8MOB`,
`t2`.`SIB8YOB`,
`t2`.`SIB8AGD`,
`t2`.`SIB8NEU`,
`t2`.`SIB8PDX`,
`t2`.`SIB8MOE`,
`t2`.`SIB8AGO`,
`t2`.`SIB9MOB`,
`t2`.`SIB9YOB`,
`t2`.`SIB9AGD`,
`t2`.`SIB9NEU`,
`t2`.`SIB9PDX`,
`t2`.`SIB9MOE`,
`t2`.`SIB9AGO`,
`t2`.`SIB10MOB`,
`t2`.`SIB10YOB`,
`t2`.`SIB10AGD`,
`t2`.`SIB10NEU`,
`t2`.`SIB10PDX`,
`t2`.`SIB10MOE`,
`t2`.`SIB10AGO`,
`t2`.`SIB11MOB`,
`t2`.`SIB11YOB`,
`t2`.`SIB11AGD`,
`t2`.`SIB11NEU`,
`t2`.`SIB11PDX`,
`t2`.`SIB11MOE`,
`t2`.`SIB11AGO`,
`t2`.`SIB12MOB`,
`t2`.`SIB12YOB`,
`t2`.`SIB12AGD`,
`t2`.`SIB12NEU`,
`t2`.`SIB12PDX`,
`t2`.`SIB12MOE`,
`t2`.`SIB12AGO`,
`t2`.`SIB13MOB`,
`t2`.`SIB13YOB`,
`t2`.`SIB13AGD`,
`t2`.`SIB13NEU`,
`t2`.`SIB13PDX`,
`t2`.`SIB13MOE`,
`t2`.`SIB13AGO`,
`t2`.`SIB14MOB`,
`t2`.`SIB14YOB`,
`t2`.`SIB14AGD`,
`t2`.`SIB14NEU`,
`t2`.`SIB14PDX`,
`t2`.`SIB14MOE`,
`t2`.`SIB14AGO`,
`t2`.`SIB15MOB`,
`t2`.`SIB15YOB`,
`t2`.`SIB15AGD`,
`t2`.`SIB15NEU`,
`t2`.`SIB15PDX`,
`t2`.`SIB15MOE`,
`t2`.`SIB15AGO`,
`t2`.`SIB16MOB`,
`t2`.`SIB16YOB`,
`t2`.`SIB16AGD`,
`t2`.`SIB16NEU`,
`t2`.`SIB16PDX`,
`t2`.`SIB16MOE`,
`t2`.`SIB16AGO`,
`t2`.`SIB17MOB`,
`t2`.`SIB17YOB`,
`t2`.`SIB17AGD`,
`t2`.`SIB17NEU`,
`t2`.`SIB17PDX`,
`t2`.`SIB17MOE`,
`t2`.`SIB17AGO`,
`t2`.`SIB18MOB`,
`t2`.`SIB18YOB`,
`t2`.`SIB18AGD`,
`t2`.`SIB18NEU`,
`t2`.`SIB18PDX`,
`t2`.`SIB18MOE`,
`t2`.`SIB18AGO`,
`t2`.`SIB19MOB`,
`t2`.`SIB19YOB`,
`t2`.`SIB19AGD`,
`t2`.`SIB19NEU`,
`t2`.`SIB19PDX`,
`t2`.`SIB19MOE`,
`t2`.`SIB19AGO`,
`t2`.`SIB20MOB`,
`t2`.`SIB20YOB`,
`t2`.`SIB20AGD`,
`t2`.`SIB20NEU`,
`t2`.`SIB20PDX`,
`t2`.`SIB20MOE`,
`t2`.`SIB20AGO`,
`t2`.`KIDS`,
`t2`.`NWINFKID`,
`t2`.`KID1MOB`,
`t2`.`KID1YOB`,
`t2`.`KID1AGD`,
`t2`.`KID1NEU`,
`t2`.`KID1PDX`,
`t2`.`KID1MOE`,
`t2`.`KID1AGO`,
`t2`.`KID2MOB`,
`t2`.`KID2YOB`,
`t2`.`KID2AGD`,
`t2`.`KID2NEU`,
`t2`.`KID2PDX`,
`t2`.`KID2MOE`,
`t2`.`KID2AGO`,
`t2`.`KID3MOB`,
`t2`.`KID3YOB`,
`t2`.`KID3AGD`,
`t2`.`KID3NEU`,
`t2`.`KID3PDX`,
`t2`.`KID3MOE`,
`t2`.`KID3AGO`,
`t2`.`KID4MOB`,
`t2`.`KID4YOB`,
`t2`.`KID4AGD`,
`t2`.`KID4NEU`,
`t2`.`KID4PDX`,
`t2`.`KID4MOE`,
`t2`.`KID4AGO`,
`t2`.`KID5MOB`,
`t2`.`KID5YOB`,
`t2`.`KID5AGD`,
`t2`.`KID5NEU`,
`t2`.`KID5PDX`,
`t2`.`KID5MOE`,
`t2`.`KID5AGO`,
`t2`.`KID6MOB`,
`t2`.`KID6YOB`,
`t2`.`KID6AGD`,
`t2`.`KID6NEU`,
`t2`.`KID6PDX`,
`t2`.`KID6MOE`,
`t2`.`KID6AGO`,
`t2`.`KID7MOB`,
`t2`.`KID7YOB`,
`t2`.`KID7AGD`,
`t2`.`KID7NEU`,
`t2`.`KID7PDX`,
`t2`.`KID7MOE`,
`t2`.`KID7AGO`,
`t2`.`KID8MOB`,
`t2`.`KID8YOB`,
`t2`.`KID8AGD`,
`t2`.`KID8NEU`,
`t2`.`KID8PDX`,
`t2`.`KID8MOE`,
`t2`.`KID8AGO`,
`t2`.`KID9MOB`,
`t2`.`KID9YOB`,
`t2`.`KID9AGD`,
`t2`.`KID9NEU`,
`t2`.`KID9PDX`,
`t2`.`KID9MOE`,
`t2`.`KID9AGO`,
`t2`.`KID10MOB`,
`t2`.`KID10YOB`,
`t2`.`KID10AGD`,
`t2`.`KID10NEU`,
`t2`.`KID10PDX`,
`t2`.`KID10MOE`,
`t2`.`KID10AGO`,
`t2`.`KID11MOB`,
`t2`.`KID11YOB`,
`t2`.`KID11AGD`,
`t2`.`KID11NEU`,
`t2`.`KID11PDX`,
`t2`.`KID11MOE`,
`t2`.`KID11AGO`,
`t2`.`KID12MOB`,
`t2`.`KID12YOB`,
`t2`.`KID12AGD`,
`t2`.`KID12NEU`,
`t2`.`KID12PDX`,
`t2`.`KID12MOE`,
`t2`.`KID12AGO`,
`t2`.`KID13MOB`,
`t2`.`KID13YOB`,
`t2`.`KID13AGD`,
`t2`.`KID13NEU`,
`t2`.`KID13PDX`,
`t2`.`KID13MOE`,
`t2`.`KID13AGO`,
`t2`.`KID14MOB`,
`t2`.`KID14YOB`,
`t2`.`KID14AGD`,
`t2`.`KID14NEU`,
`t2`.`KID14PDX`,
`t2`.`KID14MOE`,
`t2`.`KID14AGO`,
`t2`.`KID15MOB`,
`t2`.`KID15YOB`,
`t2`.`KID15AGD`,
`t2`.`KID15NEU`,
`t2`.`KID15PDX`,
`t2`.`KID15MOE`,
`t2`.`KID15AGO`,
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
FROM `instrumenttracking` `t1` join `udsfamilyhistory3` `t2` on (`t1`.`InstrID` = `t2`.`InstrID`) join `udstracking` `t3` on (`t1`.`InstrID` = `t3`.`InstrID`)
WHERE `t1`.`InstrType` = 'UDS Family History 3';


-- -----------------------------------------------------
-- procedure lq_get_nacc_udsfamilyhistory3
-- -----------------------------------------------------

DROP PROCEDURE IF EXISTS `lq_get_nacc_udsfamilyhistory3`;
DELIMITER $$

CREATE PROCEDURE `lq_get_nacc_udsfamilyhistory3`(user_name varchar(50), host_name varchar(50), query_type varchar(25), query_subtype VARCHAR(25), query_days INTEGER)
BEGIN
CALL lq_audit_event(user_name, host_name, 'crms-nacc.nacc.udsfamilyhistory3', query_type);

IF query_type = 'Simple' THEN
	SELECT p.PIDN, it.InstrType, it.DCDate, v.VType, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it 
	    INNER JOIN visit v ON (it.VID = v.VID) 
		INNER JOIN lq_view_udsfamilyhistory3 i ON (it.InstrID = i.instr_id) 
		INNER JOIN temp_pidn p ON (p.PIDN = it.PIDN) 
	WHERE it.InstrType = 'UDS Family History 3' or it.InstrType is null 
	ORDER BY p.pidn, it.DCDate;
      
ELSEIF query_type = 'SimpleAllPatients' THEN
	SELECT p.PIDN, it.InstrType, it.DCDate, v.VType, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it  
	    INNER JOIN visit v ON (it.VID = v.VID) 
		INNER JOIN lq_view_udsfamilyhistory3 i ON (it.InstrID = i.instr_id)  
		RIGHT OUTER JOIN temp_pidn p ON (p.PIDN = it.PIDN)  
	WHERE it.InstrType =  'UDS Family History 3' or it.InstrType is null 
	ORDER BY P.pidn, it.DCDate;
	
ELSEIF query_type = 'VisitGrouping' THEN
    SELECT l.PIDN, l.link_date, l.link_id, v.VType, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*
    FROM temp_linkdata l LEFT OUTER JOIN (visit v, instrumenttracking i, lq_view_udsfamilyhistory3 d)
      ON (l.link_id=v.vid AND v.vid=i.vid AND i.InstrID=d.instr_id AND
          NOT i.DCStatus = 'Scheduled' AND NOT i.DCStatus like 'Canceled%')
    ORDER BY l.PIDN, l.link_date, l.link_id;
	
ELSEIF query_type = 'PrimaryAll' THEN 
	CREATE TEMPORARY TABLE temp_linkdata as 
		SELECT p.PIDN,i.DCDate as link_date, i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
		FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
			INNER JOIN lq_view_udsfamilyhistory3 d ON (i.InstrID=d.instr_id) 
		WHERE NOT i.DCStatus = 'Scheduled' AND NOT i.DCStatus like 'Canceled%' 
		ORDER BY p.pidn, i.DCDate, i.InstrID ;
	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
	SELECT * from temp_linkdata;
	
ELSEIF query_type = 'PrimaryLatest' THEN  
	CREATE TEMPORARY TABLE temp_linkdata as 
		SELECT p.PIDN, i.DCDate as link_date, i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
		FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
			INNER JOIN lq_view_udsfamilyhistory3 d ON (i.InstrID=d.instr_id) 
		WHERE i.DCDate = (SELECT MAX(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND  
			i2.InstrType = 'UDS Family History 3' AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%') 
		ORDER BY p.pidn, i.DCDate, i.InstrID;
	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
	SELECT * from temp_linkdata;
	
ELSEIF query_type = 'PrimaryFirst' THEN
	CREATE TEMPORARY TABLE temp_linkdata as 
		SELECT p.PIDN,i.DCDate as link_date, i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.* 
		FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN) 
			INNER JOIN lq_view_udsfamilyhistory3 d ON (i.InstrID=d.instr_id)
		WHERE i.DCDate = (SELECT MIN(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND 
			i2.InstrType = 'UDS Family History 3' AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%')
		ORDER BY p.pidn, i.InstrID;
	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
	SELECT * from temp_linkdata;
	
ELSEIF query_type IN ('SecondaryAll','SecondaryClosest') THEN
	#Create candidate table with secondary instruments 
	CREATE TEMPORARY TABLE temp_secondary_candidates AS
		SELECT l.PIDN, l.link_date, l.link_id, i2.InstrType, i2.InstrID, DATEDIFF(l.link_date, i2.DCDate) AS Days 
		FROM temp_linkdata l INNER JOIN instrumenttracking i2 ON (i2.PIDN=l.PIDN) 
		WHERE i2.InstrType = 'UDS Family History 3';
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
		LEFT JOIN lq_view_udsfamilyhistory3 d ON (i.InstrID=d.instr_id) ORDER BY l.pidn, l.link_date, l.link_id;

	DROP TABLE temp_secondary_candidates;

END IF;

END$$

$$
DELIMITER ;



  
  
  
-- A4 UDS Medications
-- -----------------------------------------------------
-- view lq_view_udsmedications2
-- -----------------------------------------------------
DROP VIEW IF EXISTS `lq_view_udsmedications2`;
CREATE OR REPLACE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `lq_view_udsmedications2` AS select 
`t2`.`InstrID`,
`t2`.`ANYMEDS`,
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
FROM `instrumenttracking` `t1` join `udsmedications2` `t2` on (`t1`.`InstrID` = `t2`.`InstrID`) join `udstracking` `t3` on (`t1`.`InstrID` = `t3`.`InstrID`)
WHERE `t1`.`InstrType` = 'UDS Medications 2';


-- -----------------------------------------------------
-- procedure lq_get_nacc_udsmedications2
-- -----------------------------------------------------

DROP PROCEDURE IF EXISTS `lq_get_nacc_udsmedications2`;
DELIMITER $$

CREATE PROCEDURE `lq_get_nacc_udsmedications2`(user_name varchar(50), host_name varchar(50), query_type varchar(25), query_subtype VARCHAR(25), query_days INTEGER)
BEGIN
CALL lq_audit_event(user_name, host_name, 'crms-nacc.nacc.udsmedications2', query_type);

IF query_type = 'Simple' THEN
	SELECT p.PIDN, it.InstrType, it.DCDate, v.VType, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it 
	    INNER JOIN visit v ON (it.VID = v.VID) 
		INNER JOIN lq_view_udsmedications2 i ON (it.InstrID = i.instr_id) 
		INNER JOIN temp_pidn p ON (p.PIDN = it.PIDN) 
	WHERE it.InstrType = 'UDS Medications 2' or it.InstrType is null 
	ORDER BY p.pidn, it.DCDate;
      
ELSEIF query_type = 'SimpleAllPatients' THEN
	SELECT p.PIDN, it.InstrType, it.DCDate, v.VType, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it  
	    INNER JOIN visit v ON (it.VID = v.VID) 
		INNER JOIN lq_view_udsmedications2 i ON (it.InstrID = i.instr_id)  
		RIGHT OUTER JOIN temp_pidn p ON (p.PIDN = it.PIDN)  
	WHERE it.InstrType =  'UDS Medications 2' or it.InstrType is null 
	ORDER BY P.pidn, it.DCDate;
	
ELSEIF query_type = 'VisitGrouping' THEN
    SELECT l.PIDN, l.link_date, l.link_id, v.VType, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*
    FROM temp_linkdata l LEFT OUTER JOIN (visit v, instrumenttracking i, lq_view_udsmedications2 d)
      ON (l.link_id=v.vid AND v.vid=i.vid AND i.InstrID=d.instr_id AND
          NOT i.DCStatus = 'Scheduled' AND NOT i.DCStatus like 'Canceled%')
    ORDER BY l.PIDN, l.link_date, l.link_id;
	
ELSEIF query_type = 'PrimaryAll' THEN 
	CREATE TEMPORARY TABLE temp_linkdata as 
		SELECT p.PIDN,i.DCDate as link_date, i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
		FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
			INNER JOIN lq_view_udsmedications2 d ON (i.InstrID=d.instr_id) 
		WHERE NOT i.DCStatus = 'Scheduled' AND NOT i.DCStatus like 'Canceled%' 
		ORDER BY p.pidn, i.DCDate, i.InstrID ;
	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
	SELECT * from temp_linkdata;
	
ELSEIF query_type = 'PrimaryLatest' THEN  
	CREATE TEMPORARY TABLE temp_linkdata as 
		SELECT p.PIDN, i.DCDate as link_date, i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
		FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
			INNER JOIN lq_view_udsmedications2 d ON (i.InstrID=d.instr_id) 
		WHERE i.DCDate = (SELECT MAX(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND  
			i2.InstrType = 'UDS Medications 2' AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%') 
		ORDER BY p.pidn, i.DCDate, i.InstrID;
	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
	SELECT * from temp_linkdata;
	
ELSEIF query_type = 'PrimaryFirst' THEN
	CREATE TEMPORARY TABLE temp_linkdata as 
		SELECT p.PIDN,i.DCDate as link_date, i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.* 
		FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN) 
			INNER JOIN lq_view_udsmedications2 d ON (i.InstrID=d.instr_id)
		WHERE i.DCDate = (SELECT MIN(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND 
			i2.InstrType = 'UDS Medications 2' AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%')
		ORDER BY p.pidn, i.InstrID;
	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
	SELECT * from temp_linkdata;
	
ELSEIF query_type IN ('SecondaryAll','SecondaryClosest') THEN
	#Create candidate table with secondary instruments 
	CREATE TEMPORARY TABLE temp_secondary_candidates AS
		SELECT l.PIDN, l.link_date, l.link_id, i2.InstrType, i2.InstrID, DATEDIFF(l.link_date, i2.DCDate) AS Days 
		FROM temp_linkdata l INNER JOIN instrumenttracking i2 ON (i2.PIDN=l.PIDN) 
		WHERE i2.InstrType = 'UDS Medications 2';
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
		LEFT JOIN lq_view_udsmedications2 d ON (i.InstrID=d.instr_id) ORDER BY l.pidn, l.link_date, l.link_id;

	DROP TABLE temp_secondary_candidates;

END IF;

END$$

$$
DELIMITER ;



  
-- A5 UDS Health History  
-- -----------------------------------------------------
-- view lq_view_udshealthhistory
-- -----------------------------------------------------
DROP VIEW IF EXISTS `lq_view_udshealthhistory`;
CREATE OR REPLACE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `lq_view_udshealthhistory` AS select 
`t2`.`InstrID`,
`t2`.`TOBAC30`,
`t2`.`TOBAC100`,
`t2`.`SMOKYRS`,
`t2`.`PACKSPER`,
`t2`.`QUITSMOK`,
`t2`.`ALCOCCAS`,
`t2`.`ALCFREQ`,
`t2`.`CVHATT`,
`t2`.`HATTMULT`,
`t2`.`HATTYEAR`,
`t2`.`CVAFIB`,
`t2`.`CVANGIO`,
`t2`.`CVBYPASS`,
`t2`.`CVPACE`,
`t2`.`CVPACDEF`,
`t2`.`CVCHF`,
`t2`.`CVANGINA`,
`t2`.`CVHVALVE`,
`t2`.`CVOTHR`,
`t2`.`CVOTHRX`,
`t2`.`CBSTROKE`,
`t2`.`STROK1YR`,
`t2`.`STROK2YR`,
`t2`.`STROK3YR`,
`t2`.`STROK4YR`,
`t2`.`STROK5YR`,
`t2`.`STROK6YR`,
`t2`.`STROKMUL`,
`t2`.`STROKYR`,
`t2`.`CBTIA`,
`t2`.`TIA1YR`,
`t2`.`TIA2YR`,
`t2`.`TIA3YR`,
`t2`.`TIA4YR`,
`t2`.`TIA5YR`,
`t2`.`TIA6YR`,
`t2`.`TIAMULT`,
`t2`.`TIAYEAR`,
`t2`.`CBOTHR`,
`t2`.`CBOTHRX`,
`t2`.`PD`,
`t2`.`PDYR`,
`t2`.`PDOTHR`,
`t2`.`PDOTHRYR`,
`t2`.`SEIZURES`,
`t2`.`TRAUMBRF`,
`t2`.`TRAUMEXT`,
`t2`.`TRAUMCHR`,
`t2`.`TBI`,
`t2`.`TBIBRIEF`,
`t2`.`TBIEXTEN`,
`t2`.`TBIWOLOS`,
`t2`.`TBIYEAR`,
`t2`.`NCOTHR`,
`t2`.`NCOTHRX`,
`t2`.`HYPERTEN`,
`t2`.`HYPERCHO`,
`t2`.`DIABETES`,
`t2`.`DIABTYPE`,
`t2`.`B12DEF`,
`t2`.`THYROID`,
`t2`.`ARTHRIT`,
`t2`.`ARTHTYPE`,
`t2`.`ARTHTYPX`,
`t2`.`ARTHUPEX`,
`t2`.`ARTHLOEX`,
`t2`.`ARTHSPIN`,
`t2`.`ARTHUNK`,
`t2`.`INCONTU`,
`t2`.`INCONTF`,
`t2`.`APNEA`,
`t2`.`RBD`,
`t2`.`INSOMN`,
`t2`.`OTHSLEEP`,
`t2`.`OTHSLEEX`,
`t2`.`ALCOHOL`,
`t2`.`ABUSOTHR`,
`t2`.`ABUSX`,
`t2`.`PTSD`,
`t2`.`BIPOLAR`,
`t2`.`SCHIZ`,
`t2`.`DEP2YRS`,
`t2`.`DEPOTHR`,
`t2`.`ANXIETY`,
`t2`.`OCD`,
`t2`.`NPSYDEV`,
`t2`.`PSYCDIS`,
`t2`.`PSYCDISX`,
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
FROM `instrumenttracking` `t1` join `udshealthhistory` `t2` on (`t1`.`InstrID` = `t2`.`InstrID`) join `udstracking` `t3` on (`t1`.`InstrID` = `t3`.`InstrID`)
WHERE `t1`.`InstrType` = 'UDS Health History';
  

-- -----------------------------------------------------
-- procedure lq_get_nacc_udshealthhistory
-- -----------------------------------------------------

DROP PROCEDURE IF EXISTS `lq_get_nacc_udshealthhistory`;
DELIMITER $$

CREATE PROCEDURE `lq_get_nacc_udshealthhistory`(user_name varchar(50), host_name varchar(50), query_type varchar(25), query_subtype VARCHAR(25), query_days INTEGER)
BEGIN
CALL lq_audit_event(user_name, host_name, 'crms-nacc.nacc.udshealthhistory', query_type);

IF query_type = 'Simple' THEN
	SELECT p.PIDN, it.InstrType, it.DCDate, v.VType, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it 
	    INNER JOIN visit v ON (it.VID = v.VID) 
		INNER JOIN lq_view_udshealthhistory i ON (it.InstrID = i.instr_id) 
		INNER JOIN temp_pidn p ON (p.PIDN = it.PIDN) 
	WHERE it.InstrType = 'UDS Health History' or it.InstrType is null 
	ORDER BY p.pidn, it.DCDate;
      
ELSEIF query_type = 'SimpleAllPatients' THEN
	SELECT p.PIDN, it.InstrType, it.DCDate, v.VType, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it  
	    INNER JOIN visit v ON (it.VID = v.VID) 
		INNER JOIN lq_view_udshealthhistory i ON (it.InstrID = i.instr_id)  
		RIGHT OUTER JOIN temp_pidn p ON (p.PIDN = it.PIDN)  
	WHERE it.InstrType =  'UDS Health History' or it.InstrType is null 
	ORDER BY P.pidn, it.DCDate;
	
ELSEIF query_type = 'VisitGrouping' THEN
    SELECT l.PIDN, l.link_date, l.link_id, v.VType, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*
    FROM temp_linkdata l LEFT OUTER JOIN (visit v, instrumenttracking i, lq_view_udshealthhistory d)
      ON (l.link_id=v.vid AND v.vid=i.vid AND i.InstrID=d.instr_id AND
          NOT i.DCStatus = 'Scheduled' AND NOT i.DCStatus like 'Canceled%')
    ORDER BY l.PIDN, l.link_date, l.link_id;
	
ELSEIF query_type = 'PrimaryAll' THEN 
	CREATE TEMPORARY TABLE temp_linkdata as 
		SELECT p.PIDN,i.DCDate as link_date, i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
		FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
			INNER JOIN lq_view_udshealthhistory d ON (i.InstrID=d.instr_id) 
		WHERE NOT i.DCStatus = 'Scheduled' AND NOT i.DCStatus like 'Canceled%' 
		ORDER BY p.pidn, i.DCDate, i.InstrID ;
	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
	SELECT * from temp_linkdata;
	
ELSEIF query_type = 'PrimaryLatest' THEN  
	CREATE TEMPORARY TABLE temp_linkdata as 
		SELECT p.PIDN, i.DCDate as link_date, i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
		FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
			INNER JOIN lq_view_udshealthhistory d ON (i.InstrID=d.instr_id) 
		WHERE i.DCDate = (SELECT MAX(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND  
			i2.InstrType = 'UDS Health History' AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%') 
		ORDER BY p.pidn, i.DCDate, i.InstrID;
	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
	SELECT * from temp_linkdata;
	
ELSEIF query_type = 'PrimaryFirst' THEN
	CREATE TEMPORARY TABLE temp_linkdata as 
		SELECT p.PIDN,i.DCDate as link_date, i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.* 
		FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN) 
			INNER JOIN lq_view_udshealthhistory d ON (i.InstrID=d.instr_id)
		WHERE i.DCDate = (SELECT MIN(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND 
			i2.InstrType = 'UDS Health History' AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%')
		ORDER BY p.pidn, i.InstrID;
	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
	SELECT * from temp_linkdata;
	
ELSEIF query_type IN ('SecondaryAll','SecondaryClosest') THEN
	#Create candidate table with secondary instruments 
	CREATE TEMPORARY TABLE temp_secondary_candidates AS
		SELECT l.PIDN, l.link_date, l.link_id, i2.InstrType, i2.InstrID, DATEDIFF(l.link_date, i2.DCDate) AS Days 
		FROM temp_linkdata l INNER JOIN instrumenttracking i2 ON (i2.PIDN=l.PIDN) 
		WHERE i2.InstrType = 'UDS Health History';
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
		LEFT JOIN lq_view_udshealthhistory d ON (i.InstrID=d.instr_id) ORDER BY l.pidn, l.link_date, l.link_id;

	DROP TABLE temp_secondary_candidates;

END IF;

END$$

$$
DELIMITER ;


  


-- B1 UDS Physical
-- -----------------------------------------------------
-- view lq_view_udsphysical
-- -----------------------------------------------------
DROP VIEW IF EXISTS `lq_view_udsphysical`;
CREATE OR REPLACE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `lq_view_udsphysical` AS select 
`t2`.`InstrID`,
`t2`.`HEIGHT`,
`t2`.`WEIGHT`,
`t2`.`BPSYS`,
`t2`.`BPDIAS`,
`t2`.`HRATE`,
`t2`.`VISION`,
`t2`.`VISCORR`,
`t2`.`VISWCORR`,
`t2`.`HEARING`,
`t2`.`HEARAID`,
`t2`.`HEARWAID`,
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
FROM `instrumenttracking` `t1` join `udsphysical` `t2` on (`t1`.`InstrID` = `t2`.`InstrID`) join `udstracking` `t3` on (`t1`.`InstrID` = `t3`.`InstrID`)
WHERE `t1`.`InstrType` = 'UDS Physical';


-- -----------------------------------------------------
-- procedure lq_get_nacc_udsphysical
-- -----------------------------------------------------

DROP PROCEDURE IF EXISTS `lq_get_nacc_udsphysical`;
DELIMITER $$

CREATE PROCEDURE `lq_get_nacc_udsphysical`(user_name varchar(50), host_name varchar(50), query_type varchar(25), query_subtype VARCHAR(25), query_days INTEGER)
BEGIN
CALL lq_audit_event(user_name, host_name, 'crms-nacc.nacc.udsphysical', query_type);

IF query_type = 'Simple' THEN
	SELECT p.PIDN, it.InstrType, it.DCDate, v.VType, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it 
	    INNER JOIN visit v ON (it.VID = v.VID) 
		INNER JOIN lq_view_udsphysical i ON (it.InstrID = i.instr_id) 
		INNER JOIN temp_pidn p ON (p.PIDN = it.PIDN) 
	WHERE it.InstrType = 'UDS Physical' or it.InstrType is null 
	ORDER BY p.pidn, it.DCDate;
      
ELSEIF query_type = 'SimpleAllPatients' THEN
	SELECT p.PIDN, it.InstrType, it.DCDate, v.VType, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it  
	    INNER JOIN visit v ON (it.VID = v.VID) 
		INNER JOIN lq_view_udsphysical i ON (it.InstrID = i.instr_id)  
		RIGHT OUTER JOIN temp_pidn p ON (p.PIDN = it.PIDN)  
	WHERE it.InstrType =  'UDS Physical' or it.InstrType is null 
	ORDER BY P.pidn, it.DCDate;
	
ELSEIF query_type = 'VisitGrouping' THEN
    SELECT l.PIDN, l.link_date, l.link_id, v.VType, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*
    FROM temp_linkdata l LEFT OUTER JOIN (visit v, instrumenttracking i, lq_view_udsphysical d)
      ON (l.link_id=v.vid AND v.vid=i.vid AND i.InstrID=d.instr_id AND
          NOT i.DCStatus = 'Scheduled' AND NOT i.DCStatus like 'Canceled%')
    ORDER BY l.PIDN, l.link_date, l.link_id;
	
ELSEIF query_type = 'PrimaryAll' THEN 
	CREATE TEMPORARY TABLE temp_linkdata as 
		SELECT p.PIDN,i.DCDate as link_date, i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
		FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
			INNER JOIN lq_view_udsphysical d ON (i.InstrID=d.instr_id) 
		WHERE NOT i.DCStatus = 'Scheduled' AND NOT i.DCStatus like 'Canceled%' 
		ORDER BY p.pidn, i.DCDate, i.InstrID ;
	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
	SELECT * from temp_linkdata;
	
ELSEIF query_type = 'PrimaryLatest' THEN  
	CREATE TEMPORARY TABLE temp_linkdata as 
		SELECT p.PIDN, i.DCDate as link_date, i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
		FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
			INNER JOIN lq_view_udsphysical d ON (i.InstrID=d.instr_id) 
		WHERE i.DCDate = (SELECT MAX(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND  
			i2.InstrType = 'UDS Physical' AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%') 
		ORDER BY p.pidn, i.DCDate, i.InstrID;
	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
	SELECT * from temp_linkdata;
	
ELSEIF query_type = 'PrimaryFirst' THEN
	CREATE TEMPORARY TABLE temp_linkdata as 
		SELECT p.PIDN,i.DCDate as link_date, i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.* 
		FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN) 
			INNER JOIN lq_view_udsphysical d ON (i.InstrID=d.instr_id)
		WHERE i.DCDate = (SELECT MIN(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND 
			i2.InstrType = 'UDS Physical' AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%')
		ORDER BY p.pidn, i.InstrID;
	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
	SELECT * from temp_linkdata;
	
ELSEIF query_type IN ('SecondaryAll','SecondaryClosest') THEN
	#Create candidate table with secondary instruments 
	CREATE TEMPORARY TABLE temp_secondary_candidates AS
		SELECT l.PIDN, l.link_date, l.link_id, i2.InstrType, i2.InstrID, DATEDIFF(l.link_date, i2.DCDate) AS Days 
		FROM temp_linkdata l INNER JOIN instrumenttracking i2 ON (i2.PIDN=l.PIDN) 
		WHERE i2.InstrType = 'UDS Physical';
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
		LEFT JOIN lq_view_udsphysical d ON (i.InstrID=d.instr_id) ORDER BY l.pidn, l.link_date, l.link_id;

	DROP TABLE temp_secondary_candidates;

END IF;

END$$

$$
DELIMITER ;




  
-- B4 UDS CDR
-- -----------------------------------------------------
-- view lq_view_udscdr
-- -----------------------------------------------------
DROP VIEW IF EXISTS `lq_view_udscdr`;
CREATE OR REPLACE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `lq_view_udscdr` AS select 
`t2`.`InstrID`,
`t2`.`MEMORY`,
`t2`.`ORIENT`,
`t2`.`JUDGEMENT`,
`t2`.`COMMUN`,
`t2`.`HOMEHOBB`,
`t2`.`PERSCARE`,
`t2`.`CDRSUM`,
`t2`.`CDRGLOB`,
`t2`.`COMPORT`,
`t2`.`CDRLANG`,
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
FROM `instrumenttracking` `t1` join `udscdr` `t2` on (`t1`.`InstrID` = `t2`.`InstrID`) join `udstracking` `t3` on (`t1`.`InstrID` = `t3`.`InstrID`)
WHERE `t1`.`InstrType` = 'UDS CDR';



-- -----------------------------------------------------
-- procedure lq_get_nacc_udscdr
-- -----------------------------------------------------

DROP PROCEDURE IF EXISTS `lq_get_nacc_udscdr`;
DELIMITER $$

CREATE PROCEDURE `lq_get_nacc_udscdr`(user_name varchar(50), host_name varchar(50), query_type varchar(25), query_subtype VARCHAR(25), query_days INTEGER)
BEGIN
CALL lq_audit_event(user_name, host_name, 'crms-nacc.nacc.udscdr', query_type);

IF query_type = 'Simple' THEN
	SELECT p.PIDN, it.InstrType, it.DCDate, v.VType, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it 
	    INNER JOIN visit v ON (it.VID = v.VID) 
		INNER JOIN lq_view_udscdr i ON (it.InstrID = i.instr_id) 
		INNER JOIN temp_pidn p ON (p.PIDN = it.PIDN) 
	WHERE it.InstrType = 'UDS CDR' or it.InstrType is null 
	ORDER BY p.pidn, it.DCDate;
      
ELSEIF query_type = 'SimpleAllPatients' THEN
	SELECT p.PIDN, it.InstrType, it.DCDate, v.VType, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it  
	    INNER JOIN visit v ON (it.VID = v.VID) 
		INNER JOIN lq_view_udscdr i ON (it.InstrID = i.instr_id)  
		RIGHT OUTER JOIN temp_pidn p ON (p.PIDN = it.PIDN)  
	WHERE it.InstrType =  'UDS CDR' or it.InstrType is null 
	ORDER BY P.pidn, it.DCDate;
	
ELSEIF query_type = 'VisitGrouping' THEN
    SELECT l.PIDN, l.link_date, l.link_id, v.VType, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*
    FROM temp_linkdata l LEFT OUTER JOIN (visit v, instrumenttracking i, lq_view_udscdr d)
      ON (l.link_id=v.vid AND v.vid=i.vid AND i.InstrID=d.instr_id AND
          NOT i.DCStatus = 'Scheduled' AND NOT i.DCStatus like 'Canceled%')
    ORDER BY l.PIDN, l.link_date, l.link_id;
	
ELSEIF query_type = 'PrimaryAll' THEN 
	CREATE TEMPORARY TABLE temp_linkdata as 
		SELECT p.PIDN,i.DCDate as link_date, i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
		FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
			INNER JOIN lq_view_udscdr d ON (i.InstrID=d.instr_id) 
		WHERE NOT i.DCStatus = 'Scheduled' AND NOT i.DCStatus like 'Canceled%' 
		ORDER BY p.pidn, i.DCDate, i.InstrID ;
	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
	SELECT * from temp_linkdata;
	
ELSEIF query_type = 'PrimaryLatest' THEN  
	CREATE TEMPORARY TABLE temp_linkdata as 
		SELECT p.PIDN, i.DCDate as link_date, i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
		FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
			INNER JOIN lq_view_udscdr d ON (i.InstrID=d.instr_id) 
		WHERE i.DCDate = (SELECT MAX(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND  
			i2.InstrType = 'UDS CDR' AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%') 
		ORDER BY p.pidn, i.DCDate, i.InstrID;
	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
	SELECT * from temp_linkdata;
	
ELSEIF query_type = 'PrimaryFirst' THEN
	CREATE TEMPORARY TABLE temp_linkdata as 
		SELECT p.PIDN,i.DCDate as link_date, i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.* 
		FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN) 
			INNER JOIN lq_view_udscdr d ON (i.InstrID=d.instr_id)
		WHERE i.DCDate = (SELECT MIN(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND 
			i2.InstrType = 'UDS CDR' AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%')
		ORDER BY p.pidn, i.InstrID;
	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
	SELECT * from temp_linkdata;
	
ELSEIF query_type IN ('SecondaryAll','SecondaryClosest') THEN
	#Create candidate table with secondary instruments 
	CREATE TEMPORARY TABLE temp_secondary_candidates AS
		SELECT l.PIDN, l.link_date, l.link_id, i2.InstrType, i2.InstrID, DATEDIFF(l.link_date, i2.DCDate) AS Days 
		FROM temp_linkdata l INNER JOIN instrumenttracking i2 ON (i2.PIDN=l.PIDN) 
		WHERE i2.InstrType = 'UDS CDR';
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
		LEFT JOIN lq_view_udscdr d ON (i.InstrID=d.instr_id) ORDER BY l.pidn, l.link_date, l.link_id;

	DROP TABLE temp_secondary_candidates;

END IF;

END$$

$$
DELIMITER ;






-- B5 UDS NPI
-- -----------------------------------------------------
-- view lq_view_udsnpi
-- -----------------------------------------------------
DROP VIEW IF EXISTS `lq_view_udsnpi`;
CREATE OR REPLACE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `lq_view_udsnpi` AS select 
`t2`.`InstrID`,
`t2`.`NPIQINF`,
`t2`.`NPIQINFX`,
`t2`.`DEL`,
`t2`.`DELSEV`,
`t2`.`HALL`,
`t2`.`HALLSEV`,
`t2`.`AGIT`,
`t2`.`AGITSEV`,
`t2`.`DEPD`,
`t2`.`DEPDSEV`,
`t2`.`ANX`,
`t2`.`ANXSEV`,
`t2`.`ELAT`,
`t2`.`ELATSEV`,
`t2`.`APA`,
`t2`.`APASEV`,
`t2`.`DISN`,
`t2`.`DISNSEV`,
`t2`.`IRR`,
`t2`.`IRRSEV`,
`t2`.`MOT`,
`t2`.`MOTSEV`,
`t2`.`NITE`,
`t2`.`NITESEV`,
`t2`.`APP`,
`t2`.`APPSEV`,
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
FROM `instrumenttracking` `t1` join `udsnpi` `t2` on (`t1`.`InstrID` = `t2`.`InstrID`) join `udstracking` `t3` on (`t1`.`InstrID` = `t3`.`InstrID`)
WHERE `t1`.`InstrType` = 'UDS NPI';


-- -----------------------------------------------------
-- procedure lq_get_nacc_udsnpi
-- -----------------------------------------------------

DROP PROCEDURE IF EXISTS `lq_get_nacc_udsnpi`;
DELIMITER $$

CREATE PROCEDURE `lq_get_nacc_udsnpi`(user_name varchar(50), host_name varchar(50), query_type varchar(25), query_subtype VARCHAR(25), query_days INTEGER)
BEGIN
CALL lq_audit_event(user_name, host_name, 'crms-nacc.nacc.udsnpi', query_type);

IF query_type = 'Simple' THEN
	SELECT p.PIDN, it.InstrType, it.DCDate, v.VType, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it 
	    INNER JOIN visit v ON (it.VID = v.VID) 
		INNER JOIN lq_view_udsnpi i ON (it.InstrID = i.instr_id) 
		INNER JOIN temp_pidn p ON (p.PIDN = it.PIDN) 
	WHERE it.InstrType = 'UDS NPI' or it.InstrType is null 
	ORDER BY p.pidn, it.DCDate;
      
ELSEIF query_type = 'SimpleAllPatients' THEN
	SELECT p.PIDN, it.InstrType, it.DCDate, v.VType, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it  
	    INNER JOIN visit v ON (it.VID = v.VID) 
		INNER JOIN lq_view_udsnpi i ON (it.InstrID = i.instr_id)  
		RIGHT OUTER JOIN temp_pidn p ON (p.PIDN = it.PIDN)  
	WHERE it.InstrType =  'UDS NPI' or it.InstrType is null 
	ORDER BY P.pidn, it.DCDate;
	
ELSEIF query_type = 'VisitGrouping' THEN
    SELECT l.PIDN, l.link_date, l.link_id, v.VType, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*
    FROM temp_linkdata l LEFT OUTER JOIN (visit v, instrumenttracking i, lq_view_udsnpi d)
      ON (l.link_id=v.vid AND v.vid=i.vid AND i.InstrID=d.instr_id AND
          NOT i.DCStatus = 'Scheduled' AND NOT i.DCStatus like 'Canceled%')
    ORDER BY l.PIDN, l.link_date, l.link_id;
	
ELSEIF query_type = 'PrimaryAll' THEN 
	CREATE TEMPORARY TABLE temp_linkdata as 
		SELECT p.PIDN,i.DCDate as link_date, i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
		FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
			INNER JOIN lq_view_udsnpi d ON (i.InstrID=d.instr_id) 
		WHERE NOT i.DCStatus = 'Scheduled' AND NOT i.DCStatus like 'Canceled%' 
		ORDER BY p.pidn, i.DCDate, i.InstrID ;
	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
	SELECT * from temp_linkdata;
	
ELSEIF query_type = 'PrimaryLatest' THEN  
	CREATE TEMPORARY TABLE temp_linkdata as 
		SELECT p.PIDN, i.DCDate as link_date, i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
		FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
			INNER JOIN lq_view_udsnpi d ON (i.InstrID=d.instr_id) 
		WHERE i.DCDate = (SELECT MAX(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND  
			i2.InstrType = 'UDS NPI' AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%') 
		ORDER BY p.pidn, i.DCDate, i.InstrID;
	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
	SELECT * from temp_linkdata;
	
ELSEIF query_type = 'PrimaryFirst' THEN
	CREATE TEMPORARY TABLE temp_linkdata as 
		SELECT p.PIDN,i.DCDate as link_date, i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.* 
		FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN) 
			INNER JOIN lq_view_udsnpi d ON (i.InstrID=d.instr_id)
		WHERE i.DCDate = (SELECT MIN(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND 
			i2.InstrType = 'UDS NPI' AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%')
		ORDER BY p.pidn, i.InstrID;
	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
	SELECT * from temp_linkdata;
	
ELSEIF query_type IN ('SecondaryAll','SecondaryClosest') THEN
	#Create candidate table with secondary instruments 
	CREATE TEMPORARY TABLE temp_secondary_candidates AS
		SELECT l.PIDN, l.link_date, l.link_id, i2.InstrType, i2.InstrID, DATEDIFF(l.link_date, i2.DCDate) AS Days 
		FROM temp_linkdata l INNER JOIN instrumenttracking i2 ON (i2.PIDN=l.PIDN) 
		WHERE i2.InstrType = 'UDS NPI';
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
		LEFT JOIN lq_view_udsnpi d ON (i.InstrID=d.instr_id) ORDER BY l.pidn, l.link_date, l.link_id;

	DROP TABLE temp_secondary_candidates;

END IF;

END$$

$$
DELIMITER ;




-- B6 UDS GDS
-- -----------------------------------------------------
-- view lq_view_udsgds
-- -----------------------------------------------------
DROP VIEW IF EXISTS `lq_view_udsgds`;
CREATE OR REPLACE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `lq_view_udsgds` AS select 
`t2`.`InstrID`,
`t2`.`NOGDS`,
`t2`.`SATIS`,
`t2`.`DROPACT`,
`t2`.`EMPTY`,
`t2`.`BORED`,
`t2`.`SPIRITS`,
`t2`.`AFRAID`,
`t2`.`HAPPY`,
`t2`.`HELPLESS`,
`t2`.`STAYHOME`,
`t2`.`MEMPROB`,
`t2`.`WONDRFUL`,
`t2`.`WRTHLESS`,
`t2`.`ENERGY`,
`t2`.`HOPELESS`,
`t2`.`BETTER`,
`t2`.`GDS`,
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
FROM `instrumenttracking` `t1` join `udsgds` `t2` on (`t1`.`InstrID` = `t2`.`InstrID`) join `udstracking` `t3` on (`t1`.`InstrID` = `t3`.`InstrID`)
WHERE `t1`.`InstrType` = 'UDS GDS';


-- -----------------------------------------------------
-- procedure lq_get_nacc_udsgds
-- -----------------------------------------------------

DROP PROCEDURE IF EXISTS `lq_get_nacc_udsgds`;
DELIMITER $$

CREATE PROCEDURE `lq_get_nacc_udsgds`(user_name varchar(50), host_name varchar(50), query_type varchar(25), query_subtype VARCHAR(25), query_days INTEGER)
BEGIN
CALL lq_audit_event(user_name, host_name, 'crms-nacc.nacc.udsgds', query_type);

IF query_type = 'Simple' THEN
	SELECT p.PIDN, it.InstrType, it.DCDate, v.VType, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it 
	    INNER JOIN visit v ON (it.VID = v.VID) 
		INNER JOIN lq_view_udsgds i ON (it.InstrID = i.instr_id) 
		INNER JOIN temp_pidn p ON (p.PIDN = it.PIDN) 
	WHERE it.InstrType = 'UDS GDS' or it.InstrType is null 
	ORDER BY p.pidn, it.DCDate;
      
ELSEIF query_type = 'SimpleAllPatients' THEN
	SELECT p.PIDN, it.InstrType, it.DCDate, v.VType, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it  
	    INNER JOIN visit v ON (it.VID = v.VID) 
		INNER JOIN lq_view_udsgds i ON (it.InstrID = i.instr_id)  
		RIGHT OUTER JOIN temp_pidn p ON (p.PIDN = it.PIDN)  
	WHERE it.InstrType =  'UDS GDS' or it.InstrType is null 
	ORDER BY P.pidn, it.DCDate;
	
ELSEIF query_type = 'VisitGrouping' THEN
    SELECT l.PIDN, l.link_date, l.link_id, v.VType, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*
    FROM temp_linkdata l LEFT OUTER JOIN (visit v, instrumenttracking i, lq_view_udsgds d)
      ON (l.link_id=v.vid AND v.vid=i.vid AND i.InstrID=d.instr_id AND
          NOT i.DCStatus = 'Scheduled' AND NOT i.DCStatus like 'Canceled%')
    ORDER BY l.PIDN, l.link_date, l.link_id;
	
ELSEIF query_type = 'PrimaryAll' THEN 
	CREATE TEMPORARY TABLE temp_linkdata as 
		SELECT p.PIDN,i.DCDate as link_date, i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
		FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
			INNER JOIN lq_view_udsgds d ON (i.InstrID=d.instr_id) 
		WHERE NOT i.DCStatus = 'Scheduled' AND NOT i.DCStatus like 'Canceled%' 
		ORDER BY p.pidn, i.DCDate, i.InstrID ;
	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
	SELECT * from temp_linkdata;
	
ELSEIF query_type = 'PrimaryLatest' THEN  
	CREATE TEMPORARY TABLE temp_linkdata as 
		SELECT p.PIDN, i.DCDate as link_date, i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
		FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
			INNER JOIN lq_view_udsgds d ON (i.InstrID=d.instr_id) 
		WHERE i.DCDate = (SELECT MAX(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND  
			i2.InstrType = 'UDS GDS' AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%') 
		ORDER BY p.pidn, i.DCDate, i.InstrID;
	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
	SELECT * from temp_linkdata;
	
ELSEIF query_type = 'PrimaryFirst' THEN
	CREATE TEMPORARY TABLE temp_linkdata as 
		SELECT p.PIDN,i.DCDate as link_date, i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.* 
		FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN) 
			INNER JOIN lq_view_udsgds d ON (i.InstrID=d.instr_id)
		WHERE i.DCDate = (SELECT MIN(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND 
			i2.InstrType = 'UDS GDS' AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%')
		ORDER BY p.pidn, i.InstrID;
	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
	SELECT * from temp_linkdata;
	
ELSEIF query_type IN ('SecondaryAll','SecondaryClosest') THEN
	#Create candidate table with secondary instruments 
	CREATE TEMPORARY TABLE temp_secondary_candidates AS
		SELECT l.PIDN, l.link_date, l.link_id, i2.InstrType, i2.InstrID, DATEDIFF(l.link_date, i2.DCDate) AS Days 
		FROM temp_linkdata l INNER JOIN instrumenttracking i2 ON (i2.PIDN=l.PIDN) 
		WHERE i2.InstrType = 'UDS GDS';
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
		LEFT JOIN lq_view_udsgds d ON (i.InstrID=d.instr_id) ORDER BY l.pidn, l.link_date, l.link_id;

	DROP TABLE temp_secondary_candidates;

END IF;

END$$

$$
DELIMITER ;





-- B7 UDS FAQ
-- -----------------------------------------------------
-- view lq_view_udsfaq
-- -----------------------------------------------------
DROP VIEW IF EXISTS `lq_view_udsfaq`;
CREATE OR REPLACE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `lq_view_udsfaq` AS select 
`t2`.`InstrID`,
`t2`.`BILLS`,
`t2`.`TAXES`,
`t2`.`SHOPPING`,
`t2`.`GAMES`,
`t2`.`STOVE`,
`t2`.`MEALPREP`,
`t2`.`EVENTS`,
`t2`.`PAYATTN`,
`t2`.`REMDATES`,
`t2`.`TRAVEL`,
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
FROM `instrumenttracking` `t1` join `udsfaq` `t2` on (`t1`.`InstrID` = `t2`.`InstrID`) join `udstracking` `t3` on (`t1`.`InstrID` = `t3`.`InstrID`)
WHERE `t1`.`InstrType` = 'UDS FAQ';


-- -----------------------------------------------------
-- procedure lq_get_nacc_udsfaq
-- -----------------------------------------------------

DROP PROCEDURE IF EXISTS `lq_get_nacc_udsfaq`;
DELIMITER $$

CREATE PROCEDURE `lq_get_nacc_udsfaq`(user_name varchar(50), host_name varchar(50), query_type varchar(25), query_subtype VARCHAR(25), query_days INTEGER)
BEGIN
CALL lq_audit_event(user_name, host_name, 'crms-nacc.nacc.udsfaq', query_type);

IF query_type = 'Simple' THEN
	SELECT p.PIDN, it.InstrType, it.DCDate, v.VType, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it 
	    INNER JOIN visit v ON (it.VID = v.VID) 
		INNER JOIN lq_view_udsfaq i ON (it.InstrID = i.instr_id) 
		INNER JOIN temp_pidn p ON (p.PIDN = it.PIDN) 
	WHERE it.InstrType = 'UDS FAQ' or it.InstrType is null 
	ORDER BY p.pidn, it.DCDate;
      
ELSEIF query_type = 'SimpleAllPatients' THEN
	SELECT p.PIDN, it.InstrType, it.DCDate, v.VType, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it  
	    INNER JOIN visit v ON (it.VID = v.VID) 
		INNER JOIN lq_view_udsfaq i ON (it.InstrID = i.instr_id)  
		RIGHT OUTER JOIN temp_pidn p ON (p.PIDN = it.PIDN)  
	WHERE it.InstrType =  'UDS FAQ' or it.InstrType is null 
	ORDER BY P.pidn, it.DCDate;
	
ELSEIF query_type = 'VisitGrouping' THEN
    SELECT l.PIDN, l.link_date, l.link_id, v.VType, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*
    FROM temp_linkdata l LEFT OUTER JOIN (visit v, instrumenttracking i, lq_view_udsfaq d)
      ON (l.link_id=v.vid AND v.vid=i.vid AND i.InstrID=d.instr_id AND
          NOT i.DCStatus = 'Scheduled' AND NOT i.DCStatus like 'Canceled%')
    ORDER BY l.PIDN, l.link_date, l.link_id;
	
ELSEIF query_type = 'PrimaryAll' THEN 
	CREATE TEMPORARY TABLE temp_linkdata as 
		SELECT p.PIDN,i.DCDate as link_date, i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
		FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
			INNER JOIN lq_view_udsfaq d ON (i.InstrID=d.instr_id) 
		WHERE NOT i.DCStatus = 'Scheduled' AND NOT i.DCStatus like 'Canceled%' 
		ORDER BY p.pidn, i.DCDate, i.InstrID ;
	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
	SELECT * from temp_linkdata;
	
ELSEIF query_type = 'PrimaryLatest' THEN  
	CREATE TEMPORARY TABLE temp_linkdata as 
		SELECT p.PIDN, i.DCDate as link_date, i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
		FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
			INNER JOIN lq_view_udsfaq d ON (i.InstrID=d.instr_id) 
		WHERE i.DCDate = (SELECT MAX(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND  
			i2.InstrType = 'UDS FAQ' AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%') 
		ORDER BY p.pidn, i.DCDate, i.InstrID;
	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
	SELECT * from temp_linkdata;
	
ELSEIF query_type = 'PrimaryFirst' THEN
	CREATE TEMPORARY TABLE temp_linkdata as 
		SELECT p.PIDN,i.DCDate as link_date, i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.* 
		FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN) 
			INNER JOIN lq_view_udsfaq d ON (i.InstrID=d.instr_id)
		WHERE i.DCDate = (SELECT MIN(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND 
			i2.InstrType = 'UDS FAQ' AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%')
		ORDER BY p.pidn, i.InstrID;
	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
	SELECT * from temp_linkdata;
	
ELSEIF query_type IN ('SecondaryAll','SecondaryClosest') THEN
	#Create candidate table with secondary instruments 
	CREATE TEMPORARY TABLE temp_secondary_candidates AS
		SELECT l.PIDN, l.link_date, l.link_id, i2.InstrType, i2.InstrID, DATEDIFF(l.link_date, i2.DCDate) AS Days 
		FROM temp_linkdata l INNER JOIN instrumenttracking i2 ON (i2.PIDN=l.PIDN) 
		WHERE i2.InstrType = 'UDS FAQ';
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
		LEFT JOIN lq_view_udsfaq d ON (i.InstrID=d.instr_id) ORDER BY l.pidn, l.link_date, l.link_id;

	DROP TABLE temp_secondary_candidates;

END IF;

END$$

$$
DELIMITER ;






-- B8 UDS Appraisal
-- -----------------------------------------------------
-- view lq_view_udsappraisal
-- -----------------------------------------------------
DROP VIEW IF EXISTS `lq_view_udsappraisal`;
CREATE OR REPLACE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `lq_view_udsappraisal` AS select 
`t2`.`InstrID`,
`t2`.`NORMAL`,
`t2`.`FOCLDEF`,
`t2`.`GAITDIS`,
`t2`.`EYEMOVE`,
`t2`.`NORMEXAM`,
`t2`.`PARKSIGN`,
`t2`.`RESTTRL`,
`t2`.`RESTTRR`,
`t2`.`SLOWINGL`,
`t2`.`SLOWINGR`,
`t2`.`RIGIDL`,
`t2`.`RIGIDR`,
`t2`.`BRADY`,
`t2`.`PARKGAIT`,
`t2`.`POSTINST`,
`t2`.`CVDSIGNS`,
`t2`.`CORTDEF`,
`t2`.`SIVDFIND`,
`t2`.`CVDMOTL`,
`t2`.`CVDMOTR`,
`t2`.`CORTVISL`,
`t2`.`CORTVISR`,
`t2`.`SOMATL`,
`t2`.`SOMATR`,
`t2`.`POSTCORT`,
`t2`.`PSPCBS`,
`t2`.`EYEPSP`,
`t2`.`DYSPSP`,
`t2`.`AXIALPSP`,
`t2`.`GAITPSP`,
`t2`.`APRAXSP`,
`t2`.`APRAXL`,
`t2`.`APRAXR`,
`t2`.`CORTSENL`,
`t2`.`CORTSENR`,
`t2`.`ATAXL`,
`t2`.`ATAXR`,
`t2`.`ALIENLML`,
`t2`.`ALIENLMR`,
`t2`.`DYSTONL`,
`t2`.`DYSTONR`,
`t2`.`MYOCLLT`,
`t2`.`MYOCLRT`,
`t2`.`ALSFIND`,
`t2`.`GAITNPH`,
`t2`.`OTHNEUR`,
`t2`.`OTHNEURX`,
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
FROM `instrumenttracking` `t1` join `udsappraisal` `t2` on (`t1`.`InstrID` = `t2`.`InstrID`) join `udstracking` `t3` on (`t1`.`InstrID` = `t3`.`InstrID`)
WHERE `t1`.`InstrType` = 'UDS Appraisal';


-- -----------------------------------------------------
-- procedure lq_get_nacc_udsappraisal
-- -----------------------------------------------------

DROP PROCEDURE IF EXISTS `lq_get_nacc_udsappraisal`;
DELIMITER $$

CREATE PROCEDURE `lq_get_nacc_udsappraisal`(user_name varchar(50), host_name varchar(50), query_type varchar(25), query_subtype VARCHAR(25), query_days INTEGER)
BEGIN
CALL lq_audit_event(user_name, host_name, 'crms-nacc.nacc.udsappraisal', query_type);

IF query_type = 'Simple' THEN
	SELECT p.PIDN, it.InstrType, it.DCDate, v.VType, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it 
	    INNER JOIN visit v ON (it.VID = v.VID) 
		INNER JOIN lq_view_udsappraisal i ON (it.InstrID = i.instr_id) 
		INNER JOIN temp_pidn p ON (p.PIDN = it.PIDN) 
	WHERE it.InstrType = 'UDS Appraisal' or it.InstrType is null 
	ORDER BY p.pidn, it.DCDate;
      
ELSEIF query_type = 'SimpleAllPatients' THEN
	SELECT p.PIDN, it.InstrType, it.DCDate, v.VType, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it  
	    INNER JOIN visit v ON (it.VID = v.VID) 
		INNER JOIN lq_view_udsappraisal i ON (it.InstrID = i.instr_id)  
		RIGHT OUTER JOIN temp_pidn p ON (p.PIDN = it.PIDN)  
	WHERE it.InstrType =  'UDS Appraisal' or it.InstrType is null 
	ORDER BY P.pidn, it.DCDate;
	
ELSEIF query_type = 'VisitGrouping' THEN
    SELECT l.PIDN, l.link_date, l.link_id, v.VType, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*
    FROM temp_linkdata l LEFT OUTER JOIN (visit v, instrumenttracking i, lq_view_udsappraisal d)
      ON (l.link_id=v.vid AND v.vid=i.vid AND i.InstrID=d.instr_id AND
          NOT i.DCStatus = 'Scheduled' AND NOT i.DCStatus like 'Canceled%')
    ORDER BY l.PIDN, l.link_date, l.link_id;
	
ELSEIF query_type = 'PrimaryAll' THEN 
	CREATE TEMPORARY TABLE temp_linkdata as 
		SELECT p.PIDN,i.DCDate as link_date, i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
		FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
			INNER JOIN lq_view_udsappraisal d ON (i.InstrID=d.instr_id) 
		WHERE NOT i.DCStatus = 'Scheduled' AND NOT i.DCStatus like 'Canceled%' 
		ORDER BY p.pidn, i.DCDate, i.InstrID ;
	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
	SELECT * from temp_linkdata;
	
ELSEIF query_type = 'PrimaryLatest' THEN  
	CREATE TEMPORARY TABLE temp_linkdata as 
		SELECT p.PIDN, i.DCDate as link_date, i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
		FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
			INNER JOIN lq_view_udsappraisal d ON (i.InstrID=d.instr_id) 
		WHERE i.DCDate = (SELECT MAX(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND  
			i2.InstrType = 'UDS Appraisal' AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%') 
		ORDER BY p.pidn, i.DCDate, i.InstrID;
	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
	SELECT * from temp_linkdata;
	
ELSEIF query_type = 'PrimaryFirst' THEN
	CREATE TEMPORARY TABLE temp_linkdata as 
		SELECT p.PIDN,i.DCDate as link_date, i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.* 
		FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN) 
			INNER JOIN lq_view_udsappraisal d ON (i.InstrID=d.instr_id)
		WHERE i.DCDate = (SELECT MIN(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND 
			i2.InstrType = 'UDS Appraisal' AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%')
		ORDER BY p.pidn, i.InstrID;
	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
	SELECT * from temp_linkdata;
	
ELSEIF query_type IN ('SecondaryAll','SecondaryClosest') THEN
	#Create candidate table with secondary instruments 
	CREATE TEMPORARY TABLE temp_secondary_candidates AS
		SELECT l.PIDN, l.link_date, l.link_id, i2.InstrType, i2.InstrID, DATEDIFF(l.link_date, i2.DCDate) AS Days 
		FROM temp_linkdata l INNER JOIN instrumenttracking i2 ON (i2.PIDN=l.PIDN) 
		WHERE i2.InstrType = 'UDS Appraisal';
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
		LEFT JOIN lq_view_udsappraisal d ON (i.InstrID=d.instr_id) ORDER BY l.pidn, l.link_date, l.link_id;

	DROP TABLE temp_secondary_candidates;

END IF;

END$$

$$
DELIMITER ;





  
-- B9 UDS Symptoms Onset
-- -----------------------------------------------------
-- view lq_view_udssymptomsonset
-- -----------------------------------------------------
DROP VIEW IF EXISTS `lq_view_udssymptomsonset`;
CREATE OR REPLACE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `lq_view_udssymptomsonset` AS select 
`t2`.`InstrID`,
`t2`.`B9CHG`,
`t2`.`DECSUB`,
`t2`.`DECIN`,
`t2`.`DECCLIN`,
`t2`.`DECCLCOG`,
`t2`.`COGMEM`,
`t2`.`COGORI`,
`t2`.`COGJUDG`,
`t2`.`COGLANG`,
`t2`.`COGVIS`,
`t2`.`COGATTN`,
`t2`.`COGFLUC`,
`t2`.`COGFLAGO`,
`t2`.`COGOTHR`,
`t2`.`COGOTHRX`,
`t2`.`COGFRST`,
`t2`.`COGFRSTX`,
`t2`.`COGFPRED`,
`t2`.`COGFPREX`,
`t2`.`COGMODE`,
`t2`.`COGMODEX`,
`t2`.`DECAGE`,
`t2`.`DECCLBE`,
`t2`.`BEAPATHY`,
`t2`.`BEDEP`,
`t2`.`BEVHALL`,
`t2`.`BEVWELL`,
`t2`.`BEVHAGO`,
`t2`.`BEAHALL`,
`t2`.`BEDEL`,
`t2`.`BEDISIN`,
`t2`.`BEIRRIT`,
`t2`.`BEAGIT`,
`t2`.`BEPERCH`,
`t2`.`BEREM`,
`t2`.`BEREMAGO`,
`t2`.`BEANX`,
`t2`.`BEOTHR`,
`t2`.`BEOTHRX`,
`t2`.`BEFRST`,
`t2`.`BEFRSTX`,
`t2`.`BEFPRED`,
`t2`.`BEFPREDX`,
`t2`.`BEMODE`,
`t2`.`BEMODEX`,
`t2`.`BEAGE`,
`t2`.`DECCLMOT`,
`t2`.`MOGAIT`,
`t2`.`MOFALLS`,
`t2`.`MOTREM`,
`t2`.`MOSLOW`,
`t2`.`MOFRST`,
`t2`.`MOMODE`,
`t2`.`MOMODEX`,
`t2`.`MOMOPARK`,
`t2`.`PARKAGE`,
`t2`.`MOMOALS`,
`t2`.`ALSAGE`,
`t2`.`MOAGE`,
`t2`.`COURSE`,
`t2`.`FRSTCHG`,
`t2`.`LBDEVAL`,
`t2`.`FTLDEVAL`,
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
FROM `instrumenttracking` `t1` join `udssymptomsonset` `t2` on (`t1`.`InstrID` = `t2`.`InstrID`) join `udstracking` `t3` on (`t1`.`InstrID` = `t3`.`InstrID`)
WHERE `t1`.`InstrType` = 'UDS Symptoms Onset';


-- -----------------------------------------------------
-- procedure lq_get_nacc_udssymptomsonset
-- -----------------------------------------------------

DROP PROCEDURE IF EXISTS `lq_get_nacc_udssymptomsonset`;
DELIMITER $$

CREATE PROCEDURE `lq_get_nacc_udssymptomsonset`(user_name varchar(50), host_name varchar(50), query_type varchar(25), query_subtype VARCHAR(25), query_days INTEGER)
BEGIN
CALL lq_audit_event(user_name, host_name, 'crms-nacc.nacc.udssymptomsonset', query_type);

IF query_type = 'Simple' THEN
	SELECT p.PIDN, it.InstrType, it.DCDate, v.VType, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it 
	    INNER JOIN visit v ON (it.VID = v.VID) 
		INNER JOIN lq_view_udssymptomsonset i ON (it.InstrID = i.instr_id) 
		INNER JOIN temp_pidn p ON (p.PIDN = it.PIDN) 
	WHERE it.InstrType = 'UDS Symptoms Onset' or it.InstrType is null 
	ORDER BY p.pidn, it.DCDate;
      
ELSEIF query_type = 'SimpleAllPatients' THEN
	SELECT p.PIDN, it.InstrType, it.DCDate, v.VType, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it  
	    INNER JOIN visit v ON (it.VID = v.VID) 
		INNER JOIN lq_view_udssymptomsonset i ON (it.InstrID = i.instr_id)  
		RIGHT OUTER JOIN temp_pidn p ON (p.PIDN = it.PIDN)  
	WHERE it.InstrType =  'UDS Symptoms Onset' or it.InstrType is null 
	ORDER BY P.pidn, it.DCDate;
	
ELSEIF query_type = 'VisitGrouping' THEN
    SELECT l.PIDN, l.link_date, l.link_id, v.VType, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*
    FROM temp_linkdata l LEFT OUTER JOIN (visit v, instrumenttracking i, lq_view_udssymptomsonset d)
      ON (l.link_id=v.vid AND v.vid=i.vid AND i.InstrID=d.instr_id AND
          NOT i.DCStatus = 'Scheduled' AND NOT i.DCStatus like 'Canceled%')
    ORDER BY l.PIDN, l.link_date, l.link_id;
	
ELSEIF query_type = 'PrimaryAll' THEN 
	CREATE TEMPORARY TABLE temp_linkdata as 
		SELECT p.PIDN,i.DCDate as link_date, i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
		FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
			INNER JOIN lq_view_udssymptomsonset d ON (i.InstrID=d.instr_id) 
		WHERE NOT i.DCStatus = 'Scheduled' AND NOT i.DCStatus like 'Canceled%' 
		ORDER BY p.pidn, i.DCDate, i.InstrID ;
	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
	SELECT * from temp_linkdata;
	
ELSEIF query_type = 'PrimaryLatest' THEN  
	CREATE TEMPORARY TABLE temp_linkdata as 
		SELECT p.PIDN, i.DCDate as link_date, i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
		FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
			INNER JOIN lq_view_udssymptomsonset d ON (i.InstrID=d.instr_id) 
		WHERE i.DCDate = (SELECT MAX(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND  
			i2.InstrType = 'UDS Symptoms Onset' AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%') 
		ORDER BY p.pidn, i.DCDate, i.InstrID;
	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
	SELECT * from temp_linkdata;
	
ELSEIF query_type = 'PrimaryFirst' THEN
	CREATE TEMPORARY TABLE temp_linkdata as 
		SELECT p.PIDN,i.DCDate as link_date, i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.* 
		FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN) 
			INNER JOIN lq_view_udssymptomsonset d ON (i.InstrID=d.instr_id)
		WHERE i.DCDate = (SELECT MIN(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND 
			i2.InstrType = 'UDS Symptoms Onset' AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%')
		ORDER BY p.pidn, i.InstrID;
	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
	SELECT * from temp_linkdata;
	
ELSEIF query_type IN ('SecondaryAll','SecondaryClosest') THEN
	#Create candidate table with secondary instruments 
	CREATE TEMPORARY TABLE temp_secondary_candidates AS
		SELECT l.PIDN, l.link_date, l.link_id, i2.InstrType, i2.InstrID, DATEDIFF(l.link_date, i2.DCDate) AS Days 
		FROM temp_linkdata l INNER JOIN instrumenttracking i2 ON (i2.PIDN=l.PIDN) 
		WHERE i2.InstrType = 'UDS Symptoms Onset';
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
		LEFT JOIN lq_view_udssymptomsonset d ON (i.InstrID=d.instr_id) ORDER BY l.pidn, l.link_date, l.link_id;

	DROP TABLE temp_secondary_candidates;

END IF;

END$$

$$
DELIMITER ;




-- C2 UDS Neuropsych Moca
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
-- procedure lq_get_nacc_udsneuropsychmoca
-- -----------------------------------------------------

DROP PROCEDURE IF EXISTS `lq_get_nacc_udsneuropsychmoca`;
DELIMITER $$

CREATE PROCEDURE `lq_get_nacc_udsneuropsychmoca`(user_name varchar(50), host_name varchar(50), query_type varchar(25), query_subtype VARCHAR(25), query_days INTEGER)
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




-- D1 UDS Diagnosis
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

DROP PROCEDURE IF EXISTS `lq_get_nacc_udsdiagnosis`;
DELIMITER $$

CREATE PROCEDURE `lq_get_nacc_udsdiagnosis`(user_name varchar(50), host_name varchar(50), query_type varchar(25), query_subtype VARCHAR(25), query_days INTEGER)
BEGIN
CALL lq_audit_event(user_name, host_name, 'crms-nacc.nacc.udsdiagnosis', query_type);

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



-- D2 UDS Medical Conditions
-- -----------------------------------------------------
-- view lq_view_udsmedicalconditions
-- -----------------------------------------------------
DROP VIEW IF EXISTS `lq_view_udsmedicalconditions`;
CREATE OR REPLACE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `lq_view_udsmedicalconditions` AS select 
`t2`.`InstrID`,
`t2`.`CANCER`,
`t2`.`CANCSITE`,
`t2`.`DIABET`,
`t2`.`MYOINF`,
`t2`.`CONGHRT`,
`t2`.`AFIBRILL`,
`t2`.`HYPERT`,
`t2`.`ANGINA`,
`t2`.`HYPCHOL`,
`t2`.`VB12DEF`,
`t2`.`THYDIS`,
`t2`.`ARTH`,
`t2`.`ARTYPE`,
`t2`.`ARTYPEX`,
`t2`.`ARTUPEX`,
`t2`.`ARTLOEX`,
`t2`.`ARTSPIN`,
`t2`.`ARTUNKN`,
`t2`.`URINEINC`,
`t2`.`BOWLINC`,
`t2`.`SLEEPAP`,
`t2`.`REMDIS`,
`t2`.`HYPOSOM`,
`t2`.`SLEEPOTH`,
`t2`.`SLEEPOTX`,
`t2`.`ANGIOCP`,
`t2`.`ANGIOPCI`,
`t2`.`PACEMAKE`,
`t2`.`HVALVE`,
`t2`.`ANTIENC`,
`t2`.`ANTIENCX`,
`t2`.`OTHCOND`,
`t2`.`OTHCONDX`,
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
FROM `instrumenttracking` `t1` join `udsmedicalconditions` `t2` on (`t1`.`InstrID` = `t2`.`InstrID`) join `udstracking` `t3` on (`t1`.`InstrID` = `t3`.`InstrID`)
WHERE `t1`.`InstrType` = 'UDS Medical Conditions';


-- -----------------------------------------------------
-- procedure lq_get_nacc_udsmedicalconditions3
-- -----------------------------------------------------

DROP PROCEDURE IF EXISTS `lq_get_nacc_udsmedicalconditions`;
DELIMITER $$

CREATE PROCEDURE `lq_get_nacc_udsmedicalconditions`(user_name varchar(50), host_name varchar(50), query_type varchar(25), query_subtype VARCHAR(25), query_days INTEGER)
BEGIN
CALL lq_audit_event(user_name, host_name, 'crms-nacc.nacc.udsmedicalconditions', query_type);

IF query_type = 'Simple' THEN
	SELECT p.PIDN, it.InstrType, it.DCDate, v.VType, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it 
	    INNER JOIN visit v ON (it.VID = v.VID) 
		INNER JOIN lq_view_udsmedicalconditions i ON (it.InstrID = i.instr_id) 
		INNER JOIN temp_pidn p ON (p.PIDN = it.PIDN) 
	WHERE it.InstrType = 'UDS Medical Conditions' or it.InstrType is null 
	ORDER BY p.pidn, it.DCDate;
      
ELSEIF query_type = 'SimpleAllPatients' THEN
	SELECT p.PIDN, it.InstrType, it.DCDate, v.VType, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it  
	    INNER JOIN visit v ON (it.VID = v.VID) 
		INNER JOIN lq_view_udsmedicalconditions i ON (it.InstrID = i.instr_id)  
		RIGHT OUTER JOIN temp_pidn p ON (p.PIDN = it.PIDN)  
	WHERE it.InstrType =  'UDS Medical Conditions' or it.InstrType is null 
	ORDER BY P.pidn, it.DCDate;
	
ELSEIF query_type = 'VisitGrouping' THEN
    SELECT l.PIDN, l.link_date, l.link_id, v.VType, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*
    FROM temp_linkdata l LEFT OUTER JOIN (visit v, instrumenttracking i, lq_view_udsmedicalconditions d)
      ON (l.link_id=v.vid AND v.vid=i.vid AND i.InstrID=d.instr_id AND
          NOT i.DCStatus = 'Scheduled' AND NOT i.DCStatus like 'Canceled%')
    ORDER BY l.PIDN, l.link_date, l.link_id;
	
ELSEIF query_type = 'PrimaryAll' THEN 
	CREATE TEMPORARY TABLE temp_linkdata as 
		SELECT p.PIDN,i.DCDate as link_date, i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
		FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
			INNER JOIN lq_view_udsmedicalconditions d ON (i.InstrID=d.instr_id) 
		WHERE NOT i.DCStatus = 'Scheduled' AND NOT i.DCStatus like 'Canceled%' 
		ORDER BY p.pidn, i.DCDate, i.InstrID ;
	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
	SELECT * from temp_linkdata;
	
ELSEIF query_type = 'PrimaryLatest' THEN  
	CREATE TEMPORARY TABLE temp_linkdata as 
		SELECT p.PIDN, i.DCDate as link_date, i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
		FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
			INNER JOIN lq_view_udsmedicalconditions d ON (i.InstrID=d.instr_id) 
		WHERE i.DCDate = (SELECT MAX(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND  
			i2.InstrType = 'UDS Medical Conditions' AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%') 
		ORDER BY p.pidn, i.DCDate, i.InstrID;
	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
	SELECT * from temp_linkdata;
	
ELSEIF query_type = 'PrimaryFirst' THEN
	CREATE TEMPORARY TABLE temp_linkdata as 
		SELECT p.PIDN,i.DCDate as link_date, i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.* 
		FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN) 
			INNER JOIN lq_view_udsmedicalconditions d ON (i.InstrID=d.instr_id)
		WHERE i.DCDate = (SELECT MIN(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND 
			i2.InstrType = 'UDS Medical Conditions' AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%')
		ORDER BY p.pidn, i.InstrID;
	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
	SELECT * from temp_linkdata;
	
ELSEIF query_type IN ('SecondaryAll','SecondaryClosest') THEN
	#Create candidate table with secondary instruments 
	CREATE TEMPORARY TABLE temp_secondary_candidates AS
		SELECT l.PIDN, l.link_date, l.link_id, i2.InstrType, i2.InstrID, DATEDIFF(l.link_date, i2.DCDate) AS Days 
		FROM temp_linkdata l INNER JOIN instrumenttracking i2 ON (i2.PIDN=l.PIDN) 
		WHERE i2.InstrType = 'UDS Medical Conditions';
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
		LEFT JOIN lq_view_udsmedicalconditions d ON (i.InstrID=d.instr_id) ORDER BY l.pidn, l.link_date, l.link_id;

	DROP TABLE temp_secondary_candidates;

END IF;

END$$

$$
DELIMITER ;




-- Z1 UDS Form Checklist
-- -----------------------------------------------------
-- view lq_view_udsformchecklist
-- -----------------------------------------------------
DROP VIEW IF EXISTS `lq_view_udsformchecklist`;
CREATE OR REPLACE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `lq_view_udsformchecklist` AS select 
`t2`.`InstrID`,
`t2`.`A2SUB`,
`t2`.`A2NOT`,
`t2`.`A2COMM`,
`t2`.`A3SUB`,
`t2`.`A3NOT`,
`t2`.`A3COMM`,
`t2`.`A4SUB`,
`t2`.`A4NOT`,
`t2`.`A4COMM`,
`t2`.`B1SUB`,
`t2`.`B1NOT`,
`t2`.`B1COMM`,
`t2`.`B2SUB`,
`t2`.`B2NOT`,
`t2`.`B2COMM`,
`t2`.`B3SUB`,
`t2`.`B3NOT`,
`t2`.`B3COMM`,
`t2`.`B5SUB`,
`t2`.`B5NOT`,
`t2`.`B5COMM`,
`t2`.`B6SUB`,
`t2`.`B6NOT`,
`t2`.`B6COMM`,
`t2`.`B7SUB`,
`t2`.`B7NOT`,
`t2`.`B7COMM`,
`t2`.`B8SUB`,
`t2`.`B8NOT`,
`t2`.`B8COMM`,
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
FROM `instrumenttracking` `t1` join `udsformchecklist` `t2` on (`t1`.`InstrID` = `t2`.`InstrID`) join `udstracking` `t3` on (`t1`.`InstrID` = `t3`.`InstrID`)
WHERE `t1`.`InstrType` = 'UDS Form Checklist';


-- -----------------------------------------------------
-- procedure lq_get_nacc_udsformchecklist
-- -----------------------------------------------------

DROP PROCEDURE IF EXISTS `lq_get_nacc_udsformchecklist`;
DELIMITER $$

CREATE PROCEDURE `lq_get_nacc_udsformchecklist`(user_name varchar(50), host_name varchar(50), query_type varchar(25), query_subtype VARCHAR(25), query_days INTEGER)
BEGIN
CALL lq_audit_event(user_name, host_name, 'crms-nacc.nacc.udsformchecklist', query_type);

IF query_type = 'Simple' THEN
	SELECT p.PIDN, it.InstrType, it.DCDate, v.VType, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it 
	    INNER JOIN visit v ON (it.VID = v.VID) 
		INNER JOIN lq_view_udsformchecklist i ON (it.InstrID = i.instr_id) 
		INNER JOIN temp_pidn p ON (p.PIDN = it.PIDN) 
	WHERE it.InstrType = 'UDS Form Checklist' or it.InstrType is null 
	ORDER BY p.pidn, it.DCDate;
      
ELSEIF query_type = 'SimpleAllPatients' THEN
	SELECT p.PIDN, it.InstrType, it.DCDate, v.VType, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it  
	    INNER JOIN visit v ON (it.VID = v.VID) 
		INNER JOIN lq_view_udsformchecklist i ON (it.InstrID = i.instr_id)  
		RIGHT OUTER JOIN temp_pidn p ON (p.PIDN = it.PIDN)  
	WHERE it.InstrType =  'UDS Form Checklist' or it.InstrType is null 
	ORDER BY P.pidn, it.DCDate;
	
ELSEIF query_type = 'VisitGrouping' THEN
    SELECT l.PIDN, l.link_date, l.link_id, v.VType, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*
    FROM temp_linkdata l LEFT OUTER JOIN (visit v, instrumenttracking i, lq_view_udsformchecklist d)
      ON (l.link_id=v.vid AND v.vid=i.vid AND i.InstrID=d.instr_id AND
          NOT i.DCStatus = 'Scheduled' AND NOT i.DCStatus like 'Canceled%')
    ORDER BY l.PIDN, l.link_date, l.link_id;
	
ELSEIF query_type = 'PrimaryAll' THEN 
	CREATE TEMPORARY TABLE temp_linkdata as 
		SELECT p.PIDN,i.DCDate as link_date, i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
		FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
			INNER JOIN lq_view_udsformchecklist d ON (i.InstrID=d.instr_id) 
		WHERE NOT i.DCStatus = 'Scheduled' AND NOT i.DCStatus like 'Canceled%' 
		ORDER BY p.pidn, i.DCDate, i.InstrID ;
	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
	SELECT * from temp_linkdata;
	
ELSEIF query_type = 'PrimaryLatest' THEN  
	CREATE TEMPORARY TABLE temp_linkdata as 
		SELECT p.PIDN, i.DCDate as link_date, i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
		FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
			INNER JOIN lq_view_udsformchecklist d ON (i.InstrID=d.instr_id) 
		WHERE i.DCDate = (SELECT MAX(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND  
			i2.InstrType = 'UDS Form Checklist' AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%') 
		ORDER BY p.pidn, i.DCDate, i.InstrID;
	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
	SELECT * from temp_linkdata;
	
ELSEIF query_type = 'PrimaryFirst' THEN
	CREATE TEMPORARY TABLE temp_linkdata as 
		SELECT p.PIDN,i.DCDate as link_date, i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.* 
		FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN) 
			INNER JOIN lq_view_udsformchecklist d ON (i.InstrID=d.instr_id)
		WHERE i.DCDate = (SELECT MIN(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND 
			i2.InstrType = 'UDS Form Checklist' AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%')
		ORDER BY p.pidn, i.InstrID;
	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
	SELECT * from temp_linkdata;
	
ELSEIF query_type IN ('SecondaryAll','SecondaryClosest') THEN
	#Create candidate table with secondary instruments 
	CREATE TEMPORARY TABLE temp_secondary_candidates AS
		SELECT l.PIDN, l.link_date, l.link_id, i2.InstrType, i2.InstrID, DATEDIFF(l.link_date, i2.DCDate) AS Days 
		FROM temp_linkdata l INNER JOIN instrumenttracking i2 ON (i2.PIDN=l.PIDN) 
		WHERE i2.InstrType = 'UDS Form Checklist';
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
		LEFT JOIN lq_view_udsformchecklist d ON (i.InstrID=d.instr_id) ORDER BY l.pidn, l.link_date, l.link_id;

	DROP TABLE temp_secondary_candidates;

END IF;

END$$

$$
DELIMITER ;





-- M1 UDS Milestone
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
-- procedure lq_get_nacc_udsmilestone
-- -----------------------------------------------------

DROP PROCEDURE IF EXISTS `lq_get_nacc_udsmilestone`;
DELIMITER $$

CREATE PROCEDURE `lq_get_nacc_udsmilestone`(user_name varchar(50), host_name varchar(50), query_type varchar(25), query_subtype VARCHAR(25), query_days INTEGER)
BEGIN
CALL lq_audit_event(user_name, host_name, 'crms-nacc.nacc.udsmilestone', query_type);

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




-- T1: UDS Phone Inclusion
-- -----------------------------------------------------
-- view lq_view_udsphoneinclusion
-- -----------------------------------------------------
DROP VIEW IF EXISTS `lq_view_udsphoneinclusion`;
CREATE OR REPLACE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `lq_view_udsphoneinclusion` AS select 
`t2`.`InstrID`,
`t2`.`TELCOG`,
`t2`.`TELILL`,
`t2`.`TELHOME`,
`t2`.`TELREFU`,
`t2`.`TELOTHR`,
`t2`.`TELOTHRX`,
`t2`.`TELMILE`,
`t2`.`TELINPER`,
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
FROM `instrumenttracking` `t1` join `udsphoneinclusion` `t2` on (`t1`.`InstrID` = `t2`.`InstrID`) join `udstracking` `t3` on (`t1`.`InstrID` = `t3`.`InstrID`)
WHERE `t1`.`InstrType` = 'UDS Phone Inclusion';


-- -----------------------------------------------------
-- procedure lq_get_nacc_udsphoneinclusion
-- -----------------------------------------------------

DROP PROCEDURE IF EXISTS `lq_get_nacc_udsphoneinclusion`;
DELIMITER $$

CREATE PROCEDURE `lq_get_nacc_udsphoneinclusion`(user_name varchar(50), host_name varchar(50), query_type varchar(25), query_subtype VARCHAR(25), query_days INTEGER)
BEGIN
CALL lq_audit_event(user_name, host_name, 'crms-nacc.nacc.udsphoneinclusion', query_type);

IF query_type = 'Simple' THEN
	SELECT p.PIDN, it.InstrType, it.DCDate, v.VType, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it 
	    INNER JOIN visit v ON (it.VID = v.VID) 
		INNER JOIN lq_view_udsphoneinclusion i ON (it.InstrID = i.instr_id) 
		INNER JOIN temp_pidn p ON (p.PIDN = it.PIDN) 
	WHERE it.InstrType = 'UDS Phone Inclusion' or it.InstrType is null 
	ORDER BY p.pidn, it.DCDate;
      
ELSEIF query_type = 'SimpleAllPatients' THEN
	SELECT p.PIDN, it.InstrType, it.DCDate, v.VType, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it  
	    INNER JOIN visit v ON (it.VID = v.VID) 
		INNER JOIN lq_view_udsphoneinclusion i ON (it.InstrID = i.instr_id)  
		RIGHT OUTER JOIN temp_pidn p ON (p.PIDN = it.PIDN)  
	WHERE it.InstrType =  'UDS Phone Inclusion' or it.InstrType is null 
	ORDER BY P.pidn, it.DCDate;
	
ELSEIF query_type = 'VisitGrouping' THEN
    SELECT l.PIDN, l.link_date, l.link_id, v.VType, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*
    FROM temp_linkdata l LEFT OUTER JOIN (visit v, instrumenttracking i, lq_view_udsphoneinclusion d)
      ON (l.link_id=v.vid AND v.vid=i.vid AND i.InstrID=d.instr_id AND
          NOT i.DCStatus = 'Scheduled' AND NOT i.DCStatus like 'Canceled%')
    ORDER BY l.PIDN, l.link_date, l.link_id;
	
ELSEIF query_type = 'PrimaryAll' THEN 
	CREATE TEMPORARY TABLE temp_linkdata as 
		SELECT p.PIDN,i.DCDate as link_date, i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
		FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
			INNER JOIN lq_view_udsphoneinclusion d ON (i.InstrID=d.instr_id) 
		WHERE NOT i.DCStatus = 'Scheduled' AND NOT i.DCStatus like 'Canceled%' 
		ORDER BY p.pidn, i.DCDate, i.InstrID ;
	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
	SELECT * from temp_linkdata;
	
ELSEIF query_type = 'PrimaryLatest' THEN  
	CREATE TEMPORARY TABLE temp_linkdata as 
		SELECT p.PIDN, i.DCDate as link_date, i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
		FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
			INNER JOIN lq_view_udsphoneinclusion d ON (i.InstrID=d.instr_id) 
		WHERE i.DCDate = (SELECT MAX(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND  
			i2.InstrType = 'UDS Phone Inclusion' AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%') 
		ORDER BY p.pidn, i.DCDate, i.InstrID;
	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
	SELECT * from temp_linkdata;
	
ELSEIF query_type = 'PrimaryFirst' THEN
	CREATE TEMPORARY TABLE temp_linkdata as 
		SELECT p.PIDN,i.DCDate as link_date, i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.* 
		FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN) 
			INNER JOIN lq_view_udsphoneinclusion d ON (i.InstrID=d.instr_id)
		WHERE i.DCDate = (SELECT MIN(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND 
			i2.InstrType = 'UDS Phone Inclusion' AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%')
		ORDER BY p.pidn, i.InstrID;
	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
	SELECT * from temp_linkdata;
	
ELSEIF query_type IN ('SecondaryAll','SecondaryClosest') THEN
	#Create candidate table with secondary instruments 
	CREATE TEMPORARY TABLE temp_secondary_candidates AS
		SELECT l.PIDN, l.link_date, l.link_id, i2.InstrType, i2.InstrID, DATEDIFF(l.link_date, i2.DCDate) AS Days 
		FROM temp_linkdata l INNER JOIN instrumenttracking i2 ON (i2.PIDN=l.PIDN) 
		WHERE i2.InstrType = 'UDS Phone Inclusion';
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
		LEFT JOIN lq_view_udsphoneinclusion d ON (i.InstrID=d.instr_id) ORDER BY l.pidn, l.link_date, l.link_id;

	DROP TABLE temp_secondary_candidates;

END IF;

END$$

$$
DELIMITER ;




-- A3a FTLD Specimen Consent
-- -----------------------------------------------------
-- view lq_view_udsftldspecimenconsent
-- -----------------------------------------------------
DROP VIEW IF EXISTS `lq_view_udsftldspecimenconsent`;
CREATE OR REPLACE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `lq_view_udsftldspecimenconsent` AS select 
`t2`.`InstrID`,
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
-- procedure lq_get_nacc_udsftldspecimenconsent
-- -----------------------------------------------------

DROP PROCEDURE IF EXISTS `lq_get_nacc_udsftldspecimenconsent2`;  -- earlier version
DROP PROCEDURE IF EXISTS `lq_get_nacc_udsftldspecimenconsent`;
DELIMITER $$

CREATE PROCEDURE `lq_get_nacc_udsftldspecimenconsent`(user_name varchar(50), host_name varchar(50), query_type varchar(25), query_subtype VARCHAR(25), query_days INTEGER)
BEGIN
CALL lq_audit_event(user_name, host_name, 'crms-nacc.nacc.udsftldspecimenconsent', query_type);

IF query_type = 'Simple' THEN
	SELECT p.PIDN, it.InstrType, it.DCDate, v.VType, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it 
	    INNER JOIN visit v ON (it.VID = v.VID) 
		INNER JOIN lq_view_udsftldspecimenconsent i ON (it.InstrID = i.instr_id) 
		INNER JOIN temp_pidn p ON (p.PIDN = it.PIDN) 
	WHERE it.InstrType = 'UDS FTLD Specimen Consent' or it.InstrType is null 
	ORDER BY p.pidn, it.DCDate;
      
ELSEIF query_type = 'SimpleAllPatients' THEN
	SELECT p.PIDN, it.InstrType, it.DCDate, v.VType, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it  
	    INNER JOIN visit v ON (it.VID = v.VID) 
		INNER JOIN lq_view_udsftldspecimenconsent i ON (it.InstrID = i.instr_id)  
		RIGHT OUTER JOIN temp_pidn p ON (p.PIDN = it.PIDN)  
	WHERE it.InstrType =  'UDS FTLD Specimen Consent' or it.InstrType is null 
	ORDER BY P.pidn, it.DCDate;
	
ELSEIF query_type = 'VisitGrouping' THEN
    SELECT l.PIDN, l.link_date, l.link_id, v.VType, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*
    FROM temp_linkdata l LEFT OUTER JOIN (visit v, instrumenttracking i, lq_view_udsftldspecimenconsent d)
      ON (l.link_id=v.vid AND v.vid=i.vid AND i.InstrID=d.instr_id AND
          NOT i.DCStatus = 'Scheduled' AND NOT i.DCStatus like 'Canceled%')
    ORDER BY l.PIDN, l.link_date, l.link_id;
	
ELSEIF query_type = 'PrimaryAll' THEN 
	CREATE TEMPORARY TABLE temp_linkdata as 
		SELECT p.PIDN,i.DCDate as link_date, i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
		FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
			INNER JOIN lq_view_udsftldspecimenconsent d ON (i.InstrID=d.instr_id) 
		WHERE NOT i.DCStatus = 'Scheduled' AND NOT i.DCStatus like 'Canceled%' 
		ORDER BY p.pidn, i.DCDate, i.InstrID ;
	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
	SELECT * from temp_linkdata;
	
ELSEIF query_type = 'PrimaryLatest' THEN  
	CREATE TEMPORARY TABLE temp_linkdata as 
		SELECT p.PIDN, i.DCDate as link_date, i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
		FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
			INNER JOIN lq_view_udsftldspecimenconsent d ON (i.InstrID=d.instr_id) 
		WHERE i.DCDate = (SELECT MAX(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND  
			i2.InstrType = 'UDS FTLD Specimen Consent' AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%') 
		ORDER BY p.pidn, i.DCDate, i.InstrID;
	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
	SELECT * from temp_linkdata;
	
ELSEIF query_type = 'PrimaryFirst' THEN
	CREATE TEMPORARY TABLE temp_linkdata as 
		SELECT p.PIDN,i.DCDate as link_date, i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.* 
		FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN) 
			INNER JOIN lq_view_udsftldspecimenconsent d ON (i.InstrID=d.instr_id)
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
		LEFT JOIN lq_view_udsftldspecimenconsent d ON (i.InstrID=d.instr_id) ORDER BY l.pidn, l.link_date, l.link_id;

	DROP TABLE temp_secondary_candidates;

END IF;

END$$

$$
DELIMITER ;



-- B3F FTLD UPDRS
-- -----------------------------------------------------
-- view lq_view_udsftldupdrs
-- -----------------------------------------------------
DROP VIEW IF EXISTS `lq_view_udsftldupdrs`;
CREATE OR REPLACE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `lq_view_udsftldupdrs` AS select 
`t2`.`InstrID`,
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
-- procedure lq_get_nacc_udsftldupdrs
-- -----------------------------------------------------

DROP PROCEDURE IF EXISTS `lq_get_nacc_udsftldupdrs2`; -- earlier version
DROP PROCEDURE IF EXISTS `lq_get_nacc_udsftldupdrs`;
DELIMITER $$

CREATE PROCEDURE `lq_get_nacc_udsftldupdrs`(user_name varchar(50), host_name varchar(50), query_type varchar(25), query_subtype VARCHAR(25), query_days INTEGER)
BEGIN
CALL lq_audit_event(user_name, host_name, 'crms-nacc.nacc.udsftldupdrs', query_type);

IF query_type = 'Simple' THEN
	SELECT p.PIDN, it.InstrType, it.DCDate, v.VType, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it 
	    INNER JOIN visit v ON (it.VID = v.VID) 
		INNER JOIN lq_view_udsftldupdrs i ON (it.InstrID = i.instr_id) 
		INNER JOIN temp_pidn p ON (p.PIDN = it.PIDN) 
	WHERE it.InstrType = 'UDS FTLD UPDRS' or it.InstrType is null 
	ORDER BY p.pidn, it.DCDate;
      
ELSEIF query_type = 'SimpleAllPatients' THEN
	SELECT p.PIDN, it.InstrType, it.DCDate, v.VType, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it  
	    INNER JOIN visit v ON (it.VID = v.VID) 
		INNER JOIN lq_view_udsftldupdrs i ON (it.InstrID = i.instr_id)  
		RIGHT OUTER JOIN temp_pidn p ON (p.PIDN = it.PIDN)  
	WHERE it.InstrType =  'UDS FTLD UPDRS' or it.InstrType is null 
	ORDER BY P.pidn, it.DCDate;
	
ELSEIF query_type = 'VisitGrouping' THEN
    SELECT l.PIDN, l.link_date, l.link_id, v.VType, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*
    FROM temp_linkdata l LEFT OUTER JOIN (visit v, instrumenttracking i, lq_view_udsftldupdrs d)
      ON (l.link_id=v.vid AND v.vid=i.vid AND i.InstrID=d.instr_id AND
          NOT i.DCStatus = 'Scheduled' AND NOT i.DCStatus like 'Canceled%')
    ORDER BY l.PIDN, l.link_date, l.link_id;
	
ELSEIF query_type = 'PrimaryAll' THEN 
	CREATE TEMPORARY TABLE temp_linkdata as 
		SELECT p.PIDN,i.DCDate as link_date, i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
		FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
			INNER JOIN lq_view_udsftldupdrs d ON (i.InstrID=d.instr_id) 
		WHERE NOT i.DCStatus = 'Scheduled' AND NOT i.DCStatus like 'Canceled%' 
		ORDER BY p.pidn, i.DCDate, i.InstrID ;
	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
	SELECT * from temp_linkdata;
	
ELSEIF query_type = 'PrimaryLatest' THEN  
	CREATE TEMPORARY TABLE temp_linkdata as 
		SELECT p.PIDN, i.DCDate as link_date, i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
		FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
			INNER JOIN lq_view_udsftldupdrs d ON (i.InstrID=d.instr_id) 
		WHERE i.DCDate = (SELECT MAX(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND  
			i2.InstrType = 'UDS FTLD UPDRS' AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%') 
		ORDER BY p.pidn, i.DCDate, i.InstrID;
	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
	SELECT * from temp_linkdata;
	
ELSEIF query_type = 'PrimaryFirst' THEN
	CREATE TEMPORARY TABLE temp_linkdata as 
		SELECT p.PIDN,i.DCDate as link_date, i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.* 
		FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN) 
			INNER JOIN lq_view_udsftldupdrs d ON (i.InstrID=d.instr_id)
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
		LEFT JOIN lq_view_udsftldupdrs d ON (i.InstrID=d.instr_id) ORDER BY l.pidn, l.link_date, l.link_id;

	DROP TABLE temp_secondary_candidates;

END IF;

END$$

$$
DELIMITER ;





-- B9F FTDL Clin Features
-- -----------------------------------------------------
-- view lq_view_udsftldclinfeatures
-- -----------------------------------------------------
DROP VIEW IF EXISTS `lq_view_udsftldclinfeatures`;
CREATE OR REPLACE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `lq_view_udsftldclinfeatures` AS select 
`t2`.`InstrID`,
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
-- procedure lq_get_nacc_udsftldclinfeatures
-- -----------------------------------------------------

DROP PROCEDURE IF EXISTS `lq_get_nacc_udsftldclinfeatures2`; -- earlier version
DROP PROCEDURE IF EXISTS `lq_get_nacc_udsftldclinfeatures`;
DELIMITER $$

CREATE PROCEDURE `lq_get_nacc_udsftldclinfeatures`(user_name varchar(50), host_name varchar(50), query_type varchar(25), query_subtype VARCHAR(25), query_days INTEGER)
BEGIN
CALL lq_audit_event(user_name, host_name, 'crms-nacc.nacc.udsftldclinfeatures', query_type);

IF query_type = 'Simple' THEN
	SELECT p.PIDN, it.InstrType, it.DCDate, v.VType, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it 
	    INNER JOIN visit v ON (it.VID = v.VID) 
		INNER JOIN lq_view_udsftldclinfeatures i ON (it.InstrID = i.instr_id) 
		INNER JOIN temp_pidn p ON (p.PIDN = it.PIDN) 
	WHERE it.InstrType = 'UDS FTLD Clin Features' or it.InstrType is null 
	ORDER BY p.pidn, it.DCDate;
      
ELSEIF query_type = 'SimpleAllPatients' THEN
	SELECT p.PIDN, it.InstrType, it.DCDate, v.VType, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it  
	    INNER JOIN visit v ON (it.VID = v.VID) 
		INNER JOIN lq_view_udsftldclinfeatures i ON (it.InstrID = i.instr_id)  
		RIGHT OUTER JOIN temp_pidn p ON (p.PIDN = it.PIDN)  
	WHERE it.InstrType =  'UDS FTLD Clin Features' or it.InstrType is null 
	ORDER BY P.pidn, it.DCDate;
	
ELSEIF query_type = 'VisitGrouping' THEN
    SELECT l.PIDN, l.link_date, l.link_id, v.VType, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*
    FROM temp_linkdata l LEFT OUTER JOIN (visit v, instrumenttracking i, lq_view_udsftldclinfeatures d)
      ON (l.link_id=v.vid AND v.vid=i.vid AND i.InstrID=d.instr_id AND
          NOT i.DCStatus = 'Scheduled' AND NOT i.DCStatus like 'Canceled%')
    ORDER BY l.PIDN, l.link_date, l.link_id;
	
ELSEIF query_type = 'PrimaryAll' THEN 
	CREATE TEMPORARY TABLE temp_linkdata as 
		SELECT p.PIDN,i.DCDate as link_date, i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
		FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
			INNER JOIN lq_view_udsftldclinfeatures d ON (i.InstrID=d.instr_id) 
		WHERE NOT i.DCStatus = 'Scheduled' AND NOT i.DCStatus like 'Canceled%' 
		ORDER BY p.pidn, i.DCDate, i.InstrID ;
	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
	SELECT * from temp_linkdata;
	
ELSEIF query_type = 'PrimaryLatest' THEN  
	CREATE TEMPORARY TABLE temp_linkdata as 
		SELECT p.PIDN, i.DCDate as link_date, i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
		FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
			INNER JOIN lq_view_udsftldclinfeatures d ON (i.InstrID=d.instr_id) 
		WHERE i.DCDate = (SELECT MAX(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND  
			i2.InstrType = 'UDS FTLD Clin Features' AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%') 
		ORDER BY p.pidn, i.DCDate, i.InstrID;
	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
	SELECT * from temp_linkdata;
	
ELSEIF query_type = 'PrimaryFirst' THEN
	CREATE TEMPORARY TABLE temp_linkdata as 
		SELECT p.PIDN,i.DCDate as link_date, i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.* 
		FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN) 
			INNER JOIN lq_view_udsftldclinfeatures d ON (i.InstrID=d.instr_id)
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
		LEFT JOIN lq_view_udsftldclinfeatures d ON (i.InstrID=d.instr_id) ORDER BY l.pidn, l.link_date, l.link_id;

	DROP TABLE temp_secondary_candidates;

END IF;

END$$

$$
DELIMITER ;





-- C1F FTLD Neuropsych
-- -----------------------------------------------------
-- view lq_view_udsftldneuropsych
-- -----------------------------------------------------
DROP VIEW IF EXISTS `lq_view_udsftldneuropsych`;
CREATE OR REPLACE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `lq_view_udsftldneuropsych` AS select 
`t2`.`InstrID`,
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
-- procedure lq_get_nacc_udsftldneuropsych
-- -----------------------------------------------------

DROP PROCEDURE IF EXISTS `lq_get_nacc_udsftldneuropsych2`; -- earlier version
DROP PROCEDURE IF EXISTS `lq_get_nacc_udsftldneuropsych`;
DELIMITER $$

CREATE PROCEDURE `lq_get_nacc_udsftldneuropsych`(user_name varchar(50), host_name varchar(50), query_type varchar(25), query_subtype VARCHAR(25), query_days INTEGER)
BEGIN
CALL lq_audit_event(user_name, host_name, 'crms-nacc.nacc.udsftldneuropsych', query_type);

IF query_type = 'Simple' THEN
	SELECT p.PIDN, it.InstrType, it.DCDate, v.VType, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it 
	    INNER JOIN visit v ON (it.VID = v.VID) 
		INNER JOIN lq_view_udsftldneuropsych i ON (it.InstrID = i.instr_id) 
		INNER JOIN temp_pidn p ON (p.PIDN = it.PIDN) 
	WHERE it.InstrType = 'UDS FTLD Neuropsych' or it.InstrType is null 
	ORDER BY p.pidn, it.DCDate;
      
ELSEIF query_type = 'SimpleAllPatients' THEN
	SELECT p.PIDN, it.InstrType, it.DCDate, v.VType, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it  
	    INNER JOIN visit v ON (it.VID = v.VID) 
		INNER JOIN lq_view_udsftldneuropsych i ON (it.InstrID = i.instr_id)  
		RIGHT OUTER JOIN temp_pidn p ON (p.PIDN = it.PIDN)  
	WHERE it.InstrType =  'UDS FTLD Neuropsych' or it.InstrType is null 
	ORDER BY P.pidn, it.DCDate;
	
ELSEIF query_type = 'VisitGrouping' THEN
    SELECT l.PIDN, l.link_date, l.link_id, v.VType, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*
    FROM temp_linkdata l LEFT OUTER JOIN (visit v, instrumenttracking i, lq_view_udsftldneuropsych d)
      ON (l.link_id=v.vid AND v.vid=i.vid AND i.InstrID=d.instr_id AND
          NOT i.DCStatus = 'Scheduled' AND NOT i.DCStatus like 'Canceled%')
    ORDER BY l.PIDN, l.link_date, l.link_id;
	
ELSEIF query_type = 'PrimaryAll' THEN 
	CREATE TEMPORARY TABLE temp_linkdata as 
		SELECT p.PIDN,i.DCDate as link_date, i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
		FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
			INNER JOIN lq_view_udsftldneuropsych d ON (i.InstrID=d.instr_id) 
		WHERE NOT i.DCStatus = 'Scheduled' AND NOT i.DCStatus like 'Canceled%' 
		ORDER BY p.pidn, i.DCDate, i.InstrID ;
	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
	SELECT * from temp_linkdata;
	
ELSEIF query_type = 'PrimaryLatest' THEN  
	CREATE TEMPORARY TABLE temp_linkdata as 
		SELECT p.PIDN, i.DCDate as link_date, i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
		FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
			INNER JOIN lq_view_udsftldneuropsych d ON (i.InstrID=d.instr_id) 
		WHERE i.DCDate = (SELECT MAX(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND  
			i2.InstrType = 'UDS FTLD Neuropsych' AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%') 
		ORDER BY p.pidn, i.DCDate, i.InstrID;
	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
	SELECT * from temp_linkdata;
	
ELSEIF query_type = 'PrimaryFirst' THEN
	CREATE TEMPORARY TABLE temp_linkdata as 
		SELECT p.PIDN,i.DCDate as link_date, i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.* 
		FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN) 
			INNER JOIN lq_view_udsftldneuropsych d ON (i.InstrID=d.instr_id)
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
		LEFT JOIN lq_view_udsftldneuropsych d ON (i.InstrID=d.instr_id) ORDER BY l.pidn, l.link_date, l.link_id;

	DROP TABLE temp_secondary_candidates;

END IF;

END$$

$$
DELIMITER ;





-- C2F FTLD SNQ
-- -----------------------------------------------------
-- view lq_view_udsftldsnq
-- -----------------------------------------------------
DROP VIEW IF EXISTS `lq_view_udsftldsnq`;
CREATE OR REPLACE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `lq_view_udsftldsnq` AS select 
`t2`.`InstrID`,
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
-- procedure lq_get_nacc_udsftldsnq
-- -----------------------------------------------------

DROP PROCEDURE IF EXISTS `lq_get_nacc_udsftldsnq2`; -- earlier version
DROP PROCEDURE IF EXISTS `lq_get_nacc_udsftldsnq`;
DELIMITER $$

CREATE PROCEDURE `lq_get_nacc_udsftldsnq`(user_name varchar(50), host_name varchar(50), query_type varchar(25), query_subtype VARCHAR(25), query_days INTEGER)
BEGIN
CALL lq_audit_event(user_name, host_name, 'crms-nacc.nacc.udsftldsnq', query_type);

IF query_type = 'Simple' THEN
	SELECT p.PIDN, it.InstrType, it.DCDate, v.VType, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it 
	    INNER JOIN visit v ON (it.VID = v.VID) 
		INNER JOIN lq_view_udsftldsnq i ON (it.InstrID = i.instr_id) 
		INNER JOIN temp_pidn p ON (p.PIDN = it.PIDN) 
	WHERE it.InstrType = 'UDS FTLD SNQ' or it.InstrType is null 
	ORDER BY p.pidn, it.DCDate;
      
ELSEIF query_type = 'SimpleAllPatients' THEN
	SELECT p.PIDN, it.InstrType, it.DCDate, v.VType, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it  
	    INNER JOIN visit v ON (it.VID = v.VID) 
		INNER JOIN lq_view_udsftldsnq i ON (it.InstrID = i.instr_id)  
		RIGHT OUTER JOIN temp_pidn p ON (p.PIDN = it.PIDN)  
	WHERE it.InstrType =  'UDS FTLD SNQ' or it.InstrType is null 
	ORDER BY P.pidn, it.DCDate;
	
ELSEIF query_type = 'VisitGrouping' THEN
    SELECT l.PIDN, l.link_date, l.link_id, v.VType, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*
    FROM temp_linkdata l LEFT OUTER JOIN (visit v, instrumenttracking i, lq_view_udsftldsnq d)
      ON (l.link_id=v.vid AND v.vid=i.vid AND i.InstrID=d.instr_id AND
          NOT i.DCStatus = 'Scheduled' AND NOT i.DCStatus like 'Canceled%')
    ORDER BY l.PIDN, l.link_date, l.link_id;
	
ELSEIF query_type = 'PrimaryAll' THEN 
	CREATE TEMPORARY TABLE temp_linkdata as 
		SELECT p.PIDN,i.DCDate as link_date, i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
		FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
			INNER JOIN lq_view_udsftldsnq d ON (i.InstrID=d.instr_id) 
		WHERE NOT i.DCStatus = 'Scheduled' AND NOT i.DCStatus like 'Canceled%' 
		ORDER BY p.pidn, i.DCDate, i.InstrID ;
	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
	SELECT * from temp_linkdata;
	
ELSEIF query_type = 'PrimaryLatest' THEN  
	CREATE TEMPORARY TABLE temp_linkdata as 
		SELECT p.PIDN, i.DCDate as link_date, i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
		FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
			INNER JOIN lq_view_udsftldsnq d ON (i.InstrID=d.instr_id) 
		WHERE i.DCDate = (SELECT MAX(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND  
			i2.InstrType = 'UDS FTLD SNQ' AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%') 
		ORDER BY p.pidn, i.DCDate, i.InstrID;
	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
	SELECT * from temp_linkdata;
	
ELSEIF query_type = 'PrimaryFirst' THEN
	CREATE TEMPORARY TABLE temp_linkdata as 
		SELECT p.PIDN,i.DCDate as link_date, i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.* 
		FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN) 
			INNER JOIN lq_view_udsftldsnq d ON (i.InstrID=d.instr_id)
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
		LEFT JOIN lq_view_udsftldsnq d ON (i.InstrID=d.instr_id) ORDER BY l.pidn, l.link_date, l.link_id;

	DROP TABLE temp_secondary_candidates;

END IF;

END$$

$$
DELIMITER ;





-- C3F FTLD SBOC
-- -----------------------------------------------------
-- view lq_view_udsftldsboc
-- -----------------------------------------------------
DROP VIEW IF EXISTS `lq_view_udsftldsboc`;
CREATE OR REPLACE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `lq_view_udsftldsboc` AS select 
`t2`.`InstrID`,
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
-- procedure lq_get_nacc_udsftldsboc
-- -----------------------------------------------------

DROP PROCEDURE IF EXISTS `lq_get_nacc_udsftldsboc2`; -- earlier version
DROP PROCEDURE IF EXISTS `lq_get_nacc_udsftldsboc`;
DELIMITER $$

CREATE PROCEDURE `lq_get_nacc_udsftldsboc`(user_name varchar(50), host_name varchar(50), query_type varchar(25), query_subtype VARCHAR(25), query_days INTEGER)
BEGIN
CALL lq_audit_event(user_name, host_name, 'crms-nacc.nacc.udsftldsboc', query_type);

IF query_type = 'Simple' THEN
	SELECT p.PIDN, it.InstrType, it.DCDate, v.VType, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it 
	    INNER JOIN visit v ON (it.VID = v.VID) 
		INNER JOIN lq_view_udsftldsboc i ON (it.InstrID = i.instr_id) 
		INNER JOIN temp_pidn p ON (p.PIDN = it.PIDN) 
	WHERE it.InstrType = 'UDS FTLD SBOC' or it.InstrType is null 
	ORDER BY p.pidn, it.DCDate;
      
ELSEIF query_type = 'SimpleAllPatients' THEN
	SELECT p.PIDN, it.InstrType, it.DCDate, v.VType, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it  
	    INNER JOIN visit v ON (it.VID = v.VID) 
		INNER JOIN lq_view_udsftldsboc i ON (it.InstrID = i.instr_id)  
		RIGHT OUTER JOIN temp_pidn p ON (p.PIDN = it.PIDN)  
	WHERE it.InstrType =  'UDS FTLD SBOC' or it.InstrType is null 
	ORDER BY P.pidn, it.DCDate;
	
ELSEIF query_type = 'VisitGrouping' THEN
    SELECT l.PIDN, l.link_date, l.link_id, v.VType, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*
    FROM temp_linkdata l LEFT OUTER JOIN (visit v, instrumenttracking i, lq_view_udsftldsboc d)
      ON (l.link_id=v.vid AND v.vid=i.vid AND i.InstrID=d.instr_id AND
          NOT i.DCStatus = 'Scheduled' AND NOT i.DCStatus like 'Canceled%')
    ORDER BY l.PIDN, l.link_date, l.link_id;
	
ELSEIF query_type = 'PrimaryAll' THEN 
	CREATE TEMPORARY TABLE temp_linkdata as 
		SELECT p.PIDN,i.DCDate as link_date, i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
		FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
			INNER JOIN lq_view_udsftldsboc d ON (i.InstrID=d.instr_id) 
		WHERE NOT i.DCStatus = 'Scheduled' AND NOT i.DCStatus like 'Canceled%' 
		ORDER BY p.pidn, i.DCDate, i.InstrID ;
	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
	SELECT * from temp_linkdata;
	
ELSEIF query_type = 'PrimaryLatest' THEN  
	CREATE TEMPORARY TABLE temp_linkdata as 
		SELECT p.PIDN, i.DCDate as link_date, i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
		FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
			INNER JOIN lq_view_udsftldsboc d ON (i.InstrID=d.instr_id) 
		WHERE i.DCDate = (SELECT MAX(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND  
			i2.InstrType = 'UDS FTLD SBOC' AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%') 
		ORDER BY p.pidn, i.DCDate, i.InstrID;
	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
	SELECT * from temp_linkdata;
	
ELSEIF query_type = 'PrimaryFirst' THEN
	CREATE TEMPORARY TABLE temp_linkdata as 
		SELECT p.PIDN,i.DCDate as link_date, i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.* 
		FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN) 
			INNER JOIN lq_view_udsftldsboc d ON (i.InstrID=d.instr_id)
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
		LEFT JOIN lq_view_udsftldsboc d ON (i.InstrID=d.instr_id) ORDER BY l.pidn, l.link_date, l.link_id;

	DROP TABLE temp_secondary_candidates;

END IF;

END$$

$$
DELIMITER ;







-- C4F FTLD BIS
-- -----------------------------------------------------
-- view lq_view_udsftldbis
-- -----------------------------------------------------
DROP VIEW IF EXISTS `lq_view_udsftldbis`;
CREATE OR REPLACE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `lq_view_udsftldbis` AS select 
`t2`.`InstrID`,
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
-- procedure lq_get_nacc_udsftldbis
-- -----------------------------------------------------
DROP PROCEDURE IF EXISTS `lq_get_nacc_udsftldbis2`; -- earlier version
DROP PROCEDURE IF EXISTS `lq_get_nacc_udsftldbis`;
DELIMITER $$

CREATE PROCEDURE `lq_get_nacc_udsftldbis`(user_name varchar(50), host_name varchar(50), query_type varchar(25), query_subtype VARCHAR(25), query_days INTEGER)
BEGIN
CALL lq_audit_event(user_name, host_name, 'crms-nacc.nacc.udsftldbis', query_type);

IF query_type = 'Simple' THEN
	SELECT p.PIDN, it.InstrType, it.DCDate, v.VType, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it 
	    INNER JOIN visit v ON (it.VID = v.VID) 
		INNER JOIN lq_view_udsftldbis i ON (it.InstrID = i.instr_id) 
		INNER JOIN temp_pidn p ON (p.PIDN = it.PIDN) 
	WHERE it.InstrType = 'UDS FTLD BIS' or it.InstrType is null 
	ORDER BY p.pidn, it.DCDate;
      
ELSEIF query_type = 'SimpleAllPatients' THEN
	SELECT p.PIDN, it.InstrType, it.DCDate, v.VType, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it  
	    INNER JOIN visit v ON (it.VID = v.VID) 
		INNER JOIN lq_view_udsftldbis i ON (it.InstrID = i.instr_id)  
		RIGHT OUTER JOIN temp_pidn p ON (p.PIDN = it.PIDN)  
	WHERE it.InstrType =  'UDS FTLD BIS' or it.InstrType is null 
	ORDER BY P.pidn, it.DCDate;
	
ELSEIF query_type = 'VisitGrouping' THEN
    SELECT l.PIDN, l.link_date, l.link_id, v.VType, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*
    FROM temp_linkdata l LEFT OUTER JOIN (visit v, instrumenttracking i, lq_view_udsftldbis d)
      ON (l.link_id=v.vid AND v.vid=i.vid AND i.InstrID=d.instr_id AND
          NOT i.DCStatus = 'Scheduled' AND NOT i.DCStatus like 'Canceled%')
    ORDER BY l.PIDN, l.link_date, l.link_id;
	
ELSEIF query_type = 'PrimaryAll' THEN 
	CREATE TEMPORARY TABLE temp_linkdata as 
		SELECT p.PIDN,i.DCDate as link_date, i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
		FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
			INNER JOIN lq_view_udsftldbis d ON (i.InstrID=d.instr_id) 
		WHERE NOT i.DCStatus = 'Scheduled' AND NOT i.DCStatus like 'Canceled%' 
		ORDER BY p.pidn, i.DCDate, i.InstrID ;
	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
	SELECT * from temp_linkdata;
	
ELSEIF query_type = 'PrimaryLatest' THEN  
	CREATE TEMPORARY TABLE temp_linkdata as 
		SELECT p.PIDN, i.DCDate as link_date, i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
		FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
			INNER JOIN lq_view_udsftldbis d ON (i.InstrID=d.instr_id) 
		WHERE i.DCDate = (SELECT MAX(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND  
			i2.InstrType = 'UDS FTLD BIS' AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%') 
		ORDER BY p.pidn, i.DCDate, i.InstrID;
	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
	SELECT * from temp_linkdata;
	
ELSEIF query_type = 'PrimaryFirst' THEN
	CREATE TEMPORARY TABLE temp_linkdata as 
		SELECT p.PIDN,i.DCDate as link_date, i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.* 
		FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN) 
			INNER JOIN lq_view_udsftldbis d ON (i.InstrID=d.instr_id)
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
		LEFT JOIN lq_view_udsftldbis d ON (i.InstrID=d.instr_id) ORDER BY l.pidn, l.link_date, l.link_id;

	DROP TABLE temp_secondary_candidates;

END IF;

END$$

$$
DELIMITER ;






-- C5F FTLD IRI
-- -----------------------------------------------------
-- view lq_view_udsftldiri
-- -----------------------------------------------------
DROP VIEW IF EXISTS `lq_view_udsftldiri`;
CREATE OR REPLACE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `lq_view_udsftldiri` AS select 
`t2`.`InstrID`,
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
-- procedure lq_get_nacc_udsftldiri
-- -----------------------------------------------------

DROP PROCEDURE IF EXISTS `lq_get_nacc_udsftldiri2`; -- earlier version
DROP PROCEDURE IF EXISTS `lq_get_nacc_udsftldiri`;
DELIMITER $$

CREATE PROCEDURE `lq_get_nacc_udsftldiri`(user_name varchar(50), host_name varchar(50), query_type varchar(25), query_subtype VARCHAR(25), query_days INTEGER)
BEGIN
CALL lq_audit_event(user_name, host_name, 'crms-nacc.nacc.udsftldiri', query_type);

IF query_type = 'Simple' THEN
	SELECT p.PIDN, it.InstrType, it.DCDate, v.VType, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it 
	    INNER JOIN visit v ON (it.VID = v.VID) 
		INNER JOIN lq_view_udsftldiri i ON (it.InstrID = i.instr_id) 
		INNER JOIN temp_pidn p ON (p.PIDN = it.PIDN) 
	WHERE it.InstrType = 'UDS FTLD IRI' or it.InstrType is null 
	ORDER BY p.pidn, it.DCDate;
      
ELSEIF query_type = 'SimpleAllPatients' THEN
	SELECT p.PIDN, it.InstrType, it.DCDate, v.VType, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it  
	    INNER JOIN visit v ON (it.VID = v.VID) 
		INNER JOIN lq_view_udsftldiri i ON (it.InstrID = i.instr_id)  
		RIGHT OUTER JOIN temp_pidn p ON (p.PIDN = it.PIDN)  
	WHERE it.InstrType =  'UDS FTLD IRI' or it.InstrType is null 
	ORDER BY P.pidn, it.DCDate;
	
ELSEIF query_type = 'VisitGrouping' THEN
    SELECT l.PIDN, l.link_date, l.link_id, v.VType, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*
    FROM temp_linkdata l LEFT OUTER JOIN (visit v, instrumenttracking i, lq_view_udsftldiri d)
      ON (l.link_id=v.vid AND v.vid=i.vid AND i.InstrID=d.instr_id AND
          NOT i.DCStatus = 'Scheduled' AND NOT i.DCStatus like 'Canceled%')
    ORDER BY l.PIDN, l.link_date, l.link_id;
	
ELSEIF query_type = 'PrimaryAll' THEN 
	CREATE TEMPORARY TABLE temp_linkdata as 
		SELECT p.PIDN,i.DCDate as link_date, i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
		FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
			INNER JOIN lq_view_udsftldiri d ON (i.InstrID=d.instr_id) 
		WHERE NOT i.DCStatus = 'Scheduled' AND NOT i.DCStatus like 'Canceled%' 
		ORDER BY p.pidn, i.DCDate, i.InstrID ;
	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
	SELECT * from temp_linkdata;
	
ELSEIF query_type = 'PrimaryLatest' THEN  
	CREATE TEMPORARY TABLE temp_linkdata as 
		SELECT p.PIDN, i.DCDate as link_date, i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
		FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
			INNER JOIN lq_view_udsftldiri d ON (i.InstrID=d.instr_id) 
		WHERE i.DCDate = (SELECT MAX(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND  
			i2.InstrType = 'UDS FTLD IRI' AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%') 
		ORDER BY p.pidn, i.DCDate, i.InstrID;
	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
	SELECT * from temp_linkdata;
	
ELSEIF query_type = 'PrimaryFirst' THEN
	CREATE TEMPORARY TABLE temp_linkdata as 
		SELECT p.PIDN,i.DCDate as link_date, i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.* 
		FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN) 
			INNER JOIN lq_view_udsftldiri d ON (i.InstrID=d.instr_id)
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
		LEFT JOIN lq_view_udsftldiri d ON (i.InstrID=d.instr_id) ORDER BY l.pidn, l.link_date, l.link_id;

	DROP TABLE temp_secondary_candidates;

END IF;

END$$

$$
DELIMITER ;





-- C6F FTLD RSMS
-- -----------------------------------------------------
-- view lq_view_udsftldrsms
-- -----------------------------------------------------
DROP VIEW IF EXISTS `lq_view_udsftldrsms`;
CREATE OR REPLACE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `lq_view_udsftldrsms` AS select 
`t2`.`InstrID`,
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
-- procedure lq_get_nacc_udsftldrsms
-- -----------------------------------------------------

DROP PROCEDURE IF EXISTS `lq_get_nacc_udsftldrsms2`; -- earlier version
DROP PROCEDURE IF EXISTS `lq_get_nacc_udsftldrsms`;
DELIMITER $$

CREATE PROCEDURE `lq_get_nacc_udsftldrsms`(user_name varchar(50), host_name varchar(50), query_type varchar(25), query_subtype VARCHAR(25), query_days INTEGER)
BEGIN
CALL lq_audit_event(user_name, host_name, 'crms-nacc.nacc.udsftldrsms', query_type);

IF query_type = 'Simple' THEN
	SELECT p.PIDN, it.InstrType, it.DCDate, v.VType, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it 
	    INNER JOIN visit v ON (it.VID = v.VID) 
		INNER JOIN lq_view_udsftldrsms i ON (it.InstrID = i.instr_id) 
		INNER JOIN temp_pidn p ON (p.PIDN = it.PIDN) 
	WHERE it.InstrType = 'UDS FTLD RSMS' or it.InstrType is null 
	ORDER BY p.pidn, it.DCDate;
      
ELSEIF query_type = 'SimpleAllPatients' THEN
	SELECT p.PIDN, it.InstrType, it.DCDate, v.VType, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it  
	    INNER JOIN visit v ON (it.VID = v.VID) 
		INNER JOIN lq_view_udsftldrsms i ON (it.InstrID = i.instr_id)  
		RIGHT OUTER JOIN temp_pidn p ON (p.PIDN = it.PIDN)  
	WHERE it.InstrType =  'UDS FTLD RSMS' or it.InstrType is null 
	ORDER BY P.pidn, it.DCDate;
	
ELSEIF query_type = 'VisitGrouping' THEN
    SELECT l.PIDN, l.link_date, l.link_id, v.VType, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*
    FROM temp_linkdata l LEFT OUTER JOIN (visit v, instrumenttracking i, lq_view_udsftldrsms d)
      ON (l.link_id=v.vid AND v.vid=i.vid AND i.InstrID=d.instr_id AND
          NOT i.DCStatus = 'Scheduled' AND NOT i.DCStatus like 'Canceled%')
    ORDER BY l.PIDN, l.link_date, l.link_id;
	
ELSEIF query_type = 'PrimaryAll' THEN 
	CREATE TEMPORARY TABLE temp_linkdata as 
		SELECT p.PIDN,i.DCDate as link_date, i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
		FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
			INNER JOIN lq_view_udsftldrsms d ON (i.InstrID=d.instr_id) 
		WHERE NOT i.DCStatus = 'Scheduled' AND NOT i.DCStatus like 'Canceled%' 
		ORDER BY p.pidn, i.DCDate, i.InstrID ;
	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
	SELECT * from temp_linkdata;
	
ELSEIF query_type = 'PrimaryLatest' THEN  
	CREATE TEMPORARY TABLE temp_linkdata as 
		SELECT p.PIDN, i.DCDate as link_date, i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
		FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
			INNER JOIN lq_view_udsftldrsms d ON (i.InstrID=d.instr_id) 
		WHERE i.DCDate = (SELECT MAX(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND  
			i2.InstrType = 'UDS FTLD RSMS' AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%') 
		ORDER BY p.pidn, i.DCDate, i.InstrID;
	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
	SELECT * from temp_linkdata;
	
ELSEIF query_type = 'PrimaryFirst' THEN
	CREATE TEMPORARY TABLE temp_linkdata as 
		SELECT p.PIDN,i.DCDate as link_date, i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.* 
		FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN) 
			INNER JOIN lq_view_udsftldrsms d ON (i.InstrID=d.instr_id)
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
		LEFT JOIN lq_view_udsftldrsms d ON (i.InstrID=d.instr_id) ORDER BY l.pidn, l.link_date, l.link_id;

	DROP TABLE temp_secondary_candidates;

END IF;

END$$

$$
DELIMITER ;



-- E2F FTLD Imaging Avail
-- -----------------------------------------------------
-- view lq_view_udsftldimagingavail
-- -----------------------------------------------------
DROP VIEW IF EXISTS `lq_view_udsftldimagingavail`;
CREATE OR REPLACE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `lq_view_udsftldimagingavail` AS select 
`t2`.`InstrID`,
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
-- procedure lq_get_nacc_udsftldimagingavail
-- -----------------------------------------------------

DROP PROCEDURE IF EXISTS `lq_get_nacc_udsftldimagingavail2`; -- earlier version
DROP PROCEDURE IF EXISTS `lq_get_nacc_udsftldimagingavail`;
DELIMITER $$

CREATE PROCEDURE `lq_get_nacc_udsftldimagingavail`(user_name varchar(50), host_name varchar(50), query_type varchar(25), query_subtype VARCHAR(25), query_days INTEGER)
BEGIN
CALL lq_audit_event(user_name, host_name, 'crms-nacc.nacc.udsftldimagingavail', query_type);

IF query_type = 'Simple' THEN
	SELECT p.PIDN, it.InstrType, it.DCDate, v.VType, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it 
	    INNER JOIN visit v ON (it.VID = v.VID) 
		INNER JOIN lq_view_udsftldimagingavail i ON (it.InstrID = i.instr_id) 
		INNER JOIN temp_pidn p ON (p.PIDN = it.PIDN) 
	WHERE it.InstrType = 'UDS FTLD Imaging Avail' or it.InstrType is null 
	ORDER BY p.pidn, it.DCDate;
      
ELSEIF query_type = 'SimpleAllPatients' THEN
	SELECT p.PIDN, it.InstrType, it.DCDate, v.VType, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it  
	    INNER JOIN visit v ON (it.VID = v.VID) 
		INNER JOIN lq_view_udsftldimagingavail i ON (it.InstrID = i.instr_id)  
		RIGHT OUTER JOIN temp_pidn p ON (p.PIDN = it.PIDN)  
	WHERE it.InstrType =  'UDS FTLD Imaging Avail' or it.InstrType is null 
	ORDER BY P.pidn, it.DCDate;
	
ELSEIF query_type = 'VisitGrouping' THEN
    SELECT l.PIDN, l.link_date, l.link_id, v.VType, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*
    FROM temp_linkdata l LEFT OUTER JOIN (visit v, instrumenttracking i, lq_view_udsftldimagingavail d)
      ON (l.link_id=v.vid AND v.vid=i.vid AND i.InstrID=d.instr_id AND
          NOT i.DCStatus = 'Scheduled' AND NOT i.DCStatus like 'Canceled%')
    ORDER BY l.PIDN, l.link_date, l.link_id;
	
ELSEIF query_type = 'PrimaryAll' THEN 
	CREATE TEMPORARY TABLE temp_linkdata as 
		SELECT p.PIDN,i.DCDate as link_date, i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
		FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
			INNER JOIN lq_view_udsftldimagingavail d ON (i.InstrID=d.instr_id) 
		WHERE NOT i.DCStatus = 'Scheduled' AND NOT i.DCStatus like 'Canceled%' 
		ORDER BY p.pidn, i.DCDate, i.InstrID ;
	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
	SELECT * from temp_linkdata;
	
ELSEIF query_type = 'PrimaryLatest' THEN  
	CREATE TEMPORARY TABLE temp_linkdata as 
		SELECT p.PIDN, i.DCDate as link_date, i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
		FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
			INNER JOIN lq_view_udsftldimagingavail d ON (i.InstrID=d.instr_id) 
		WHERE i.DCDate = (SELECT MAX(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND  
			i2.InstrType = 'UDS FTLD Imaging Avail' AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%') 
		ORDER BY p.pidn, i.DCDate, i.InstrID;
	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
	SELECT * from temp_linkdata;
	
ELSEIF query_type = 'PrimaryFirst' THEN
	CREATE TEMPORARY TABLE temp_linkdata as 
		SELECT p.PIDN,i.DCDate as link_date, i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.* 
		FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN) 
			INNER JOIN lq_view_udsftldimagingavail d ON (i.InstrID=d.instr_id)
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
		LEFT JOIN lq_view_udsftldimagingavail d ON (i.InstrID=d.instr_id) ORDER BY l.pidn, l.link_date, l.link_id;

	DROP TABLE temp_secondary_candidates;

END IF;

END$$

$$
DELIMITER ;





-- E3F FTLD Imaging Diag
-- -----------------------------------------------------
-- view lq_view_udsftldimagingdiag
-- -----------------------------------------------------
DROP VIEW IF EXISTS `lq_view_udsftldimagingdiag`;
CREATE OR REPLACE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `lq_view_udsftldimagingdiag` AS select 
`t2`.`InstrID`,
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
-- procedure lq_get_nacc_udsftldimagingdiag
-- -----------------------------------------------------

DROP PROCEDURE IF EXISTS `lq_get_nacc_udsftldimagingdiag2`; -- earlier version
DROP PROCEDURE IF EXISTS `lq_get_nacc_udsftldimagingdiag`;
DELIMITER $$

CREATE PROCEDURE `lq_get_nacc_udsftldimagingdiag`(user_name varchar(50), host_name varchar(50), query_type varchar(25), query_subtype VARCHAR(25), query_days INTEGER)
BEGIN
CALL lq_audit_event(user_name, host_name, 'crms-nacc.nacc.udsftldimagingdiag', query_type);

IF query_type = 'Simple' THEN
	SELECT p.PIDN, it.InstrType, it.DCDate, v.VType, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it 
	    INNER JOIN visit v ON (it.VID = v.VID) 
		INNER JOIN lq_view_udsftldimagingdiag i ON (it.InstrID = i.instr_id) 
		INNER JOIN temp_pidn p ON (p.PIDN = it.PIDN) 
	WHERE it.InstrType = 'UDS FTLD Imaging Diag' or it.InstrType is null 
	ORDER BY p.pidn, it.DCDate;
      
ELSEIF query_type = 'SimpleAllPatients' THEN
	SELECT p.PIDN, it.InstrType, it.DCDate, v.VType, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it  
	    INNER JOIN visit v ON (it.VID = v.VID) 
		INNER JOIN lq_view_udsftldimagingdiag i ON (it.InstrID = i.instr_id)  
		RIGHT OUTER JOIN temp_pidn p ON (p.PIDN = it.PIDN)  
	WHERE it.InstrType =  'UDS FTLD Imaging Diag' or it.InstrType is null 
	ORDER BY P.pidn, it.DCDate;
	
ELSEIF query_type = 'VisitGrouping' THEN
    SELECT l.PIDN, l.link_date, l.link_id, v.VType, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*
    FROM temp_linkdata l LEFT OUTER JOIN (visit v, instrumenttracking i, lq_view_udsftldimagingdiag d)
      ON (l.link_id=v.vid AND v.vid=i.vid AND i.InstrID=d.instr_id AND
          NOT i.DCStatus = 'Scheduled' AND NOT i.DCStatus like 'Canceled%')
    ORDER BY l.PIDN, l.link_date, l.link_id;
	
ELSEIF query_type = 'PrimaryAll' THEN 
	CREATE TEMPORARY TABLE temp_linkdata as 
		SELECT p.PIDN,i.DCDate as link_date, i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
		FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
			INNER JOIN lq_view_udsftldimagingdiag d ON (i.InstrID=d.instr_id) 
		WHERE NOT i.DCStatus = 'Scheduled' AND NOT i.DCStatus like 'Canceled%' 
		ORDER BY p.pidn, i.DCDate, i.InstrID ;
	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
	SELECT * from temp_linkdata;
	
ELSEIF query_type = 'PrimaryLatest' THEN  
	CREATE TEMPORARY TABLE temp_linkdata as 
		SELECT p.PIDN, i.DCDate as link_date, i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
		FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
			INNER JOIN lq_view_udsftldimagingdiag d ON (i.InstrID=d.instr_id) 
		WHERE i.DCDate = (SELECT MAX(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND  
			i2.InstrType = 'UDS FTLD Imaging Diag' AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%') 
		ORDER BY p.pidn, i.DCDate, i.InstrID;
	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
	SELECT * from temp_linkdata;
	
ELSEIF query_type = 'PrimaryFirst' THEN
	CREATE TEMPORARY TABLE temp_linkdata as 
		SELECT p.PIDN,i.DCDate as link_date, i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.* 
		FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN) 
			INNER JOIN lq_view_udsftldimagingdiag d ON (i.InstrID=d.instr_id)
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
		LEFT JOIN lq_view_udsftldimagingdiag d ON (i.InstrID=d.instr_id) ORDER BY l.pidn, l.link_date, l.link_id;

	DROP TABLE temp_secondary_candidates;

END IF;

END$$

$$
DELIMITER ;



-- Z1F UDS FTLD Form Checklist
-- -----------------------------------------------------
-- view lq_view_udsftldformchecklist
-- -----------------------------------------------------
DROP VIEW IF EXISTS `lq_view_udsftldformchecklist`;
CREATE OR REPLACE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `lq_view_udsftldformchecklist` AS select 
`t2`.`InstrID`,
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
-- procedure lq_get_nacc_udsftldformchecklist
-- -----------------------------------------------------

DROP PROCEDURE IF EXISTS `lq_get_nacc_udsftldformchecklist2`;  -- earlier version
DROP PROCEDURE IF EXISTS `lq_get_nacc_udsftldformchecklist`;
DELIMITER $$

CREATE PROCEDURE `lq_get_nacc_udsftldformchecklist`(user_name varchar(50), host_name varchar(50), query_type varchar(25), query_subtype VARCHAR(25), query_days INTEGER)
BEGIN
CALL lq_audit_event(user_name, host_name, 'crms-nacc.nacc.udsftldformchecklist', query_type);

IF query_type = 'Simple' THEN
	SELECT p.PIDN, it.InstrType, it.DCDate, v.VType, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it 
	    INNER JOIN visit v ON (it.VID = v.VID) 
		INNER JOIN lq_view_udsftldformchecklist i ON (it.InstrID = i.instr_id) 
		INNER JOIN temp_pidn p ON (p.PIDN = it.PIDN) 
	WHERE it.InstrType = 'UDS FTLD Form Checklist' or it.InstrType is null 
	ORDER BY p.pidn, it.DCDate;
      
ELSEIF query_type = 'SimpleAllPatients' THEN
	SELECT p.PIDN, it.InstrType, it.DCDate, v.VType, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it  
	    INNER JOIN visit v ON (it.VID = v.VID) 
		INNER JOIN lq_view_udsftldformchecklist i ON (it.InstrID = i.instr_id)  
		RIGHT OUTER JOIN temp_pidn p ON (p.PIDN = it.PIDN)  
	WHERE it.InstrType =  'UDS FTLD Form Checklist' or it.InstrType is null 
	ORDER BY P.pidn, it.DCDate;
	
ELSEIF query_type = 'VisitGrouping' THEN
    SELECT l.PIDN, l.link_date, l.link_id, v.VType, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*
    FROM temp_linkdata l LEFT OUTER JOIN (visit v, instrumenttracking i, lq_view_udsftldformchecklist d)
      ON (l.link_id=v.vid AND v.vid=i.vid AND i.InstrID=d.instr_id AND
          NOT i.DCStatus = 'Scheduled' AND NOT i.DCStatus like 'Canceled%')
    ORDER BY l.PIDN, l.link_date, l.link_id;
	
ELSEIF query_type = 'PrimaryAll' THEN 
	CREATE TEMPORARY TABLE temp_linkdata as 
		SELECT p.PIDN,i.DCDate as link_date, i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
		FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
			INNER JOIN lq_view_udsftldformchecklist d ON (i.InstrID=d.instr_id) 
		WHERE NOT i.DCStatus = 'Scheduled' AND NOT i.DCStatus like 'Canceled%' 
		ORDER BY p.pidn, i.DCDate, i.InstrID ;
	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
	SELECT * from temp_linkdata;
	
ELSEIF query_type = 'PrimaryLatest' THEN  
	CREATE TEMPORARY TABLE temp_linkdata as 
		SELECT p.PIDN, i.DCDate as link_date, i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
		FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
			INNER JOIN lq_view_udsftldformchecklist d ON (i.InstrID=d.instr_id) 
		WHERE i.DCDate = (SELECT MAX(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND  
			i2.InstrType = 'UDS FTLD Form Checklist' AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%') 
		ORDER BY p.pidn, i.DCDate, i.InstrID;
	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
	SELECT * from temp_linkdata;
	
ELSEIF query_type = 'PrimaryFirst' THEN
	CREATE TEMPORARY TABLE temp_linkdata as 
		SELECT p.PIDN,i.DCDate as link_date, i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.* 
		FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN) 
			INNER JOIN lq_view_udsftldformchecklist d ON (i.InstrID=d.instr_id)
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
		LEFT JOIN lq_view_udsftldformchecklist d ON (i.InstrID=d.instr_id) ORDER BY l.pidn, l.link_date, l.link_id;

	DROP TABLE temp_secondary_candidates;

END IF;

END$$

$$
DELIMITER ;



 

DELETE FROM versionhistory WHERE module='lava-crms-nacc-lavaquery' AND version='3.6.0';
INSERT INTO versionhistory(module,version,versiondate,major,minor,fix,updaterequired)
VALUES ('lava-crms-nacc-lavaquery','3.6.0','2015-03-01',3,6,0,0);


