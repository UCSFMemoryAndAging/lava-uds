-- MySQL dump 10.13  Distrib 5.6.10, for linux-glibc2.5 (x86_64)
--
-- Host: localhost    Database: demo
-- ------------------------------------------------------
-- Server version	5.6.10

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Dumping routines for database 'demo'
--
/*!50003 DROP PROCEDURE IF EXISTS `lq_after_set_linkdata` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE PROCEDURE `lq_after_set_linkdata`(user_name varchar(50), host_name varchar(25),method VARCHAR(25))
BEGIN
IF method = 'VISIT' THEN
  UPDATE temp_linkdata1, visit 
  SET temp_linkdata1.pidn = visit.PIDN, temp_linkdata1.link_date = visit.VDATE, temp_linkdata1.link_type = method 
  WHERE temp_linkdata1.link_id = visit.VID;
ELSEIF method = 'INSTRUMENT' THEN
  UPDATE temp_linkdata1, instrumenttracking 
  SET temp_linkdata1.pidn = instrumenttracking.PIDN, temp_linkdata1.link_date = instrumenttracking.DCDATE, temp_linkdata1.link_type = method 
  WHERE temp_linkdata1.link_id = instrumenttracking.InstrID;
ELSE
  UPDATE temp_linkdata1 SET link_type = method;
END IF;

CREATE TEMPORARY TABLE temp_linkdata (
  PIDN INTEGER NOT NULL,
  link_date DATE NOT NULL,
  link_id INTEGER NOT NULL,
  link_type VARCHAR(50) NOT NULL);

IF method = 'PIDN_DATE' THEN
  
  INSERT INTO temp_linkdata(pidn,link_date,link_id,link_type) 
  SELECT pidn,link_date, min(link_id), link_type FROM temp_linkdata1 GROUP BY pidn,link_date,link_type;
ELSE
  
  INSERT INTO temp_linkdata(pidn,link_date,link_id,link_type) 
  SELECT pidn,link_date, link_id, link_type FROM temp_linkdata1 GROUP BY pidn,link_date,link_id,link_type;
END IF;



ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `lq_after_set_pidns` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `lq_after_set_pidns`(user_name varchar(50), host_name varchar(25))
BEGINCREATE TEMPORARY TABLE temp_pidn AS SELECT pidn FROM temp_pidn1 GROUP BY pidn;END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `lq_audit_event` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `lq_audit_event`(user_name varchar(50),host_name varchar(25),lq_query_object varchar(100),lq_query_type varchar(25))
BEGININSERT INTO audit_event_work (`audit_user`,`audit_host`,`audit_timestamp`,`action`,`action_event`)    VALUES(user_name,host_name,NOW(),CONCAT('lava.*.query.',lq_query_object),lq_query_type);  END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `lq_authenticate_user` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `lq_authenticate_user`(user_login varchar(50),user_password varchar(50))
BEGIN 
DECLARE user_id int;

SELECT `UID` into user_id from `authuser` 
where `Login` = user_login 
AND `password` = convert(sha2(concat(user_password,'{',`UID`,'}'),256) USING latin1);

IF(user_id > 0) THEN
 SELECT  1 as auth_user;
ELSE
 SELECT 0 as auth_user;
END IF;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `lq_check_user_auth` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `lq_check_user_auth`(user_login varchar(50),host_name varchar(25))
BEGINDECLARE user_id int;SELECT `UID` into user_id from `authuser` where `Login` = user_login;IF(user_id > 0) THEN  SELECT  1 as user_auth;ELSE  SELECT 0 as user_auth;END IF;END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `lq_check_version` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `lq_check_version`(pModule varchar(25), pMajor integer, pMinor integer, pFix integer)
BEGINDECLARE CurMajor integer;DECLARE CurMinor integer;DECLARE CurFix integer;DECLARE CurVersion varchar(10);DECLARE pVersion varchar(10);DECLARE version_msg varchar(500);DECLARE UpdateNeeded integer;SELECT MAX(`Major`) into CurMajor from `versionhistory` WHERE `Module` = pModule ;SELECT MAX(`Minor`) into CurMinor from `versionhistory` WHERE `Module` = pModule and `Major` = CurMajor;SELECT MAX(`Fix`) into CurFix from `versionhistory` WHERE `Module` = pModule and `Major` = CurMajor and `Minor` = CurMinor;SET pVersion = CONCAT(cast(pMajor as CHAR),'.',cast(pMinor as  CHAR),'.',cast(pFix as CHAR));SELECT MAX(`Version`) into CurVersion FROM `versionhistory` WHERE `Module` = pModule and `Major` = CurMajor and `Minor` = CurMinor and `Fix` = CurFix;SET version_msg = 'OK';IF (CurVersion IS NULL) THEN  SET version_msg = CONCAT('Invalid Module ',Module,' passed to stored procedure lq_check_version.');ELSEIF (pMajor < CurMajor) THEN	SET version_msg = CONCAT('Your application version (',pVersion,') is out of date.  The current version is (',CurVersion,'). You must upgrade your application.');ELSEIF (pMajor > CurMajor) THEN	SET version_msg = CONCAT('Your application version (',pVersion,') is more recent than the current version supported by the database.  The current version is (',CurVersion,'). You must downgrade your application.');ELSEIF (pMinor < CurMinor) THEN  SET version_msg = CONCAT('Your application version (',pVersion,') is out of date.  The current version is (',CurVersion,'). You must upgrade your application.');ELSEIF (pMinor > CurMinor) THEN	SET version_msg = CONCAT('Your application version (',pVersion,') is more recent than the current version supported by the database.  The current version is (',CurVersion,'). You must downgrade your application.');ELSEIF (pFix < CurFix) THEN  SELECT count(*) into UpdateNeeded from `versionhistory` WHERE `Module`=  pModule and `Major` >= pMajor and `Minor` >= pMinor and `Fix` > pFix  and `UpdateRequired` = 1;  IF(UpdateNeeded > 0) THEN    SET version_msg = CONCAT('Your application version (',pVersion,') is out of date.  The current version is (',CurVersion,'). You must upgrade your application.');  ELSE     SET version_msg = CONCAT('Your application version (',pVersion,') is slightly out of date.  The current version is (',CurVersion,'). You should upgrade to the current version soon.');  END IF;ELSEIF (pFix > CurFix) THEN	SET version_msg = CONCAT('Your application version (',pVersion,') is more recent than the current version supported by the database.  The current version is (',CurVersion,'). You must downgrade your application.');END IF;select version_msg as 'version_msg';END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `lq_clear_linkdata` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `lq_clear_linkdata`(user_name varchar(50), host_name varchar(25))
BEGINDROP TABLE IF EXISTS temp_linkdata;DROP TABLE IF EXISTS temp_linkdata1;END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `lq_clear_pidns` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `lq_clear_pidns`(user_name varchar(50), host_name varchar(25))
BEGINDROP TABLE IF EXISTS temp_pidn;DROP TABLE IF EXISTS temp_pidn1;END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `lq_get_all_pidns` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `lq_get_all_pidns`(user_name varchar(50), host_name varchar(25))
BEGINSELECT pidn from patient order by pidn;END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `lq_get_assessment_instruments` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `lq_get_assessment_instruments`(user_name varchar(50), host_name varchar(25),query_type varchar(25), query_subtype VARCHAR(25), query_days INTEGER)
BEGINCALL lq_audit_event(user_name,host_name,'crms.assessment.instruments',query_type);	IF query_type = 'Simple' THEN	SELECT p.pidn, i.* FROM lq_view_instruments i 		INNER JOIN temp_pidn p ON (p.PIDN = i.PIDN_Instrument)       ORDER BY p.pidn, i.DCDate,i.InstrType;ELSEIF query_type = 'SimpleAllPatients' THEN	SELECT p.pidn, i.*  FROM lq_view_instruments i 		RIGHT OUTER JOIN temp_pidn p ON (p.PIDN = i.PIDN_Instrument)       ORDER BY p.pidn, i.DCDate,i.InstrType;END IF;END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `lq_get_enrollment_status` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `lq_get_enrollment_status`(user_name varchar(50), host_name varchar(25),query_type varchar(25), query_subtype VARCHAR(25), query_days INTEGER)
BEGINCALL lq_audit_event(user_name,host_name,'crms.enrollment.status',query_type);IF query_type = 'Simple' THEN	SELECT p.pidn, e.*  FROM lq_view_enrollment e 		INNER JOIN temp_pidn p ON (p.PIDN = e.PIDN_Enrollment)       ORDER BY p.pidn, e.latestDate;ELSEIF query_type = 'SimpleAllPatients' THEN	SELECT p.pidn, e.* FROM lq_view_enrollment e 		RIGHT OUTER JOIN temp_pidn p ON (p.PIDN = e.PIDN_Enrollment)       ORDER BY p.pidn, e.latestDate;END IF;END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `lq_get_linkdata` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `lq_get_linkdata`(user_name varchar(50), host_name varchar(25),query_type varchar(25), query_subtype VARCHAR(25), query_days INTEGER)
    SQL SECURITY INVOKER
BEGINIF query_type = 'VISIT' THEN	SELECT l.*, '---->' as `Visit Details`, v.* from temp_linkdata l inner join visit v on l.link_id=v.VID	ORDER BY l.pidn, l.link_date,l.link_id;ELSEIF query_type = 'INSTRUMENT' THEN 	SELECT l.*, '---->' as `Instrument Details`, i.* from temp_linkdata l inner join instrumenttracking i on l.link_id=i.InstrID	ORDER BY l.pidn, l.link_date,l.link_id;ELSE   SELECT * from temp_linkdata l  	ORDER BY l.pidn, l.link_date,l.link_id;END IF;END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `lq_get_nacc_udsappraisal` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `lq_get_nacc_udsappraisal`(user_name varchar(50), host_name varchar(25),query_type varchar(25), query_subtype VARCHAR(25), query_days INTEGER)
BEGIN



CALL lq_audit_event(user_name,host_name,'crms.nacc.udsappraisal',query_type);




	
IF query_type = 'Simple' THEN
	SELECT p.pidn, it.InstrType, it.DCDate, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it 
		INNER JOIN lq_view_udsappraisal i ON (it.InstrID = i.InstrID) 
		INNER JOIN temp_pidn p ON (p.PIDN = it.PIDN) 
      WHERE it.InstrType = 'UDS Appraisal' or it.InstrType is null 
      ORDER BY p.pidn, it.DCDate;
ELSEIF query_type = 'SimpleAllPatients' THEN
	SELECT p.pidn, it.InstrType, it.DCDate, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it  
	 	INNER JOIN lq_view_udsappraisal i ON (it.InstrID = i.InstrID)  
	  RIGHT OUTER JOIN temp_pidn p ON (p.PIDN = it.PIDN)  
	WHERE it.InstrType =  'UDS Appraisal'  or it.InstrType is null 
	ORDER BY P.pidn, it.DCDate;

ELSEIF query_type = 'PrimaryAll' THEN 
	CREATE TEMPORARY TABLE temp_linkdata as 

  SELECT p.pidn,i.DCDate as link_date,i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
	FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
		INNER JOIN lq_view_udsappraisal d ON (i.InstrID=d.InstrID) 
	WHERE NOT i.DCStatus = 'Scheduled' AND NOT i.DCStatus like 'Canceled%' 
	ORDER BY p.pidn, i.DCDate, i.InstrID ;
	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
   SELECT * from temp_linkdata;
ELSEIF query_type = 'PrimaryLatest' THEN  
	CREATE TEMPORARY TABLE temp_linkdata as 

  SELECT p.pidn, i.DCDate as link_date,i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
	FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
	           INNER JOIN lq_view_udsappraisal d ON (i.InstrID=d.InstrID) 
	WHERE i.DCDate = (SELECT MAX(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND  
		i2.InstrType =  'UDS Appraisal'  AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%') 
	ORDER BY p.pidn, i.DCDate, i.InstrID;
  	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
  SELECT * from temp_linkdata;
ELSEIF query_type = 'PrimaryFirst' THEN

  CREATE TEMPORARY TABLE temp_linkdata as 
	SELECT p.pidn,i.DCDate as link_date,i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.* 
	FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN) 
		INNER JOIN lq_view_udsappraisal d ON (i.InstrID=d.InstrID)
	WHERE i.DCDate = (SELECT MIN(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND 
		i2.InstrType =  'UDS Appraisal'  AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%')
	ORDER BY p.pidn, i.InstrID;
  	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
  SELECT * from temp_linkdata;
ELSEIF query_type IN ('SecondaryAll','SecondaryClosest') THEN
 	
	CREATE TEMPORARY TABLE temp_secondary_candidates AS
   SELECT l.pidn, l.link_date, l.link_id, i2.InstrType, i2.InstrID, DATEDIFF(l.link_date, i2.DCDate) AS Days 
	 FROM temp_linkdata l INNER JOIN instrumenttracking i2 ON (i2.PIDN=l.PIDN) 
	 WHERE i2.InstrType = 'UDS Appraisal';
	ALTER TABLE temp_secondary_candidates ADD INDEX(pidn,link_date,link_id,Days);
	
	
	IF query_subtype = 'Earlier' THEN
	  	DELETE from temp_secondary_candidates WHERE Days >0;
	ELSEIF query_subtype = 'MoreRecent' THEN
		DELETE from temp_secondary_candidates WHERE Days <0;
	END IF;
	

	
	DELETE FROM temp_secondary_candidates WHERE abs(Days) > query_days;

    	
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


	SELECT l.pidn, l.link_date,l.link_id, i.InstrType,i.DCDate, temp_secondary_candidates.days as DayDiff, i.DCStatus, i.AgeAtDC, d.* 
	FROM temp_linkdata l LEFT OUTER JOIN temp_secondary_candidates 
     ON (l.pidn=temp_secondary_candidates.pidn and l.link_date = temp_secondary_candidates.link_date and l.link_id=temp_secondary_candidates.link_id) 
		LEFT JOIN instrumenttracking i ON (temp_secondary_candidates.InstrID=i.InstrID)
		LEFT JOIN lq_view_udsappraisal d ON (i.InstrID=d.InstrID) ORDER BY l.pidn, l.link_date, l.link_id;

	DROP TABLE temp_secondary_candidates;
END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `lq_get_nacc_udscdr` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `lq_get_nacc_udscdr`(user_name varchar(50), host_name varchar(25),query_type varchar(25), query_subtype VARCHAR(25), query_days INTEGER)
BEGIN



CALL lq_audit_event(user_name,host_name,'crms.nacc.udscdr',query_type);

	
	
IF query_type = 'Simple' THEN
	SELECT p.pidn, it.InstrType, it.DCDate, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it 
		INNER JOIN lq_view_udscdr i ON (it.InstrID = i.InstrID) 
		INNER JOIN temp_pidn p ON (p.PIDN = it.PIDN) 
      WHERE it.InstrType = 'UDS CDR' or it.InstrType is null 
      ORDER BY p.pidn, it.DCDate;
ELSEIF query_type = 'SimpleAllPatients' THEN
	SELECT p.pidn, it.InstrType, it.DCDate, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it  
	 	INNER JOIN lq_view_udscdr i ON (it.InstrID = i.InstrID)  
	  RIGHT OUTER JOIN temp_pidn p ON (p.PIDN = it.PIDN)  
	WHERE it.InstrType =  'UDS CDR'  or it.InstrType is null 
	ORDER BY P.pidn, it.DCDate;

ELSEIF query_type = 'PrimaryAll' THEN 
	CREATE TEMPORARY TABLE temp_linkdata as 

  SELECT p.pidn,i.DCDate as link_date,i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
	FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
		INNER JOIN lq_view_udscdr d ON (i.InstrID=d.InstrID) 
	WHERE NOT i.DCStatus = 'Scheduled' AND NOT i.DCStatus like 'Canceled%' 
	ORDER BY p.pidn, i.DCDate, i.InstrID ;
   	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
  SELECT * from temp_linkdata;
ELSEIF query_type = 'PrimaryLatest' THEN  
	CREATE TEMPORARY TABLE temp_linkdata as 

  SELECT p.pidn, i.DCDate as link_date,i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
	FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
	           INNER JOIN lq_view_udscdr d ON (i.InstrID=d.InstrID) 
	WHERE i.DCDate = (SELECT MAX(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND  
		i2.InstrType =  'UDS CDR'  AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%') 
	ORDER BY p.pidn, i.DCDate, i.InstrID;
  	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
  SELECT * from temp_linkdata;
ELSEIF query_type = 'PrimaryFirst' THEN

  CREATE TEMPORARY TABLE temp_linkdata as 
	SELECT p.pidn,i.DCDate as link_date,i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.* 
	FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN) 
		INNER JOIN lq_view_udscdr d ON (i.InstrID=d.InstrID)
	WHERE i.DCDate = (SELECT MIN(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND 
		i2.InstrType =  'UDS CDR'  AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%')
	ORDER BY p.pidn, i.InstrID;
  	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
  SELECT * from temp_linkdata;
ELSEIF query_type IN ('SecondaryAll','SecondaryClosest') THEN
 	
	CREATE TEMPORARY TABLE temp_secondary_candidates AS
   SELECT l.pidn, l.link_date, l.link_id, i2.InstrType, i2.InstrID, DATEDIFF(l.link_date, i2.DCDate) AS Days 
	 FROM temp_linkdata l INNER JOIN instrumenttracking i2 ON (i2.PIDN=l.PIDN) 
	 WHERE i2.InstrType = 'UDS CDR';

		ALTER TABLE temp_secondary_candidates ADD INDEX(pidn,link_date,link_id,Days);
	
	
	IF query_subtype = 'Earlier' THEN
	  	DELETE from temp_secondary_candidates WHERE Days >0;
	ELSEIF query_subtype = 'MoreRecent' THEN
		DELETE from temp_secondary_candidates WHERE Days <0;
	END IF;
	

	
	DELETE FROM temp_secondary_candidates WHERE abs(Days) > query_days;

    	
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


	SELECT l.pidn, l.link_date,l.link_id, i.InstrType,i.DCDate, temp_secondary_candidates.days as DayDiff, i.DCStatus, i.AgeAtDC, d.* 
	FROM temp_linkdata l LEFT OUTER JOIN temp_secondary_candidates 
     ON (l.pidn=temp_secondary_candidates.pidn and l.link_date = temp_secondary_candidates.link_date and l.link_id=temp_secondary_candidates.link_id) 
		LEFT JOIN instrumenttracking i ON (temp_secondary_candidates.InstrID=i.InstrID)
		LEFT JOIN lq_view_udscdr d ON (i.InstrID=d.InstrID) ORDER BY l.pidn, l.link_date, l.link_id;

	DROP TABLE temp_secondary_candidates;
END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `lq_get_nacc_udsdiagnosis` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `lq_get_nacc_udsdiagnosis`(user_name varchar(50), host_name varchar(25),query_type varchar(25), query_subtype VARCHAR(25), query_days INTEGER)
BEGIN



CALL lq_audit_event(user_name,host_name,'crms.nacc.udsdiagnosis',query_type);

	
	
IF query_type = 'Simple' THEN
	SELECT p.pidn, it.InstrType, it.DCDate, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it 
		INNER JOIN lq_view_udsdiagnosis i ON (it.InstrID = i.InstrID) 
		INNER JOIN temp_pidn p ON (p.PIDN = it.PIDN) 
      WHERE it.InstrType = 'UDS Diagnosis' or it.InstrType is null 
      ORDER BY p.pidn, it.DCDate;
ELSEIF query_type = 'SimpleAllPatients' THEN
	SELECT p.pidn, it.InstrType, it.DCDate, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it  
	 	INNER JOIN lq_view_udsdiagnosis i ON (it.InstrID = i.InstrID)  
	  RIGHT OUTER JOIN temp_pidn p ON (p.PIDN = it.PIDN)  
	WHERE it.InstrType =  'UDS Diagnosis'  or it.InstrType is null 
	ORDER BY P.pidn, it.DCDate;

ELSEIF query_type = 'PrimaryAll' THEN 
	CREATE TEMPORARY TABLE temp_linkdata as 

  SELECT p.pidn,i.DCDate as link_date,i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
	FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
		INNER JOIN lq_view_udsdiagnosis d ON (i.InstrID=d.InstrID) 
	WHERE NOT i.DCStatus = 'Scheduled' AND NOT i.DCStatus like 'Canceled%' 
	ORDER BY p.pidn, i.DCDate, i.InstrID ;
   	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
  SELECT * from temp_linkdata;
ELSEIF query_type = 'PrimaryLatest' THEN  
	CREATE TEMPORARY TABLE temp_linkdata as 

  SELECT p.pidn, i.DCDate as link_date,i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
	FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
	           INNER JOIN lq_view_udsdiagnosis d ON (i.InstrID=d.InstrID) 
	WHERE i.DCDate = (SELECT MAX(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND  
		i2.InstrType =  'UDS Diagnosis'  AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%') 
	ORDER BY p.pidn, i.DCDate, i.InstrID;
  	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
  SELECT * from temp_linkdata;
ELSEIF query_type = 'PrimaryFirst' THEN

  CREATE TEMPORARY TABLE temp_linkdata as 
	SELECT p.pidn,i.DCDate as link_date,i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.* 
	FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN) 
		INNER JOIN lq_view_udsdiagnosis d ON (i.InstrID=d.InstrID)
	WHERE i.DCDate = (SELECT MIN(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND 
		i2.InstrType =  'UDS Diagnosis'  AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%')
	ORDER BY p.pidn, i.InstrID;
  	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
  SELECT * from temp_linkdata;
ELSEIF query_type IN ('SecondaryAll','SecondaryClosest') THEN
 	
	CREATE TEMPORARY TABLE temp_secondary_candidates AS
   SELECT l.pidn, l.link_date, l.link_id, i2.InstrType, i2.InstrID, DATEDIFF(l.link_date, i2.DCDate) AS Days 
	 FROM temp_linkdata l INNER JOIN instrumenttracking i2 ON (i2.PIDN=l.PIDN) 
	 WHERE i2.InstrType = 'UDS Diagnosis';

		ALTER TABLE temp_secondary_candidates ADD INDEX(pidn,link_date,link_id,Days);
	
	
	IF query_subtype = 'Earlier' THEN
	  	DELETE from temp_secondary_candidates WHERE Days >0;
	ELSEIF query_subtype = 'MoreRecent' THEN
		DELETE from temp_secondary_candidates WHERE Days <0;
	END IF;
	

	
	DELETE FROM temp_secondary_candidates WHERE abs(Days) > query_days;

    	
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


	SELECT l.pidn, l.link_date,l.link_id, i.InstrType,i.DCDate, temp_secondary_candidates.days as DayDiff, i.DCStatus, i.AgeAtDC, d.* 
	FROM temp_linkdata l LEFT OUTER JOIN temp_secondary_candidates 
     ON (l.pidn=temp_secondary_candidates.pidn and l.link_date = temp_secondary_candidates.link_date and l.link_id=temp_secondary_candidates.link_id) 
		LEFT JOIN instrumenttracking i ON (temp_secondary_candidates.InstrID=i.InstrID)
		LEFT JOIN lq_view_udsdiagnosis d ON (i.InstrID=d.InstrID) ORDER BY l.pidn, l.link_date, l.link_id;

	DROP TABLE temp_secondary_candidates;
END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `lq_get_nacc_udsfamilyhistory1` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `lq_get_nacc_udsfamilyhistory1`(user_name varchar(50), host_name varchar(25),query_type varchar(25), query_subtype VARCHAR(25), query_days INTEGER)
BEGIN



CALL lq_audit_event(user_name,host_name,'crms.nacc.udsfamilyhistory1',query_type);

	
	
IF query_type = 'Simple' THEN
	SELECT p.pidn, it.InstrType, it.DCDate, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it 
		INNER JOIN lq_view_udsfamilyhistory1 i ON (it.InstrID = i.InstrID) 
		INNER JOIN temp_pidn p ON (p.PIDN = it.PIDN) 
      WHERE it.InstrType = 'UDS Family History' or it.InstrType is null 
      ORDER BY p.pidn, it.DCDate;
ELSEIF query_type = 'SimpleAllPatients' THEN
	SELECT p.pidn, it.InstrType, it.DCDate, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it  
	 	INNER JOIN lq_view_udsfamilyhistory1 i ON (it.InstrID = i.InstrID)  
	  RIGHT OUTER JOIN temp_pidn p ON (p.PIDN = it.PIDN)  
	WHERE it.InstrType =  'UDS Family History'  or it.InstrType is null 
	ORDER BY P.pidn, it.DCDate;

ELSEIF query_type = 'PrimaryAll' THEN 
	CREATE TEMPORARY TABLE temp_linkdata as 

  SELECT p.pidn,i.DCDate as link_date,i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
	FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
		INNER JOIN lq_view_udsfamilyhistory1 d ON (i.InstrID=d.InstrID) 
	WHERE NOT i.DCStatus = 'Scheduled' AND NOT i.DCStatus like 'Canceled%' 
	ORDER BY p.pidn, i.DCDate, i.InstrID ;
   	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
  SELECT * from temp_linkdata;
ELSEIF query_type = 'PrimaryLatest' THEN  
	CREATE TEMPORARY TABLE temp_linkdata as 

  SELECT p.pidn, i.DCDate as link_date,i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
	FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
	           INNER JOIN lq_view_udsfamilyhistory1 d ON (i.InstrID=d.InstrID) 
	WHERE i.DCDate = (SELECT MAX(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND  
		i2.InstrType =  'UDS Family History' and i2.InstrVer = '1' AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%') 
	ORDER BY p.pidn, i.DCDate, i.InstrID;
  	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
  SELECT * from temp_linkdata;
ELSEIF query_type = 'PrimaryFirst' THEN

  CREATE TEMPORARY TABLE temp_linkdata as 
	SELECT p.pidn,i.DCDate as link_date,i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.* 
	FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN) 
		INNER JOIN lq_view_udsfamilyhistory1 d ON (i.InstrID=d.InstrID)
	WHERE i.DCDate = (SELECT MIN(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND 
		i2.InstrType =  'UDS Family History' and i2.InstrVer = '1' AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%')
	ORDER BY p.pidn, i.InstrID;
  	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
  SELECT * from temp_linkdata;
ELSEIF query_type IN ('SecondaryAll','SecondaryClosest') THEN
 	
	CREATE TEMPORARY TABLE temp_secondary_candidates AS
   SELECT l.pidn, l.link_date, l.link_id, i2.InstrType, i2.InstrID, DATEDIFF(l.link_date, i2.DCDate) AS Days 
	 FROM temp_linkdata l INNER JOIN instrumenttracking i2 ON (i2.PIDN=l.PIDN) 
	 WHERE i2.InstrType = 'UDS Family History' and i2.InstrVer = '1';

		ALTER TABLE temp_secondary_candidates ADD INDEX(pidn,link_date,link_id,Days);
	
	
	IF query_subtype = 'Earlier' THEN
	  	DELETE from temp_secondary_candidates WHERE Days >0;
	ELSEIF query_subtype = 'MoreRecent' THEN
		DELETE from temp_secondary_candidates WHERE Days <0;
	END IF;
	

	
	DELETE FROM temp_secondary_candidates WHERE abs(Days) > query_days;

    	
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


	SELECT l.pidn, l.link_date,l.link_id, i.InstrType,i.DCDate, temp_secondary_candidates.days as DayDiff, i.DCStatus, i.AgeAtDC, d.* 
	FROM temp_linkdata l LEFT OUTER JOIN temp_secondary_candidates 
     ON (l.pidn=temp_secondary_candidates.pidn and l.link_date = temp_secondary_candidates.link_date and l.link_id=temp_secondary_candidates.link_id) 
		LEFT JOIN instrumenttracking i ON (temp_secondary_candidates.InstrID=i.InstrID)
		LEFT JOIN lq_view_udsfamilyhistory1 d ON (i.InstrID=d.InstrID) ORDER BY l.pidn, l.link_date, l.link_id;

	DROP TABLE temp_secondary_candidates;
END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `lq_get_nacc_udsfamilyhistory2` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `lq_get_nacc_udsfamilyhistory2`(user_name varchar(50), host_name varchar(25),query_type varchar(25), query_subtype VARCHAR(25), query_days INTEGER)
BEGIN



CALL lq_audit_event(user_name,host_name,'crms.nacc.udsfamilyhistory2',query_type);

	
	
IF query_type = 'Simple' THEN
	SELECT p.pidn, it.InstrType, it.DCDate, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it 
		INNER JOIN lq_view_udsfamilyhistory2 i ON (it.InstrID = i.InstrID) 
		INNER JOIN temp_pidn p ON (p.PIDN = it.PIDN) 
      WHERE it.InstrType = 'UDS Family History' or it.InstrType is null 
      ORDER BY p.pidn, it.DCDate;
ELSEIF query_type = 'SimpleAllPatients' THEN
	SELECT p.pidn, it.InstrType, it.DCDate, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it  
	 	INNER JOIN lq_view_udsfamilyhistory2 i ON (it.InstrID = i.InstrID)  
	  RIGHT OUTER JOIN temp_pidn p ON (p.PIDN = it.PIDN)  
	WHERE it.InstrType =  'UDS Family History'  or it.InstrType is null 
	ORDER BY P.pidn, it.DCDate;

ELSEIF query_type = 'PrimaryAll' THEN 
	CREATE TEMPORARY TABLE temp_linkdata as 

  SELECT p.pidn,i.DCDate as link_date,i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
	FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
		INNER JOIN lq_view_udsfamilyhistory2 d ON (i.InstrID=d.InstrID) 
	WHERE NOT i.DCStatus = 'Scheduled' AND NOT i.DCStatus like 'Canceled%' 
	ORDER BY p.pidn, i.DCDate, i.InstrID ;
   	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
  SELECT * from temp_linkdata;
ELSEIF query_type = 'PrimaryLatest' THEN  
	CREATE TEMPORARY TABLE temp_linkdata as 

  SELECT p.pidn, i.DCDate as link_date,i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
	FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
	           INNER JOIN lq_view_udsfamilyhistory2 d ON (i.InstrID=d.InstrID) 
	WHERE i.DCDate = (SELECT MAX(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND  
		i2.InstrType =  'UDS Family History' and i2.InstrVer = '2' AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%') 
	ORDER BY p.pidn, i.DCDate, i.InstrID;
  	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
  SELECT * from temp_linkdata;
ELSEIF query_type = 'PrimaryFirst' THEN

  CREATE TEMPORARY TABLE temp_linkdata as 
	SELECT p.pidn,i.DCDate as link_date,i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.* 
	FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN) 
		INNER JOIN lq_view_udsfamilyhistory2 d ON (i.InstrID=d.InstrID)
	WHERE i.DCDate = (SELECT MIN(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND 
		i2.InstrType =  'UDS Family History' and i2.InstrVer = '2' AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%')
	ORDER BY p.pidn, i.InstrID;
  	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
  SELECT * from temp_linkdata;
ELSEIF query_type IN ('SecondaryAll','SecondaryClosest') THEN
 	
	CREATE TEMPORARY TABLE temp_secondary_candidates AS
   SELECT l.pidn, l.link_date, l.link_id, i2.InstrType, i2.InstrID, DATEDIFF(l.link_date, i2.DCDate) AS Days 
	 FROM temp_linkdata l INNER JOIN instrumenttracking i2 ON (i2.PIDN=l.PIDN) 
	 WHERE i2.InstrType = 'UDS Family History' and i2.InstrVer = '2';

		ALTER TABLE temp_secondary_candidates ADD INDEX(pidn,link_date,link_id,Days);
	
	
	IF query_subtype = 'Earlier' THEN
	  	DELETE from temp_secondary_candidates WHERE Days >0;
	ELSEIF query_subtype = 'MoreRecent' THEN
		DELETE from temp_secondary_candidates WHERE Days <0;
	END IF;
	

	
	DELETE FROM temp_secondary_candidates WHERE abs(Days) > query_days;

    	
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


	SELECT l.pidn, l.link_date,l.link_id, i.InstrType,i.DCDate, temp_secondary_candidates.days as DayDiff, i.DCStatus, i.AgeAtDC, d.* 
	FROM temp_linkdata l LEFT OUTER JOIN temp_secondary_candidates 
     ON (l.pidn=temp_secondary_candidates.pidn and l.link_date = temp_secondary_candidates.link_date and l.link_id=temp_secondary_candidates.link_id) 
		LEFT JOIN instrumenttracking i ON (temp_secondary_candidates.InstrID=i.InstrID)
		LEFT JOIN lq_view_udsfamilyhistory2 d ON (i.InstrID=d.InstrID) ORDER BY l.pidn, l.link_date, l.link_id;

	DROP TABLE temp_secondary_candidates;
END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `lq_get_nacc_udsfamilyhistory2extended` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `lq_get_nacc_udsfamilyhistory2extended`(user_name varchar(50), host_name varchar(25),query_type varchar(25), query_subtype VARCHAR(25), query_days INTEGER)
BEGIN



CALL lq_audit_event(user_name,host_name,'crms.nacc.udsfamilyhistory2extended',query_type);

	
	
IF query_type = 'Simple' THEN
	SELECT p.pidn, it.InstrType, it.DCDate, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it 
		INNER JOIN lq_view_udsfamilyhistory2extended i ON (it.InstrID = i.InstrID) 
		INNER JOIN temp_pidn p ON (p.PIDN = it.PIDN) 
      WHERE it.InstrType = 'UDS Family History' or it.InstrType is null 
      ORDER BY p.pidn, it.DCDate;
ELSEIF query_type = 'SimpleAllPatients' THEN
	SELECT p.pidn, it.InstrType, it.DCDate, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it  
	 	INNER JOIN lq_view_udsfamilyhistory2extended i ON (it.InstrID = i.InstrID)  
	  RIGHT OUTER JOIN temp_pidn p ON (p.PIDN = it.PIDN)  
	WHERE it.InstrType =  'UDS Family History'  or it.InstrType is null 
	ORDER BY P.pidn, it.DCDate;

ELSEIF query_type = 'PrimaryAll' THEN 
	CREATE TEMPORARY TABLE temp_linkdata as 

  SELECT p.pidn,i.DCDate as link_date,i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
	FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
		INNER JOIN lq_view_udsfamilyhistory2extended d ON (i.InstrID=d.InstrID) 
	WHERE NOT i.DCStatus = 'Scheduled' AND NOT i.DCStatus like 'Canceled%' 
	ORDER BY p.pidn, i.DCDate, i.InstrID ;
   	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
  SELECT * from temp_linkdata;
ELSEIF query_type = 'PrimaryLatest' THEN  
	CREATE TEMPORARY TABLE temp_linkdata as 

  SELECT p.pidn, i.DCDate as link_date,i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
	FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
	           INNER JOIN lq_view_udsfamilyhistory2extended d ON (i.InstrID=d.InstrID) 
	WHERE i.DCDate = (SELECT MAX(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND  
		i2.InstrType =  'UDS Family History' and i2.InstrVer = '2' AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%') 
	ORDER BY p.pidn, i.DCDate, i.InstrID;
  	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
  SELECT * from temp_linkdata;
ELSEIF query_type = 'PrimaryFirst' THEN

  CREATE TEMPORARY TABLE temp_linkdata as 
	SELECT p.pidn,i.DCDate as link_date,i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.* 
	FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN) 
		INNER JOIN lq_view_udsfamilyhistory2extended d ON (i.InstrID=d.InstrID)
	WHERE i.DCDate = (SELECT MIN(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND 
		i2.InstrType =  'UDS Family History' and i2.InstrVer = '2' AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%')
	ORDER BY p.pidn, i.InstrID;
  	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
  SELECT * from temp_linkdata;
ELSEIF query_type IN ('SecondaryAll','SecondaryClosest') THEN
 	
	CREATE TEMPORARY TABLE temp_secondary_candidates AS
   SELECT l.pidn, l.link_date, l.link_id, i2.InstrType, i2.InstrID, DATEDIFF(l.link_date, i2.DCDate) AS Days 
	 FROM temp_linkdata l INNER JOIN instrumenttracking i2 ON (i2.PIDN=l.PIDN) 
	 WHERE i2.InstrType = 'UDS Family History' and i2.InstrVer = '2';

		ALTER TABLE temp_secondary_candidates ADD INDEX(pidn,link_date,link_id,Days);
	
	
	IF query_subtype = 'Earlier' THEN
	  	DELETE from temp_secondary_candidates WHERE Days >0;
	ELSEIF query_subtype = 'MoreRecent' THEN
		DELETE from temp_secondary_candidates WHERE Days <0;
	END IF;
	

	
	DELETE FROM temp_secondary_candidates WHERE abs(Days) > query_days;

    	
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


	SELECT l.pidn, l.link_date,l.link_id, i.InstrType,i.DCDate, temp_secondary_candidates.days as DayDiff, i.DCStatus, i.AgeAtDC, d.* 
	FROM temp_linkdata l LEFT OUTER JOIN temp_secondary_candidates 
     ON (l.pidn=temp_secondary_candidates.pidn and l.link_date = temp_secondary_candidates.link_date and l.link_id=temp_secondary_candidates.link_id) 
		LEFT JOIN instrumenttracking i ON (temp_secondary_candidates.InstrID=i.InstrID)
		LEFT JOIN lq_view_udsfamilyhistory2extended d ON (i.InstrID=d.InstrID) ORDER BY l.pidn, l.link_date, l.link_id;

	DROP TABLE temp_secondary_candidates;
END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `lq_get_nacc_udsfaq` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `lq_get_nacc_udsfaq`(user_name varchar(50), host_name varchar(25),query_type varchar(25), query_subtype VARCHAR(25), query_days INTEGER)
BEGIN



CALL lq_audit_event(user_name,host_name,'crms.nacc.udsfaq',query_type);

	
	
IF query_type = 'Simple' THEN
	SELECT p.pidn, it.InstrType, it.DCDate, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it 
		INNER JOIN lq_view_udsfaq i ON (it.InstrID = i.InstrID) 
		INNER JOIN temp_pidn p ON (p.PIDN = it.PIDN) 
      WHERE it.InstrType = 'UDS FAQ' or it.InstrType is null 
      ORDER BY p.pidn, it.DCDate;
ELSEIF query_type = 'SimpleAllPatients' THEN
	SELECT p.pidn, it.InstrType, it.DCDate, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it  
	 	INNER JOIN lq_view_udsfaq i ON (it.InstrID = i.InstrID)  
	  RIGHT OUTER JOIN temp_pidn p ON (p.PIDN = it.PIDN)  
	WHERE it.InstrType =  'UDS FAQ'  or it.InstrType is null 
	ORDER BY P.pidn, it.DCDate;

ELSEIF query_type = 'PrimaryAll' THEN 
	CREATE TEMPORARY TABLE temp_linkdata as 

  SELECT p.pidn,i.DCDate as link_date,i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
	FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
		INNER JOIN lq_view_udsfaq d ON (i.InstrID=d.InstrID) 
	WHERE NOT i.DCStatus = 'Scheduled' AND NOT i.DCStatus like 'Canceled%' 
	ORDER BY p.pidn, i.DCDate, i.InstrID ;
   	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
  SELECT * from temp_linkdata;
ELSEIF query_type = 'PrimaryLatest' THEN  
	CREATE TEMPORARY TABLE temp_linkdata as 

  SELECT p.pidn, i.DCDate as link_date,i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
	FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
	           INNER JOIN lq_view_udsfaq d ON (i.InstrID=d.InstrID) 
	WHERE i.DCDate = (SELECT MAX(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND  
		i2.InstrType =  'UDS FAQ'  AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%') 
	ORDER BY p.pidn, i.DCDate, i.InstrID;
  	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
  SELECT * from temp_linkdata;
ELSEIF query_type = 'PrimaryFirst' THEN

  CREATE TEMPORARY TABLE temp_linkdata as 
	SELECT p.pidn,i.DCDate as link_date,i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.* 
	FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN) 
		INNER JOIN lq_view_udsfaq d ON (i.InstrID=d.InstrID)
	WHERE i.DCDate = (SELECT MIN(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND 
		i2.InstrType =  'UDS FAQ'  AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%')
	ORDER BY p.pidn, i.InstrID;
  	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
  SELECT * from temp_linkdata;
ELSEIF query_type IN ('SecondaryAll','SecondaryClosest') THEN
 	
	CREATE TEMPORARY TABLE temp_secondary_candidates AS
   SELECT l.pidn, l.link_date, l.link_id, i2.InstrType, i2.InstrID, DATEDIFF(l.link_date, i2.DCDate) AS Days 
	 FROM temp_linkdata l INNER JOIN instrumenttracking i2 ON (i2.PIDN=l.PIDN) 
	 WHERE i2.InstrType = 'UDS FAQ';

		ALTER TABLE temp_secondary_candidates ADD INDEX(pidn,link_date,link_id,Days);
	
	
	IF query_subtype = 'Earlier' THEN
	  	DELETE from temp_secondary_candidates WHERE Days >0;
	ELSEIF query_subtype = 'MoreRecent' THEN
		DELETE from temp_secondary_candidates WHERE Days <0;
	END IF;
	

	
	DELETE FROM temp_secondary_candidates WHERE abs(Days) > query_days;

    	
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


	SELECT l.pidn, l.link_date,l.link_id, i.InstrType,i.DCDate, temp_secondary_candidates.days as DayDiff, i.DCStatus, i.AgeAtDC, d.* 
	FROM temp_linkdata l LEFT OUTER JOIN temp_secondary_candidates 
     ON (l.pidn=temp_secondary_candidates.pidn and l.link_date = temp_secondary_candidates.link_date and l.link_id=temp_secondary_candidates.link_id) 
		LEFT JOIN instrumenttracking i ON (temp_secondary_candidates.InstrID=i.InstrID)
		LEFT JOIN lq_view_udsfaq d ON (i.InstrID=d.InstrID) ORDER BY l.pidn, l.link_date, l.link_id;

	DROP TABLE temp_secondary_candidates;
END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `lq_get_nacc_udsformchecklist` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `lq_get_nacc_udsformchecklist`(user_name varchar(50), host_name varchar(25),query_type varchar(25), query_subtype VARCHAR(25), query_days INTEGER)
BEGIN



CALL lq_audit_event(user_name,host_name,'crms.nacc.udsformchecklist',query_type);

	
	
IF query_type = 'Simple' THEN
	SELECT p.pidn, it.InstrType, it.DCDate, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it 
		INNER JOIN lq_view_udsformchecklist i ON (it.InstrID = i.InstrID) 
		INNER JOIN temp_pidn p ON (p.PIDN = it.PIDN) 
      WHERE it.InstrType = 'UDS Form Checklist' or it.InstrType is null 
      ORDER BY p.pidn, it.DCDate;
ELSEIF query_type = 'SimpleAllPatients' THEN
	SELECT p.pidn, it.InstrType, it.DCDate, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it  
	 	INNER JOIN lq_view_udsformchecklist i ON (it.InstrID = i.InstrID)  
	  RIGHT OUTER JOIN temp_pidn p ON (p.PIDN = it.PIDN)  
	WHERE it.InstrType =  'UDS Form Checklist'  or it.InstrType is null 
	ORDER BY P.pidn, it.DCDate;

ELSEIF query_type = 'PrimaryAll' THEN 
	CREATE TEMPORARY TABLE temp_linkdata as 

  SELECT p.pidn,i.DCDate as link_date,i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
	FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
		INNER JOIN lq_view_udsformchecklist d ON (i.InstrID=d.InstrID) 
	WHERE NOT i.DCStatus = 'Scheduled' AND NOT i.DCStatus like 'Canceled%' 
	ORDER BY p.pidn, i.DCDate, i.InstrID ;
   	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
  SELECT * from temp_linkdata;
ELSEIF query_type = 'PrimaryLatest' THEN  
	CREATE TEMPORARY TABLE temp_linkdata as 

  SELECT p.pidn, i.DCDate as link_date,i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
	FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
	           INNER JOIN lq_view_udsformchecklist d ON (i.InstrID=d.InstrID) 
	WHERE i.DCDate = (SELECT MAX(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND  
		i2.InstrType =  'UDS Form Checklist'  AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%') 
	ORDER BY p.pidn, i.DCDate, i.InstrID;
  	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
  SELECT * from temp_linkdata;
ELSEIF query_type = 'PrimaryFirst' THEN

  CREATE TEMPORARY TABLE temp_linkdata as 
	SELECT p.pidn,i.DCDate as link_date,i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.* 
	FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN) 
		INNER JOIN lq_view_udsformchecklist d ON (i.InstrID=d.InstrID)
	WHERE i.DCDate = (SELECT MIN(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND 
		i2.InstrType =  'UDS Form Checklist'  AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%')
	ORDER BY p.pidn, i.InstrID;
  	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
  SELECT * from temp_linkdata;
ELSEIF query_type IN ('SecondaryAll','SecondaryClosest') THEN
 	
	CREATE TEMPORARY TABLE temp_secondary_candidates AS
   SELECT l.pidn, l.link_date, l.link_id, i2.InstrType, i2.InstrID, DATEDIFF(l.link_date, i2.DCDate) AS Days 
	 FROM temp_linkdata l INNER JOIN instrumenttracking i2 ON (i2.PIDN=l.PIDN) 
	 WHERE i2.InstrType = 'UDS Form Checklist';

		ALTER TABLE temp_secondary_candidates ADD INDEX(pidn,link_date,link_id,Days);
	
	
	IF query_subtype = 'Earlier' THEN
	  	DELETE from temp_secondary_candidates WHERE Days >0;
	ELSEIF query_subtype = 'MoreRecent' THEN
		DELETE from temp_secondary_candidates WHERE Days <0;
	END IF;
	

	
	DELETE FROM temp_secondary_candidates WHERE abs(Days) > query_days;

    	
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


	SELECT l.pidn, l.link_date,l.link_id, i.InstrType,i.DCDate, temp_secondary_candidates.days as DayDiff, i.DCStatus, i.AgeAtDC, d.* 
	FROM temp_linkdata l LEFT OUTER JOIN temp_secondary_candidates 
     ON (l.pidn=temp_secondary_candidates.pidn and l.link_date = temp_secondary_candidates.link_date and l.link_id=temp_secondary_candidates.link_id) 
		LEFT JOIN instrumenttracking i ON (temp_secondary_candidates.InstrID=i.InstrID)
		LEFT JOIN lq_view_udsformchecklist d ON (i.InstrID=d.InstrID) ORDER BY l.pidn, l.link_date, l.link_id;

	DROP TABLE temp_secondary_candidates;
END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `lq_get_nacc_udsgds` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `lq_get_nacc_udsgds`(user_name varchar(50), host_name varchar(25),query_type varchar(25), query_subtype VARCHAR(25), query_days INTEGER)
BEGIN



CALL lq_audit_event(user_name,host_name,'crms.nacc.udsgds',query_type);

	
	
IF query_type = 'Simple' THEN
	SELECT p.pidn, it.InstrType, it.DCDate, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it 
		INNER JOIN lq_view_udsgds i ON (it.InstrID = i.InstrID) 
		INNER JOIN temp_pidn p ON (p.PIDN = it.PIDN) 
      WHERE it.InstrType = 'UDS GDS' or it.InstrType is null 
      ORDER BY p.pidn, it.DCDate;
ELSEIF query_type = 'SimpleAllPatients' THEN
	SELECT p.pidn, it.InstrType, it.DCDate, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it  
	 	INNER JOIN lq_view_udsgds i ON (it.InstrID = i.InstrID)  
	  RIGHT OUTER JOIN temp_pidn p ON (p.PIDN = it.PIDN)  
	WHERE it.InstrType =  'UDS GDS'  or it.InstrType is null 
	ORDER BY P.pidn, it.DCDate;

ELSEIF query_type = 'PrimaryAll' THEN 
	CREATE TEMPORARY TABLE temp_linkdata as 

  SELECT p.pidn,i.DCDate as link_date,i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
	FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
		INNER JOIN lq_view_udsgds d ON (i.InstrID=d.InstrID) 
	WHERE NOT i.DCStatus = 'Scheduled' AND NOT i.DCStatus like 'Canceled%' 
	ORDER BY p.pidn, i.DCDate, i.InstrID ;
   	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
  SELECT * from temp_linkdata;
ELSEIF query_type = 'PrimaryLatest' THEN  
	CREATE TEMPORARY TABLE temp_linkdata as 

  SELECT p.pidn, i.DCDate as link_date,i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
	FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
	           INNER JOIN lq_view_udsgds d ON (i.InstrID=d.InstrID) 
	WHERE i.DCDate = (SELECT MAX(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND  
		i2.InstrType =  'UDS GDS'  AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%') 
	ORDER BY p.pidn, i.DCDate, i.InstrID;
  	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
  SELECT * from temp_linkdata;
ELSEIF query_type = 'PrimaryFirst' THEN

  CREATE TEMPORARY TABLE temp_linkdata as 
	SELECT p.pidn,i.DCDate as link_date,i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.* 
	FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN) 
		INNER JOIN lq_view_udsgds d ON (i.InstrID=d.InstrID)
	WHERE i.DCDate = (SELECT MIN(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND 
		i2.InstrType =  'UDS GDS'  AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%')
	ORDER BY p.pidn, i.InstrID;
  	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
  SELECT * from temp_linkdata;
ELSEIF query_type IN ('SecondaryAll','SecondaryClosest') THEN
 	
	CREATE TEMPORARY TABLE temp_secondary_candidates AS
   SELECT l.pidn, l.link_date, l.link_id, i2.InstrType, i2.InstrID, DATEDIFF(l.link_date, i2.DCDate) AS Days 
	 FROM temp_linkdata l INNER JOIN instrumenttracking i2 ON (i2.PIDN=l.PIDN) 
	 WHERE i2.InstrType = 'UDS GDS';

		ALTER TABLE temp_secondary_candidates ADD INDEX(pidn,link_date,link_id,Days);
	
	
	IF query_subtype = 'Earlier' THEN
	  	DELETE from temp_secondary_candidates WHERE Days >0;
	ELSEIF query_subtype = 'MoreRecent' THEN
		DELETE from temp_secondary_candidates WHERE Days <0;
	END IF;
	

	
	DELETE FROM temp_secondary_candidates WHERE abs(Days) > query_days;

    	
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


	SELECT l.pidn, l.link_date,l.link_id, i.InstrType,i.DCDate, temp_secondary_candidates.days as DayDiff, i.DCStatus, i.AgeAtDC, d.* 
	FROM temp_linkdata l LEFT OUTER JOIN temp_secondary_candidates 
     ON (l.pidn=temp_secondary_candidates.pidn and l.link_date = temp_secondary_candidates.link_date and l.link_id=temp_secondary_candidates.link_id) 
		LEFT JOIN instrumenttracking i ON (temp_secondary_candidates.InstrID=i.InstrID)
		LEFT JOIN lq_view_udsgds d ON (i.InstrID=d.InstrID) ORDER BY l.pidn, l.link_date, l.link_id;

	DROP TABLE temp_secondary_candidates;
END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `lq_get_nacc_udshachinski` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `lq_get_nacc_udshachinski`(user_name varchar(50), host_name varchar(50),query_type varchar(25), query_subtype VARCHAR(25), query_days INTEGER)
BEGIN

	CALL lq_audit_event(user_name,host_name,'crms.nacc.udshachinski',query_type);
	
IF query_type = 'Simple' THEN
	SELECT p.pidn, it.InstrType, it.DCDate, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it 
		INNER JOIN lq_view_udshachinski i ON (it.InstrID = i.InstrID) 
		INNER JOIN temp_pidn p ON (p.PIDN = it.PIDN) 
      WHERE it.InstrType = 'UDS Hachinski' or it.InstrType is null 
      ORDER BY p.pidn, it.DCDate;
ELSEIF query_type = 'SimpleAllPatients' THEN
	SELECT p.pidn, it.InstrType, it.DCDate, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it  
	 	INNER JOIN lq_view_udshachinski i ON (it.InstrID = i.InstrID)  
	  RIGHT OUTER JOIN temp_pidn p ON (p.PIDN = it.PIDN)  
	WHERE it.InstrType =  'UDS Hachinski'  or it.InstrType is null 
	ORDER BY P.pidn, it.DCDate;

ELSEIF query_type = 'PrimaryAll' THEN 
	CREATE TEMPORARY TABLE temp_linkdata as 

  SELECT p.pidn,i.DCDate as link_date,i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
	FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
		INNER JOIN lq_view_udshachinski d ON (i.InstrID=d.InstrID) 
	WHERE NOT i.DCStatus = 'Scheduled' AND NOT i.DCStatus like 'Canceled%' 
	ORDER BY p.pidn, i.DCDate, i.InstrID ;
   	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
  SELECT * from temp_linkdata;
ELSEIF query_type = 'PrimaryLatest' THEN  
	CREATE TEMPORARY TABLE temp_linkdata as 

  SELECT p.pidn, i.DCDate as link_date,i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
	FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
	           INNER JOIN lq_view_udshachinski d ON (i.InstrID=d.InstrID) 
	WHERE i.DCDate = (SELECT MAX(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND  
		i2.InstrType =  'UDS Hachinski'  AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%') 
	ORDER BY p.pidn, i.DCDate, i.InstrID;
  	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
  SELECT * from temp_linkdata;
ELSEIF query_type = 'PrimaryFirst' THEN

  CREATE TEMPORARY TABLE temp_linkdata as 
	SELECT p.pidn,i.DCDate as link_date,i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.* 
	FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN) 
		INNER JOIN lq_view_udshachinski d ON (i.InstrID=d.InstrID)
	WHERE i.DCDate = (SELECT MIN(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND 
		i2.InstrType =  'UDS Hachinski'  AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%')
	ORDER BY p.pidn, i.InstrID;
  	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
  SELECT * from temp_linkdata;
ELSEIF query_type IN ('SecondaryAll','SecondaryClosest') THEN
 	
	CREATE TEMPORARY TABLE temp_secondary_candidates AS
   SELECT l.pidn, l.link_date, l.link_id, i2.InstrType, i2.InstrID, DATEDIFF(l.link_date, i2.DCDate) AS Days 
	 FROM temp_linkdata l INNER JOIN instrumenttracking i2 ON (i2.PIDN=l.PIDN) 
	 WHERE i2.InstrType = 'UDS Hachinski';

		ALTER TABLE temp_secondary_candidates ADD INDEX(pidn,link_date,link_id,Days);
	
	
	IF query_subtype = 'Earlier' THEN
	  	DELETE from temp_secondary_candidates WHERE Days >0;
	ELSEIF query_subtype = 'MoreRecent' THEN
		DELETE from temp_secondary_candidates WHERE Days <0;
	END IF;
	

	
	DELETE FROM temp_secondary_candidates WHERE abs(Days) > query_days;

    	
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


	SELECT l.pidn, l.link_date,l.link_id, i.InstrType,i.DCDate, temp_secondary_candidates.days as DayDiff, i.DCStatus, i.AgeAtDC, d.* 
	FROM temp_linkdata l LEFT OUTER JOIN temp_secondary_candidates 
     ON (l.pidn=temp_secondary_candidates.pidn and l.link_date = temp_secondary_candidates.link_date and l.link_id=temp_secondary_candidates.link_id) 
		LEFT JOIN instrumenttracking i ON (temp_secondary_candidates.InstrID=i.InstrID)
		LEFT JOIN lq_view_udshachinski d ON (i.InstrID=d.InstrID) ORDER BY l.pidn, l.link_date, l.link_id;

	DROP TABLE temp_secondary_candidates;
END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `lq_get_nacc_udshealthhistory` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `lq_get_nacc_udshealthhistory`(user_name varchar(50), host_name varchar(50),query_type varchar(25), query_subtype VARCHAR(25), query_days INTEGER)
BEGIN

CALL lq_audit_event(user_name,host_name,'crms.nacc.udshealthhistory',query_type);
	
IF query_type = 'Simple' THEN
	SELECT p.pidn, it.InstrType, it.DCDate, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it 
		INNER JOIN lq_view_udshealthhistory i ON (it.InstrID = i.InstrID) 
		INNER JOIN temp_pidn p ON (p.PIDN = it.PIDN) 
      WHERE it.InstrType = 'UDS Health History' or it.InstrType is null 
      ORDER BY p.pidn, it.DCDate;
ELSEIF query_type = 'SimpleAllPatients' THEN
	SELECT p.pidn, it.InstrType, it.DCDate, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it  
	 	INNER JOIN lq_view_udshealthhistory i ON (it.InstrID = i.InstrID)  
	  RIGHT OUTER JOIN temp_pidn p ON (p.PIDN = it.PIDN)  
	WHERE it.InstrType =  'UDS Health History'  or it.InstrType is null 
	ORDER BY P.pidn, it.DCDate;

ELSEIF query_type = 'PrimaryAll' THEN 
	CREATE TEMPORARY TABLE temp_linkdata as 

  SELECT p.pidn,i.DCDate as link_date,i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
	FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
		INNER JOIN lq_view_udshealthhistory d ON (i.InstrID=d.InstrID) 
	WHERE NOT i.DCStatus = 'Scheduled' AND NOT i.DCStatus like 'Canceled%' 
	ORDER BY p.pidn, i.DCDate, i.InstrID ;
   	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
  SELECT * from temp_linkdata;
ELSEIF query_type = 'PrimaryLatest' THEN  
	CREATE TEMPORARY TABLE temp_linkdata as 

  SELECT p.pidn, i.DCDate as link_date,i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
	FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
	           INNER JOIN lq_view_udshealthhistory d ON (i.InstrID=d.InstrID) 
	WHERE i.DCDate = (SELECT MAX(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND  
		i2.InstrType =  'UDS Health History'  AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%') 
	ORDER BY p.pidn, i.DCDate, i.InstrID;
  	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
  SELECT * from temp_linkdata;
ELSEIF query_type = 'PrimaryFirst' THEN

  CREATE TEMPORARY TABLE temp_linkdata as 
	SELECT p.pidn,i.DCDate as link_date,i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.* 
	FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN) 
		INNER JOIN lq_view_udshealthhistory d ON (i.InstrID=d.InstrID)
	WHERE i.DCDate = (SELECT MIN(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND 
		i2.InstrType =  'UDS Health History'  AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%')
	ORDER BY p.pidn, i.InstrID;
  	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
  SELECT * from temp_linkdata;
ELSEIF query_type IN ('SecondaryAll','SecondaryClosest') THEN
 	
	CREATE TEMPORARY TABLE temp_secondary_candidates AS
   SELECT l.pidn, l.link_date, l.link_id, i2.InstrType, i2.InstrID, DATEDIFF(l.link_date, i2.DCDate) AS Days 
	 FROM temp_linkdata l INNER JOIN instrumenttracking i2 ON (i2.PIDN=l.PIDN) 
	 WHERE i2.InstrType = 'UDS Health History';

		ALTER TABLE temp_secondary_candidates ADD INDEX(pidn,link_date,link_id,Days);
	
	
	IF query_subtype = 'Earlier' THEN
	  	DELETE from temp_secondary_candidates WHERE Days >0;
	ELSEIF query_subtype = 'MoreRecent' THEN
		DELETE from temp_secondary_candidates WHERE Days <0;
	END IF;
	

	
	DELETE FROM temp_secondary_candidates WHERE abs(Days) > query_days;

    	
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


	SELECT l.pidn, l.link_date,l.link_id, i.InstrType,i.DCDate, temp_secondary_candidates.days as DayDiff, i.DCStatus, i.AgeAtDC, d.* 
	FROM temp_linkdata l LEFT OUTER JOIN temp_secondary_candidates 
     ON (l.pidn=temp_secondary_candidates.pidn and l.link_date = temp_secondary_candidates.link_date and l.link_id=temp_secondary_candidates.link_id) 
		LEFT JOIN instrumenttracking i ON (temp_secondary_candidates.InstrID=i.InstrID)
		LEFT JOIN lq_view_udshealthhistory d ON (i.InstrID=d.InstrID) ORDER BY l.pidn, l.link_date, l.link_id;

	DROP TABLE temp_secondary_candidates;
END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `lq_get_nacc_udsinformantdemo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `lq_get_nacc_udsinformantdemo`(user_name varchar(50), host_name varchar(50),query_type varchar(25), query_subtype VARCHAR(25), query_days INTEGER)
BEGIN
CALL lq_audit_event(user_name,host_name,'crms.nacc.udsinformantdemo',query_type);
	
	
IF query_type = 'Simple' THEN
	SELECT p.pidn, it.InstrType, it.DCDate, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it 
		INNER JOIN lq_view_udsinformantdemo i ON (it.InstrID = i.InstrID) 
		INNER JOIN temp_pidn p ON (p.PIDN = it.PIDN) 
      WHERE it.InstrType = 'UDS Informant Demo' or it.InstrType is null 
      ORDER BY p.pidn, it.DCDate;
ELSEIF query_type = 'SimpleAllPatients' THEN
	SELECT p.pidn, it.InstrType, it.DCDate, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it  
	 	INNER JOIN lq_view_udsinformantdemo i ON (it.InstrID = i.InstrID)  
	  RIGHT OUTER JOIN temp_pidn p ON (p.PIDN = it.PIDN)  
	WHERE it.InstrType =  'UDS Informant Demo'  or it.InstrType is null 
	ORDER BY P.pidn, it.DCDate;

ELSEIF query_type = 'PrimaryAll' THEN 
	CREATE TEMPORARY TABLE temp_linkdata as 

  SELECT p.pidn,i.DCDate as link_date,i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
	FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
		INNER JOIN lq_view_udsinformantdemo d ON (i.InstrID=d.InstrID) 
	WHERE NOT i.DCStatus = 'Scheduled' AND NOT i.DCStatus like 'Canceled%' 
	ORDER BY p.pidn, i.DCDate, i.InstrID ;
   	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
  SELECT * from temp_linkdata;
ELSEIF query_type = 'PrimaryLatest' THEN  
	CREATE TEMPORARY TABLE temp_linkdata as 

  SELECT p.pidn, i.DCDate as link_date,i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
	FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
	           INNER JOIN lq_view_udsinformantdemo d ON (i.InstrID=d.InstrID) 
	WHERE i.DCDate = (SELECT MAX(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND  
		i2.InstrType =  'UDS Informant Demo'  AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%') 
	ORDER BY p.pidn, i.DCDate, i.InstrID;
  	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
  SELECT * from temp_linkdata;
ELSEIF query_type = 'PrimaryFirst' THEN

  CREATE TEMPORARY TABLE temp_linkdata as 
	SELECT p.pidn,i.DCDate as link_date,i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.* 
	FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN) 
		INNER JOIN lq_view_udsinformantdemo d ON (i.InstrID=d.InstrID)
	WHERE i.DCDate = (SELECT MIN(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND 
		i2.InstrType =  'UDS Informant Demo'  AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%')
	ORDER BY p.pidn, i.InstrID;
  	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
  SELECT * from temp_linkdata;
ELSEIF query_type IN ('SecondaryAll','SecondaryClosest') THEN
 	
	CREATE TEMPORARY TABLE temp_secondary_candidates AS
   SELECT l.pidn, l.link_date, l.link_id, i2.InstrType, i2.InstrID, DATEDIFF(l.link_date, i2.DCDate) AS Days 
	 FROM temp_linkdata l INNER JOIN instrumenttracking i2 ON (i2.PIDN=l.PIDN) 
	 WHERE i2.InstrType = 'UDS Informant Demo';

		ALTER TABLE temp_secondary_candidates ADD INDEX(pidn,link_date,link_id,Days);
	
	
	IF query_subtype = 'Earlier' THEN
	  	DELETE from temp_secondary_candidates WHERE Days >0;
	ELSEIF query_subtype = 'MoreRecent' THEN
		DELETE from temp_secondary_candidates WHERE Days <0;
	END IF;
	

	
	DELETE FROM temp_secondary_candidates WHERE abs(Days) > query_days;

    	
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


	SELECT l.pidn, l.link_date,l.link_id, i.InstrType,i.DCDate, temp_secondary_candidates.days as DayDiff, i.DCStatus, i.AgeAtDC, d.* 
	FROM temp_linkdata l LEFT OUTER JOIN temp_secondary_candidates 
     ON (l.pidn=temp_secondary_candidates.pidn and l.link_date = temp_secondary_candidates.link_date and l.link_id=temp_secondary_candidates.link_id) 
		LEFT JOIN instrumenttracking i ON (temp_secondary_candidates.InstrID=i.InstrID)
		LEFT JOIN lq_view_udsinformantdemo d ON (i.InstrID=d.InstrID) ORDER BY l.pidn, l.link_date, l.link_id;

	DROP TABLE temp_secondary_candidates;
END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `lq_get_nacc_udslabsimaging` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `lq_get_nacc_udslabsimaging`(user_name varchar(50), host_name varchar(50),query_type varchar(25), query_subtype VARCHAR(25), query_days INTEGER)
BEGIN
CALL lq_audit_event(user_name,host_name,'crms.nacc.udslabsimaging',query_type);
	
	
IF query_type = 'Simple' THEN
	SELECT p.pidn, it.InstrType, it.DCDate, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it 
		INNER JOIN lq_view_udslabsimaging i ON (it.InstrID = i.InstrID) 
		INNER JOIN temp_pidn p ON (p.PIDN = it.PIDN) 
      WHERE it.InstrType = 'UDS Labs Imaging' or it.InstrType is null 
      ORDER BY p.pidn, it.DCDate;
ELSEIF query_type = 'SimpleAllPatients' THEN
	SELECT p.pidn, it.InstrType, it.DCDate, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it  
	 	INNER JOIN lq_view_udslabsimaging i ON (it.InstrID = i.InstrID)  
	  RIGHT OUTER JOIN temp_pidn p ON (p.PIDN = it.PIDN)  
	WHERE it.InstrType =  'UDS Labs Imaging'  or it.InstrType is null 
	ORDER BY P.pidn, it.DCDate;

ELSEIF query_type = 'PrimaryAll' THEN 
	CREATE TEMPORARY TABLE temp_linkdata as 

  SELECT p.pidn,i.DCDate as link_date,i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
	FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
		INNER JOIN lq_view_udslabsimaging d ON (i.InstrID=d.InstrID) 
	WHERE NOT i.DCStatus = 'Scheduled' AND NOT i.DCStatus like 'Canceled%' 
	ORDER BY p.pidn, i.DCDate, i.InstrID ;
   	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
  SELECT * from temp_linkdata;
ELSEIF query_type = 'PrimaryLatest' THEN  
	CREATE TEMPORARY TABLE temp_linkdata as 

  SELECT p.pidn, i.DCDate as link_date,i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
	FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
	           INNER JOIN lq_view_udslabsimaging d ON (i.InstrID=d.InstrID) 
	WHERE i.DCDate = (SELECT MAX(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND  
		i2.InstrType =  'UDS Labs Imaging'  AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%') 
	ORDER BY p.pidn, i.DCDate, i.InstrID;
  	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
  SELECT * from temp_linkdata;
ELSEIF query_type = 'PrimaryFirst' THEN

  CREATE TEMPORARY TABLE temp_linkdata as 
	SELECT p.pidn,i.DCDate as link_date,i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.* 
	FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN) 
		INNER JOIN lq_view_udslabsimaging d ON (i.InstrID=d.InstrID)
	WHERE i.DCDate = (SELECT MIN(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND 
		i2.InstrType =  'UDS Labs Imaging'  AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%')
	ORDER BY p.pidn, i.InstrID;
  	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
  SELECT * from temp_linkdata;
ELSEIF query_type IN ('SecondaryAll','SecondaryClosest') THEN
 	
	CREATE TEMPORARY TABLE temp_secondary_candidates AS
   SELECT l.pidn, l.link_date, l.link_id, i2.InstrType, i2.InstrID, DATEDIFF(l.link_date, i2.DCDate) AS Days 
	 FROM temp_linkdata l INNER JOIN instrumenttracking i2 ON (i2.PIDN=l.PIDN) 
	 WHERE i2.InstrType = 'UDS Labs Imaging';

		ALTER TABLE temp_secondary_candidates ADD INDEX(pidn,link_date,link_id,Days);
	
	
	IF query_subtype = 'Earlier' THEN
	  	DELETE from temp_secondary_candidates WHERE Days >0;
	ELSEIF query_subtype = 'MoreRecent' THEN
		DELETE from temp_secondary_candidates WHERE Days <0;
	END IF;
	

	
	DELETE FROM temp_secondary_candidates WHERE abs(Days) > query_days;

    	
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


	SELECT l.pidn, l.link_date,l.link_id, i.InstrType,i.DCDate, temp_secondary_candidates.days as DayDiff, i.DCStatus, i.AgeAtDC, d.* 
	FROM temp_linkdata l LEFT OUTER JOIN temp_secondary_candidates 
     ON (l.pidn=temp_secondary_candidates.pidn and l.link_date = temp_secondary_candidates.link_date and l.link_id=temp_secondary_candidates.link_id) 
		LEFT JOIN instrumenttracking i ON (temp_secondary_candidates.InstrID=i.InstrID)
		LEFT JOIN lq_view_udslabsimaging d ON (i.InstrID=d.InstrID) ORDER BY l.pidn, l.link_date, l.link_id;

	DROP TABLE temp_secondary_candidates;
END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `lq_get_nacc_udsmedications2` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `lq_get_nacc_udsmedications2`(user_name varchar(50), host_name varchar(50),query_type varchar(25), query_subtype VARCHAR(25), query_days INTEGER)
BEGIN
CALL lq_audit_event(user_name,host_name,'crms.nacc.udsmedication2',query_type);
	
	
IF query_type = 'Simple' THEN
	SELECT p.pidn, it.InstrType, it.DCDate, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it 
		INNER JOIN lq_view_udsmedications2 i ON (it.InstrID = i.InstrID) 
		INNER JOIN temp_pidn p ON (p.PIDN = it.PIDN) 
      WHERE it.InstrType = 'UDS Medications' or it.InstrType is null 
      ORDER BY p.pidn, it.DCDate;
ELSEIF query_type = 'SimpleAllPatients' THEN
	SELECT p.pidn, it.InstrType, it.DCDate, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it  
	 	INNER JOIN lq_view_udsmedications2 i ON (it.InstrID = i.InstrID)  
	  RIGHT OUTER JOIN temp_pidn p ON (p.PIDN = it.PIDN)  
	WHERE it.InstrType =  'UDS Medications'  or it.InstrType is null 
	ORDER BY P.pidn, it.DCDate;

ELSEIF query_type = 'PrimaryAll' THEN 
	CREATE TEMPORARY TABLE temp_linkdata as 

  SELECT p.pidn,i.DCDate as link_date,i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
	FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
		INNER JOIN lq_view_udsmedications2 d ON (i.InstrID=d.InstrID) 
	WHERE NOT i.DCStatus = 'Scheduled' AND NOT i.DCStatus like 'Canceled%' 
	ORDER BY p.pidn, i.DCDate, i.InstrID ;
   	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
  SELECT * from temp_linkdata;
ELSEIF query_type = 'PrimaryLatest' THEN  
	CREATE TEMPORARY TABLE temp_linkdata as 

  SELECT p.pidn, i.DCDate as link_date,i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
	FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
	           INNER JOIN lq_view_udsmedications2 d ON (i.InstrID=d.InstrID) 
	WHERE i.DCDate = (SELECT MAX(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND  
		i2.InstrType =  'UDS Medications' and i2.InstrVer = '2' AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%') 
	ORDER BY p.pidn, i.DCDate, i.InstrID;
  	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
  SELECT * from temp_linkdata;
ELSEIF query_type = 'PrimaryFirst' THEN

  CREATE TEMPORARY TABLE temp_linkdata as 
	SELECT p.pidn,i.DCDate as link_date,i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.* 
	FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN) 
		INNER JOIN lq_view_udsmedications2 d ON (i.InstrID=d.InstrID)
	WHERE i.DCDate = (SELECT MIN(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND 
		i2.InstrType =  'UDS Medications' and i2.InstrVer = '2' AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%')
	ORDER BY p.pidn, i.InstrID;
  	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
  SELECT * from temp_linkdata;
ELSEIF query_type IN ('SecondaryAll','SecondaryClosest') THEN
 	
	CREATE TEMPORARY TABLE temp_secondary_candidates AS
   SELECT l.pidn, l.link_date, l.link_id, i2.InstrType, i2.InstrID, DATEDIFF(l.link_date, i2.DCDate) AS Days 
	 FROM temp_linkdata l INNER JOIN instrumenttracking i2 ON (i2.PIDN=l.PIDN) 
	 WHERE i2.InstrType = 'UDS Medications' and i2.InstrVer = '2';

		ALTER TABLE temp_secondary_candidates ADD INDEX(pidn,link_date,link_id,Days);
	
	
	IF query_subtype = 'Earlier' THEN
	  	DELETE from temp_secondary_candidates WHERE Days >0;
	ELSEIF query_subtype = 'MoreRecent' THEN
		DELETE from temp_secondary_candidates WHERE Days <0;
	END IF;
	

	
	DELETE FROM temp_secondary_candidates WHERE abs(Days) > query_days;

    	
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


	SELECT l.pidn, l.link_date,l.link_id, i.InstrType,i.DCDate, temp_secondary_candidates.days as DayDiff, i.DCStatus, i.AgeAtDC, d.* 
	FROM temp_linkdata l LEFT OUTER JOIN temp_secondary_candidates 
     ON (l.pidn=temp_secondary_candidates.pidn and l.link_date = temp_secondary_candidates.link_date and l.link_id=temp_secondary_candidates.link_id) 
		LEFT JOIN instrumenttracking i ON (temp_secondary_candidates.InstrID=i.InstrID)
		LEFT JOIN lq_view_udsmedications2 d ON (i.InstrID=d.InstrID) ORDER BY l.pidn, l.link_date, l.link_id;

	DROP TABLE temp_secondary_candidates;
END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `lq_get_nacc_udsmilestone` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `lq_get_nacc_udsmilestone`(user_name varchar(50), host_name varchar(50),query_type varchar(25), query_subtype VARCHAR(25), query_days INTEGER)
BEGIN
CALL lq_audit_event(user_name,host_name,'crms.nacc.udsmilestone',query_type);
	
	
IF query_type = 'Simple' THEN
	SELECT p.pidn, it.InstrType, it.DCDate, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it 
		INNER JOIN lq_view_udsmilestone i ON (it.InstrID = i.InstrID) 
		INNER JOIN temp_pidn p ON (p.PIDN = it.PIDN) 
      WHERE it.InstrType = 'UDS Milestone' or it.InstrType is null 
      ORDER BY p.pidn, it.DCDate;
ELSEIF query_type = 'SimpleAllPatients' THEN
	SELECT p.pidn, it.InstrType, it.DCDate, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it  
	 	INNER JOIN lq_view_udsmilestone i ON (it.InstrID = i.InstrID)  
	  RIGHT OUTER JOIN temp_pidn p ON (p.PIDN = it.PIDN)  
	WHERE it.InstrType =  'UDS Milestone'  or it.InstrType is null 
	ORDER BY P.pidn, it.DCDate;

ELSEIF query_type = 'PrimaryAll' THEN 
	CREATE TEMPORARY TABLE temp_linkdata as 

  SELECT p.pidn,i.DCDate as link_date,i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
	FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
		INNER JOIN lq_view_udsmilestone d ON (i.InstrID=d.InstrID) 
	WHERE NOT i.DCStatus = 'Scheduled' AND NOT i.DCStatus like 'Canceled%' 
	ORDER BY p.pidn, i.DCDate, i.InstrID ;
   	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
  SELECT * from temp_linkdata;
ELSEIF query_type = 'PrimaryLatest' THEN  
	CREATE TEMPORARY TABLE temp_linkdata as 

  SELECT p.pidn, i.DCDate as link_date,i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
	FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
	           INNER JOIN lq_view_udsmilestone d ON (i.InstrID=d.InstrID) 
	WHERE i.DCDate = (SELECT MAX(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND  
		i2.InstrType =  'UDS Milestone'  AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%') 
	ORDER BY p.pidn, i.DCDate, i.InstrID;
  	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
  SELECT * from temp_linkdata;
ELSEIF query_type = 'PrimaryFirst' THEN

  CREATE TEMPORARY TABLE temp_linkdata as 
	SELECT p.pidn,i.DCDate as link_date,i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.* 
	FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN) 
		INNER JOIN lq_view_udsmilestone d ON (i.InstrID=d.InstrID)
	WHERE i.DCDate = (SELECT MIN(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND 
		i2.InstrType =  'UDS Milestone'  AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%')
	ORDER BY p.pidn, i.InstrID;
  	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
  SELECT * from temp_linkdata;
ELSEIF query_type IN ('SecondaryAll','SecondaryClosest') THEN
 	
	CREATE TEMPORARY TABLE temp_secondary_candidates AS
   SELECT l.pidn, l.link_date, l.link_id, i2.InstrType, i2.InstrID, DATEDIFF(l.link_date, i2.DCDate) AS Days 
	 FROM temp_linkdata l INNER JOIN instrumenttracking i2 ON (i2.PIDN=l.PIDN) 
	 WHERE i2.InstrType = 'UDS Milestone';

		ALTER TABLE temp_secondary_candidates ADD INDEX(pidn,link_date,link_id,Days);
	
	
	IF query_subtype = 'Earlier' THEN
	  	DELETE from temp_secondary_candidates WHERE Days >0;
	ELSEIF query_subtype = 'MoreRecent' THEN
		DELETE from temp_secondary_candidates WHERE Days <0;
	END IF;
	

	
	DELETE FROM temp_secondary_candidates WHERE abs(Days) > query_days;

    	
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


	SELECT l.pidn, l.link_date,l.link_id, i.InstrType,i.DCDate, temp_secondary_candidates.days as DayDiff, i.DCStatus, i.AgeAtDC, d.* 
	FROM temp_linkdata l LEFT OUTER JOIN temp_secondary_candidates 
     ON (l.pidn=temp_secondary_candidates.pidn and l.link_date = temp_secondary_candidates.link_date and l.link_id=temp_secondary_candidates.link_id) 
		LEFT JOIN instrumenttracking i ON (temp_secondary_candidates.InstrID=i.InstrID)
		LEFT JOIN lq_view_udsmilestone d ON (i.InstrID=d.InstrID) ORDER BY l.pidn, l.link_date, l.link_id;

	DROP TABLE temp_secondary_candidates;
END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `lq_get_nacc_udsneuropsych` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `lq_get_nacc_udsneuropsych`(user_name varchar(50), host_name varchar(50),query_type varchar(25), query_subtype VARCHAR(25), query_days INTEGER)
BEGIN
CALL lq_audit_event(user_name,host_name,'crms.nacc.udsneuropsych',query_type);
	
	
IF query_type = 'Simple' THEN
	SELECT p.pidn, it.InstrType, it.DCDate, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it 
		INNER JOIN lq_view_udsneuropsych i ON (it.InstrID = i.InstrID) 
		INNER JOIN temp_pidn p ON (p.PIDN = it.PIDN) 
      WHERE it.InstrType = 'UDS Neuropsych' or it.InstrType is null 
      ORDER BY p.pidn, it.DCDate;
ELSEIF query_type = 'SimpleAllPatients' THEN
	SELECT p.pidn, it.InstrType, it.DCDate, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it  
	 	INNER JOIN lq_view_udsneuropsych i ON (it.InstrID = i.InstrID)  
	  RIGHT OUTER JOIN temp_pidn p ON (p.PIDN = it.PIDN)  
	WHERE it.InstrType =  'UDS Neuropsych'  or it.InstrType is null 
	ORDER BY P.pidn, it.DCDate;

ELSEIF query_type = 'PrimaryAll' THEN 
	CREATE TEMPORARY TABLE temp_linkdata as 

  SELECT p.pidn,i.DCDate as link_date,i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
	FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
		INNER JOIN lq_view_udsneuropsych d ON (i.InstrID=d.InstrID) 
	WHERE NOT i.DCStatus = 'Scheduled' AND NOT i.DCStatus like 'Canceled%' 
	ORDER BY p.pidn, i.DCDate, i.InstrID ;
   	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
  SELECT * from temp_linkdata;
ELSEIF query_type = 'PrimaryLatest' THEN  
	CREATE TEMPORARY TABLE temp_linkdata as 

  SELECT p.pidn, i.DCDate as link_date,i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
	FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
	           INNER JOIN lq_view_udsneuropsych d ON (i.InstrID=d.InstrID) 
	WHERE i.DCDate = (SELECT MAX(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND  
		i2.InstrType =  'UDS Neuropsych'  AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%') 
	ORDER BY p.pidn, i.DCDate, i.InstrID;
  	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
  SELECT * from temp_linkdata;
ELSEIF query_type = 'PrimaryFirst' THEN

  CREATE TEMPORARY TABLE temp_linkdata as 
	SELECT p.pidn,i.DCDate as link_date,i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.* 
	FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN) 
		INNER JOIN lq_view_udsneuropsych d ON (i.InstrID=d.InstrID)
	WHERE i.DCDate = (SELECT MIN(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND 
		i2.InstrType =  'UDS Neuropsych'  AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%')
	ORDER BY p.pidn, i.InstrID;
  	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
  SELECT * from temp_linkdata;
ELSEIF query_type IN ('SecondaryAll','SecondaryClosest') THEN
 	
	CREATE TEMPORARY TABLE temp_secondary_candidates AS
   SELECT l.pidn, l.link_date, l.link_id, i2.InstrType, i2.InstrID, DATEDIFF(l.link_date, i2.DCDate) AS Days 
	 FROM temp_linkdata l INNER JOIN instrumenttracking i2 ON (i2.PIDN=l.PIDN) 
	 WHERE i2.InstrType = 'UDS Neuropsych';

		ALTER TABLE temp_secondary_candidates ADD INDEX(pidn,link_date,link_id,Days);
	
	
	IF query_subtype = 'Earlier' THEN
	  	DELETE from temp_secondary_candidates WHERE Days >0;
	ELSEIF query_subtype = 'MoreRecent' THEN
		DELETE from temp_secondary_candidates WHERE Days <0;
	END IF;
	

	
	DELETE FROM temp_secondary_candidates WHERE abs(Days) > query_days;

    	
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


	SELECT l.pidn, l.link_date,l.link_id, i.InstrType,i.DCDate, temp_secondary_candidates.days as DayDiff, i.DCStatus, i.AgeAtDC, d.* 
	FROM temp_linkdata l LEFT OUTER JOIN temp_secondary_candidates 
     ON (l.pidn=temp_secondary_candidates.pidn and l.link_date = temp_secondary_candidates.link_date and l.link_id=temp_secondary_candidates.link_id) 
		LEFT JOIN instrumenttracking i ON (temp_secondary_candidates.InstrID=i.InstrID)
		LEFT JOIN lq_view_udsneuropsych d ON (i.InstrID=d.InstrID) ORDER BY l.pidn, l.link_date, l.link_id;

	DROP TABLE temp_secondary_candidates;
END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `lq_get_nacc_udsnpi` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `lq_get_nacc_udsnpi`(user_name varchar(50), host_name varchar(50),query_type varchar(25), query_subtype VARCHAR(25), query_days INTEGER)
BEGIN
CALL lq_audit_event(user_name,host_name,'crms.nacc.udsnpi',query_type);
	
	
IF query_type = 'Simple' THEN
	SELECT p.pidn, it.InstrType, it.DCDate, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it 
		INNER JOIN lq_view_udsnpi i ON (it.InstrID = i.InstrID) 
		INNER JOIN temp_pidn p ON (p.PIDN = it.PIDN) 
      WHERE it.InstrType = 'UDS NPI' or it.InstrType is null 
      ORDER BY p.pidn, it.DCDate;
ELSEIF query_type = 'SimpleAllPatients' THEN
	SELECT p.pidn, it.InstrType, it.DCDate, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it  
	 	INNER JOIN lq_view_udsnpi i ON (it.InstrID = i.InstrID)  
	  RIGHT OUTER JOIN temp_pidn p ON (p.PIDN = it.PIDN)  
	WHERE it.InstrType =  'UDS NPI'  or it.InstrType is null 
	ORDER BY P.pidn, it.DCDate;

ELSEIF query_type = 'PrimaryAll' THEN 
	CREATE TEMPORARY TABLE temp_linkdata as 

  SELECT p.pidn,i.DCDate as link_date,i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
	FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
		INNER JOIN lq_view_udsnpi d ON (i.InstrID=d.InstrID) 
	WHERE NOT i.DCStatus = 'Scheduled' AND NOT i.DCStatus like 'Canceled%' 
	ORDER BY p.pidn, i.DCDate, i.InstrID ;
   	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
  SELECT * from temp_linkdata;
ELSEIF query_type = 'PrimaryLatest' THEN  
	CREATE TEMPORARY TABLE temp_linkdata as 

  SELECT p.pidn, i.DCDate as link_date,i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
	FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
	           INNER JOIN lq_view_udsnpi d ON (i.InstrID=d.InstrID) 
	WHERE i.DCDate = (SELECT MAX(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND  
		i2.InstrType =  'UDS NPI'  AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%') 
	ORDER BY p.pidn, i.DCDate, i.InstrID;
  	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
  SELECT * from temp_linkdata;
ELSEIF query_type = 'PrimaryFirst' THEN

  CREATE TEMPORARY TABLE temp_linkdata as 
	SELECT p.pidn,i.DCDate as link_date,i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.* 
	FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN) 
		INNER JOIN lq_view_udsnpi d ON (i.InstrID=d.InstrID)
	WHERE i.DCDate = (SELECT MIN(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND 
		i2.InstrType =  'UDS NPI'  AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%')
	ORDER BY p.pidn, i.InstrID;
  	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
  SELECT * from temp_linkdata;
ELSEIF query_type IN ('SecondaryAll','SecondaryClosest') THEN
 	
	CREATE TEMPORARY TABLE temp_secondary_candidates AS
   SELECT l.pidn, l.link_date, l.link_id, i2.InstrType, i2.InstrID, DATEDIFF(l.link_date, i2.DCDate) AS Days 
	 FROM temp_linkdata l INNER JOIN instrumenttracking i2 ON (i2.PIDN=l.PIDN) 
	 WHERE i2.InstrType = 'UDS NPI';

		ALTER TABLE temp_secondary_candidates ADD INDEX(pidn,link_date,link_id,Days);
	
	
	IF query_subtype = 'Earlier' THEN
	  	DELETE from temp_secondary_candidates WHERE Days >0;
	ELSEIF query_subtype = 'MoreRecent' THEN
		DELETE from temp_secondary_candidates WHERE Days <0;
	END IF;
	

	
	DELETE FROM temp_secondary_candidates WHERE abs(Days) > query_days;

    	
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


	SELECT l.pidn, l.link_date,l.link_id, i.InstrType,i.DCDate, temp_secondary_candidates.days as DayDiff, i.DCStatus, i.AgeAtDC, d.* 
	FROM temp_linkdata l LEFT OUTER JOIN temp_secondary_candidates 
     ON (l.pidn=temp_secondary_candidates.pidn and l.link_date = temp_secondary_candidates.link_date and l.link_id=temp_secondary_candidates.link_id) 
		LEFT JOIN instrumenttracking i ON (temp_secondary_candidates.InstrID=i.InstrID)
		LEFT JOIN lq_view_udsnpi d ON (i.InstrID=d.InstrID) ORDER BY l.pidn, l.link_date, l.link_id;

	DROP TABLE temp_secondary_candidates;
END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `lq_get_nacc_udsphoneinclusion` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `lq_get_nacc_udsphoneinclusion`(user_name varchar(50), host_name varchar(50),query_type varchar(25), query_subtype VARCHAR(25), query_days INTEGER)
BEGIN
CALL lq_audit_event(user_name,host_name,'crms.nacc.udsphoneinclusion',query_type);
	
	
IF query_type = 'Simple' THEN
	SELECT p.pidn, it.InstrType, it.DCDate, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it 
		INNER JOIN lq_view_udsphoneinclusion i ON (it.InstrID = i.InstrID) 
		INNER JOIN temp_pidn p ON (p.PIDN = it.PIDN) 
      WHERE it.InstrType = 'UDS Phone Inclusion' or it.InstrType is null 
      ORDER BY p.pidn, it.DCDate;
ELSEIF query_type = 'SimpleAllPatients' THEN
	SELECT p.pidn, it.InstrType, it.DCDate, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it  
	 	INNER JOIN lq_view_udsphoneinclusion i ON (it.InstrID = i.InstrID)  
	  RIGHT OUTER JOIN temp_pidn p ON (p.PIDN = it.PIDN)  
	WHERE it.InstrType =  'UDS Phone Inclusion'  or it.InstrType is null 
	ORDER BY P.pidn, it.DCDate;

ELSEIF query_type = 'PrimaryAll' THEN 
	CREATE TEMPORARY TABLE temp_linkdata as 

  SELECT p.pidn,i.DCDate as link_date,i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
	FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
		INNER JOIN lq_view_udsphoneinclusion d ON (i.InstrID=d.InstrID) 
	WHERE NOT i.DCStatus = 'Scheduled' AND NOT i.DCStatus like 'Canceled%' 
	ORDER BY p.pidn, i.DCDate, i.InstrID ;
   	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
  SELECT * from temp_linkdata;
ELSEIF query_type = 'PrimaryLatest' THEN  
	CREATE TEMPORARY TABLE temp_linkdata as 

  SELECT p.pidn, i.DCDate as link_date,i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
	FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
	           INNER JOIN lq_view_udsphoneinclusion d ON (i.InstrID=d.InstrID) 
	WHERE i.DCDate = (SELECT MAX(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND  
		i2.InstrType =  'UDS Phone Inclusion'  AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%') 
	ORDER BY p.pidn, i.DCDate, i.InstrID;
  	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
  SELECT * from temp_linkdata;
ELSEIF query_type = 'PrimaryFirst' THEN

  CREATE TEMPORARY TABLE temp_linkdata as 
	SELECT p.pidn,i.DCDate as link_date,i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.* 
	FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN) 
		INNER JOIN lq_view_udsphoneinclusion d ON (i.InstrID=d.InstrID)
	WHERE i.DCDate = (SELECT MIN(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND 
		i2.InstrType =  'UDS Phone Inclusion'  AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%')
	ORDER BY p.pidn, i.InstrID;
  	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
  SELECT * from temp_linkdata;
ELSEIF query_type IN ('SecondaryAll','SecondaryClosest') THEN
 	
	CREATE TEMPORARY TABLE temp_secondary_candidates AS
   SELECT l.pidn, l.link_date, l.link_id, i2.InstrType, i2.InstrID, DATEDIFF(l.link_date, i2.DCDate) AS Days 
	 FROM temp_linkdata l INNER JOIN instrumenttracking i2 ON (i2.PIDN=l.PIDN) 
	 WHERE i2.InstrType = 'UDS Phone Inclusion';

		ALTER TABLE temp_secondary_candidates ADD INDEX(pidn,link_date,link_id,Days);
	
	
	IF query_subtype = 'Earlier' THEN
	  	DELETE from temp_secondary_candidates WHERE Days >0;
	ELSEIF query_subtype = 'MoreRecent' THEN
		DELETE from temp_secondary_candidates WHERE Days <0;
	END IF;
	

	
	DELETE FROM temp_secondary_candidates WHERE abs(Days) > query_days;

    	
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


	SELECT l.pidn, l.link_date,l.link_id, i.InstrType,i.DCDate, temp_secondary_candidates.days as DayDiff, i.DCStatus, i.AgeAtDC, d.* 
	FROM temp_linkdata l LEFT OUTER JOIN temp_secondary_candidates 
     ON (l.pidn=temp_secondary_candidates.pidn and l.link_date = temp_secondary_candidates.link_date and l.link_id=temp_secondary_candidates.link_id) 
		LEFT JOIN instrumenttracking i ON (temp_secondary_candidates.InstrID=i.InstrID)
		LEFT JOIN lq_view_udsphoneinclusion d ON (i.InstrID=d.InstrID) ORDER BY l.pidn, l.link_date, l.link_id;

	DROP TABLE temp_secondary_candidates;
END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `lq_get_nacc_udsphysical` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `lq_get_nacc_udsphysical`(user_name varchar(50), host_name varchar(50),query_type varchar(25), query_subtype VARCHAR(25), query_days INTEGER)
BEGIN

CALL lq_audit_event(user_name,host_name,'crms.nacc.udsphysical',query_type);
	
IF query_type = 'Simple' THEN
	SELECT p.pidn, it.InstrType, it.DCDate, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it 
		INNER JOIN lq_view_udsphysical i ON (it.InstrID = i.InstrID) 
		INNER JOIN temp_pidn p ON (p.PIDN = it.PIDN) 
      WHERE it.InstrType = 'UDS Physical' or it.InstrType is null 
      ORDER BY p.pidn, it.DCDate;
ELSEIF query_type = 'SimpleAllPatients' THEN
	SELECT p.pidn, it.InstrType, it.DCDate, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it  
	 	INNER JOIN lq_view_udsphysical i ON (it.InstrID = i.InstrID)  
	  RIGHT OUTER JOIN temp_pidn p ON (p.PIDN = it.PIDN)  
	WHERE it.InstrType =  'UDS Physical'  or it.InstrType is null 
	ORDER BY P.pidn, it.DCDate;

ELSEIF query_type = 'PrimaryAll' THEN 
	CREATE TEMPORARY TABLE temp_linkdata as 

  SELECT p.pidn,i.DCDate as link_date,i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
	FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
		INNER JOIN lq_view_udsphysical d ON (i.InstrID=d.InstrID) 
	WHERE NOT i.DCStatus = 'Scheduled' AND NOT i.DCStatus like 'Canceled%' 
	ORDER BY p.pidn, i.DCDate, i.InstrID ;
   	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
  SELECT * from temp_linkdata;
ELSEIF query_type = 'PrimaryLatest' THEN  
	CREATE TEMPORARY TABLE temp_linkdata as 

  SELECT p.pidn, i.DCDate as link_date,i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
	FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
	           INNER JOIN lq_view_udsphysical d ON (i.InstrID=d.InstrID) 
	WHERE i.DCDate = (SELECT MAX(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND  
		i2.InstrType =  'UDS Physical'  AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%') 
	ORDER BY p.pidn, i.DCDate, i.InstrID;
  	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
  SELECT * from temp_linkdata;
ELSEIF query_type = 'PrimaryFirst' THEN

  CREATE TEMPORARY TABLE temp_linkdata as 
	SELECT p.pidn,i.DCDate as link_date,i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.* 
	FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN) 
		INNER JOIN lq_view_udsphysical d ON (i.InstrID=d.InstrID)
	WHERE i.DCDate = (SELECT MIN(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND 
		i2.InstrType =  'UDS Physical'  AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%')
	ORDER BY p.pidn, i.InstrID;
  	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
  SELECT * from temp_linkdata;
ELSEIF query_type IN ('SecondaryAll','SecondaryClosest') THEN
 	
	CREATE TEMPORARY TABLE temp_secondary_candidates AS
   SELECT l.pidn, l.link_date, l.link_id, i2.InstrType, i2.InstrID, DATEDIFF(l.link_date, i2.DCDate) AS Days 
	 FROM temp_linkdata l INNER JOIN instrumenttracking i2 ON (i2.PIDN=l.PIDN) 
	 WHERE i2.InstrType = 'UDS Physical';

		ALTER TABLE temp_secondary_candidates ADD INDEX(pidn,link_date,link_id,Days);
	
	
	IF query_subtype = 'Earlier' THEN
	  	DELETE from temp_secondary_candidates WHERE Days >0;
	ELSEIF query_subtype = 'MoreRecent' THEN
		DELETE from temp_secondary_candidates WHERE Days <0;
	END IF;
	

	
	DELETE FROM temp_secondary_candidates WHERE abs(Days) > query_days;

    	
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


	SELECT l.pidn, l.link_date,l.link_id, i.InstrType,i.DCDate, temp_secondary_candidates.days as DayDiff, i.DCStatus, i.AgeAtDC, d.* 
	FROM temp_linkdata l LEFT OUTER JOIN temp_secondary_candidates 
     ON (l.pidn=temp_secondary_candidates.pidn and l.link_date = temp_secondary_candidates.link_date and l.link_id=temp_secondary_candidates.link_id) 
		LEFT JOIN instrumenttracking i ON (temp_secondary_candidates.InstrID=i.InstrID)
		LEFT JOIN lq_view_udsphysical d ON (i.InstrID=d.InstrID) ORDER BY l.pidn, l.link_date, l.link_id;

	DROP TABLE temp_secondary_candidates;
END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `lq_get_nacc_udssubjectdemo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `lq_get_nacc_udssubjectdemo`(user_name varchar(50), host_name varchar(50),query_type varchar(25), query_subtype VARCHAR(25), query_days INTEGER)
BEGIN
CALL lq_audit_event(user_name,host_name,'crms.nacc.udssubjectdemo',query_type);
	
	
IF query_type = 'Simple' THEN
	SELECT p.pidn, it.InstrType, it.DCDate, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it 
		INNER JOIN lq_view_udssubjectdemo i ON (it.InstrID = i.InstrID) 
		INNER JOIN temp_pidn p ON (p.PIDN = it.PIDN) 
      WHERE it.InstrType = 'UDS Subject Demo' or it.InstrType is null 
      ORDER BY p.pidn, it.DCDate;
ELSEIF query_type = 'SimpleAllPatients' THEN
	SELECT p.pidn, it.InstrType, it.DCDate, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it  
	 	INNER JOIN lq_view_udssubjectdemo i ON (it.InstrID = i.InstrID)  
	  RIGHT OUTER JOIN temp_pidn p ON (p.PIDN = it.PIDN)  
	WHERE it.InstrType =  'UDS Subject Demo'  or it.InstrType is null 
	ORDER BY P.pidn, it.DCDate;

ELSEIF query_type = 'PrimaryAll' THEN 
	CREATE TEMPORARY TABLE temp_linkdata as 

  SELECT p.pidn,i.DCDate as link_date,i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
	FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
		INNER JOIN lq_view_udssubjectdemo d ON (i.InstrID=d.InstrID) 
	WHERE NOT i.DCStatus = 'Scheduled' AND NOT i.DCStatus like 'Canceled%' 
	ORDER BY p.pidn, i.DCDate, i.InstrID ;
   	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
  SELECT * from temp_linkdata;
ELSEIF query_type = 'PrimaryLatest' THEN  
	CREATE TEMPORARY TABLE temp_linkdata as 

  SELECT p.pidn, i.DCDate as link_date,i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
	FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
	           INNER JOIN lq_view_udssubjectdemo d ON (i.InstrID=d.InstrID) 
	WHERE i.DCDate = (SELECT MAX(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND  
		i2.InstrType =  'UDS Subject Demo'  AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%') 
	ORDER BY p.pidn, i.DCDate, i.InstrID;
  	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
  SELECT * from temp_linkdata;
ELSEIF query_type = 'PrimaryFirst' THEN

  CREATE TEMPORARY TABLE temp_linkdata as 
	SELECT p.pidn,i.DCDate as link_date,i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.* 
	FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN) 
		INNER JOIN lq_view_udssubjectdemo d ON (i.InstrID=d.InstrID)
	WHERE i.DCDate = (SELECT MIN(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND 
		i2.InstrType =  'UDS Subject Demo'  AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%')
	ORDER BY p.pidn, i.InstrID;
  	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
  SELECT * from temp_linkdata;
ELSEIF query_type IN ('SecondaryAll','SecondaryClosest') THEN
 	
	CREATE TEMPORARY TABLE temp_secondary_candidates AS
   SELECT l.pidn, l.link_date, l.link_id, i2.InstrType, i2.InstrID, DATEDIFF(l.link_date, i2.DCDate) AS Days 
	 FROM temp_linkdata l INNER JOIN instrumenttracking i2 ON (i2.PIDN=l.PIDN) 
	 WHERE i2.InstrType = 'UDS Subject Demo';

		ALTER TABLE temp_secondary_candidates ADD INDEX(pidn,link_date,link_id,Days);
	
	
	IF query_subtype = 'Earlier' THEN
	  	DELETE from temp_secondary_candidates WHERE Days >0;
	ELSEIF query_subtype = 'MoreRecent' THEN
		DELETE from temp_secondary_candidates WHERE Days <0;
	END IF;
	

	
	DELETE FROM temp_secondary_candidates WHERE abs(Days) > query_days;

    	
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


	SELECT l.pidn, l.link_date,l.link_id, i.InstrType,i.DCDate, temp_secondary_candidates.days as DayDiff, i.DCStatus, i.AgeAtDC, d.* 
	FROM temp_linkdata l LEFT OUTER JOIN temp_secondary_candidates 
     ON (l.pidn=temp_secondary_candidates.pidn and l.link_date = temp_secondary_candidates.link_date and l.link_id=temp_secondary_candidates.link_id) 
		LEFT JOIN instrumenttracking i ON (temp_secondary_candidates.InstrID=i.InstrID)
		LEFT JOIN lq_view_udssubjectdemo d ON (i.InstrID=d.InstrID) ORDER BY l.pidn, l.link_date, l.link_id;

	DROP TABLE temp_secondary_candidates;
END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `lq_get_nacc_udssymptomsonset` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `lq_get_nacc_udssymptomsonset`(user_name varchar(50), host_name varchar(50),query_type varchar(25), query_subtype VARCHAR(25), query_days INTEGER)
BEGIN
CALL lq_audit_event(user_name,host_name,'crms.nacc.udssymptomsonset',query_type);
	
	
IF query_type = 'Simple' THEN
	SELECT p.pidn, it.InstrType, it.DCDate, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it 
		INNER JOIN lq_view_udssymptomsonset i ON (it.InstrID = i.InstrID) 
		INNER JOIN temp_pidn p ON (p.PIDN = it.PIDN) 
      WHERE it.InstrType = 'UDS Symptoms Onset' or it.InstrType is null 
      ORDER BY p.pidn, it.DCDate;
ELSEIF query_type = 'SimpleAllPatients' THEN
	SELECT p.pidn, it.InstrType, it.DCDate, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it  
	 	INNER JOIN lq_view_udssymptomsonset i ON (it.InstrID = i.InstrID)  
	  RIGHT OUTER JOIN temp_pidn p ON (p.PIDN = it.PIDN)  
	WHERE it.InstrType =  'UDS Symptoms Onset'  or it.InstrType is null 
	ORDER BY P.pidn, it.DCDate;

ELSEIF query_type = 'PrimaryAll' THEN 
	CREATE TEMPORARY TABLE temp_linkdata as 

  SELECT p.pidn,i.DCDate as link_date,i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
	FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
		INNER JOIN lq_view_udssymptomsonset d ON (i.InstrID=d.InstrID) 
	WHERE NOT i.DCStatus = 'Scheduled' AND NOT i.DCStatus like 'Canceled%' 
	ORDER BY p.pidn, i.DCDate, i.InstrID ;
   	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
  SELECT * from temp_linkdata;
ELSEIF query_type = 'PrimaryLatest' THEN  
	CREATE TEMPORARY TABLE temp_linkdata as 

  SELECT p.pidn, i.DCDate as link_date,i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
	FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
	           INNER JOIN lq_view_udssymptomsonset d ON (i.InstrID=d.InstrID) 
	WHERE i.DCDate = (SELECT MAX(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND  
		i2.InstrType =  'UDS Symptoms Onset'  AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%') 
	ORDER BY p.pidn, i.DCDate, i.InstrID;
  	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
  SELECT * from temp_linkdata;
ELSEIF query_type = 'PrimaryFirst' THEN

  CREATE TEMPORARY TABLE temp_linkdata as 
	SELECT p.pidn,i.DCDate as link_date,i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.* 
	FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN) 
		INNER JOIN lq_view_udssymptomsonset d ON (i.InstrID=d.InstrID)
	WHERE i.DCDate = (SELECT MIN(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND 
		i2.InstrType =  'UDS Symptoms Onset'  AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%')
	ORDER BY p.pidn, i.InstrID;
  	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
  SELECT * from temp_linkdata;
ELSEIF query_type IN ('SecondaryAll','SecondaryClosest') THEN
 	
	CREATE TEMPORARY TABLE temp_secondary_candidates AS
   SELECT l.pidn, l.link_date, l.link_id, i2.InstrType, i2.InstrID, DATEDIFF(l.link_date, i2.DCDate) AS Days 
	 FROM temp_linkdata l INNER JOIN instrumenttracking i2 ON (i2.PIDN=l.PIDN) 
	 WHERE i2.InstrType = 'UDS Symptoms Onset';

		ALTER TABLE temp_secondary_candidates ADD INDEX(pidn,link_date,link_id,Days);
	
	
	IF query_subtype = 'Earlier' THEN
	  	DELETE from temp_secondary_candidates WHERE Days >0;
	ELSEIF query_subtype = 'MoreRecent' THEN
		DELETE from temp_secondary_candidates WHERE Days <0;
	END IF;
	

	
	DELETE FROM temp_secondary_candidates WHERE abs(Days) > query_days;

    	
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


	SELECT l.pidn, l.link_date,l.link_id, i.InstrType,i.DCDate, temp_secondary_candidates.days as DayDiff, i.DCStatus, i.AgeAtDC, d.* 
	FROM temp_linkdata l LEFT OUTER JOIN temp_secondary_candidates 
     ON (l.pidn=temp_secondary_candidates.pidn and l.link_date = temp_secondary_candidates.link_date and l.link_id=temp_secondary_candidates.link_id) 
		LEFT JOIN instrumenttracking i ON (temp_secondary_candidates.InstrID=i.InstrID)
		LEFT JOIN lq_view_udssymptomsonset d ON (i.InstrID=d.InstrID) ORDER BY l.pidn, l.link_date, l.link_id;

	DROP TABLE temp_secondary_candidates;
END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `lq_get_nacc_udsupdrs` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `lq_get_nacc_udsupdrs`(user_name varchar(50), host_name varchar(50),query_type varchar(25), query_subtype VARCHAR(25), query_days INTEGER)
BEGIN
CALL lq_audit_event(user_name,host_name,'crms.nacc.udsupdrs',query_type);
	
	
IF query_type = 'Simple' THEN
	SELECT p.pidn, it.InstrType, it.DCDate, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it 
		INNER JOIN lq_view_udsupdrs i ON (it.InstrID = i.InstrID) 
		INNER JOIN temp_pidn p ON (p.PIDN = it.PIDN) 
      WHERE it.InstrType = 'UDS UPDRS' or it.InstrType is null 
      ORDER BY p.pidn, it.DCDate;
ELSEIF query_type = 'SimpleAllPatients' THEN
	SELECT p.pidn, it.InstrType, it.DCDate, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it  
	 	INNER JOIN lq_view_udsupdrs i ON (it.InstrID = i.InstrID)  
	  RIGHT OUTER JOIN temp_pidn p ON (p.PIDN = it.PIDN)  
	WHERE it.InstrType =  'UDS UPDRS'  or it.InstrType is null 
	ORDER BY P.pidn, it.DCDate;

ELSEIF query_type = 'PrimaryAll' THEN 
	CREATE TEMPORARY TABLE temp_linkdata as 

  SELECT p.pidn,i.DCDate as link_date,i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
	FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
		INNER JOIN lq_view_udsupdrs d ON (i.InstrID=d.InstrID) 
	WHERE NOT i.DCStatus = 'Scheduled' AND NOT i.DCStatus like 'Canceled%' 
	ORDER BY p.pidn, i.DCDate, i.InstrID ;
   	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
  SELECT * from temp_linkdata;
ELSEIF query_type = 'PrimaryLatest' THEN  
	CREATE TEMPORARY TABLE temp_linkdata as 

  SELECT p.pidn, i.DCDate as link_date,i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
	FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
	           INNER JOIN lq_view_udsupdrs d ON (i.InstrID=d.InstrID) 
	WHERE i.DCDate = (SELECT MAX(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND  
		i2.InstrType =  'UDS UPDRS'  AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%') 
	ORDER BY p.pidn, i.DCDate, i.InstrID;
  	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
  SELECT * from temp_linkdata;
ELSEIF query_type = 'PrimaryFirst' THEN

  CREATE TEMPORARY TABLE temp_linkdata as 
	SELECT p.pidn,i.DCDate as link_date,i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.* 
	FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN) 
		INNER JOIN lq_view_udsupdrs d ON (i.InstrID=d.InstrID)
	WHERE i.DCDate = (SELECT MIN(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND 
		i2.InstrType =  'UDS UPDRS'  AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%')
	ORDER BY p.pidn, i.InstrID;
  	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
  SELECT * from temp_linkdata;
ELSEIF query_type IN ('SecondaryAll','SecondaryClosest') THEN
 	
	CREATE TEMPORARY TABLE temp_secondary_candidates AS
   SELECT l.pidn, l.link_date, l.link_id, i2.InstrType, i2.InstrID, DATEDIFF(l.link_date, i2.DCDate) AS Days 
	 FROM temp_linkdata l INNER JOIN instrumenttracking i2 ON (i2.PIDN=l.PIDN) 
	 WHERE i2.InstrType = 'UDS UPDRS';

		ALTER TABLE temp_secondary_candidates ADD INDEX(pidn,link_date,link_id,Days);
	
	
	IF query_subtype = 'Earlier' THEN
	  	DELETE from temp_secondary_candidates WHERE Days >0;
	ELSEIF query_subtype = 'MoreRecent' THEN
		DELETE from temp_secondary_candidates WHERE Days <0;
	END IF;
	

	
	DELETE FROM temp_secondary_candidates WHERE abs(Days) > query_days;

    	
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


	SELECT l.pidn, l.link_date,l.link_id, i.InstrType,i.DCDate, temp_secondary_candidates.days as DayDiff, i.DCStatus, i.AgeAtDC, d.* 
	FROM temp_linkdata l LEFT OUTER JOIN temp_secondary_candidates 
     ON (l.pidn=temp_secondary_candidates.pidn and l.link_date = temp_secondary_candidates.link_date and l.link_id=temp_secondary_candidates.link_id) 
		LEFT JOIN instrumenttracking i ON (temp_secondary_candidates.InstrID=i.InstrID)
		LEFT JOIN lq_view_udsupdrs d ON (i.InstrID=d.InstrID) ORDER BY l.pidn, l.link_date, l.link_id;

	DROP TABLE temp_secondary_candidates;
END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `lq_get_objects` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `lq_get_objects`(user_name varchar(50), host_name varchar(25))
BEGINSELECT concat(`instance`,'_',`scope`,'_',`module`) as query_source,concat(`section`,'_',`target`) as query_object_name , `short_desc`, `standard`,`primary_link`,`secondary_link` from `query_objects`;END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `lq_get_patient_demographics` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `lq_get_patient_demographics`(user_name varchar(50), host_name varchar(25),query_type varchar(25), query_subtype VARCHAR(25), query_days INTEGER)
BEGINCALL lq_audit_event(user_name,host_name,'crms.patient.demographics',query_type);	IF query_type = 'Simple' THEN	SELECT p.pidn, d.*  FROM lq_view_demographics d 		INNER JOIN temp_pidn p ON (p.PIDN = d.PIDN_Demographics)       ORDER BY p.pidn;ELSEIF query_type = 'SimpleAllPatients' THEN	SELECT p.pidn, d.*   FROM lq_view_demographics d  		 RIGHT OUTER JOIN temp_pidn p ON (p.PIDN = d.PIDN_Demographics)       ORDER BY p.pidn;ELSEIF query_type IN ('SecondaryAll','SecondaryClosest') THEN 	 SELECT l.pidn, l.link_date,l.link_id,d.*  	 FROM temp_linkdata l INNER JOIN lq_view_demographics d ON (d.PIDN_Demographics=l.PIDN);END IF;END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `lq_get_scheduling_visits` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `lq_get_scheduling_visits`(user_name varchar(50), host_name varchar(25),query_type varchar(25), query_subtype VARCHAR(25), query_days INTEGER)
BEGINCALL lq_audit_event(user_name,host_name,'crms.scheduling.visits',query_type);	IF query_type = 'Simple' THEN	SELECT p.pidn, v.*  FROM lq_view_visit v 		INNER JOIN temp_pidn p ON (p.PIDN = v.PIDN_visit)       ORDER BY p.pidn, v.vdate, v.vtype;ELSEIF query_type = 'SimpleAllPatients' THEN	SELECT p.pidn, v.*  FROM lq_view_visit v  		 RIGHT OUTER JOIN temp_pidn p ON (p.PIDN = v.PIDN_visit)       ORDER BY p.pidn,v.vdate, v.vtype;END IF;END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `lq_set_linkdata` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `lq_set_linkdata`(user_name varchar(50), host_name varchar(25))
BEGINDROP TABLE IF EXISTS temp_linkdata1;DROP TABLE IF EXISTS temp_linkdata;CREATE TEMPORARY TABLE temp_linkdata1(    pidn INTEGER NOT NULL,    link_date DATE NOT NULL,    link_id INTEGER NOT NULL,    link_type varchar(25) DEFAULT NULL);END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `lq_set_linkdata_row` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `lq_set_linkdata_row`(user_name varchar(50), host_name varchar(25),pidn integer,link_date date, link_id integer)
BEGININSERT INTO `temp_linkdata1` (`pidn`,`link_date`,`link_id`) VALUES(pidn,link_date,link_id);END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `lq_set_pidns` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `lq_set_pidns`(user_name varchar(50), host_name varchar(25))
BEGINDROP TABLE IF EXISTS temp_pidn1;DROP TABLE IF EXISTS temp_pidn;CREATE TEMPORARY TABLE temp_pidn1(    pidn INTEGER NOT NULL);END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `lq_set_pidns_row` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `lq_set_pidns_row`(user_name varchar(50), host_name varchar(25),pidn integer)
BEGININSERT INTO `temp_pidn1` (`pidn`) values (pidn);END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `proc_udsappraisal_change_version` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `proc_udsappraisal_change_version`(instrument_id INT, new_version VARCHAR(25))
    SQL SECURITY INVOKER
BEGINCALL proc_uds_change_version(instrument_id,new_version);END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `proc_udscdr_change_version` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `proc_udscdr_change_version`(instrument_id INT, new_version VARCHAR(25))
    SQL SECURITY INVOKER
BEGINDECLARE existing_version VARCHAR(25);SELECT `InstrVer` INTO existing_version FROM `instrumenttracking` WHERE `InstrID`=instrument_id;IF existing_version <> new_version THEN 	UPDATE `instrumenttracking` SET `InstrVer`= new_version WHERE `InstrID`=instrument_id;	UPDATE `udstracking` SET `FormVer`= new_version WHERE `InstrID`=instrument_id;	UPDATE `udscdr` SET `COMPORT`=CASE WHEN new_version = '1' THEN -8 WHEN new_version = '2' THEN NULL END,		`CDRLANG`=CASE WHEN new_version = '1' THEN -8  WHEN new_version = '2' THEN NULL END WHERE InstrID = instrument_id;END IF;END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `proc_udsdiagnosis_change_version` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `proc_udsdiagnosis_change_version`(instrument_id INT, new_version VARCHAR(25))
    SQL SECURITY INVOKER
BEGINDECLARE existing_version VARCHAR(25);SELECT `InstrVer` INTO existing_version FROM `instrumenttracking` WHERE `InstrID`=instrument_id;IF existing_version <> new_version THEN 	UPDATE `instrumenttracking` SET `InstrVer`= new_version WHERE `InstrID`=instrument_id;	UPDATE `udstracking` SET `FormVer`= new_version WHERE `InstrID`=instrument_id;	UPDATE `udsdiagnosis` SET `VASCPS`=CASE WHEN new_version = '1' THEN -8 WHEN new_version = '2' THEN NULL END,		`VASCPSIF`=CASE WHEN new_version = '1' THEN -8  WHEN new_version = '2' THEN NULL END,		`COGOTH2`=CASE WHEN new_version = '1' THEN -8  WHEN new_version = '2' THEN NULL END,		`COGOTH2IF`=CASE WHEN new_version = '1' THEN -8  WHEN new_version = '2' THEN NULL END,		`COGOTH2X`=CASE WHEN new_version = '1' THEN -8  WHEN new_version = '2' THEN NULL END,		`COGOTH3`=CASE WHEN new_version = '1' THEN -8  WHEN new_version = '2' THEN NULL END,		`COGOTH3IF`=CASE WHEN new_version = '1' THEN -8  WHEN new_version = '2' THEN NULL END,		`COGOTH3X`=CASE WHEN new_version = '1' THEN -8  WHEN new_version = '2' THEN NULL END WHERE InstrID=instrument_id;END IF;END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `proc_udsfamilyhistory_change_version` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `proc_udsfamilyhistory_change_version`(instrument_id INT, new_version VARCHAR(25))
    SQL SECURITY INVOKER
BEGINDECLARE existing_version VARCHAR(25);SELECT `InstrVer` INTO existing_version FROM `instrumenttracking` WHERE `InstrID`=instrument_id;IF existing_version <> new_version THEN 	UPDATE `instrumenttracking` SET `InstrVer`= new_version WHERE `InstrID`=instrument_id;	UPDATE `udstracking` SET `FormVer`= new_version WHERE `InstrID`=instrument_id;		IF new_version = "2" THEN			DELETE FROM udsfamilyhistory1 where instrId = instrument_id;		INSERT INTO udsfamilyhistory2 (InstrID) VALUES (instrument_id);		INSERT INTO udsfamilyhistorychildren2 (InstrID) VALUES (instrument_id);		INSERT INTO udsfamilyhistoryrelatives2 (InstrID) VALUES (instrument_id);			ELSEIF (new_version = '1') THEN			DELETE FROM udsfamilyhistory2 where instrId = instrument_id;		DELETE FROM udsfamilyhistorychildren2 where instrId = instrument_id;		DELETE FROM udsfamilyhistoryrelatives2 where instrId = instrument_id;		INSERT INTO UDSFamilyHistory1 (InstrID) VALUES (instrument_id);				END IF;END IF;END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `proc_udsfaq_change_version` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `proc_udsfaq_change_version`(instrument_id INT, new_version VARCHAR(25))
    SQL SECURITY INVOKER
BEGINCALL proc_uds_change_version(instrument_id,new_version);END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `proc_udsformchecklist_change_version` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `proc_udsformchecklist_change_version`(instrument_id INT, new_version VARCHAR(25))
    SQL SECURITY INVOKER
BEGINCALL proc_uds_change_version(instrument_id,new_version);END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `proc_udsgds_change_version` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `proc_udsgds_change_version`(instrument_id INT, new_version VARCHAR(25))
    SQL SECURITY INVOKER
BEGINCALL proc_uds_change_version(instrument_id,new_version);END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `proc_udshachinski_change_version` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `proc_udshachinski_change_version`(instrument_id INT, new_version VARCHAR(25))
    SQL SECURITY INVOKER
BEGINDECLARE existing_version VARCHAR(25);SELECT `InstrVer` INTO existing_version FROM `instrumenttracking` WHERE `InstrID`=instrument_id;IF existing_version <> new_version THEN 	UPDATE `instrumenttracking` SET `InstrVer`= new_version WHERE `InstrID`=instrument_id;	UPDATE `udstracking` SET `FormVer`= new_version WHERE `InstrID`=instrument_id;	UPDATE `udshachinski` SET `CVDCOG`=CASE WHEN new_version = '1' THEN -8 WHEN new_version = '2' THEN NULL END,		`STROKCOG`=CASE WHEN new_version = '1' THEN -8  WHEN new_version = '2' THEN NULL END,		`CVDIMAG`=CASE WHEN new_version = '1' THEN -8  WHEN new_version = '2' THEN NULL END,		`CVDIMAG1`=CASE WHEN new_version = '1' THEN -8  WHEN new_version = '2' THEN NULL END,		`CVDIMAG2`=CASE WHEN new_version = '1' THEN -8  WHEN new_version = '2' THEN NULL END,		`CVDIMAG3`=CASE WHEN new_version = '1' THEN -8  WHEN new_version = '2' THEN NULL END,		`CVDIMAG4`=CASE WHEN new_version = '1' THEN -8  WHEN new_version = '2' THEN NULL END,		`CVDIMAGX`=CASE WHEN new_version = '1' THEN -8  WHEN new_version = '2' THEN NULL END WHERE InstrID=instrument_id;END IF;END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `proc_udshealthhistory_change_version` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `proc_udshealthhistory_change_version`(instrument_id INT, new_version VARCHAR(25))
    SQL SECURITY INVOKER
BEGINCALL proc_uds_change_version(instrument_id,new_version);END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `proc_udsinformantdemo_change_version` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `proc_udsinformantdemo_change_version`(instrument_id INT, new_version VARCHAR(25))
    SQL SECURITY INVOKER
BEGINCALL proc_uds_change_version(instrument_id,new_version);END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `proc_udslabsimaging_change_version` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `proc_udslabsimaging_change_version`(instrument_id INT, new_version VARCHAR(25))
    SQL SECURITY INVOKER
BEGINCALL proc_uds_change_version(instrument_id,new_version);END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `proc_udsmedications_change_version` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `proc_udsmedications_change_version`(instrument_id INT, new_version VARCHAR(25))
    SQL SECURITY INVOKER
BEGINDECLARE existing_version VARCHAR(25);SELECT `InstrVer` INTO existing_version FROM `instrumenttracking` WHERE `InstrID`=instrument_id;IF existing_version <> new_version THEN 	UPDATE `instrumenttracking` SET `InstrVer`= new_version WHERE `InstrID`=instrument_id;	UPDATE `udstracking` SET `FormVer`= new_version WHERE `InstrID`=instrument_id;		IF new_version = "2" THEN			DELETE FROM udsmedicationspre1 where instrId = instrument_id;		DELETE FROM udsmedicationsnon1 where instrId = instrument_id;		DELETE FROM udsmedicationsvit1 where instrId = instrument_id;		INSERT INTO udsmedications2 (InstrID) VALUES (instrument_id);				ELSEIF (new_version = '1') THEN			DELETE FROM udsmedications2 where instrId = instrument_id;		DELETE FROM udsmedicationsdetails2 where instrId = instrument_id;		INSERT INTO udsmedicationspre1 (InstrID) VALUES (instrument_id);		INSERT INTO udsmedicationsnon1 (InstrID) VALUES (instrument_id);		INSERT INTO udsmedicationsvit1 (InstrID) VALUES (instrument_id);				END IF;END IF;END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `proc_udsmilestone_change_version` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `proc_udsmilestone_change_version`(instrument_id INT, new_version VARCHAR(25))
    SQL SECURITY INVOKER
BEGINDECLARE existing_version VARCHAR(25);SELECT `InstrVer` INTO existing_version FROM `instrumenttracking` WHERE `InstrID`=instrument_id;IF existing_version <> new_version THEN 	UPDATE `instrumenttracking` SET `InstrVer`= new_version WHERE `InstrID`=instrument_id;	UPDATE `udstracking` SET `FormVer`= new_version WHERE `InstrID`=instrument_id;	UPDATE `udsmilestone` SET `REJOINED`=CASE WHEN new_version = '1' THEN -8 WHEN new_version = '2' THEN NULL END,		`PROTOCOL`=CASE WHEN new_version = '1' THEN -8  WHEN new_version = '2' THEN NULL END,		`NPREFUS`=CASE WHEN new_version = '1' THEN -8  WHEN new_version = '2' THEN NULL END,		`PHYREFUS`=CASE WHEN new_version = '1' THEN -8  WHEN new_version = '2' THEN NULL END,		`UDSACTIV`=CASE WHEN new_version = '1' THEN -8  WHEN new_version = '2' THEN NULL END WHERE InstrID=instrument_id;END IF;END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `proc_udsneuropsych_change_version` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `proc_udsneuropsych_change_version`(instrument_id INT, new_version VARCHAR(25))
    SQL SECURITY INVOKER
BEGINDECLARE existing_version VARCHAR(25);SELECT `InstrVer` INTO existing_version FROM `instrumenttracking` WHERE `InstrID`=instrument_id;IF existing_version <> new_version THEN 	UPDATE `instrumenttracking` SET `InstrVer`= new_version WHERE `InstrID`=instrument_id;	UPDATE `udstracking` SET `FormVer`= new_version WHERE `InstrID`=instrument_id;	UPDATE `udsneuropsych` SET `PENTAGON`=CASE WHEN new_version = '1' THEN -8 WHEN new_version = '2' THEN NULL END,		`TRAILARR`=CASE WHEN new_version = '1' THEN -8  WHEN new_version = '2' THEN NULL END,		`TRAILALI`=CASE WHEN new_version = '1' THEN -8  WHEN new_version = '2' THEN NULL END,		`TRAILBRR`=CASE WHEN new_version = '1' THEN -8  WHEN new_version = '2' THEN NULL END,		`TRAILBLI`=CASE WHEN new_version = '1' THEN -8  WHEN new_version = '2' THEN NULL END WHERE InstrID=instrument_id;END IF;END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `proc_udsnpi_change_version` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `proc_udsnpi_change_version`(instrument_id INT, new_version VARCHAR(25))
    SQL SECURITY INVOKER
BEGINCALL proc_uds_change_version(instrument_id,new_version);END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `proc_udsphysical_change_version` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `proc_udsphysical_change_version`(instrument_id INT, new_version VARCHAR(25))
    SQL SECURITY INVOKER
BEGINCALL proc_uds_change_version(instrument_id,new_version);END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `proc_udssubjectdemo_change_version` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `proc_udssubjectdemo_change_version`(instrument_id INT, new_version VARCHAR(25))
    SQL SECURITY INVOKER
BEGINCALL proc_uds_change_version(instrument_id,new_version);END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `proc_udssymptomsonset_change_version` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `proc_udssymptomsonset_change_version`(instrument_id INT, new_version VARCHAR(25))
    SQL SECURITY INVOKER
BEGINDECLARE existing_version VARCHAR(25);SELECT `InstrVer` INTO existing_version FROM `instrumenttracking` WHERE `InstrID`=instrument_id;IF existing_version <> new_version THEN 	UPDATE `instrumenttracking` SET `InstrVer`= new_version WHERE `InstrID`=instrument_id;	UPDATE `udstracking` SET `FormVer`= new_version WHERE `InstrID`=instrument_id;	UPDATE `udssymptomsonset` SET `COGFLUC`=CASE WHEN new_version = '1' THEN -8 WHEN new_version = '2' THEN NULL END,		`BEVWELL`=CASE WHEN new_version = '1' THEN -8  WHEN new_version = '2' THEN NULL END,		`BEREM`=CASE WHEN new_version = '1' THEN -8  WHEN new_version = '2' THEN NULL END,		`MOMOPARK`=CASE WHEN new_version = '1' THEN -8  WHEN new_version = '2' THEN NULL END WHERE InstrID=instrument_id;END IF;END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `proc_udsupdrs_change_version` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `proc_udsupdrs_change_version`(instrument_id INT, new_version VARCHAR(25))
    SQL SECURITY INVOKER
BEGINDECLARE existing_version VARCHAR(25);SELECT `InstrVer` INTO existing_version FROM `instrumenttracking` WHERE `InstrID`=instrument_id;IF existing_version <> new_version THEN 	UPDATE `instrumenttracking` SET `InstrVer`= new_version WHERE `InstrID`=instrument_id;	UPDATE `udstracking` SET `FormVer`= new_version WHERE `InstrID`=instrument_id;	UPDATE `udsupdrs` SET `SPEECHX`=CASE WHEN new_version = '1' THEN -8 WHEN new_version = '2' THEN NULL END,		`FACEXPX`=CASE WHEN new_version = '1' THEN -8  WHEN new_version = '2' THEN NULL END,		`TRESTFAX`=CASE WHEN new_version = '1' THEN -8  WHEN new_version = '2' THEN NULL END,		`TRESTRHX`=CASE WHEN new_version = '1' THEN -8  WHEN new_version = '2' THEN NULL END,		`TRESTLHX`=CASE WHEN new_version = '1' THEN -8  WHEN new_version = '2' THEN NULL END,		`TRESTRFX`=CASE WHEN new_version = '1' THEN -8  WHEN new_version = '2' THEN NULL END,		`TRESTLFX`=CASE WHEN new_version = '1' THEN -8  WHEN new_version = '2' THEN NULL END,		`TRACTRHX`=CASE WHEN new_version = '1' THEN -8  WHEN new_version = '2' THEN NULL END,		`TRACTLHX`=CASE WHEN new_version = '1' THEN -8  WHEN new_version = '2' THEN NULL END,		`RIGDNEX`=CASE WHEN new_version = '1' THEN -8  WHEN new_version = '2' THEN NULL END,		`RIGDUPRX`=CASE WHEN new_version = '1' THEN -8  WHEN new_version = '2' THEN NULL END,		`RIGDUPLX`=CASE WHEN new_version = '1' THEN -8  WHEN new_version = '2' THEN NULL END,		`RIGDLORX`=CASE WHEN new_version = '1' THEN -8  WHEN new_version = '2' THEN NULL END,		`RIGDLOLX`=CASE WHEN new_version = '1' THEN -8  WHEN new_version = '2' THEN NULL END,		`BRADYKIX`=CASE WHEN new_version = '1' THEN -8  WHEN new_version = '2' THEN NULL END WHERE InstrID=instrument_id;END IF;END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `proc_uds_change_version` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `proc_uds_change_version`(instrument_id INT, new_version VARCHAR(25))
    SQL SECURITY INVOKER
BEGINDECLARE existing_version VARCHAR(25);SELECT `InstrVer` INTO existing_version FROM `instrumenttracking` WHERE `InstrID`=instrument_id;IF existing_version <> new_version THEN 	UPDATE `instrumenttracking` SET `InstrVer`= new_version WHERE `InstrID`=instrument_id;	UPDATE `udstracking` SET `FormVer`= new_version WHERE `InstrID`=instrument_id;END IF;END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `util_AddEntityToHibernateProperty` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `util_AddEntityToHibernateProperty`(EntityIn varchar (50),ScopeIn varchar(25))
BEGIN

INSERT INTO `hibernateproperty` (`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,
`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`)
  SELECT ScopeIn, EntityIn, CONCAT(LOWER(LEFT(`COLUMN_NAME`,1)),RIGHT(`COLUMN_NAME`,LENGTH(`COLUMN_NAME`)-1)),
   db_table, `COLUMN_NAME`, `DATA_TYPE`,
   CASE WHEN `CHARACTER_MAXIMUM_LENGTH` < 10000 THEN `CHARACTER_MAXIMUM_LENGTH` ELSE NULL END, `NUMERIC_PRECISION`, `NUMERIC_SCALE`,
    `ORDINAL_POSITION`, CONCAT(LOWER(LEFT(`COLUMN_NAME`,1)),RIGHT(`COLUMN_NAME`,LENGTH(`COLUMN_NAME`)-1)),
		CASE `DATA_TYPE` WHEN 'datetime' THEN 'timestamp'
			WHEN 'float' THEN 'float'
			WHEN 'image' THEN 'binary'
			WHEN 'int' THEN 'long'
			WHEN 'timestamp' THEN 'timestamp'
			WHEN 'text' THEN 'text'
			WHEN 'decimal' THEN 'float'
			WHEN 'numeric' THEN 'float'
			WHEN 'char' THEN 'character'
			WHEN 'nvarchar' THEN 'string'
			WHEN 'binary' THEN 'binary'
			WHEN 'tinyint' THEN 'byte'
			WHEN 'date' THEN 'date'
			WHEN 'time' THEN 'time'
			WHEN 'smalldatetime' THEN 'timestamp'
			WHEN 'varchar' THEN 'string'
			WHEN 'bit' THEN 'boolean'
			WHEN 'smallint' THEN 'short'
			ELSE 'UNMAPPED TYPE' END,
		NULL, CASE WHEN `IS_NULLABLE`='No' THEN 'Yes' ELSE 'No' END
	FROM `INFORMATION_SCHEMA`.`COLUMNS` c INNER JOIN DataDictionary d on c.TABLE_NAME=d.db_table and c.COLUMN_NAME=d.db_column
  WHERE d.entity=EntityIn AND COLUMN_NAME<>'instr_id' AND TABLE_NAME<>'instrumenttracking'
  ORDER BY `ORDINAL_POSITION`;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `util_AddEntityToMetaData` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `util_AddEntityToMetaData`(EntityIn varchar (50), ScopeIn varchar(25))
BEGIN

INSERT INTO `viewproperty` (`messageCode`,`locale`,`instance`,`scope`,`entity`,`property`,`required`,`maxLength`,`propOrder`)
   SELECT CONCAT('*.',EntityIn, '.',LOWER(LEFT(`prop_name`,1)),RIGHT(`prop_name`,LENGTH(`prop_name`)-1)),
   'en','lava',ScopeIn, EntityIn, CONCAT(LOWER(LEFT(`prop_name`,1)),RIGHT(`prop_name`,LENGTH(`prop_name`)-1)),
        CASE WHEN `required`='1' THEN 'Yes' ELSE 'No' END,
        CASE WHEN `db_datalength` < 10000 THEN `db_datalength` ELSE NULL END, `prop_order`
	FROM `datadictionary` WHERE `entity`=EntityIn AND `scope`=ScopeIn AND prop_name<>'instr_id' order by `prop_order`;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `util_AddTableToHibernateProperty` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `util_AddTableToHibernateProperty`(TableNameIn varchar (50),EntityIn varchar (50),ScopeIn varchar(25))
BEGIN

INSERT INTO `hibernateproperty` (`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,
`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`)
  SELECT ScopeIn, EntityIn, CONCAT(LOWER(LEFT(`COLUMN_NAME`,1)),RIGHT(`COLUMN_NAME`,LENGTH(`COLUMN_NAME`)-1)),
   TableNameIn, `COLUMN_NAME`, `DATA_TYPE`,
   CASE WHEN `CHARACTER_MAXIMUM_LENGTH` < 10000 THEN `CHARACTER_MAXIMUM_LENGTH` ELSE NULL END, `NUMERIC_PRECISION`, `NUMERIC_SCALE`,
    `ORDINAL_POSITION`, CONCAT(LOWER(LEFT(`COLUMN_NAME`,1)),RIGHT(`COLUMN_NAME`,LENGTH(`COLUMN_NAME`)-1)),
		CASE `DATA_TYPE` WHEN 'datetime' THEN 'timestamp'
			WHEN 'float' THEN 'float'
			WHEN 'image' THEN 'binary'
			WHEN 'int' THEN 'long'
			WHEN 'timestamp' THEN 'timestamp'
			WHEN 'text' THEN 'text'
			WHEN 'decimal' THEN 'float'
			WHEN 'numeric' THEN 'float'
			WHEN 'char' THEN 'character'
			WHEN 'nvarchar' THEN 'string'
			WHEN 'binary' THEN 'binary'
			WHEN 'tinyint' THEN 'byte'
			WHEN 'date' THEN 'date'
			WHEN 'time' THEN 'time'
			WHEN 'smalldatetime' THEN 'timestamp'
			WHEN 'varchar' THEN 'string'
			WHEN 'bit' THEN 'boolean'
			WHEN 'smallint' THEN 'short'
			ELSE 'UNMAPPED TYPE' END,
		NULL, CASE WHEN `IS_NULLABLE`='No' THEN 'Yes' ELSE 'No' END
	FROM `INFORMATION_SCHEMA`.`COLUMNS` WHERE `TABLE_NAME`=TableNameIn order by `ORDINAL_POSITION`;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `util_AddTableToMetaData` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `util_AddTableToMetaData`(TableNameIn varchar (50),EntityIn varchar (50),ScopeIn varchar(25))
BEGIN

INSERT INTO `viewproperty` (`messageCode`,`locale`,`instance`,`scope`,`entity`,`property`,`required`,`maxLength`,`propOrder`)
   SELECT CONCAT('*.',EntityIn, '.',LOWER(LEFT(`COLUMN_NAME`,1)),RIGHT(`COLUMN_NAME`,LENGTH(`COLUMN_NAME`)-1)),
   'en','lava',ScopeIn, EntityIn, CONCAT(LOWER(LEFT(`COLUMN_NAME`,1)),RIGHT(`COLUMN_NAME`,LENGTH(`COLUMN_NAME`)-1)),
        CASE WHEN `IS_NULLABLE`='No' THEN 'Yes' ELSE 'No' END,
        CASE WHEN `CHARACTER_MAXIMUM_LENGTH` < 10000 THEN `CHARACTER_MAXIMUM_LENGTH` ELSE NULL END, `ORDINAL_POSITION`
	FROM `INFORMATION_SCHEMA`.`COLUMNS` WHERE `TABLE_NAME`=TableNameIn order by `ORDINAL_POSITION`;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `util_ColumnList` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `util_ColumnList`(TableName varchar(50), Pattern varchar(50))
BEGIN

CALL util_ColumnNameSelect('`###`,', TableName, Pattern);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `util_ColumnNameSelect` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `util_ColumnNameSelect`(Statement varchar (1500), TableName varchar(100), ColumnLike varchar(50))
BEGIN

DECLARE strToFind VARCHAR(2000);
DECLARE strToUse VARCHAR(2000);
DECLARE i INT;
DECLARE sqlStmt VARCHAR(2000);

SET strToFind = '###';
SET strToUse = 'COLUMN_NAME';
SET i = LOCATE(strToFind, Statement);

WHILE i <> 0 DO
  SET Statement=CONCAT(LEFT(Statement, i-1), '\', ', strToUse, ', \'', RIGHT(Statement, LENGTH(Statement)-(i+(CASE WHEN LENGTH(strToFind)=0 THEN 0 ELSE LENGTH(strToFind)-1 END))));
  SET i = LOCATE(strToFind, Statement);
END WHILE;

SET sqlStmt = CONCAT('SELECT CONCAT(\'', Statement, '\') FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_SCHEMA=\'', SCHEMA(), '\' AND ', 'TABLE_NAME=\'', TableName, '\' AND COLUMN_NAME LIKE \'', ColumnLike, '\' ORDER BY ORDINAL_POSITION;');

SELECT sqlStmt;
SET @sqlStmt=sqlStmt;
PREPARE stmt FROM @sqlStmt;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `util_CreateLQProc` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `util_CreateLQProc`(LQ_Scope varchar(50), LQ_Section varchar(50), LQ_Target varchar(50), Instrument varchar(50), DataSource varchar(50))
BEGIN

SELECT CONCAT('\n',
'-- -----------------------------------------------------\n',
'-- procedure lq_get_', LQ_Section, '_', LQ_Target, '\n',
'-- -----------------------------------------------------\n\n',
'DROP PROCEDURE IF EXISTS `lq_get_', LQ_Section, '_', LQ_Target, '`;\n',
'DELIMITER $$\n\n',
'CREATE PROCEDURE `lq_get_', LQ_Section, '_', LQ_Target, '`(user_name varchar(50), host_name varchar(50), query_type varchar(25), query_subtype VARCHAR(25), query_days INTEGER)\n',
'BEGIN\n',
'CALL lq_audit_event(user_name, host_name, \'', LQ_Scope, '.', LQ_Section, '.', LQ_Target, '\', query_type);\n\n',
'IF query_type = \'Simple\' THEN\n',
'	SELECT p.PIDN, it.InstrType, it.DCDate, v.VType, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it \n',
'	    INNER JOIN visit v ON (it.VID = v.VID) \n',
'		INNER JOIN ', DataSource, ' i ON (it.InstrID = i.instr_id) \n',
'		INNER JOIN temp_pidn p ON (p.PIDN = it.PIDN) \n',
'	WHERE it.InstrType = \'', Instrument, '\' or it.InstrType is null \n',
'	ORDER BY p.pidn, it.DCDate;\n',
'      \n',
'ELSEIF query_type = \'SimpleAllPatients\' THEN\n',
'	SELECT p.PIDN, it.InstrType, it.DCDate, v.VType, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it  \n',
'	    INNER JOIN visit v ON (it.VID = v.VID) \n',
'		INNER JOIN ', DataSource, ' i ON (it.InstrID = i.instr_id)  \n',
'		RIGHT OUTER JOIN temp_pidn p ON (p.PIDN = it.PIDN)  \n',
'	WHERE it.InstrType =  \'', Instrument, '\' or it.InstrType is null \n',
'	ORDER BY P.pidn, it.DCDate;\n',
'	\n',
'ELSEIF query_type = \'VisitGrouping\' THEN\n',
'    SELECT l.PIDN, l.link_date, l.link_id, v.VType, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*\n',
'    FROM temp_linkdata l LEFT OUTER JOIN (visit v, instrumenttracking i, ', DataSource, ' d)\n',
'      ON (l.link_id=v.vid AND v.vid=i.vid AND i.InstrID=d.instr_id AND\n',
'          NOT i.DCStatus = \'Scheduled\' AND NOT i.DCStatus like \'Canceled%\')\n',
'    ORDER BY l.PIDN, l.link_date, l.link_id;\n',
'	\n',    
'ELSEIF query_type = \'PrimaryAll\' THEN \n',
'	CREATE TEMPORARY TABLE temp_linkdata as \n',
'		SELECT p.PIDN,i.DCDate as link_date, i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  \n',
'		FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  \n',
'			INNER JOIN ', DataSource, ' d ON (i.InstrID=d.instr_id) \n',
'		WHERE NOT i.DCStatus = \'Scheduled\' AND NOT i.DCStatus like \'Canceled%\' \n',
'		ORDER BY p.pidn, i.DCDate, i.InstrID ;\n',
'	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	\n',
'	SELECT * from temp_linkdata;\n',
'	\n',
'ELSEIF query_type = \'PrimaryLatest\' THEN  \n',
'	CREATE TEMPORARY TABLE temp_linkdata as \n',
'		SELECT p.PIDN, i.DCDate as link_date, i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  \n',
'		FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  \n',
'			INNER JOIN ', DataSource, ' d ON (i.InstrID=d.instr_id) \n',
'		WHERE i.DCDate = (SELECT MAX(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND  \n',
'			i2.InstrType = \'', Instrument, '\' AND NOT i2.DCStatus = \'Scheduled\' AND NOT i2.DCStatus like \'Canceled%\') \n',
'		ORDER BY p.pidn, i.DCDate, i.InstrID;\n',
'	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	\n',
'	SELECT * from temp_linkdata;\n',
'	\n',
'ELSEIF query_type = \'PrimaryFirst\' THEN\n',
'	CREATE TEMPORARY TABLE temp_linkdata as \n',
'		SELECT p.PIDN,i.DCDate as link_date, i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.* \n',
'		FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN) \n',
'			INNER JOIN ', DataSource, ' d ON (i.InstrID=d.instr_id)\n',
'		WHERE i.DCDate = (SELECT MIN(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND \n',
'			i2.InstrType = \'', Instrument, '\' AND NOT i2.DCStatus = \'Scheduled\' AND NOT i2.DCStatus like \'Canceled%\')\n',
'		ORDER BY p.pidn, i.InstrID;\n',
'	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	\n',
'	SELECT * from temp_linkdata;\n',
'	\n',
'ELSEIF query_type IN (\'SecondaryAll\',\'SecondaryClosest\') THEN\n',
'	#Create candidate table with secondary instruments \n',
'	CREATE TEMPORARY TABLE temp_secondary_candidates AS\n',
'		SELECT l.PIDN, l.link_date, l.link_id, i2.InstrType, i2.InstrID, DATEDIFF(l.link_date, i2.DCDate) AS Days \n',
'		FROM temp_linkdata l INNER JOIN instrumenttracking i2 ON (i2.PIDN=l.PIDN) \n',
'		WHERE i2.InstrType = \'', Instrument, '\';\n',
'	ALTER TABLE temp_secondary_candidates ADD INDEX(pidn,link_date,link_id,Days);\n',
'	\n',
'	#get rid of earlier or later instruments as necessary\n',
'	IF query_subtype = \'Earlier\' THEN DELETE from temp_secondary_candidates WHERE Days >0;\n',
'	ELSEIF query_subtype = \'MoreRecent\' THEN DELETE from temp_secondary_candidates WHERE Days <0;\n',
'	END IF;\n',
'	\n',
'	#limit records to specified day range      \n',
'	DELETE FROM temp_secondary_candidates WHERE abs(Days) > query_days;\n',
'\n',
'	#only keep closest if appropriate\n',
'	IF query_type = \'SecondaryClosest\' THEN\n',
'		CREATE TEMPORARY TABLE temp_secondary_closest AS\n',
'			SELECT pidn,link_date,link_id,MIN(ABS(Days)) as min_days \n',
'			FROM temp_secondary_candidates\n',
'			GROUP BY pidn,link_date,link_id;\n',
'		ALTER TABLE temp_secondary_closest ADD INDEX (pidn,link_date,link_id);\n',
'		DELETE FROM temp_secondary_candidates\n',
'			WHERE ABS(days) <> \n',
'				(SELECT min_days \n',
'				FROM temp_secondary_closest s2 \n',
'				WHERE (s2.pidn = temp_secondary_candidates.pidn and s2.link_date=temp_secondary_candidates.link_date and s2.link_id=temp_secondary_candidates.link_id));\n',
'		DROP TABLE temp_secondary_closest;\n',
'	END IF;\n',
'\n',
'	SELECT l.PIDN, l.link_date, l.link_id, v.VType, i.InstrType, i.DCDate, temp_secondary_candidates.days as DayDiff, i.DCStatus, i.AgeAtDC, d.* \n',
'	FROM temp_linkdata l\n',
'		LEFT OUTER JOIN temp_secondary_candidates ON (l.pidn=temp_secondary_candidates.pidn and l.link_date = temp_secondary_candidates.link_date and l.link_id=temp_secondary_candidates.link_id) \n',
'		LEFT JOIN instrumenttracking i ON (temp_secondary_candidates.InstrID=i.InstrID)\n',
'		LEFT JOIN visit v ON (i.VID = v.VID)\n',
'		LEFT JOIN ', DataSource, ' d ON (i.InstrID=d.instr_id) ORDER BY l.pidn, l.link_date, l.link_id;\n',
'\n',
'	DROP TABLE temp_secondary_candidates;\n',
'\n',
'END IF;\n',
'\n',
'END$$\n',
'\n',
'$$\n',
'DELIMITER ;\n',
'\n');

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `util_CreateLQView` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `util_CreateLQView`(TableName varchar(50), Instrument varchar(50))
BEGIN

DECLARE lqTargetName varchar(50);
DECLARE sqlText varchar(10000) DEFAULT '';
DECLARE columnName varchar(50);
DECLARE selectColumns varchar(10000) DEFAULT '';
DECLARE done INT DEFAULT 0;
DECLARE c CURSOR FOR SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME=TableName;
DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

SET lqTargetName = lower(Instrument);
SET lqTargetName = replace(lqTargetName, ' ', '');

SET sqlText = CONCAT(
'-- -----------------------------------------------------\n',
'-- view lq_view_', lqTargetName, '\n',
'-- -----------------------------------------------------\n',
'DROP VIEW IF EXISTS `lq_view_', lqTargetName, '`;\n',
'CREATE OR REPLACE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `lq_view_', lqTargetName, '` AS select \n'

);

OPEN c;
read_loop: LOOP
  FETCH c INTO columnName;
  IF done THEN
    LEAVE read_loop;
  END IF;
  SET selectColumns = CONCAT(selectColumns, '`', columnName, '`,\n');
END LOOP;
CLOSE c;

SET selectColumns = LEFT(selectColumns, length(selectColumns)-2);

SET sqlText = CONCAT(
sqlText,
selectColumns,
'\nFROM `instrumenttracking` `t1` inner join `', TableName, '` `t2` on (`t1`.`InstrID` = `t2`.`instr_id`)\n',
'WHERE `t1`.`InstrType` = \'', Instrument, '\';\n'
);

SELECT sqlText;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `util_CreateMetadataInsertStatements` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `util_CreateMetadataInsertStatements`(InstanceMask varchar(50), ScopeMask varchar(50), EntityMask varchar (50))
BEGIN

IF InstanceMask IS NULL THEN
  SET InstanceMask = 'lava';
END IF;

IF ScopeMask IS NULL THEN
  SET ScopeMask = '%';
END IF;

IF EntityMask IS NULL THEN
  SET EntityMask = '%';
END IF;

SELECT CONCAT('INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,',
	'`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`modified`) VALUES(',
	CASE WHEN `instance` IS NULL THEN 'NULL,' ELSE CONCAT('''',`instance`,''',') END,
	CASE WHEN `scope` IS NULL THEN 'NULL,' ELSE CONCAT('''',`scope`,''',') END,
	CASE WHEN `entity` IS NULL THEN 'NULL,' ELSE CONCAT('''',`entity`,''',') END,
	CASE WHEN `prop_order` IS NULL THEN 'NULL,' ELSE CONCAT(CAST(`prop_order` as char),',') END,
	CASE WHEN `prop_name` IS NULL THEN 'NULL,' ELSE CONCAT('''',`prop_name`,''',') END,
	CASE WHEN `prop_description` IS NULL THEN 'NULL,' ELSE CONCAT('''',REPLACE(`prop_description`,'''','\\'''),''',') END,
	CASE WHEN `data_values` IS NULL THEN 'NULL,' ELSE CONCAT('''',REPLACE(`data_values`,'''','\\'''),''',') END,
	CASE WHEN `data_calculation` IS NULL THEN 'NULL,' ELSE CONCAT('''',REPLACE(`data_calculation`,'''','\\'''),''',') END,
	CASE WHEN `required` IS NULL THEN 'NULL,' ELSE CONCAT(CAST(`required` as char),',') END,
	CASE WHEN `db_table` IS NULL THEN 'NULL,' ELSE CONCAT('''',`db_table`,''',') END,
	CASE WHEN `db_column` IS NULL THEN 'NULL,' ELSE CONCAT('''',`db_column`,''',') END,
	CASE WHEN `db_order` IS NULL THEN 'NULL,' ELSE CONCAT(CAST(`db_order` as char),',') END,
	CASE WHEN `db_datatype` IS NULL THEN 'NULL,' ELSE CONCAT('''',`db_datatype`,''',') END,
	CASE WHEN `db_datalength` IS NULL THEN 'NULL,' ELSE CONCAT('''',`db_datalength`,''',') END,
	CASE WHEN `db_nullable` IS NULL THEN 'NULL,' ELSE CONCAT(CAST(`db_nullable` as char),',') END,
	CASE WHEN `db_default` IS NULL THEN 'NULL,' ELSE CONCAT('''',`db_default`,''',') END,
	CASE WHEN `modified` IS NULL THEN 'NULL' ELSE CONCAT('''',CAST(`modified` as char),'''') END,
	');')
	FROM `datadictionary` WHERE `entity` Like EntityMask and `instance` like InstanceMask and `scope` like ScopeMask
	ORDER BY `scope`, `entity`, `prop_order`;

SELECT CONCAT('INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,',
            '`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,',
            '`propOrder`,`quickHelp`,`modified`) VALUES(',
        	  CASE WHEN `messageCode` IS NULL THEN 'NULL,' ELSE CONCAT('''',`messageCode`,''',') END,
	          CASE WHEN `locale` IS NULL THEN 'NULL,' ELSE CONCAT('''',`locale`,''',') END,
	          CASE WHEN `instance` IS NULL THEN 'NULL,' ELSE CONCAT('''',`instance`,''',') END,
        	  CASE WHEN `scope` IS NULL THEN 'NULL,' ELSE CONCAT('''',`scope`,''',') END,
        	  CASE WHEN `prefix` IS NULL THEN 'NULL,' ELSE CONCAT('''',`prefix`,''',') END,
        	  CASE WHEN `entity` IS NULL THEN 'NULL,' ELSE CONCAT('''',`entity`,''',') END,
        	  CASE WHEN `property` IS NULL THEN 'NULL,' ELSE CONCAT('''',`property`,''',') END,
            CASE WHEN `section` IS NULL THEN 'NULL,' ELSE CONCAT('''',`section`,''',') END,
            CASE WHEN `context` IS NULL THEN 'NULL,' ELSE CONCAT('''',`context`,''',') END,
            CASE WHEN `style` IS NULL THEN 'NULL,' ELSE CONCAT('''',`style`,''',') END,
            CASE WHEN `required` IS NULL THEN 'NULL,' ELSE CONCAT('''',`required`,''',') END,
            CASE WHEN `label` IS NULL THEN 'NULL,' ELSE CONCAT('''',REPLACE(`label`,'''','\\'''),''',') END,
            CASE WHEN `label2` IS NULL THEN 'NULL,' ELSE CONCAT('''',REPLACE(`label2`,'''','\\'''),''',') END,            
            CASE WHEN `maxLength` IS NULL THEN 'NULL,' ELSE CONCAT(CAST(`maxLength` as char),',') END,
            CASE WHEN `size` IS NULL THEN 'NULL,' ELSE CONCAT(CAST(`size` as char),',') END,
            CASE WHEN `indentLevel` IS NULL THEN 'NULL,' ELSE CONCAT(CAST(`indentLevel` as char),',') END,
            CASE WHEN `attributes` IS NULL THEN 'NULL,' ELSE CONCAT('''',`attributes`,''',') END,
            CASE WHEN `list` IS NULL THEN 'NULL,' ELSE CONCAT('''',`list`,''',') END,
            CASE WHEN `listAttributes` IS NULL THEN 'NULL,' ELSE CONCAT('''',`listAttributes`,''',') END,
            CASE WHEN `propOrder` IS NULL THEN 'NULL,' ELSE CONCAT(CAST(`propOrder` as char),',') END,
            CASE WHEN `quickHelp` IS NULL THEN 'NULL,' ELSE CONCAT('''',REPLACE(`quickHelp`,'''','\\'''),''',') END,
           CASE WHEN `modified` IS NULL THEN 'NULL' ELSE CONCAT('''',CAST(`modified` as char),'''') END,
            ');')
            FROM `viewproperty` WHERE `entity` Like EntityMask and
                                    `instance` like InstanceMask and
                                    `scope` like ScopeMask
            ORDER BY `entity`, `propOrder`;

SELECT CONCAT('INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,',
              '`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,',
              '`hibernateNotNull`,`modified`) VALUES(',
        	  CASE WHEN `instance` IS NULL THEN 'NULL,' ELSE CONCAT('''',`instance`,''',') END,
        	  CASE WHEN `scope` IS NULL THEN 'NULL,' ELSE CONCAT('''',`scope`,''',') END,
        	  CASE WHEN `entity` IS NULL THEN 'NULL,' ELSE CONCAT('''',`entity`,''',') END,
        	  CASE WHEN `property` IS NULL THEN 'NULL,' ELSE CONCAT('''',`property`,''',') END,
            CASE WHEN `dbTable` IS NULL THEN 'NULL,' ELSE CONCAT('''',`dbTable`,''',') END,
            CASE WHEN `dbColumn` IS NULL THEN 'NULL,' ELSE CONCAT('''',`dbColumn`,''',') END,
            CASE WHEN `dbType` IS NULL THEN 'NULL,' ELSE CONCAT('''',`dbType`,''',') END,
            CASE WHEN `dbLength` IS NULL THEN 'NULL,' ELSE CONCAT(CAST(`dbLength` as char),',') END,
            CASE WHEN `dbPrecision` IS NULL THEN 'NULL,' ELSE CONCAT(CAST(`dbPrecision` as char),',') END,
            CASE WHEN `dbScale` IS NULL THEN 'NULL,' ELSE CONCAT(CAST(`dbScale` as char),',') END,
            CASE WHEN `dbOrder` IS NULL THEN 'NULL,' ELSE CONCAT(CAST(`dbOrder` as char),',') END,
            CASE WHEN `hibernateProperty` IS NULL THEN 'NULL,' ELSE CONCAT('''',`hibernateProperty`,''',') END,
            CASE WHEN `hibernateType` IS NULL THEN 'NULL,' ELSE CONCAT('''',`hibernateType`,''',') END,
            CASE WHEN `hibernateClass` IS NULL THEN 'NULL,' ELSE CONCAT('''',`hibernateClass`,''',') END,
            CASE WHEN `hibernateNotNull` IS NULL THEN 'NULL,' ELSE CONCAT('''',`hibernateNotNull`,''',') END,
            CASE WHEN `modified` IS NULL THEN 'NULL' ELSE CONCAT('''',CAST(`modified` as char),'''') END,
            ');')
            FROM `hibernateproperty` WHERE `entity` Like EntityMask and
                                    `instance` like InstanceMask and
                                    `scope` like ScopeMask
            ORDER BY `entity`, `dbOrder`;

SELECT CONCAT('INSERT INTO `list` (`ListName`,`instance`,`scope`,`NumericKey`,`modified`) VALUES(',
        	  CASE WHEN `ListName` IS NULL THEN 'NULL,' ELSE CONCAT('''',`ListName`,''',') END,
        	  CASE WHEN `instance` IS NULL THEN 'NULL,' ELSE CONCAT('''',`instance`,''',') END,
        	  CASE WHEN `scope` IS NULL THEN 'NULL,' ELSE CONCAT('''',`scope`,''',') END,
        	  CASE WHEN `NumericKey` IS NULL THEN 'NULL,' ELSE CONCAT(CAST(`NumericKey` as char),',') END,
              CASE WHEN `modified` IS NULL THEN 'NULL' ELSE CONCAT('''',CAST(`modified` as char),'''') END,
            ');')
            FROM `list` WHERE `instance` like InstanceMask and `scope` like ScopeMask
            ORDER BY `ListName`; 

SELECT CONCAT('INSERT INTO `listvalues` (`ListID`,`instance`,`scope`,`ValueKey`,`ValueDesc`,`OrderID`,`modified`)',
			' SELECT `ListID`,',
             CASE WHEN lv.`instance` IS NULL THEN 'NULL,' ELSE CONCAT('''',lv.`instance`,''',') END,
        	  CASE WHEN lv.`scope` IS NULL THEN 'NULL,' ELSE CONCAT('''',lv.`scope`,''',') END,
             CASE WHEN lv.`ValueKey` IS NULL THEN 'NULL,' ELSE CONCAT('''',REPLACE(lv.`ValueKey`,'''','\\'''),''',') END,
        	  CASE WHEN lv.`ValueDesc` IS NULL THEN 'NULL,' ELSE CONCAT('''',REPLACE(lv.`ValueDesc`,'''','\\'''),''',') END,
				  CASE WHEN lv.`OrderID` IS NULL THEN 'NULL,' ELSE CONCAT(CAST(lv.`OrderID` as char),',') END,
              CASE WHEN lv.`modified` IS NULL THEN 'NULL' ELSE CONCAT('''',CAST(lv.`modified` as char),'''') END,
            ' FROM `list` where `ListName`=''',l.`ListName`,''';')
            FROM `listvalues` lv INNER JOIN `list` l on l.`ListId`=lv.`ListID` WHERE  lv.`instance` like InstanceMask and lv.`scope` like ScopeMask
            ORDER BY l.`ListName`, lv.ORDERID, lv.ValueKey;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `util_CreateTable` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `util_CreateTable`(EntityIn varchar (50), ScopeIn varchar(25))
BEGIN

select CONCAT('DROP TABLE IF EXISTS `',db_table, '`;') from datadictionary where entity=EntityIn and scope=ScopeIn group by db_table order by db_table;

select CONCAT('CREATE TABLE IF NOT EXISTS `', db_table, '` (
  `instr_id` INT NOT NULL ,')
from datadictionary where entity=EntityIn and scope=ScopeIn group by db_table order by db_table;

select CONCAT('  `', db_column, '` ', db_datatype,
  case when `db_datalength` is not null and `db_datalength`<>'' then CONCAT('(', db_datalength, ')') else '' end,
  ' ',
  case when `db_nullable`=0 then CONCAT('NOT NULL DEFAULT ',db_default) else CONCAT('NULL DEFAULT ',db_default) end,
' ,'
) from datadictionary where entity=EntityIn and scope=ScopeIn group by db_table, db_order order by db_table, db_order;


select '  PRIMARY KEY (`instr_id`) )
ENGINE = InnoDB;';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `util_FixMetadataPropertyNames` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `util_FixMetadataPropertyNames`(EntityIn varchar(50))
BEGIN






UPDATE hibernateproperty SET
property =
CONCAT(SUBSTRING_INDEX(property,'_',1),
UPPER(SUBSTRING(property,LOCATE('_',property)+1,1)),
SUBSTRING(property,LOCATE('_',property)+2)),
hibernateProperty =
CONCAT(SUBSTRING_INDEX(hibernateProperty,'_',1),
UPPER(SUBSTRING(hibernateProperty,LOCATE('_',hibernateProperty)+1,1)),
SUBSTRING(hibernateProperty,LOCATE('_',hibernateProperty)+2))
WHERE entity = EntityIn AND hibernateProperty like '%\_%';


UPDATE viewproperty SET
messageCode = CONCAT(SUBSTRING_INDEX(messageCode,'_',1),
UPPER(SUBSTRING(messageCode,LOCATE('_',messageCode)+1,1)),
SUBSTRING(messageCode,LOCATE('_',messageCode)+2)),
property = CONCAT(SUBSTRING_INDEX(property,'_',1),
UPPER(SUBSTRING(property,LOCATE('_',property)+1,1)),
SUBSTRING(property,LOCATE('_',property)+2))
WHERE entity = EntityIn and property like '%\_%';

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `util_GenerateCode` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `util_GenerateCode`(EntityIn varchar(50), ScopeIn VARCHAR(25))
BEGIN

CALL util_HibernateMapping(EntityIn,ScopeIn);
CALL util_GetJavaModelProperties(EntityIn,ScopeIn);
CALL util_GetResultFields(EntityIn,ScopeIn);
CALL util_GetCreateFieldTags(EntityIn,ScopeIn);
CALL util_GetUdsUploadCsvRecord(EntityIn,ScopeIn);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `util_GetCreateFieldTags` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `util_GetCreateFieldTags`(EntityIn varchar(50), ScopeIn VARCHAR(25))
BEGIN


SELECT CONCAT('<tags:createField property="',`property`,'" component="${component}"/>')
FROM `viewproperty` WHERE `Entity` = EntityIn and `Scope`=ScopeIn Order By `propOrder`;


SELECT CONCAT('<tags:createField property="',`property`,'" component="${component}" entity="',
  LOWER(LEFT(`Entity`,1)),RIGHT(`Entity`,LENGTH(`Entity`)-1),'"/>')
FROM `viewproperty` WHERE `Entity` = EntityIn and `Scope`=ScopeIn Order By `propOrder`;


SELECT CONCAT('<tags:createField property="',`property`,'" component="${component}" entity="${instrTypeEncoded}"/>')
FROM `viewproperty` WHERE `Entity` = EntityIn and `Scope`=ScopeIn Order By `propOrder`;


SELECT CONCAT('<tags:createField property="',`property`,'" component="',
  LOWER(LEFT(`Entity`,1)),RIGHT(`Entity`,LENGTH(`Entity`)-1),'"/>')
FROM `viewproperty` WHERE `Entity` = EntityIn and `Scope`=ScopeIn Order By `propOrder`;


SELECT CONCAT('<tags:listField property="',`property`,'" component="${component}" listIndex="${iterator.index}" entityType="',
  LOWER(LEFT(`Entity`,1)),RIGHT(`Entity`,LENGTH(`Entity`)-1),'"/>')
FROM `viewproperty` WHERE `Entity` = EntityIn and `Scope`=ScopeIn Order By `propOrder`;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `util_GetJavaModelProperties` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `util_GetJavaModelProperties`(EntityIn varchar(50), ScopeIn VARCHAR(25))
BEGIN

SELECT CONCAT('protected ',CASE WHEN `HibernateType` IN('many-to-one','one-to-many','one-to-one') THEN `HibernateClass`
     WHEN `HibernateType` = 'Timestamp' THEN 'Date'
     ELSE CONCAT(UPPER(LEFT(`HibernateType`,1)),RIGHT(`HibernateType`,LENGTH(`HibernateType`)-1)) END,
	  ' ',`HibernateProperty`,';')
FROM `hibernateproperty` WHERE `entity`=EntityIn and `Scope`=ScopeIn ORDER BY `DBTable`,`DBOrder`;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `util_GetResultFields` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `util_GetResultFields`(EntityIn varchar(50), ScopeIn VARCHAR(25))
BEGIN

SELECT CONCAT('"',`property`,'",')
FROM `viewproperty`
WHERE `entity`=EntityIn AND context='r' AND `scope`=ScopeIn
ORDER BY `propOrder`;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `util_GetUdsUploadCsvRecord` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `util_GetUdsUploadCsvRecord`(EntityIn varchar(50), ScopeIn VARCHAR(25))
BEGIN
	
SELECT CONCAT('buffer.append(UdsUploadUtils.formatField(get',
	UPPER(LEFT(`property`,1)),
	RIGHT(`property`,LENGTH(`property`)-1),
	'())).append(",");')
FROM `viewproperty` WHERE `entity`=EntityIn and `Scope`=ScopeIn ORDER BY `propOrder`;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `util_HibernateMapping` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `util_HibernateMapping`(EntityIn varchar(50), ScopeIn Varchar(25))
BEGIN

SELECT CONCAT('<?xml version="1.0"?>

<!DOCTYPE hibernate-mapping PUBLIC
    "-//Hibernate/Hibernate Mapping DTD 3.0//EN"
    "http://hibernate.sourceforge.net/hibernate-mapping-3.0.dtd">

<hibernate-mapping>

<class name="edu.ucsf.memory.[scope].[module].model.', EntityIn,'" table="', EntityIn,'" select-before-update="true">

		<id name="id" type="long">
			<column name="[KEY COLUMN]" not-null="true"/>
			<generator class="identity"/>
		</id>

')
FROM `hibernateproperty` WHERE `Entity` = EntityIn and `Scope` = ScopeIn GROUP BY `Entity`,`Scope`;

SELECT CONCAT('\t\t<',

    CASE WHEN `HibernateType` IN('many-to-one','one-to-many','one-to-one') THEN `HibernateType` ELSE 'property' END,

    ' name="',`HibernateProperty`,
    '" column="',`DBColumn`,'"',

    CASE WHEN `HibernateType` IN('many-to-one','one-to-many','one-to-one')
		   THEN CONCAT(' class="', COALESCE(`HibernateClass`,''),'"') ELSE CONCAT(' type="',`HibernateType`,'"') END,


   CASE WHEN `DBType` IN ('numeric','float','decimal')
		  THEN CONCAT(' precision="',CAST(`DBprecision` as CHAR),
                  '" scale="',CAST(DBScale as CHAR),'"') ELSE ''END,


    CASE WHEN `DBType` IN ('char','varchar','nchar','nvarchar','binary','varbinary')
		  THEN CONCAT(' length="',CAST(`DBLength` as CHAR),'"') ELSE '' END,


    CASE WHEN `HibernateNotNull` = 'Yes' THEN ' not-null="true"' ELSE '' END,'/>')
FROM `hibernateproperty` WHERE `Entity` = EntityIn and `Scope`=ScopeIn ORDER BY `DBTable`,`DBOrder`;

SELECT '

	<!-- associations -->



	<!-- filters -->
               <!--define or remove these standard filters-->
               <filter name="projectContext" condition=":projectContext)=[define]"/>
               <filter name="patient" condition=":patientId=[define]"/>


</class>


         <!-- queries  -->



</hibernate-mapping>'
FROM `hibernateproperty` WHERE `Entity` = EntityIn and `Scope`=ScopeIn GROUP BY `Entity`,`Scope`;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `util_TableKeysAdd` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `util_TableKeysAdd`(EntityIn varchar (50), ScopeIn varchar(25))
BEGIN

select CONCAT('ALTER TABLE `', db_table, '` ADD CONSTRAINT `', db_table, '__instr_id`
 FOREIGN KEY (`instr_id` )
 REFERENCES `instrumenttracking` (`InstrID`)
 ON DELETE NO ACTION
 ON UPDATE NO ACTION, ADD INDEX `', db_table, '__instr_id` (`instr_id` ASC);')
from datadictionary where entity=EntityIn and scope=ScopeIn group by db_table order by db_table;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `util_TableKeysDrop` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `util_TableKeysDrop`(EntityIn varchar (50), ScopeIn varchar(25))
BEGIN

select CONCAT('ALTER TABLE `', db_table, '` DROP FOREIGN KEY `', db_table, '__instr_id`;
ALTER TABLE `', db_table, '` DROP INDEX `', db_table, '__instr_id`;')
from datadictionary where entity=EntityIn and scope=ScopeIn group by db_table order by db_table;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-05-02 10:19:58
