CREATE  TABLE IF NOT EXISTS `query_objects` (
  `query_object_id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT ,
  `instance` VARCHAR(50) NOT NULL DEFAULT 'lava' ,
  `scope` VARCHAR(50) NOT NULL ,
  `module` VARCHAR(50) NOT NULL ,
  `section` VARCHAR(50) NOT NULL ,
  `target` VARCHAR(50) NOT NULL ,
  `standard` TINYINT(4) NOT NULL DEFAULT '1' ,
  `primary_link` TINYINT(4) NOT NULL DEFAULT '1' ,
  `secondary_link` TINYINT(4) NOT NULL DEFAULT '1' ,
  `notes` TEXT NULL DEFAULT NULL ,
  `modified` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ,
  PRIMARY KEY (`query_object_id`) )
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;



DELIMITER $$
CREATE PROCEDURE `proc_get_query_objects_primary_link` ()
BEGIN
SELECT concat(`instance`,'_',`scope`,'_',`module`) as query_source,concat(`section`,'_',`target`) as query_object_name from `query_objects` where `primary_link`=1 ;
END$$

DELIMITER ;

DELIMITER $$
CREATE PROCEDURE `proc_get_query_objects` ()
BEGIN
SELECT concat(`instance`,'_',`scope`,'_',`module`) as query_source,concat(`section`,'_',`target`) as query_object_name from `query_objects`;
END$$

DELIMITER ;

DELIMITER $$
CREATE PROCEDURE `proc_get_query_objects_secondary_link` ()
BEGIN
SELECT concat(`instance`,'_',`scope`,'_',`module`) as query_source,concat(`section`,'_',`target`) as query_object_name from `query_objects` where `secondary_link`=1 ;
END$$

DELIMITER ;



DELIMITER $$
CREATE PROCEDURE `proc_get_query_objects_standard` ()
BEGIN
SELECT concat(`instance`,'_',`scope`,'_',`module`) as query_source,concat(`section`,'_',`target`) as query_object_name from `query_objects` where `standard`=1 ;
END$$

DELIMITER ;




DELIMITER $$

CREATE DEFINER=`UNDEFINED`@`%` PROCEDURE `proc_query_nacc_udsfaq`(query_type varchar(25), query_subtype VARCHAR(25), query_days integer)
    SQL SECURITY INVOKER
BEGIN

	
	
IF query_type = 'Simple' THEN
	SELECT p.PIDN, it.InstrType, it.DCDate, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it 
		INNER JOIN udsfaq i ON (it.InstrID = i.InstrID) 
		INNER JOIN temp_pidn p ON (p.PIDN = it.PIDN) 
      WHERE it.InstrType = 'UDS FAQ' or it.InstrType is null 
      ORDER BY P.PIDN, it.DCDate;
ELSEIF query_type = 'SimpleAllPatients' THEN
	SELECT p.PIDN, it.InstrType, it.DCDate, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it  
	 	INNER JOIN udsfaq i ON (it.InstrID = i.InstrID)  
	     	RIGHT JOIN temp_pidn p ON (p.PIDN = it.PIDN)  
	WHERE it.InstrType =  'UDS FAQ'  or it.InstrType is null 
	ORDER BY P.PIDN, it.DCDate;

ELSEIF query_type = 'PrimaryAll' THEN 
	SELECT p.PIDN,i.DCDate as LinkDate,i.InstrID as LinkID,i.InstrID, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
	FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
		INNER JOIN udsfaq d ON (i.InstrID=d.InstrID) 
	WHERE NOT i.DCStatus = 'Scheduled' AND NOT i.DCStatus like 'Canceled%' 
	ORDER BY p.PIDN, i.DCDate, i.InstrID ;

ELSEIF query_type = 'PrimaryLatest' THEN  
	SELECT p.PIDN, i.DCDate as LinkDate, i.Instrid as LinkID, i.instrID, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
	FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
	           INNER JOIN udsfaq d ON (i.InstrID=d.InstrID) 
	WHERE i.DCDate = (SELECT MAX(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND  
		i2.InstrType =  'UDS FAQ'  AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%') 
	ORDER BY p.PIDN, i.DCDate, i.InstrID;

ELSEIF query_type = 'PrimaryFirst' THEN
	SELECT p.PIDN,i.DCDate as LinkDate, i.Instrid as LinkID, i.instrID, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.* 
	FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN) 
		INNER JOIN udsfaq d ON (i.InstrID=d.InstrID)
	WHERE i.DCDate = (SELECT MIN(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND 
		i2.InstrType =  'UDS FAQ'  AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%')
	ORDER BY p.PIDN, i.InstrID;

ELSEIF query_type IN ('SecondaryAll','SecondaryClosest') THEN
 	#Create candidate table with secondary instruments 
	CREATE TEMPORARY TABLE temp_secondary_candidates AS
   SELECT l.PIDN, l.LinkDate, l.LinkID, i2.InstrType, i2.InstrID, DATEDIFF(l.linkDate, i2.DCDate) AS Days 
	 FROM temp_link l INNER JOIN instrumenttracking i2 ON (i2.PIDN=l.PIDN) 
	 WHERE i2.InstrType = 'UDS FAQ';

	#get rid of earlier or later instruments as necessary
	IF query_subtype = 'Earlier' THEN
	  	DELETE from temp_secondary_candidates WHERE Days >0;
	ELSEIF query_subtype = 'MoreRecent' THEN
		DELETE from temp_secondary_candidates WHERE Days <0;
	END IF;
	

	#limit records to specified day range      
	DELETE FROM temp_secondary_candidates WHERE abs(Days) > query_days;

    	#only keep closest if appropriate
	IF query_type = 'SecondaryClosest' THEN
		
      CREATE TEMPORARY TABLE temp_secondary_closest AS
        SELECT PIDN,LinkDate,LinkID,MIN(ABS(Days)) as MinDays 
        FROM temp_secondary_candidates
        GROUP BY PIDN,LinkDate,LinkID;

      DELETE FROM temp_secondary_candidates
      WHERE ABS(days) <> 
        (SELECT MinDays 
        FROM temp_secondary_closest s2 
        WHERE (s2.PIDN = temp_secondary_candidates.PIDN and s2.LinkDate=temp_secondary_candidates.LinkDate and s2.LinkID=temp_secondary_candidates.LinkID));
      DROP TABLE temp_secondary_closest;

  END IF;


	SELECT l.PIDN, l.LinkDate,l.linkID, i.InstrType, i.DCDate, temp_secondary_candidates.days as DayDiff, i.DCStatus, i.AgeAtDC, d.* 
	FROM temp_link l LEFT JOIN temp_secondary_candidates 
     ON (l.pidn=temp_secondary_candidates.PIDN and l.LinkDate = temp_secondary_candidates.LinkDate and l.LinkID=temp_secondary_candidates.LinkID) 
		LEFT JOIN instrumenttracking i ON (temp_secondary_candidates.InstrID=i.InstrID)
		LEFT JOIN udsfaq d ON (i.InstrID=d.InstrID) ORDER BY l.PIDN, l.LinkDate, l.LinkID;

	DROP TABLE temp_secondary_candidates;
END IF;
END$$

DELIMITER ;