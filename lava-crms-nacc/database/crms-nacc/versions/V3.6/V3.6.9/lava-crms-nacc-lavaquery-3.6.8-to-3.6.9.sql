-- UDS FTLD Module LQ views and stored procs

-- UDS FTLD BIS
CREATE VIEW `lq_view_udsftldbis` AS select 
`t1`.`InstrID` AS `InstrID`,
`t2`.`FTDCPC4F` AS `FTDCPC4F`,
`t2`.`FTDWORKU` AS `FTDWORKU`,
`t2`.`FTDMIST` AS `FTDMIST`,
`t2`.`FTDCRIT` AS `FTDCRIT`,
`t2`.`FTDWORR` AS `FTDWORR`,
`t2`.`FTDBAD` AS `FTDBAD`,
`t2`.`FTDPOOR` AS `FTDPOOR`,
`t2`.`FTDFFEAR` AS `FTDFFEAR`,
`t2`.`FTDBIST` AS `FTDBIST`,
`t3`.`Packet` AS `Packet`,
`t3`.`FormID` AS `FormID`,
`t3`.`FormVer` AS `FormVer`,
`t3`.`ADCID` AS `ADCID`,
`t3`.`PTID` AS `PTID`,
`t3`.`VisitMo` AS `VisitMo`,
`t3`.`VisitDay` AS `VisitDay`,
`t3`.`VisitYr` AS `VisitYr`,
`t3`.`VisitNum` AS `VisitNum`,
`t3`.`Initials` AS `Initials`,
`t3`.`PacketDate` AS `PacketDate`,
`t3`.`PacketBy` AS `PacketBy`,
`t3`.`PacketStatus` AS `PacketStatus`,
`t3`.`PacketReason` AS `PacketReason`,
`t3`.`PacketNotes` AS `PacketNotes`,
`t3`.`DSDate` AS `DSDate`,
`t3`.`DSBy` AS `DSBy`,
`t3`.`DSStatus` AS `DSStatus`,
`t3`.`DSReason` AS `DSReason`,
`t3`.`DSNotes` AS `DSNotes`,
`t3`.`LCDate` AS `LCDate`,
`t3`.`LCBy` AS `LCBy`,
`t3`.`LCStatus` AS `LCStatus`,
`t3`.`LCReason` AS `LCReason`,
`t3`.`LCNotes` AS `LCNotes` 
from ((`instrumenttracking` `t1` join `udsftldbis` `t2` on((`t1`.`InstrID` = `t2`.`InstrID`))) 
join `udstracking` `t3` on((`t1`.`InstrID` = `t3`.`InstrID`))) where (`t1`.`InstrType` = 'UDS FTLD BIS');



DROP procedure IF EXISTS `lq_get_nacc_udsftldbis`;

DELIMITER $$

CREATE PROCEDURE `lq_get_nacc_udsftldbis`(user_name varchar(50), host_name varchar(25),query_type varchar(25), query_subtype VARCHAR(25), query_days INTEGER)
BEGIN

CALL lq_audit_event(user_name,host_name,'crms.nacc.udsftldbis',query_type);
	
IF query_type = 'Simple' THEN
	SELECT p.pidn, it.InstrType, it.DCDate, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it 
		INNER JOIN lq_view_udsftldbis i ON (it.InstrID = i.InstrID) 
		INNER JOIN temp_pidn p ON (p.PIDN = it.PIDN) 
      WHERE it.InstrType = 'UDS FTLD BIS' or it.InstrType is null 
      ORDER BY p.pidn, it.DCDate;
ELSEIF query_type = 'SimpleAllPatients' THEN
	SELECT p.pidn, it.InstrType, it.DCDate, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it  
	 	INNER JOIN lq_view_udsftldbis i ON (it.InstrID = i.InstrID)  
	  RIGHT OUTER JOIN temp_pidn p ON (p.PIDN = it.PIDN)  
	WHERE it.InstrType =  'UDS FTLD BIS'  or it.InstrType is null 
	ORDER BY P.pidn, it.DCDate;

ELSEIF query_type = 'PrimaryAll' THEN 
	CREATE TEMPORARY TABLE temp_linkdata as 

  SELECT p.pidn,i.DCDate as link_date,i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
	FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
		INNER JOIN lq_view_udsftldbis d ON (i.InstrID=d.InstrID) 
	WHERE NOT i.DCStatus = 'Scheduled' AND NOT i.DCStatus like 'Canceled%' 
	ORDER BY p.pidn, i.DCDate, i.InstrID ;
   	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
  SELECT * from temp_linkdata;
ELSEIF query_type = 'PrimaryLatest' THEN  
	CREATE TEMPORARY TABLE temp_linkdata as 

  SELECT p.pidn, i.DCDate as link_date,i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
	FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
	           INNER JOIN lq_view_udsftldbis d ON (i.InstrID=d.InstrID) 
	WHERE i.DCDate = (SELECT MAX(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND  
		i2.InstrType =  'UDS FTLD BIS'  AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%') 
	ORDER BY p.pidn, i.DCDate, i.InstrID;
  	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
  SELECT * from temp_linkdata;
ELSEIF query_type = 'PrimaryFirst' THEN

  CREATE TEMPORARY TABLE temp_linkdata as 
	SELECT p.pidn,i.DCDate as link_date,i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.* 
	FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN) 
		INNER JOIN lq_view_udsftldbis d ON (i.InstrID=d.InstrID)
	WHERE i.DCDate = (SELECT MIN(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND 
		i2.InstrType =  'UDS FTLD BIS'  AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%')
	ORDER BY p.pidn, i.InstrID;
  	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
  SELECT * from temp_linkdata;
ELSEIF query_type IN ('SecondaryAll','SecondaryClosest') THEN
 	 
	CREATE TEMPORARY TABLE temp_secondary_candidates AS
   SELECT l.pidn, l.link_date, l.link_id, i2.InstrType, i2.InstrID, DATEDIFF(l.link_date, i2.DCDate) AS Days 
	 FROM temp_linkdata l INNER JOIN instrumenttracking i2 ON (i2.PIDN=l.PIDN) 
	 WHERE i2.InstrType = 'UDS FTLD BIS';

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
		LEFT JOIN lq_view_udsftldbis d ON (i.InstrID=d.InstrID) ORDER BY l.pidn, l.link_date, l.link_id;

	DROP TABLE temp_secondary_candidates;
END IF;
END$$

DELIMITER ;

INSERT INTO query_objects(instance,scope,module,section,target,short_desc,standard,primary_link,secondary_link) 
  VALUES('lava','crms','query','nacc','udsftldbis','UDS FTLD BIS',1,1,1);

 

-- UDS FTLD Clin Features
CREATE VIEW `lq_view_udsftldclinfeatures` AS select 
`t1`.`InstrID` AS `InstrID`,
`t2`.`FTDPPASL` AS `FTDPPASL`,
`t2`.`FTDPPAPO` AS `FTDPPAPO`,
`t2`.`FTDPPAIW` AS `FTDPPAIW`,
`t2`.`FTDPPASW` AS `FTDPPASW`,
`t2`.`FTDPPAPK` AS `FTDPPAPK`,
`t2`.`FTDPPAGS` AS `FTDPPAGS`,
`t2`.`FTDPPAEH` AS `FTDPPAEH`,
`t2`.`FTDPPACS` AS `FTDPPACS`,
`t2`.`FTDPPASS` AS `FTDPPASS`,
`t2`.`FTDPPASR` AS `FTDPPASR`,
`t2`.`FTDPPASD` AS `FTDPPASD`,
`t2`.`FTDCPPA` AS `FTDCPPA`,
`t2`.`FTDCPPAS` AS `FTDCPPAS`,
`t2`.`FTDBVCLN` AS `FTDBVCLN`,
`t2`.`FTDBVDIS` AS `FTDBVDIS`,
`t2`.`FTDBVAPA` AS `FTDBVAPA`,
`t2`.`FTDBVLOS` AS `FTDBVLOS`,
`t2`.`FTDBVRIT` AS `FTDBVRIT`,
`t2`.`FTDBVHYP` AS `FTDBVHYP`,
`t2`.`FTDBVNEU` AS `FTDBVNEU`,
`t2`.`FTDBVIDL` AS `FTDBVIDL`,
`t2`.`FTDBVFT` AS `FTDBVFT`,
`t2`.`FTDEMGPV` AS `FTDEMGPV`,
`t2`.`FTDEMGPY` AS `FTDEMGPY`,
`t2`.`FTDEMGMN` AS `FTDEMGMN`,
`t2`.`FTDPABVF` AS `FTDPABVF`,
`t3`.`Packet` AS `Packet`,
`t3`.`FormID` AS `FormID`,
`t3`.`FormVer` AS `FormVer`,
`t3`.`ADCID` AS `ADCID`,
`t3`.`PTID` AS `PTID`,
`t3`.`VisitMo` AS `VisitMo`,
`t3`.`VisitDay` AS `VisitDay`,
`t3`.`VisitYr` AS `VisitYr`,
`t3`.`VisitNum` AS `VisitNum`,
`t3`.`Initials` AS `Initials`,
`t3`.`PacketDate` AS `PacketDate`,
`t3`.`PacketBy` AS `PacketBy`,
`t3`.`PacketStatus` AS `PacketStatus`,
`t3`.`PacketReason` AS `PacketReason`,
`t3`.`PacketNotes` AS `PacketNotes`,
`t3`.`DSDate` AS `DSDate`,
`t3`.`DSBy` AS `DSBy`,
`t3`.`DSStatus` AS `DSStatus`,
`t3`.`DSReason` AS `DSReason`,
`t3`.`DSNotes` AS `DSNotes`,
`t3`.`LCDate` AS `LCDate`,
`t3`.`LCBy` AS `LCBy`,
`t3`.`LCStatus` AS `LCStatus`,
`t3`.`LCReason` AS `LCReason`,
`t3`.`LCNotes` AS `LCNotes` 
from ((`instrumenttracking` `t1` join `udsftldclinfeatures` `t2` on((`t1`.`InstrID` = `t2`.`InstrID`))) join `udstracking` `t3` on((`t1`.`InstrID` = `t3`.`InstrID`))) where (`t1`.`InstrType` = 'UDS FTLD Clin Features');



DROP procedure IF EXISTS `lq_get_nacc_udsftldclinfeatures`;

DELIMITER $$

CREATE PROCEDURE `lq_get_nacc_udsftldclinfeatures`(user_name varchar(50), host_name varchar(25),query_type varchar(25), query_subtype VARCHAR(25), query_days INTEGER)
BEGIN

CALL lq_audit_event(user_name,host_name,'crms.nacc.udsftldclinfeatures',query_type);
	
IF query_type = 'Simple' THEN
	SELECT p.pidn, it.InstrType, it.DCDate, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it 
		INNER JOIN lq_view_udsftldclinfeatures i ON (it.InstrID = i.InstrID) 
		INNER JOIN temp_pidn p ON (p.PIDN = it.PIDN) 
      WHERE it.InstrType = 'UDS FTLD Clin Features' or it.InstrType is null 
      ORDER BY p.pidn, it.DCDate;
ELSEIF query_type = 'SimpleAllPatients' THEN
	SELECT p.pidn, it.InstrType, it.DCDate, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it  
	 	INNER JOIN lq_view_udsftldclinfeatures i ON (it.InstrID = i.InstrID)  
	  RIGHT OUTER JOIN temp_pidn p ON (p.PIDN = it.PIDN)  
	WHERE it.InstrType =  'UDS FTLD Clin Features'  or it.InstrType is null 
	ORDER BY P.pidn, it.DCDate;

ELSEIF query_type = 'PrimaryAll' THEN 
	CREATE TEMPORARY TABLE temp_linkdata as 

  SELECT p.pidn,i.DCDate as link_date,i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
	FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
		INNER JOIN lq_view_udsftldclinfeatures d ON (i.InstrID=d.InstrID) 
	WHERE NOT i.DCStatus = 'Scheduled' AND NOT i.DCStatus like 'Canceled%' 
	ORDER BY p.pidn, i.DCDate, i.InstrID ;
   	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
  SELECT * from temp_linkdata;
ELSEIF query_type = 'PrimaryLatest' THEN  
	CREATE TEMPORARY TABLE temp_linkdata as 

  SELECT p.pidn, i.DCDate as link_date,i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
	FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
	           INNER JOIN lq_view_udsftldclinfeatures d ON (i.InstrID=d.InstrID) 
	WHERE i.DCDate = (SELECT MAX(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND  
		i2.InstrType =  'UDS FTLD Clin Features'  AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%') 
	ORDER BY p.pidn, i.DCDate, i.InstrID;
  	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
  SELECT * from temp_linkdata;
ELSEIF query_type = 'PrimaryFirst' THEN

  CREATE TEMPORARY TABLE temp_linkdata as 
	SELECT p.pidn,i.DCDate as link_date,i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.* 
	FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN) 
		INNER JOIN lq_view_udsftldclinfeatures d ON (i.InstrID=d.InstrID)
	WHERE i.DCDate = (SELECT MIN(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND 
		i2.InstrType =  'UDS FTLD Clin Features'  AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%')
	ORDER BY p.pidn, i.InstrID;
  	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
  SELECT * from temp_linkdata;
ELSEIF query_type IN ('SecondaryAll','SecondaryClosest') THEN
 	 
	CREATE TEMPORARY TABLE temp_secondary_candidates AS
   SELECT l.pidn, l.link_date, l.link_id, i2.InstrType, i2.InstrID, DATEDIFF(l.link_date, i2.DCDate) AS Days 
	 FROM temp_linkdata l INNER JOIN instrumenttracking i2 ON (i2.PIDN=l.PIDN) 
	 WHERE i2.InstrType = 'UDS FTLD Clin Features';

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
		LEFT JOIN lq_view_udsftldclinfeatures d ON (i.InstrID=d.InstrID) ORDER BY l.pidn, l.link_date, l.link_id;

	DROP TABLE temp_secondary_candidates;
END IF;
END$$

DELIMITER ;

INSERT INTO query_objects(instance,scope,module,section,target,short_desc,standard,primary_link,secondary_link) 
  VALUES('lava','crms','query','nacc','udsftldclinfeatures','UDS FTLD Clin Features',1,1,1);




-- UDS FTLD Family History
CREATE VIEW `lq_view_udsftldfamilyhistory` AS select 
`t1`.`InstrID` AS `InstrID`,`t2`.`FTDFA3F1` AS `FTDFA3F1`,`t2`.`FTDAFF` AS `FTDAFF`,`t2`.`FTDMUTAT` AS `FTDMUTAT`,`t2`.`FTDPMUT` AS `FTDPMUT`,`t2`.`FTDPMUTX` AS `FTDPMUTX`,`t2`.`FTDMCLAB` AS `FTDMCLAB`,`t2`.`FTDMRLAB` AS `FTDMRLAB`,`t2`.`FTDMFAMR` AS `FTDMFAMR`,`t2`.`FTDMOTH` AS `FTDMOTH`,`t2`.`FTDMOTHX` AS `FTDMOTHX`,`t2`.`FTDFA3F2` AS `FTDFA3F2`,`t2`.`FTDMOMN` AS `FTDMOMN`,`t2`.`FTDMOMP` AS `FTDMOMP`,`t2`.`FTDMOME` AS `FTDMOME`,`t2`.`FTDMOMA` AS `FTDMOMA`,`t2`.`FTDDADN` AS `FTDDADN`,`t2`.`FTDDADP` AS `FTDDADP`,`t2`.`FTDDADE` AS `FTDDADE`,`t2`.`FTDDADA` AS `FTDDADA`,`t2`.`FTDFA3F3` AS `FTDFA3F3`,`t2`.`FTDBSAM` AS `FTDBSAM`,`t2`.`FTDBSA` AS `FTDBSA`,`t2`.`FTDNSA` AS `FTDNSA`,`t2`.`FTDPSA` AS `FTDPSA`,`t2`.`FTDMSA` AS `FTDMSA`,`t2`.`FTDASA` AS `FTDASA`,`t2`.`FTDBSBM` AS `FTDBSBM`,`t2`.`FTDBSB` AS `FTDBSB`,`t2`.`FTDNSB` AS `FTDNSB`,`t2`.`FTDPSB` AS `FTDPSB`,`t2`.`FTDMSB` AS `FTDMSB`,`t2`.`FTDASB` AS `FTDASB`,`t2`.`FTDBSCM` AS `FTDBSCM`,`t2`.`FTDBSC` AS `FTDBSC`,`t2`.`FTDNSC` AS `FTDNSC`,`t2`.`FTDPSC` AS `FTDPSC`,`t2`.`FTDMSC` AS `FTDMSC`,`t2`.`FTDASC` AS `FTDASC`,`t2`.`FTDBSDM` AS `FTDBSDM`,`t2`.`FTDBSD` AS `FTDBSD`,`t2`.`FTDNSD` AS `FTDNSD`,`t2`.`FTDPSD` AS `FTDPSD`,`t2`.`FTDMSD` AS `FTDMSD`,`t2`.`FTDASD` AS `FTDASD`,`t2`.`FTDBSEM` AS `FTDBSEM`,`t2`.`FTDBSE` AS `FTDBSE`,`t2`.`FTDNSE` AS `FTDNSE`,`t2`.`FTDPSE` AS `FTDPSE`,`t2`.`FTDMSE` AS `FTDMSE`,`t2`.`FTDASE` AS `FTDASE`,`t2`.`FTDBSFM` AS `FTDBSFM`,`t2`.`FTDBSF` AS `FTDBSF`,`t2`.`FTDNSF` AS `FTDNSF`,`t2`.`FTDPSF` AS `FTDPSF`,`t2`.`FTDMSF` AS `FTDMSF`,`t2`.`FTDASF` AS `FTDASF`,`t2`.`FTDBSGM` AS `FTDBSGM`,`t2`.`FTDBSG` AS `FTDBSG`,`t2`.`FTDNSG` AS `FTDNSG`,`t2`.`FTDPSG` AS `FTDPSG`,`t2`.`FTDMSG` AS `FTDMSG`,`t2`.`FTDASG` AS `FTDASG`,`t2`.`FTDBSHM` AS `FTDBSHM`,`t2`.`FTDBSH` AS `FTDBSH`,`t2`.`FTDNSH` AS `FTDNSH`,`t2`.`FTDPSH` AS `FTDPSH`,`t2`.`FTDMSH` AS `FTDMSH`,`t2`.`FTDASH` AS `FTDASH`,`t2`.`FTDBSIM` AS `FTDBSIM`,`t2`.`FTDBSI` AS `FTDBSI`,`t2`.`FTDNSI` AS `FTDNSI`,`t2`.`FTDPSI` AS `FTDPSI`,`t2`.`FTDMSI` AS `FTDMSI`,`t2`.`FTDASI` AS `FTDASI`,`t2`.`FTDBSJM` AS `FTDBSJM`,`t2`.`FTDBSJ` AS `FTDBSJ`,`t2`.`FTDNSJ` AS `FTDNSJ`,`t2`.`FTDPSJ` AS `FTDPSJ`,`t2`.`FTDMSJ` AS `FTDMSJ`,`t2`.`FTDASJ` AS `FTDASJ`,`t2`.`FTDBSKM` AS `FTDBSKM`,`t2`.`FTDBSK` AS `FTDBSK`,`t2`.`FTDNSK` AS `FTDNSK`,`t2`.`FTDPSK` AS `FTDPSK`,`t2`.`FTDMSK` AS `FTDMSK`,`t2`.`FTDASK` AS `FTDASK`,`t2`.`FTDBSLM` AS `FTDBSLM`,`t2`.`FTDBSL` AS `FTDBSL`,`t2`.`FTDNSL` AS `FTDNSL`,`t2`.`FTDPSL` AS `FTDPSL`,`t2`.`FTDMSL` AS `FTDMSL`,`t2`.`FTDASL` AS `FTDASL`,`t2`.`FTDBSMM` AS `FTDBSMM`,`t2`.`FTDBSM` AS `FTDBSM`,`t2`.`FTDNSM` AS `FTDNSM`,`t2`.`FTDPSM` AS `FTDPSM`,`t2`.`FTDMSM` AS `FTDMSM`,`t2`.`FTDASM` AS `FTDASM`,`t2`.`FTDFA3F4` AS `FTDFA3F4`,`t2`.`FTDBCAM` AS `FTDBCAM`,`t2`.`FTDBCA` AS `FTDBCA`,`t2`.`FTDNCA` AS `FTDNCA`,`t2`.`FTDPCA` AS `FTDPCA`,`t2`.`FTDMCA` AS `FTDMCA`,`t2`.`FTDACA` AS `FTDACA`,`t2`.`FTDBCBM` AS `FTDBCBM`,`t2`.`FTDBCB` AS `FTDBCB`,`t2`.`FTDNCB` AS `FTDNCB`,`t2`.`FTDPCB` AS `FTDPCB`,`t2`.`FTDMCB` AS `FTDMCB`,`t2`.`FTDACB` AS `FTDACB`,`t2`.`FTDBCCM` AS `FTDBCCM`,`t2`.`FTDBCC` AS `FTDBCC`,`t2`.`FTDNCC` AS `FTDNCC`,`t2`.`FTDPCC` AS `FTDPCC`,`t2`.`FTDMCC` AS `FTDMCC`,`t2`.`FTDACC` AS `FTDACC`,`t2`.`FTDBCDM` AS `FTDBCDM`,`t2`.`FTDBCD` AS `FTDBCD`,`t2`.`FTDNCD` AS `FTDNCD`,`t2`.`FTDPCD` AS `FTDPCD`,`t2`.`FTDMCD` AS `FTDMCD`,`t2`.`FTDACD` AS `FTDACD`,`t2`.`FTDBCEM` AS `FTDBCEM`,`t2`.`FTDBCE` AS `FTDBCE`,`t2`.`FTDNCE` AS `FTDNCE`,`t2`.`FTDPCE` AS `FTDPCE`,`t2`.`FTDMCE` AS `FTDMCE`,`t2`.`FTDACE` AS `FTDACE`,`t2`.`FTDBCFM` AS `FTDBCFM`,`t2`.`FTDBCF` AS `FTDBCF`,`t2`.`FTDNCF` AS `FTDNCF`,`t2`.`FTDPCF` AS `FTDPCF`,`t2`.`FTDMCF` AS `FTDMCF`,`t2`.`FTDACF` AS `FTDACF`,`t2`.`FTDBCGM` AS `FTDBCGM`,`t2`.`FTDBCG` AS `FTDBCG`,`t2`.`FTDNCG` AS `FTDNCG`,`t2`.`FTDPCG` AS `FTDPCG`,`t2`.`FTDMCG` AS `FTDMCG`,`t2`.`FTDACG` AS `FTDACG`,`t2`.`FTDBCHM` AS `FTDBCHM`,`t2`.`FTDBCH` AS `FTDBCH`,`t2`.`FTDNCH` AS `FTDNCH`,`t2`.`FTDPCH` AS `FTDPCH`,`t2`.`FTDMCH` AS `FTDMCH`,`t2`.`FTDACH` AS `FTDACH`,`t2`.`FTDBCIM` AS `FTDBCIM`,`t2`.`FTDBCI` AS `FTDBCI`,`t2`.`FTDNCI` AS `FTDNCI`,`t2`.`FTDPCI` AS `FTDPCI`,`t2`.`FTDMCI` AS `FTDMCI`,`t2`.`FTDACI` AS `FTDACI`,`t2`.`FTDBCJM` AS `FTDBCJM`,`t2`.`FTDBCJ` AS `FTDBCJ`,`t2`.`FTDNCJ` AS `FTDNCJ`,`t2`.`FTDPCJ` AS `FTDPCJ`,`t2`.`FTDMCJ` AS `FTDMCJ`,`t2`.`FTDACJ` AS `FTDACJ`,`t2`.`FTDBCKM` AS `FTDBCKM`,`t2`.`FTDBCK` AS `FTDBCK`,`t2`.`FTDNCK` AS `FTDNCK`,`t2`.`FTDPCK` AS `FTDPCK`,`t2`.`FTDMCK` AS `FTDMCK`,`t2`.`FTDACK` AS `FTDACK`,`t2`.`FTDBCLM` AS `FTDBCLM`,`t2`.`FTDBCL` AS `FTDBCL`,`t2`.`FTDNCL` AS `FTDNCL`,`t2`.`FTDPCL` AS `FTDPCL`,`t2`.`FTDMCL` AS `FTDMCL`,`t2`.`FTDACL` AS `FTDACL`,`t2`.`FTDBCMM` AS `FTDBCMM`,`t2`.`FTDBCM` AS `FTDBCM`,`t2`.`FTDNCM` AS `FTDNCM`,`t2`.`FTDPCM` AS `FTDPCM`,`t2`.`FTDMCM` AS `FTDMCM`,
`t2`.`FTDACM` AS `FTDACM`,
`t3`.`Packet` AS `Packet`,
`t3`.`FormID` AS `FormID`,
`t3`.`FormVer` AS `FormVer`,
`t3`.`ADCID` AS `ADCID`,
`t3`.`PTID` AS `PTID`,
`t3`.`VisitMo` AS `VisitMo`,
`t3`.`VisitDay` AS `VisitDay`,
`t3`.`VisitYr` AS `VisitYr`,
`t3`.`VisitNum` AS `VisitNum`,
`t3`.`Initials` AS `Initials`,
`t3`.`PacketDate` AS `PacketDate`,
`t3`.`PacketBy` AS `PacketBy`,
`t3`.`PacketStatus` AS `PacketStatus`,
`t3`.`PacketReason` AS `PacketReason`,
`t3`.`PacketNotes` AS `PacketNotes`,
`t3`.`DSDate` AS `DSDate`,
`t3`.`DSBy` AS `DSBy`,
`t3`.`DSStatus` AS `DSStatus`,
`t3`.`DSReason` AS `DSReason`,
`t3`.`DSNotes` AS `DSNotes`,
`t3`.`LCDate` AS `LCDate`,
`t3`.`LCBy` AS `LCBy`,
`t3`.`LCStatus` AS `LCStatus`,
`t3`.`LCReason` AS `LCReason`,
`t3`.`LCNotes` AS `LCNotes` 
from ((`instrumenttracking` `t1` join `udsftldfamilyhistory` `t2` on((`t1`.`InstrID` = `t2`.`InstrID`))) join `udstracking` `t3` on((`t1`.`InstrID` = `t3`.`InstrID`))) where (`t1`.`InstrType` = 'UDS FTLD Family History');



DROP procedure IF EXISTS `lq_get_nacc_udsftldfamilyhistory`;

DELIMITER $$

CREATE PROCEDURE `lq_get_nacc_udsftldfamilyhistory`(user_name varchar(50), host_name varchar(25),query_type varchar(25), query_subtype VARCHAR(25), query_days INTEGER)
BEGIN

CALL lq_audit_event(user_name,host_name,'crms.nacc.udsftldfamilyhistory',query_type);
	
IF query_type = 'Simple' THEN
	SELECT p.pidn, it.InstrType, it.DCDate, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it 
		INNER JOIN lq_view_udsftldfamilyhistory i ON (it.InstrID = i.InstrID) 
		INNER JOIN temp_pidn p ON (p.PIDN = it.PIDN) 
      WHERE it.InstrType = 'UDS FTLD Family History' or it.InstrType is null 
      ORDER BY p.pidn, it.DCDate;
ELSEIF query_type = 'SimpleAllPatients' THEN
	SELECT p.pidn, it.InstrType, it.DCDate, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it  
	 	INNER JOIN lq_view_udsftldfamilyhistory i ON (it.InstrID = i.InstrID)  
	  RIGHT OUTER JOIN temp_pidn p ON (p.PIDN = it.PIDN)  
	WHERE it.InstrType =  'UDS FTLD Family History'  or it.InstrType is null 
	ORDER BY P.pidn, it.DCDate;

ELSEIF query_type = 'PrimaryAll' THEN 
	CREATE TEMPORARY TABLE temp_linkdata as 

  SELECT p.pidn,i.DCDate as link_date,i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
	FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
		INNER JOIN lq_view_udsftldfamilyhistory d ON (i.InstrID=d.InstrID) 
	WHERE NOT i.DCStatus = 'Scheduled' AND NOT i.DCStatus like 'Canceled%' 
	ORDER BY p.pidn, i.DCDate, i.InstrID ;
   	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
  SELECT * from temp_linkdata;
ELSEIF query_type = 'PrimaryLatest' THEN  
	CREATE TEMPORARY TABLE temp_linkdata as 

  SELECT p.pidn, i.DCDate as link_date,i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
	FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
	           INNER JOIN lq_view_udsftldfamilyhistory d ON (i.InstrID=d.InstrID) 
	WHERE i.DCDate = (SELECT MAX(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND  
		i2.InstrType =  'UDS FTLD Family History'  AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%') 
	ORDER BY p.pidn, i.DCDate, i.InstrID;
  	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
  SELECT * from temp_linkdata;
ELSEIF query_type = 'PrimaryFirst' THEN

  CREATE TEMPORARY TABLE temp_linkdata as 
	SELECT p.pidn,i.DCDate as link_date,i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.* 
	FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN) 
		INNER JOIN lq_view_udsftldfamilyhistory d ON (i.InstrID=d.InstrID)
	WHERE i.DCDate = (SELECT MIN(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND 
		i2.InstrType =  'UDS FTLD Family History'  AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%')
	ORDER BY p.pidn, i.InstrID;
  	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
  SELECT * from temp_linkdata;
ELSEIF query_type IN ('SecondaryAll','SecondaryClosest') THEN
 	 
	CREATE TEMPORARY TABLE temp_secondary_candidates AS
   SELECT l.pidn, l.link_date, l.link_id, i2.InstrType, i2.InstrID, DATEDIFF(l.link_date, i2.DCDate) AS Days 
	 FROM temp_linkdata l INNER JOIN instrumenttracking i2 ON (i2.PIDN=l.PIDN) 
	 WHERE i2.InstrType = 'UDS FTLD Family History';

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
		LEFT JOIN lq_view_udsftldfamilyhistory d ON (i.InstrID=d.InstrID) ORDER BY l.pidn, l.link_date, l.link_id;

	DROP TABLE temp_secondary_candidates;
END IF;
END$$

DELIMITER ;


INSERT INTO query_objects(instance,scope,module,section,target,short_desc,standard,primary_link,secondary_link) 
  VALUES('lava','crms','query','nacc','udsftldfamilyhistory','UDS FTLD Family History',1,1,1);





-- UDS FTLD Form Checklist
CREATE VIEW `lq_view_udsftldformchecklist` AS select 
`t1`.`InstrID` AS `InstrID`,
`t2`.`FTDA3AFS` AS `FTDA3AFS`,
`t2`.`FTDA3AFR` AS `FTDA3AFR`,
`t2`.`FTDA3AFC` AS `FTDA3AFC`,
`t2`.`FTDA3FS` AS `FTDA3FS`,
`t2`.`FTDA3FR` AS `FTDA3FR`,
`t2`.`FTDA3FC` AS `FTDA3FC`,
`t2`.`FTDC4FS` AS `FTDC4FS`,
`t2`.`FTDC4FR` AS `FTDC4FR`,
`t2`.`FTDC4FC` AS `FTDC4FC`,
`t2`.`FTDC5FS` AS `FTDC5FS`,
`t2`.`FTDC5FR` AS `FTDC5FR`,
`t2`.`FTDC5FC` AS `FTDC5FC`,
`t2`.`FTDC6FS` AS `FTDC6FS`,
`t2`.`FTDC6FR` AS `FTDC6FR`,
`t2`.`FTDC6FC` AS `FTDC6FC`,
`t3`.`Packet` AS `Packet`,
`t3`.`FormID` AS `FormID`,
`t3`.`FormVer` AS `FormVer`,
`t3`.`ADCID` AS `ADCID`,
`t3`.`PTID` AS `PTID`,
`t3`.`VisitMo` AS `VisitMo`,
`t3`.`VisitDay` AS `VisitDay`,
`t3`.`VisitYr` AS `VisitYr`,
`t3`.`VisitNum` AS `VisitNum`,
`t3`.`Initials` AS `Initials`,
`t3`.`PacketDate` AS `PacketDate`,
`t3`.`PacketBy` AS `PacketBy`,
`t3`.`PacketStatus` AS `PacketStatus`,
`t3`.`PacketReason` AS `PacketReason`,
`t3`.`PacketNotes` AS `PacketNotes`,
`t3`.`DSDate` AS `DSDate`,
`t3`.`DSBy` AS `DSBy`,
`t3`.`DSStatus` AS `DSStatus`,
`t3`.`DSReason` AS `DSReason`,
`t3`.`DSNotes` AS `DSNotes`,
`t3`.`LCDate` AS `LCDate`,
`t3`.`LCBy` AS `LCBy`,
`t3`.`LCStatus` AS `LCStatus`,
`t3`.`LCReason` AS `LCReason`,
`t3`.`LCNotes` AS `LCNotes` 
from ((`instrumenttracking` `t1` join `udsftldformchecklist` `t2` on((`t1`.`InstrID` = `t2`.`InstrID`))) join `udstracking` `t3` on((`t1`.`InstrID` = `t3`.`InstrID`))) where (`t1`.`InstrType` = 'UDS FTLD Form Checklist');



DROP procedure IF EXISTS `lq_get_nacc_udsftldformchecklist`;

DELIMITER $$

CREATE PROCEDURE `lq_get_nacc_udsftldformchecklist`(user_name varchar(50), host_name varchar(25),query_type varchar(25), query_subtype VARCHAR(25), query_days INTEGER)
BEGIN

CALL lq_audit_event(user_name,host_name,'crms.nacc.udsftldformchecklist',query_type);
	
IF query_type = 'Simple' THEN
	SELECT p.pidn, it.InstrType, it.DCDate, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it 
		INNER JOIN lq_view_udsftldformchecklist i ON (it.InstrID = i.InstrID) 
		INNER JOIN temp_pidn p ON (p.PIDN = it.PIDN) 
      WHERE it.InstrType = 'UDS FTLD Form Checklist' or it.InstrType is null 
      ORDER BY p.pidn, it.DCDate;
ELSEIF query_type = 'SimpleAllPatients' THEN
	SELECT p.pidn, it.InstrType, it.DCDate, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it  
	 	INNER JOIN lq_view_udsftldformchecklist i ON (it.InstrID = i.InstrID)  
	  RIGHT OUTER JOIN temp_pidn p ON (p.PIDN = it.PIDN)  
	WHERE it.InstrType =  'UDS FTLD Form Checklist'  or it.InstrType is null 
	ORDER BY P.pidn, it.DCDate;

ELSEIF query_type = 'PrimaryAll' THEN 
	CREATE TEMPORARY TABLE temp_linkdata as 

  SELECT p.pidn,i.DCDate as link_date,i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
	FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
		INNER JOIN lq_view_udsftldformchecklist d ON (i.InstrID=d.InstrID) 
	WHERE NOT i.DCStatus = 'Scheduled' AND NOT i.DCStatus like 'Canceled%' 
	ORDER BY p.pidn, i.DCDate, i.InstrID ;
   	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
  SELECT * from temp_linkdata;
ELSEIF query_type = 'PrimaryLatest' THEN  
	CREATE TEMPORARY TABLE temp_linkdata as 

  SELECT p.pidn, i.DCDate as link_date,i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
	FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
	           INNER JOIN lq_view_udsftldformchecklist d ON (i.InstrID=d.InstrID) 
	WHERE i.DCDate = (SELECT MAX(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND  
		i2.InstrType =  'UDS FTLD Form Checklist'  AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%') 
	ORDER BY p.pidn, i.DCDate, i.InstrID;
  	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
  SELECT * from temp_linkdata;
ELSEIF query_type = 'PrimaryFirst' THEN

  CREATE TEMPORARY TABLE temp_linkdata as 
	SELECT p.pidn,i.DCDate as link_date,i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.* 
	FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN) 
		INNER JOIN lq_view_udsftldformchecklist d ON (i.InstrID=d.InstrID)
	WHERE i.DCDate = (SELECT MIN(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND 
		i2.InstrType =  'UDS FTLD Form Checklist'  AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%')
	ORDER BY p.pidn, i.InstrID;
  	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
  SELECT * from temp_linkdata;
ELSEIF query_type IN ('SecondaryAll','SecondaryClosest') THEN
 	 
	CREATE TEMPORARY TABLE temp_secondary_candidates AS
   SELECT l.pidn, l.link_date, l.link_id, i2.InstrType, i2.InstrID, DATEDIFF(l.link_date, i2.DCDate) AS Days 
	 FROM temp_linkdata l INNER JOIN instrumenttracking i2 ON (i2.PIDN=l.PIDN) 
	 WHERE i2.InstrType = 'UDS FTLD Form Checklist';

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
		LEFT JOIN lq_view_udsftldformchecklist d ON (i.InstrID=d.InstrID) ORDER BY l.pidn, l.link_date, l.link_id;

	DROP TABLE temp_secondary_candidates;
END IF;
END$$

DELIMITER ;

INSERT INTO query_objects(instance,scope,module,section,target,short_desc,standard,primary_link,secondary_link) 
  VALUES('lava','crms','query','nacc','udsftldformchecklist','UDS FTLD Form Checklist',1,1,1);






-- UDS FTLD Imaging Avail
CREATE VIEW `lq_view_udsftldimagingavail` AS select 
`t1`.`InstrID` AS `InstrID`,
`t2`.`FTDSMRI` AS `FTDSMRI`,
`t2`.`FTDSMMO` AS `FTDSMMO`,
`t2`.`FTDSMDY` AS `FTDSMDY`,
`t2`.`FTDSMYR` AS `FTDSMYR`,
`t2`.`FTDSMDIC` AS `FTDSMDIC`,
`t2`.`FTDSMDIS` AS `FTDSMDIS`,
`t2`.`FTDSMADN` AS `FTDSMADN`,
`t2`.`FTDSMADV` AS `FTDSMADV`,
`t2`.`FTDSMMAN` AS `FTDSMMAN`,
`t2`.`FTDSMMAO` AS `FTDSMMAO`,
`t2`.`FTDSMMAM` AS `FTDSMMAM`,
`t2`.`FTDSMFS` AS `FTDSMFS`,
`t2`.`FTDSMFSO` AS `FTDSMFSO`,
`t2`.`FTDSMQU` AS `FTDSMQU`,
`t2`.`FTDFDGPT` AS `FTDFDGPT`,
`t2`.`FTDFPMO` AS `FTDFPMO`,
`t2`.`FTDFPDY` AS `FTDFPDY`,
`t2`.`FTDFPYR` AS `FTDFPYR`,
`t2`.`FTDFDDIC` AS `FTDFDDIC`,
`t2`.`FTDFDDID` AS `FTDFDDID`,
`t2`.`FTDFDADN` AS `FTDFDADN`,
`t2`.`FTDFDADV` AS `FTDFDADV`,
`t2`.`FTDFDMAN` AS `FTDFDMAN`,
`t2`.`FTDFDMAO` AS `FTDFDMAO`,
`t2`.`FTDFDMAM` AS `FTDFDMAM`,
`t2`.`FTDFDQU` AS `FTDFDQU`,
`t2`.`FTDAMYPT` AS `FTDAMYPT`,
`t2`.`FTDAMMO` AS `FTDAMMO`,
`t2`.`FTDAMDY` AS `FTDAMDY`,
`t2`.`FTDAMYR` AS `FTDAMYR`,`t2`.`FTDAMDIC` AS `FTDAMDIC`,`t2`.`FTDAMDID` AS `FTDAMDID`,`t2`.`FTDAMLIG` AS `FTDAMLIG`,`t2`.`FTDAMLIO` AS `FTDAMLIO`,`t2`.`FTDAMADN` AS `FTDAMADN`,`t2`.`FTDAMADV` AS `FTDAMADV`,`t2`.`FTDAMMAN` AS `FTDAMMAN`,`t2`.`FTDAMMAO` AS `FTDAMMAO`,`t2`.`FTDAMMAM` AS `FTDAMMAM`,`t2`.`FTDAMQU` AS `FTDAMQU`,`t2`.`FTDOTHER` AS `FTDOTHER`,`t2`.`FTDOTDOP` AS `FTDOTDOP`,`t2`.`FTDOTSER` AS `FTDOTSER`,`t2`.`FTDOTCHO` AS `FTDOTCHO`,`t2`.`FTDOTANO` AS `FTDOTANO`,`t2`.`FTDOTANS` AS `FTDOTANS`,
`t3`.`Packet` AS `Packet`,
`t3`.`FormID` AS `FormID`,
`t3`.`FormVer` AS `FormVer`,
`t3`.`ADCID` AS `ADCID`,
`t3`.`PTID` AS `PTID`,
`t3`.`VisitMo` AS `VisitMo`,
`t3`.`VisitDay` AS `VisitDay`,
`t3`.`VisitYr` AS `VisitYr`,
`t3`.`VisitNum` AS `VisitNum`,
`t3`.`Initials` AS `Initials`,
`t3`.`PacketDate` AS `PacketDate`,
`t3`.`PacketBy` AS `PacketBy`,
`t3`.`PacketStatus` AS `PacketStatus`,
`t3`.`PacketReason` AS `PacketReason`,
`t3`.`PacketNotes` AS `PacketNotes`,
`t3`.`DSDate` AS `DSDate`,
`t3`.`DSBy` AS `DSBy`,
`t3`.`DSStatus` AS `DSStatus`,
`t3`.`DSReason` AS `DSReason`,
`t3`.`DSNotes` AS `DSNotes`,
`t3`.`LCDate` AS `LCDate`,
`t3`.`LCBy` AS `LCBy`,
`t3`.`LCStatus` AS `LCStatus`,
`t3`.`LCReason` AS `LCReason`,
`t3`.`LCNotes` AS `LCNotes` 
from ((`instrumenttracking` `t1` join `udsftldimagingavail` `t2` on((`t1`.`InstrID` = `t2`.`InstrID`))) join `udstracking` `t3` on((`t1`.`InstrID` = `t3`.`InstrID`))) where (`t1`.`InstrType` = 'UDS FTLD Imaging Avail');


DROP procedure IF EXISTS `lq_get_nacc_udsftldimagingavail`;

DELIMITER $$

CREATE PROCEDURE `lq_get_nacc_udsftldimagingavail`(user_name varchar(50), host_name varchar(25),query_type varchar(25), query_subtype VARCHAR(25), query_days INTEGER)
BEGIN

CALL lq_audit_event(user_name,host_name,'crms.nacc.udsftldimagingavail',query_type);
	
IF query_type = 'Simple' THEN
	SELECT p.pidn, it.InstrType, it.DCDate, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it 
		INNER JOIN lq_view_udsftldimagingavail i ON (it.InstrID = i.InstrID) 
		INNER JOIN temp_pidn p ON (p.PIDN = it.PIDN) 
      WHERE it.InstrType = 'UDS FTDL Imaging Avail' or it.InstrType is null 
      ORDER BY p.pidn, it.DCDate;
ELSEIF query_type = 'SimpleAllPatients' THEN
	SELECT p.pidn, it.InstrType, it.DCDate, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it  
	 	INNER JOIN lq_view_udsftldimagingavail i ON (it.InstrID = i.InstrID)  
	  RIGHT OUTER JOIN temp_pidn p ON (p.PIDN = it.PIDN)  
	WHERE it.InstrType =  'UDS FTDL Imaging Avail'  or it.InstrType is null 
	ORDER BY P.pidn, it.DCDate;

ELSEIF query_type = 'PrimaryAll' THEN 
	CREATE TEMPORARY TABLE temp_linkdata as 

  SELECT p.pidn,i.DCDate as link_date,i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
	FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
		INNER JOIN lq_view_udsftldimagingavail d ON (i.InstrID=d.InstrID) 
	WHERE NOT i.DCStatus = 'Scheduled' AND NOT i.DCStatus like 'Canceled%' 
	ORDER BY p.pidn, i.DCDate, i.InstrID ;
   	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
  SELECT * from temp_linkdata;
ELSEIF query_type = 'PrimaryLatest' THEN  
	CREATE TEMPORARY TABLE temp_linkdata as 

  SELECT p.pidn, i.DCDate as link_date,i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
	FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
	           INNER JOIN lq_view_udsftldimagingavail d ON (i.InstrID=d.InstrID) 
	WHERE i.DCDate = (SELECT MAX(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND  
		i2.InstrType =  'UDS FTDL Imaging Avail'  AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%') 
	ORDER BY p.pidn, i.DCDate, i.InstrID;
  	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
  SELECT * from temp_linkdata;
ELSEIF query_type = 'PrimaryFirst' THEN

  CREATE TEMPORARY TABLE temp_linkdata as 
	SELECT p.pidn,i.DCDate as link_date,i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.* 
	FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN) 
		INNER JOIN lq_view_udsftldimagingavail d ON (i.InstrID=d.InstrID)
	WHERE i.DCDate = (SELECT MIN(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND 
		i2.InstrType =  'UDS FTDL Imaging Avail'  AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%')
	ORDER BY p.pidn, i.InstrID;
  	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
  SELECT * from temp_linkdata;
ELSEIF query_type IN ('SecondaryAll','SecondaryClosest') THEN
 	 
	CREATE TEMPORARY TABLE temp_secondary_candidates AS
   SELECT l.pidn, l.link_date, l.link_id, i2.InstrType, i2.InstrID, DATEDIFF(l.link_date, i2.DCDate) AS Days 
	 FROM temp_linkdata l INNER JOIN instrumenttracking i2 ON (i2.PIDN=l.PIDN) 
	 WHERE i2.InstrType = 'UDS FTDL Imaging Avail';

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
		LEFT JOIN lq_view_udsftldimagingavail d ON (i.InstrID=d.InstrID) ORDER BY l.pidn, l.link_date, l.link_id;

	DROP TABLE temp_secondary_candidates;
END IF;
END$$

DELIMITER ;


INSERT INTO query_objects(instance,scope,module,section,target,short_desc,standard,primary_link,secondary_link) 
  VALUES('lava','crms','query','nacc','udsftldimagingavail','UDS FTLD Imaging Avail',1,1,1);





-- UDS FTLD Imaging Diag
CREATE VIEW `lq_view_udsftldimagingdiag` AS select 
`t1`.`InstrID` AS `InstrID`,`t2`.`FTDIDIAG` AS `FTDIDIAG`,`t2`.`FTDSMRIO` AS `FTDSMRIO`,`t2`.`FTDMRIFA` AS `FTDMRIFA`,`t2`.`FTDMRIRF` AS `FTDMRIRF`,`t2`.`FTDMRILF` AS `FTDMRILF`,`t2`.`FTDMRIRT` AS `FTDMRIRT`,`t2`.`FTDMRILT` AS `FTDMRILT`,`t2`.`FTDMRIRM` AS `FTDMRIRM`,`t2`.`FTDMRILM` AS `FTDMRILM`,`t2`.`FTDMRIRP` AS `FTDMRIRP`,`t2`.`FTDMRILP` AS `FTDMRILP`,`t2`.`FTDMRIRB` AS `FTDMRIRB`,`t2`.`FTDMRILB` AS `FTDMRILB`,`t2`.`FTDMRIOB` AS `FTDMRIOB`,`t2`.`FTDMRIOS` AS `FTDMRIOS`,`t2`.`FTDFDGPE` AS `FTDFDGPE`,`t2`.`FTDFDGFH` AS `FTDFDGFH`,`t2`.`FTDFDGRF` AS `FTDFDGRF`,`t2`.`FTDFDGLF` AS `FTDFDGLF`,`t2`.`FTDFDGRT` AS `FTDFDGRT`,`t2`.`FTDFDGLT` AS `FTDFDGLT`,`t2`.`FTDFDGRM` AS `FTDFDGRM`,`t2`.`FTDFDGLM` AS `FTDFDGLM`,`t2`.`FTDFDGRP` AS `FTDFDGRP`,`t2`.`FTDFDGLP` AS `FTDFDGLP`,`t2`.`FTDFDGRB` AS `FTDFDGRB`,`t2`.`FTDFDGLB` AS `FTDFDGLB`,`t2`.`FTDFDGOA` AS `FTDFDGOA`,`t2`.`FTDFDGOS` AS `FTDFDGOS`,`t2`.`FTDAMYP` AS `FTDAMYP`,`t2`.`FTDAMYVI` AS `FTDAMYVI`,`t2`.`FTDAMYRF` AS `FTDAMYRF`,`t2`.`FTDAMYLF` AS `FTDAMYLF`,`t2`.`FTDAMYRT` AS `FTDAMYRT`,`t2`.`FTDAMYLT` AS `FTDAMYLT`,`t2`.`FTDAMYRM` AS `FTDAMYRM`,`t2`.`FTDAMYLM` AS `FTDAMYLM`,`t2`.`FTDAMYRP` AS `FTDAMYRP`,`t2`.`FTDAMYLP` AS `FTDAMYLP`,`t2`.`FTDAMYRB` AS `FTDAMYRB`,`t2`.`FTDAMYLB` AS `FTDAMYLB`,`t2`.`FTDAMYOA` AS `FTDAMYOA`,`t2`.`FTDAMYOS` AS `FTDAMYOS`,`t2`.`FTDCBFSP` AS `FTDCBFSP`,`t2`.`FTDCBFVI` AS `FTDCBFVI`,`t2`.`FTDCBFRF` AS `FTDCBFRF`,`t2`.`FTDCBFLF` AS `FTDCBFLF`,`t2`.`FTDCBFRT` AS `FTDCBFRT`,`t2`.`FTDCBFLT` AS `FTDCBFLT`,`t2`.`FTDCBFRM` AS `FTDCBFRM`,`t2`.`FTDCBFLM` AS `FTDCBFLM`,`t2`.`FTDCBFRP` AS `FTDCBFRP`,`t2`.`FTDCBFLP` AS `FTDCBFLP`,`t2`.`FTDCBFRB` AS `FTDCBFRB`,`t2`.`FTDCBFLB` AS `FTDCBFLB`,`t2`.`FTDCBFOA` AS `FTDCBFOA`,`t2`.`FTDCBFOS` AS `FTDCBFOS`,`t2`.`FTDOTHI` AS `FTDOTHI`,`t2`.`FTDOTHIS` AS `FTDOTHIS`,
`t3`.`Packet` AS `Packet`,
`t3`.`FormID` AS `FormID`,
`t3`.`FormVer` AS `FormVer`,
`t3`.`ADCID` AS `ADCID`,
`t3`.`PTID` AS `PTID`,
`t3`.`VisitMo` AS `VisitMo`,
`t3`.`VisitDay` AS `VisitDay`,
`t3`.`VisitYr` AS `VisitYr`,
`t3`.`VisitNum` AS `VisitNum`,
`t3`.`Initials` AS `Initials`,
`t3`.`PacketDate` AS `PacketDate`,
`t3`.`PacketBy` AS `PacketBy`,
`t3`.`PacketStatus` AS `PacketStatus`,
`t3`.`PacketReason` AS `PacketReason`,
`t3`.`PacketNotes` AS `PacketNotes`,
`t3`.`DSDate` AS `DSDate`,
`t3`.`DSBy` AS `DSBy`,
`t3`.`DSStatus` AS `DSStatus`,
`t3`.`DSReason` AS `DSReason`,
`t3`.`DSNotes` AS `DSNotes`,
`t3`.`LCDate` AS `LCDate`,
`t3`.`LCBy` AS `LCBy`,
`t3`.`LCStatus` AS `LCStatus`,
`t3`.`LCReason` AS `LCReason`,
`t3`.`LCNotes` AS `LCNotes` 
from ((`instrumenttracking` `t1` join `udsftldimagingdiag` `t2` on((`t1`.`InstrID` = `t2`.`InstrID`))) join `udstracking` `t3` on((`t1`.`InstrID` = `t3`.`InstrID`))) where (`t1`.`InstrType` = 'UDS FTLD Imaging Diag');


DROP procedure IF EXISTS `lq_get_nacc_udsftldimagingdiag`;

DELIMITER $$

CREATE PROCEDURE `lq_get_nacc_udsftldimagingdiag`(user_name varchar(50), host_name varchar(25),query_type varchar(25), query_subtype VARCHAR(25), query_days INTEGER)
BEGIN

CALL lq_audit_event(user_name,host_name,'crms.nacc.udsftldimagingdiag',query_type);
	
IF query_type = 'Simple' THEN
	SELECT p.pidn, it.InstrType, it.DCDate, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it 
		INNER JOIN lq_view_udsftldimagingdiag i ON (it.InstrID = i.InstrID) 
		INNER JOIN temp_pidn p ON (p.PIDN = it.PIDN) 
      WHERE it.InstrType = 'UDS FTLD Imaging Diag' or it.InstrType is null 
      ORDER BY p.pidn, it.DCDate;
ELSEIF query_type = 'SimpleAllPatients' THEN
	SELECT p.pidn, it.InstrType, it.DCDate, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it  
	 	INNER JOIN lq_view_udsftldimagingdiag i ON (it.InstrID = i.InstrID)  
	  RIGHT OUTER JOIN temp_pidn p ON (p.PIDN = it.PIDN)  
	WHERE it.InstrType =  'UDS FTLD Imaging Diag'  or it.InstrType is null 
	ORDER BY P.pidn, it.DCDate;

ELSEIF query_type = 'PrimaryAll' THEN 
	CREATE TEMPORARY TABLE temp_linkdata as 

  SELECT p.pidn,i.DCDate as link_date,i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
	FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
		INNER JOIN lq_view_udsftldimagingdiag d ON (i.InstrID=d.InstrID) 
	WHERE NOT i.DCStatus = 'Scheduled' AND NOT i.DCStatus like 'Canceled%' 
	ORDER BY p.pidn, i.DCDate, i.InstrID ;
   	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
  SELECT * from temp_linkdata;
ELSEIF query_type = 'PrimaryLatest' THEN  
	CREATE TEMPORARY TABLE temp_linkdata as 

  SELECT p.pidn, i.DCDate as link_date,i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
	FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
	           INNER JOIN lq_view_udsftldimagingdiag d ON (i.InstrID=d.InstrID) 
	WHERE i.DCDate = (SELECT MAX(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND  
		i2.InstrType =  'UDS FTLD Imaging Diag'  AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%') 
	ORDER BY p.pidn, i.DCDate, i.InstrID;
  	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
  SELECT * from temp_linkdata;
ELSEIF query_type = 'PrimaryFirst' THEN

  CREATE TEMPORARY TABLE temp_linkdata as 
	SELECT p.pidn,i.DCDate as link_date,i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.* 
	FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN) 
		INNER JOIN lq_view_udsftldimagingdiag d ON (i.InstrID=d.InstrID)
	WHERE i.DCDate = (SELECT MIN(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND 
		i2.InstrType =  'UDS FTLD Imaging Diag'  AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%')
	ORDER BY p.pidn, i.InstrID;
  	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
  SELECT * from temp_linkdata;
ELSEIF query_type IN ('SecondaryAll','SecondaryClosest') THEN
 	 
	CREATE TEMPORARY TABLE temp_secondary_candidates AS
   SELECT l.pidn, l.link_date, l.link_id, i2.InstrType, i2.InstrID, DATEDIFF(l.link_date, i2.DCDate) AS Days 
	 FROM temp_linkdata l INNER JOIN instrumenttracking i2 ON (i2.PIDN=l.PIDN) 
	 WHERE i2.InstrType = 'UDS FTLD Imaging Diag';

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
		LEFT JOIN lq_view_udsftldimagingdiag d ON (i.InstrID=d.InstrID) ORDER BY l.pidn, l.link_date, l.link_id;

	DROP TABLE temp_secondary_candidates;
END IF;
END$$

DELIMITER ;


INSERT INTO query_objects(instance,scope,module,section,target,short_desc,standard,primary_link,secondary_link) 
  VALUES('lava','crms','query','nacc','udsftldimagingdiag','UDS FTLD Imaging Diag',1,1,1);





-- UDS FTLD IRI
CREATE VIEW `lq_view_udsftldiri` AS select 
`t1`.`InstrID` AS `InstrID`,
`t2`.`FTDCPC5F` AS `FTDCPC5F`,`t2`.`FTDINSEX` AS `FTDINSEX`,`t2`.`FTDINFMO` AS `FTDINFMO`,`t2`.`FTDINFYR` AS `FTDINFYR`,`t2`.`FTDINFRE` AS `FTDINFRE`,`t2`.`FTDFEEL` AS `FTDFEEL`,`t2`.`FTDDIFF` AS `FTDDIFF`,`t2`.`FTDSORR` AS `FTDSORR`,`t2`.`FTDSIDE` AS `FTDSIDE`,`t2`.`FTDADVAN` AS `FTDADVAN`,`t2`.`FTDIMAG` AS `FTDIMAG`,`t2`.`FTDMISF` AS `FTDMISF`,`t2`.`FTDWASTE` AS `FTDWASTE`,`t2`.`FTDPITY` AS `FTDPITY`,`t2`.`FTDQTOUC` AS `FTDQTOUC`,`t2`.`FTDSIDES` AS `FTDSIDES`,`t2`.`FTDSOFTH` AS `FTDSOFTH`,`t2`.`FTDUPSET` AS `FTDUPSET`,`t2`.`FTDCRITI` AS `FTDCRITI`,`t2`.`FTDIRIEC` AS `FTDIRIEC`,`t2`.`FTDIRIPT` AS `FTDIRIPT`,
`t3`.`Packet` AS `Packet`,
`t3`.`FormID` AS `FormID`,
`t3`.`FormVer` AS `FormVer`,
`t3`.`ADCID` AS `ADCID`,
`t3`.`PTID` AS `PTID`,
`t3`.`VisitMo` AS `VisitMo`,
`t3`.`VisitDay` AS `VisitDay`,
`t3`.`VisitYr` AS `VisitYr`,
`t3`.`VisitNum` AS `VisitNum`,
`t3`.`Initials` AS `Initials`,
`t3`.`PacketDate` AS `PacketDate`,
`t3`.`PacketBy` AS `PacketBy`,
`t3`.`PacketStatus` AS `PacketStatus`,
`t3`.`PacketReason` AS `PacketReason`,
`t3`.`PacketNotes` AS `PacketNotes`,
`t3`.`DSDate` AS `DSDate`,
`t3`.`DSBy` AS `DSBy`,
`t3`.`DSStatus` AS `DSStatus`,
`t3`.`DSReason` AS `DSReason`,
`t3`.`DSNotes` AS `DSNotes`,
`t3`.`LCDate` AS `LCDate`,
`t3`.`LCBy` AS `LCBy`,
`t3`.`LCStatus` AS `LCStatus`,
`t3`.`LCReason` AS `LCReason`,
`t3`.`LCNotes` AS `LCNotes` 
from ((`instrumenttracking` `t1` join `udsftldiri` `t2` on((`t1`.`InstrID` = `t2`.`InstrID`))) join `udstracking` `t3` on((`t1`.`InstrID` = `t3`.`InstrID`))) where (`t1`.`InstrType` = 'UDS FTLD IRI');


DROP procedure IF EXISTS `lq_get_nacc_udsftldiri`;

DELIMITER $$

CREATE PROCEDURE `lq_get_nacc_udsftldiri`(user_name varchar(50), host_name varchar(25),query_type varchar(25), query_subtype VARCHAR(25), query_days INTEGER)
BEGIN

CALL lq_audit_event(user_name,host_name,'crms.nacc.udsftldiri',query_type);
	
IF query_type = 'Simple' THEN
	SELECT p.pidn, it.InstrType, it.DCDate, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it 
		INNER JOIN lq_view_udsftldiri i ON (it.InstrID = i.InstrID) 
		INNER JOIN temp_pidn p ON (p.PIDN = it.PIDN) 
      WHERE it.InstrType = 'UDS FTLD IRI' or it.InstrType is null 
      ORDER BY p.pidn, it.DCDate;
ELSEIF query_type = 'SimpleAllPatients' THEN
	SELECT p.pidn, it.InstrType, it.DCDate, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it  
	 	INNER JOIN lq_view_udsftldiri i ON (it.InstrID = i.InstrID)  
	  RIGHT OUTER JOIN temp_pidn p ON (p.PIDN = it.PIDN)  
	WHERE it.InstrType =  'UDS FTLD IRI'  or it.InstrType is null 
	ORDER BY P.pidn, it.DCDate;

ELSEIF query_type = 'PrimaryAll' THEN 
	CREATE TEMPORARY TABLE temp_linkdata as 

  SELECT p.pidn,i.DCDate as link_date,i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
	FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
		INNER JOIN lq_view_udsftldiri d ON (i.InstrID=d.InstrID) 
	WHERE NOT i.DCStatus = 'Scheduled' AND NOT i.DCStatus like 'Canceled%' 
	ORDER BY p.pidn, i.DCDate, i.InstrID ;
   	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
  SELECT * from temp_linkdata;
ELSEIF query_type = 'PrimaryLatest' THEN  
	CREATE TEMPORARY TABLE temp_linkdata as 

  SELECT p.pidn, i.DCDate as link_date,i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
	FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
	           INNER JOIN lq_view_udsftldiri d ON (i.InstrID=d.InstrID) 
	WHERE i.DCDate = (SELECT MAX(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND  
		i2.InstrType =  'UDS FTLD IRI'  AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%') 
	ORDER BY p.pidn, i.DCDate, i.InstrID;
  	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
  SELECT * from temp_linkdata;
ELSEIF query_type = 'PrimaryFirst' THEN

  CREATE TEMPORARY TABLE temp_linkdata as 
	SELECT p.pidn,i.DCDate as link_date,i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.* 
	FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN) 
		INNER JOIN lq_view_udsftldiri d ON (i.InstrID=d.InstrID)
	WHERE i.DCDate = (SELECT MIN(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND 
		i2.InstrType =  'UDS FTLD IRI'  AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%')
	ORDER BY p.pidn, i.InstrID;
  	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
  SELECT * from temp_linkdata;
ELSEIF query_type IN ('SecondaryAll','SecondaryClosest') THEN
 	 
	CREATE TEMPORARY TABLE temp_secondary_candidates AS
   SELECT l.pidn, l.link_date, l.link_id, i2.InstrType, i2.InstrID, DATEDIFF(l.link_date, i2.DCDate) AS Days 
	 FROM temp_linkdata l INNER JOIN instrumenttracking i2 ON (i2.PIDN=l.PIDN) 
	 WHERE i2.InstrType = 'UDS FTLD IRI';

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
		LEFT JOIN lq_view_udsftldiri d ON (i.InstrID=d.InstrID) ORDER BY l.pidn, l.link_date, l.link_id;

	DROP TABLE temp_secondary_candidates;
END IF;
END$$

DELIMITER ;


INSERT INTO query_objects(instance,scope,module,section,target,short_desc,standard,primary_link,secondary_link) 
  VALUES('lava','crms','query','nacc','udsftldiri','UDS FTLD IRI',1,1,1);





-- UDS FTLD Neuropsych
CREATE VIEW `lq_view_udsftldneuropsych` AS select 
`t1`.`InstrID` AS `InstrID`,
`t2`.`FTDBENTC` AS `FTDBENTC`,`t2`.`FTDVERFC` AS `FTDVERFC`,`t2`.`FTDVERFN` AS `FTDVERFN`,`t2`.`FTDVERNF` AS `FTDVERNF`,`t2`.`FTDVERLC` AS `FTDVERLC`,`t2`.`FTDVERLR` AS `FTDVERLR`,`t2`.`FTDVERLN` AS `FTDVERLN`,`t2`.`FTDVERTN` AS `FTDVERTN`,`t2`.`FTDVERTE` AS `FTDVERTE`,`t2`.`FTDVERTI` AS `FTDVERTI`,`t2`.`FTDWORRC` AS `FTDWORRC`,`t2`.`FTDWORRS` AS `FTDWORRS`,`t2`.`FTDWORRR` AS `FTDWORRR`,`t2`.`FTDWORIC` AS `FTDWORIC`,`t2`.`FTDWORIS` AS `FTDWORIS`,`t2`.`FTDWORIR` AS `FTDWORIR`,`t2`.`FTDWORIP` AS `FTDWORIP`,`t2`.`FTDBENTD` AS `FTDBENTD`,`t2`.`FTDBENRS` AS `FTDBENRS`,`t2`.`FTDSEMMT` AS `FTDSEMMT`,`t2`.`FTDSEMAA` AS `FTDSEMAA`,`t2`.`FTDSEMTA` AS `FTDSEMTA`,`t2`.`FTDSEMSU` AS `FTDSEMSU`,`t2`.`FTDANASW` AS `FTDANASW`,`t2`.`FTDANAOW` AS `FTDANAOW`,`t2`.`FTDANATS` AS `FTDANATS`,`t2`.`FTDSENAS` AS `FTDSENAS`,`t2`.`FTDSENOS` AS `FTDSENOS`,`t2`.`FTDSENSR` AS `FTDSENSR`,`t2`.`FTDSENPR` AS `FTDSENPR`,`t2`.`FTDNOUNC` AS `FTDNOUNC`,`t2`.`FTDVERBC` AS `FTDVERBC`,`t2`.`FTDRATIO` AS `FTDRATIO`,`t2`.`FTDREAAS` AS `FTDREAAS`,`t2`.`FTDREAOS` AS `FTDREAOS`,`t2`.`FTDREASR` AS `FTDREASR`,`t2`.`FTDREAPR` AS `FTDREAPR`,
`t3`.`Packet` AS `Packet`,
`t3`.`FormID` AS `FormID`,
`t3`.`FormVer` AS `FormVer`,
`t3`.`ADCID` AS `ADCID`,
`t3`.`PTID` AS `PTID`,
`t3`.`VisitMo` AS `VisitMo`,
`t3`.`VisitDay` AS `VisitDay`,
`t3`.`VisitYr` AS `VisitYr`,
`t3`.`VisitNum` AS `VisitNum`,
`t3`.`Initials` AS `Initials`,
`t3`.`PacketDate` AS `PacketDate`,
`t3`.`PacketBy` AS `PacketBy`,
`t3`.`PacketStatus` AS `PacketStatus`,
`t3`.`PacketReason` AS `PacketReason`,
`t3`.`PacketNotes` AS `PacketNotes`,
`t3`.`DSDate` AS `DSDate`,
`t3`.`DSBy` AS `DSBy`,
`t3`.`DSStatus` AS `DSStatus`,
`t3`.`DSReason` AS `DSReason`,
`t3`.`DSNotes` AS `DSNotes`,
`t3`.`LCDate` AS `LCDate`,
`t3`.`LCBy` AS `LCBy`,
`t3`.`LCStatus` AS `LCStatus`,
`t3`.`LCReason` AS `LCReason`,
`t3`.`LCNotes` AS `LCNotes` 
from ((`instrumenttracking` `t1` join `udsftldneuropsych` `t2` on((`t1`.`InstrID` = `t2`.`InstrID`))) join `udstracking` `t3` on((`t1`.`InstrID` = `t3`.`InstrID`))) where (`t1`.`InstrType` = 'UDS FTLD Neuropsych');


DROP procedure IF EXISTS `lq_get_nacc_udsftldneuropsych`;

DELIMITER $$

CREATE PROCEDURE `lq_get_nacc_udsftldneuropsych`(user_name varchar(50), host_name varchar(25),query_type varchar(25), query_subtype VARCHAR(25), query_days INTEGER)
BEGIN

CALL lq_audit_event(user_name,host_name,'crms.nacc.udsftldneuropsych',query_type);
	
IF query_type = 'Simple' THEN
	SELECT p.pidn, it.InstrType, it.DCDate, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it 
		INNER JOIN lq_view_udsftldneuropsych i ON (it.InstrID = i.InstrID) 
		INNER JOIN temp_pidn p ON (p.PIDN = it.PIDN) 
      WHERE it.InstrType = 'UDS FTLD Neuropsych' or it.InstrType is null 
      ORDER BY p.pidn, it.DCDate;
ELSEIF query_type = 'SimpleAllPatients' THEN
	SELECT p.pidn, it.InstrType, it.DCDate, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it  
	 	INNER JOIN lq_view_udsftldneuropsych i ON (it.InstrID = i.InstrID)  
	  RIGHT OUTER JOIN temp_pidn p ON (p.PIDN = it.PIDN)  
	WHERE it.InstrType =  'UDS FTLD Neuropsych'  or it.InstrType is null 
	ORDER BY P.pidn, it.DCDate;

ELSEIF query_type = 'PrimaryAll' THEN 
	CREATE TEMPORARY TABLE temp_linkdata as 

  SELECT p.pidn,i.DCDate as link_date,i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
	FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
		INNER JOIN lq_view_udsftldneuropsych d ON (i.InstrID=d.InstrID) 
	WHERE NOT i.DCStatus = 'Scheduled' AND NOT i.DCStatus like 'Canceled%' 
	ORDER BY p.pidn, i.DCDate, i.InstrID ;
   	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
  SELECT * from temp_linkdata;
ELSEIF query_type = 'PrimaryLatest' THEN  
	CREATE TEMPORARY TABLE temp_linkdata as 

  SELECT p.pidn, i.DCDate as link_date,i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
	FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
	           INNER JOIN lq_view_udsftldneuropsych d ON (i.InstrID=d.InstrID) 
	WHERE i.DCDate = (SELECT MAX(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND  
		i2.InstrType =  'UDS FTLD Neuropsych'  AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%') 
	ORDER BY p.pidn, i.DCDate, i.InstrID;
  	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
  SELECT * from temp_linkdata;
ELSEIF query_type = 'PrimaryFirst' THEN

  CREATE TEMPORARY TABLE temp_linkdata as 
	SELECT p.pidn,i.DCDate as link_date,i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.* 
	FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN) 
		INNER JOIN lq_view_udsftldneuropsych d ON (i.InstrID=d.InstrID)
	WHERE i.DCDate = (SELECT MIN(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND 
		i2.InstrType =  'UDS FTLD Neuropsych'  AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%')
	ORDER BY p.pidn, i.InstrID;
  	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
  SELECT * from temp_linkdata;
ELSEIF query_type IN ('SecondaryAll','SecondaryClosest') THEN
 	 
	CREATE TEMPORARY TABLE temp_secondary_candidates AS
   SELECT l.pidn, l.link_date, l.link_id, i2.InstrType, i2.InstrID, DATEDIFF(l.link_date, i2.DCDate) AS Days 
	 FROM temp_linkdata l INNER JOIN instrumenttracking i2 ON (i2.PIDN=l.PIDN) 
	 WHERE i2.InstrType = 'UDS FTLD Neuropsych';

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
		LEFT JOIN lq_view_udsftldneuropsych d ON (i.InstrID=d.InstrID) ORDER BY l.pidn, l.link_date, l.link_id;

	DROP TABLE temp_secondary_candidates;
END IF;
END$$

DELIMITER ;


INSERT INTO query_objects(instance,scope,module,section,target,short_desc,standard,primary_link,secondary_link) 
  VALUES('lava','crms','query','nacc','udsftldneuropsych','UDS FTLD Neuropsych',1,1,1);





-- UDS FTLD RSMS
CREATE VIEW `lq_view_udsftldrsms` AS select 
`t1`.`InstrID` AS `InstrID`,
`t2`.`FTDCPC6F` AS `FTDCPC6F`,`t2`.`FTDALTER` AS `FTDALTER`,`t2`.`FTDEMOT` AS `FTDEMOT`,`t2`.`FTDACROS` AS `FTDACROS`,`t2`.`FTDCONV` AS `FTDCONV`,`t2`.`FTDINTUI` AS `FTDINTUI`,`t2`.`FTDJOKE` AS `FTDJOKE`,`t2`.`FTDIMAGP` AS `FTDIMAGP`,`t2`.`FTDINAPP` AS `FTDINAPP`,`t2`.`FTDCHBEH` AS `FTDCHBEH`,`t2`.`FTDADBEH` AS `FTDADBEH`,`t2`.`FTDLYING` AS `FTDLYING`,`t2`.`FTDGOODF` AS `FTDGOODF`,`t2`.`FTDREGUL` AS `FTDREGUL`,`t2`.`FTDSMSCR` AS `FTDSMSCR`,`t2`.`FTDSPSCR` AS `FTDSPSCR`,`t2`.`FTDRSMST` AS `FTDRSMST`,
`t3`.`Packet` AS `Packet`,
`t3`.`FormID` AS `FormID`,
`t3`.`FormVer` AS `FormVer`,
`t3`.`ADCID` AS `ADCID`,
`t3`.`PTID` AS `PTID`,
`t3`.`VisitMo` AS `VisitMo`,
`t3`.`VisitDay` AS `VisitDay`,
`t3`.`VisitYr` AS `VisitYr`,
`t3`.`VisitNum` AS `VisitNum`,
`t3`.`Initials` AS `Initials`,
`t3`.`PacketDate` AS `PacketDate`,
`t3`.`PacketBy` AS `PacketBy`,
`t3`.`PacketStatus` AS `PacketStatus`,
`t3`.`PacketReason` AS `PacketReason`,
`t3`.`PacketNotes` AS `PacketNotes`,
`t3`.`DSDate` AS `DSDate`,
`t3`.`DSBy` AS `DSBy`,
`t3`.`DSStatus` AS `DSStatus`,
`t3`.`DSReason` AS `DSReason`,
`t3`.`DSNotes` AS `DSNotes`,
`t3`.`LCDate` AS `LCDate`,
`t3`.`LCBy` AS `LCBy`,
`t3`.`LCStatus` AS `LCStatus`,
`t3`.`LCReason` AS `LCReason`,
`t3`.`LCNotes` AS `LCNotes` 
from ((`instrumenttracking` `t1` join `udsftldrsms` `t2` on((`t1`.`InstrID` = `t2`.`InstrID`))) join `udstracking` `t3` on((`t1`.`InstrID` = `t3`.`InstrID`))) where (`t1`.`InstrType` = 'UDS FTLD RSMS');


DROP procedure IF EXISTS `lq_get_nacc_udsftldrsms`;

DELIMITER $$

CREATE PROCEDURE `lq_get_nacc_udsftldrsms`(user_name varchar(50), host_name varchar(25),query_type varchar(25), query_subtype VARCHAR(25), query_days INTEGER)
BEGIN

CALL lq_audit_event(user_name,host_name,'crms.nacc.udsftldrsms',query_type);

IF query_type = 'Simple' THEN
	SELECT p.pidn, it.InstrType, it.DCDate, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it 
		INNER JOIN lq_view_udsftldrsms i ON (it.InstrID = i.InstrID) 
		INNER JOIN temp_pidn p ON (p.PIDN = it.PIDN) 
      WHERE it.InstrType = 'UDS FTLD RSMS' or it.InstrType is null 
      ORDER BY p.pidn, it.DCDate;
ELSEIF query_type = 'SimpleAllPatients' THEN
	SELECT p.pidn, it.InstrType, it.DCDate, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it  
	 	INNER JOIN lq_view_udsftldrsms i ON (it.InstrID = i.InstrID)  
	  RIGHT OUTER JOIN temp_pidn p ON (p.PIDN = it.PIDN)  
	WHERE it.InstrType =  'UDS FTLD RSMS'  or it.InstrType is null 
	ORDER BY P.pidn, it.DCDate;

ELSEIF query_type = 'PrimaryAll' THEN 
	CREATE TEMPORARY TABLE temp_linkdata as 

  SELECT p.pidn,i.DCDate as link_date,i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
	FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
		INNER JOIN lq_view_udsftldrsms d ON (i.InstrID=d.InstrID) 
	WHERE NOT i.DCStatus = 'Scheduled' AND NOT i.DCStatus like 'Canceled%' 
	ORDER BY p.pidn, i.DCDate, i.InstrID ;
   	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
  SELECT * from temp_linkdata;
ELSEIF query_type = 'PrimaryLatest' THEN  
	CREATE TEMPORARY TABLE temp_linkdata as 

  SELECT p.pidn, i.DCDate as link_date,i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
	FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
	           INNER JOIN lq_view_udsftldrsms d ON (i.InstrID=d.InstrID) 
	WHERE i.DCDate = (SELECT MAX(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND  
		i2.InstrType =  'UDS FTLD RSMS'  AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%') 
	ORDER BY p.pidn, i.DCDate, i.InstrID;
  	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
  SELECT * from temp_linkdata;
ELSEIF query_type = 'PrimaryFirst' THEN

  CREATE TEMPORARY TABLE temp_linkdata as 
	SELECT p.pidn,i.DCDate as link_date,i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.* 
	FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN) 
		INNER JOIN lq_view_udsftldrsms d ON (i.InstrID=d.InstrID)
	WHERE i.DCDate = (SELECT MIN(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND 
		i2.InstrType =  'UDS FTLD RSMS'  AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%')
	ORDER BY p.pidn, i.InstrID;
  	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
  SELECT * from temp_linkdata;
ELSEIF query_type IN ('SecondaryAll','SecondaryClosest') THEN
 	 
	CREATE TEMPORARY TABLE temp_secondary_candidates AS
   SELECT l.pidn, l.link_date, l.link_id, i2.InstrType, i2.InstrID, DATEDIFF(l.link_date, i2.DCDate) AS Days 
	 FROM temp_linkdata l INNER JOIN instrumenttracking i2 ON (i2.PIDN=l.PIDN) 
	 WHERE i2.InstrType = 'UDS FTLD RSMS';

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
		LEFT JOIN lq_view_udsftldrsms d ON (i.InstrID=d.InstrID) ORDER BY l.pidn, l.link_date, l.link_id;

	DROP TABLE temp_secondary_candidates;
END IF;
END$$

DELIMITER ;


INSERT INTO query_objects(instance,scope,module,section,target,short_desc,standard,primary_link,secondary_link) 
  VALUES('lava','crms','query','nacc','udsftldrsms','UDS FTLD RSMS',1,1,1);






-- UDS FTLD SBOC
CREATE VIEW `lq_view_udsftldsboc` AS select 
`t1`.`InstrID` AS `InstrID`,
`t2`.`FTDSELF` AS `FTDSELF`,`t2`.`FTDBADLY` AS `FTDBADLY`,`t2`.`FTDDEPR` AS `FTDDEPR`,`t2`.`FTDEMOTD` AS `FTDEMOTD`,`t2`.`FTDLSELF` AS `FTDLSELF`,`t2`.`FTDDISR` AS `FTDDISR`,`t2`.`FTDBELCH` AS `FTDBELCH`,`t2`.`FTDGIGG` AS `FTDGIGG`,`t2`.`FTDPRIV` AS `FTDPRIV`,`t2`.`FTDNEGAT` AS `FTDNEGAT`,`t2`.`FTDECOMM` AS `FTDECOMM`,`t2`.`FTDINAPJ` AS `FTDINAPJ`,`t2`.`FTDFAILA` AS `FTDFAILA`,`t2`.`FTDRESIS` AS `FTDRESIS`,`t2`.`FTDINTER` AS `FTDINTER`,`t2`.`FTDVERBA` AS `FTDVERBA`,`t2`.`FTDPHYSI` AS `FTDPHYSI`,`t2`.`FTDTOPIC` AS `FTDTOPIC`,`t2`.`FTDPROTO` AS `FTDPROTO`,`t2`.`FTDPREO` AS `FTDPREO`,`t2`.`FTDFINI` AS `FTDFINI`,`t2`.`FTDACTED` AS `FTDACTED`,`t2`.`FTDABS` AS `FTDABS`,`t2`.`FTDFEEDB` AS `FTDFEEDB`,`t2`.`FTDFRUST` AS `FTDFRUST`,`t2`.`FTDANXI` AS `FTDANXI`,`t2`.`FTDNERVO` AS `FTDNERVO`,`t2`.`FTDNDIAG` AS `FTDNDIAG`,`t2`.`FTDSTIMB` AS `FTDSTIMB`,`t2`.`FTDSTIME` AS `FTDSTIME`,`t2`.`FTDOBJEC` AS `FTDOBJEC`,`t2`.`FTDCIRCU` AS `FTDCIRCU`,`t2`.`FTDPERSE` AS `FTDPERSE`,`t2`.`FTDREPEA` AS `FTDREPEA`,`t2`.`FTDANECD` AS `FTDANECD`,`t2`.`FTDDINIT` AS `FTDDINIT`,`t2`.`FTDDELAY` AS `FTDDELAY`,`t2`.`FTDADDVE` AS `FTDADDVE`,`t2`.`FTDFLUCT` AS `FTDFLUCT`,`t2`.`FTDLOSTT` AS `FTDLOSTT`,`t2`.`FTDREPRU` AS `FTDREPRU`,`t2`.`FTDTRAIN` AS `FTDTRAIN`,`t2`.`FTDDISCL` AS `FTDDISCL`,`t2`.`FTDSPONT` AS `FTDSPONT`,`t2`.`FTDSPONR` AS `FTDSPONR`,`t2`.`FTDSTOOD` AS `FTDSTOOD`,`t2`.`FTDTOUCH` AS `FTDTOUCH`,`t2`.`FTDDSOCI` AS `FTDDSOCI`,`t2`.`FTDEXAGG` AS `FTDEXAGG`,`t2`.`FTDSBTOT` AS `FTDSBTOT`,`t2`.`FTDSBCTO` AS `FTDSBCTO`,`t2`.`FTDLENGT` AS `FTDLENGT`,
`t3`.`Packet` AS `Packet`,
`t3`.`FormID` AS `FormID`,
`t3`.`FormVer` AS `FormVer`,
`t3`.`ADCID` AS `ADCID`,
`t3`.`PTID` AS `PTID`,
`t3`.`VisitMo` AS `VisitMo`,
`t3`.`VisitDay` AS `VisitDay`,
`t3`.`VisitYr` AS `VisitYr`,
`t3`.`VisitNum` AS `VisitNum`,
`t3`.`Initials` AS `Initials`,
`t3`.`PacketDate` AS `PacketDate`,
`t3`.`PacketBy` AS `PacketBy`,
`t3`.`PacketStatus` AS `PacketStatus`,
`t3`.`PacketReason` AS `PacketReason`,
`t3`.`PacketNotes` AS `PacketNotes`,
`t3`.`DSDate` AS `DSDate`,
`t3`.`DSBy` AS `DSBy`,
`t3`.`DSStatus` AS `DSStatus`,
`t3`.`DSReason` AS `DSReason`,
`t3`.`DSNotes` AS `DSNotes`,
`t3`.`LCDate` AS `LCDate`,
`t3`.`LCBy` AS `LCBy`,
`t3`.`LCStatus` AS `LCStatus`,
`t3`.`LCReason` AS `LCReason`,
`t3`.`LCNotes` AS `LCNotes` 
from ((`instrumenttracking` `t1` join `udsftldsboc` `t2` on((`t1`.`InstrID` = `t2`.`InstrID`))) join `udstracking` `t3` on((`t1`.`InstrID` = `t3`.`InstrID`))) where (`t1`.`InstrType` = 'UDS FTLD SBOC');



DROP procedure IF EXISTS `lq_get_nacc_udsftldsboc`;

DELIMITER $$

CREATE PROCEDURE `lq_get_nacc_udsftldsboc`(user_name varchar(50), host_name varchar(25),query_type varchar(25), query_subtype VARCHAR(25), query_days INTEGER)
BEGIN

CALL lq_audit_event(user_name,host_name,'crms.nacc.udsftldsboc',query_type);

IF query_type = 'Simple' THEN
	SELECT p.pidn, it.InstrType, it.DCDate, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it 
		INNER JOIN lq_view_udsftldsboc i ON (it.InstrID = i.InstrID) 
		INNER JOIN temp_pidn p ON (p.PIDN = it.PIDN) 
      WHERE it.InstrType = 'UDS FTLD SBOC' or it.InstrType is null 
      ORDER BY p.pidn, it.DCDate;
ELSEIF query_type = 'SimpleAllPatients' THEN
	SELECT p.pidn, it.InstrType, it.DCDate, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it  
	 	INNER JOIN lq_view_udsftldsboc i ON (it.InstrID = i.InstrID)  
	  RIGHT OUTER JOIN temp_pidn p ON (p.PIDN = it.PIDN)  
	WHERE it.InstrType =  'UDS FTLD SBOC'  or it.InstrType is null 
	ORDER BY P.pidn, it.DCDate;

ELSEIF query_type = 'PrimaryAll' THEN 
	CREATE TEMPORARY TABLE temp_linkdata as 

  SELECT p.pidn,i.DCDate as link_date,i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
	FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
		INNER JOIN lq_view_udsftldsboc d ON (i.InstrID=d.InstrID) 
	WHERE NOT i.DCStatus = 'Scheduled' AND NOT i.DCStatus like 'Canceled%' 
	ORDER BY p.pidn, i.DCDate, i.InstrID ;
   	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
  SELECT * from temp_linkdata;
ELSEIF query_type = 'PrimaryLatest' THEN  
	CREATE TEMPORARY TABLE temp_linkdata as 

  SELECT p.pidn, i.DCDate as link_date,i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
	FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
	           INNER JOIN lq_view_udsftldsboc d ON (i.InstrID=d.InstrID) 
	WHERE i.DCDate = (SELECT MAX(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND  
		i2.InstrType =  'UDS FTLD SBOC'  AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%') 
	ORDER BY p.pidn, i.DCDate, i.InstrID;
  	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
  SELECT * from temp_linkdata;
ELSEIF query_type = 'PrimaryFirst' THEN

  CREATE TEMPORARY TABLE temp_linkdata as 
	SELECT p.pidn,i.DCDate as link_date,i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.* 
	FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN) 
		INNER JOIN lq_view_udsftldsboc d ON (i.InstrID=d.InstrID)
	WHERE i.DCDate = (SELECT MIN(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND 
		i2.InstrType =  'UDS FTLD SBOC'  AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%')
	ORDER BY p.pidn, i.InstrID;
  	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
  SELECT * from temp_linkdata;
ELSEIF query_type IN ('SecondaryAll','SecondaryClosest') THEN
 	 
	CREATE TEMPORARY TABLE temp_secondary_candidates AS
   SELECT l.pidn, l.link_date, l.link_id, i2.InstrType, i2.InstrID, DATEDIFF(l.link_date, i2.DCDate) AS Days 
	 FROM temp_linkdata l INNER JOIN instrumenttracking i2 ON (i2.PIDN=l.PIDN) 
	 WHERE i2.InstrType = 'UDS FTLD SBOC';

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
		LEFT JOIN lq_view_udsftldsboc d ON (i.InstrID=d.InstrID) ORDER BY l.pidn, l.link_date, l.link_id;

	DROP TABLE temp_secondary_candidates;
END IF;
END$$

DELIMITER ;


INSERT INTO query_objects(instance,scope,module,section,target,short_desc,standard,primary_link,secondary_link) 
  VALUES('lava','crms','query','nacc','udsftldsboc','UDS FTLD SBOC',1,1,1);





-- UDS FTLD SNQ
CREATE VIEW `lq_view_udsftldsnq` AS select 
`t1`.`InstrID` AS `InstrID`,
`t2`.`FTDCPC2F` AS `FTDCPC2F`,`t2`.`FTDHAIRD` AS `FTDHAIRD`,`t2`.`FTDSPIT` AS `FTDSPIT`,`t2`.`FTDNOSE` AS `FTDNOSE`,`t2`.`FTDCOAGE` AS `FTDCOAGE`,`t2`.`FTDCRY` AS `FTDCRY`,`t2`.`FTDCUT` AS `FTDCUT`,`t2`.`FTDYTRIP` AS `FTDYTRIP`,`t2`.`FTDEATP` AS `FTDEATP`,`t2`.`FTDTELLA` AS `FTDTELLA`,`t2`.`FTDOPIN` AS `FTDOPIN`,`t2`.`FTDLAUGH` AS `FTDLAUGH`,`t2`.`FTDSHIRT` AS `FTDSHIRT`,`t2`.`FTDKEEPM` AS `FTDKEEPM`,`t2`.`FTDPICKN` AS `FTDPICKN`,`t2`.`FTDOVER` AS `FTDOVER`,`t2`.`FTDEATR` AS `FTDEATR`,`t2`.`FTDHAIRL` AS `FTDHAIRL`,`t2`.`FTDSHIRW` AS `FTDSHIRW`,`t2`.`FTDMOVE` AS `FTDMOVE`,`t2`.`FTDHUGS` AS `FTDHUGS`,`t2`.`FTDLOUD` AS `FTDLOUD`,`t2`.`FTDLOST` AS `FTDLOST`,`t2`.`FTDSNTOT` AS `FTDSNTOT`,`t2`.`FTDSNTBS` AS `FTDSNTBS`,`t2`.`FTDSNTOS` AS `FTDSNTOS`,`t2`.`FTDSNRAT` AS `FTDSNRAT`,
`t3`.`Packet` AS `Packet`,
`t3`.`FormID` AS `FormID`,
`t3`.`FormVer` AS `FormVer`,
`t3`.`ADCID` AS `ADCID`,
`t3`.`PTID` AS `PTID`,
`t3`.`VisitMo` AS `VisitMo`,
`t3`.`VisitDay` AS `VisitDay`,
`t3`.`VisitYr` AS `VisitYr`,
`t3`.`VisitNum` AS `VisitNum`,
`t3`.`Initials` AS `Initials`,
`t3`.`PacketDate` AS `PacketDate`,
`t3`.`PacketBy` AS `PacketBy`,
`t3`.`PacketStatus` AS `PacketStatus`,
`t3`.`PacketReason` AS `PacketReason`,
`t3`.`PacketNotes` AS `PacketNotes`,
`t3`.`DSDate` AS `DSDate`,
`t3`.`DSBy` AS `DSBy`,
`t3`.`DSStatus` AS `DSStatus`,
`t3`.`DSReason` AS `DSReason`,
`t3`.`DSNotes` AS `DSNotes`,
`t3`.`LCDate` AS `LCDate`,
`t3`.`LCBy` AS `LCBy`,
`t3`.`LCStatus` AS `LCStatus`,
`t3`.`LCReason` AS `LCReason`,
`t3`.`LCNotes` AS `LCNotes` 
from ((`instrumenttracking` `t1` join `udsftldsnq` `t2` on((`t1`.`InstrID` = `t2`.`InstrID`))) join `udstracking` `t3` on((`t1`.`InstrID` = `t3`.`InstrID`))) where (`t1`.`InstrType` = 'UDS FTLD SNQ');


DROP procedure IF EXISTS `lq_get_nacc_udsftldsnq`;

DELIMITER $$

CREATE PROCEDURE `lq_get_nacc_udsftldsnq`(user_name varchar(50), host_name varchar(25),query_type varchar(25), query_subtype VARCHAR(25), query_days INTEGER)
BEGIN

CALL lq_audit_event(user_name,host_name,'crms.nacc.udsftldsnq',query_type);
	
IF query_type = 'Simple' THEN
	SELECT p.pidn, it.InstrType, it.DCDate, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it 
		INNER JOIN lq_view_udsftldsnq i ON (it.InstrID = i.InstrID) 
		INNER JOIN temp_pidn p ON (p.PIDN = it.PIDN) 
      WHERE it.InstrType = 'UDS FTLD SNQ' or it.InstrType is null 
      ORDER BY p.pidn, it.DCDate;
ELSEIF query_type = 'SimpleAllPatients' THEN
	SELECT p.pidn, it.InstrType, it.DCDate, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it  
	 	INNER JOIN lq_view_udsftldsnq i ON (it.InstrID = i.InstrID)  
	  RIGHT OUTER JOIN temp_pidn p ON (p.PIDN = it.PIDN)  
	WHERE it.InstrType =  'UDS FTLD SNQ'  or it.InstrType is null 
	ORDER BY P.pidn, it.DCDate;

ELSEIF query_type = 'PrimaryAll' THEN 
	CREATE TEMPORARY TABLE temp_linkdata as 

  SELECT p.pidn,i.DCDate as link_date,i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
	FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
		INNER JOIN lq_view_udsftldsnq d ON (i.InstrID=d.InstrID) 
	WHERE NOT i.DCStatus = 'Scheduled' AND NOT i.DCStatus like 'Canceled%' 
	ORDER BY p.pidn, i.DCDate, i.InstrID ;
   	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
  SELECT * from temp_linkdata;
ELSEIF query_type = 'PrimaryLatest' THEN  
	CREATE TEMPORARY TABLE temp_linkdata as 

  SELECT p.pidn, i.DCDate as link_date,i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
	FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
	           INNER JOIN lq_view_udsftldsnq d ON (i.InstrID=d.InstrID) 
	WHERE i.DCDate = (SELECT MAX(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND  
		i2.InstrType =  'UDS FTLD SNQ'  AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%') 
	ORDER BY p.pidn, i.DCDate, i.InstrID;
  	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
  SELECT * from temp_linkdata;
ELSEIF query_type = 'PrimaryFirst' THEN

  CREATE TEMPORARY TABLE temp_linkdata as 
	SELECT p.pidn,i.DCDate as link_date,i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.* 
	FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN) 
		INNER JOIN lq_view_udsftldsnq d ON (i.InstrID=d.InstrID)
	WHERE i.DCDate = (SELECT MIN(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND 
		i2.InstrType =  'UDS FTLD SNQ'  AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%')
	ORDER BY p.pidn, i.InstrID;
  	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
  SELECT * from temp_linkdata;
ELSEIF query_type IN ('SecondaryAll','SecondaryClosest') THEN
 	 
	CREATE TEMPORARY TABLE temp_secondary_candidates AS
   SELECT l.pidn, l.link_date, l.link_id, i2.InstrType, i2.InstrID, DATEDIFF(l.link_date, i2.DCDate) AS Days 
	 FROM temp_linkdata l INNER JOIN instrumenttracking i2 ON (i2.PIDN=l.PIDN) 
	 WHERE i2.InstrType = 'UDS FTLD SNQ';

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
		LEFT JOIN lq_view_udsftldsnq d ON (i.InstrID=d.InstrID) ORDER BY l.pidn, l.link_date, l.link_id;

	DROP TABLE temp_secondary_candidates;
END IF;
END$$

DELIMITER ;


INSERT INTO query_objects(instance,scope,module,section,target,short_desc,standard,primary_link,secondary_link) 
  VALUES('lava','crms','query','nacc','udsftldsnq','UDS FTLD SNQ',1,1,1);




-- UDS FTLD Specimen Consent
CREATE VIEW `lq_view_udsftldspecimenconsent` AS select 
`t1`.`InstrID` AS `InstrID`,
`t2`.`FTDRELCO` AS `FTDRELCO`,`t2`.`FTDSIBBY` AS `FTDSIBBY`,`t2`.`FTDCHDBY` AS `FTDCHDBY`,`t2`.`FTDSTORE` AS `FTDSTORE`,`t2`.`FTDSLEAR` AS `FTDSLEAR`,`t2`.`FTDCOMME` AS `FTDCOMME`,
`t3`.`Packet` AS `Packet`,
`t3`.`FormID` AS `FormID`,
`t3`.`FormVer` AS `FormVer`,
`t3`.`ADCID` AS `ADCID`,
`t3`.`PTID` AS `PTID`,
`t3`.`VisitMo` AS `VisitMo`,
`t3`.`VisitDay` AS `VisitDay`,
`t3`.`VisitYr` AS `VisitYr`,
`t3`.`VisitNum` AS `VisitNum`,
`t3`.`Initials` AS `Initials`,
`t3`.`PacketDate` AS `PacketDate`,
`t3`.`PacketBy` AS `PacketBy`,
`t3`.`PacketStatus` AS `PacketStatus`,
`t3`.`PacketReason` AS `PacketReason`,
`t3`.`PacketNotes` AS `PacketNotes`,
`t3`.`DSDate` AS `DSDate`,
`t3`.`DSBy` AS `DSBy`,
`t3`.`DSStatus` AS `DSStatus`,
`t3`.`DSReason` AS `DSReason`,
`t3`.`DSNotes` AS `DSNotes`,
`t3`.`LCDate` AS `LCDate`,
`t3`.`LCBy` AS `LCBy`,
`t3`.`LCStatus` AS `LCStatus`,
`t3`.`LCReason` AS `LCReason`,
`t3`.`LCNotes` AS `LCNotes` 
from ((`instrumenttracking` `t1` join `udsftldspecimenconsent` `t2` on((`t1`.`InstrID` = `t2`.`InstrID`))) join `udstracking` `t3` on((`t1`.`InstrID` = `t3`.`InstrID`))) where (`t1`.`InstrType` = 'UDS FTLD Specimen Consent');



DROP procedure IF EXISTS `lq_get_nacc_udsftldspecimenconsent`;

DELIMITER $$

CREATE PROCEDURE `lq_get_nacc_udsftldspecimenconsent`(user_name varchar(50), host_name varchar(25),query_type varchar(25), query_subtype VARCHAR(25), query_days INTEGER)
BEGIN

CALL lq_audit_event(user_name,host_name,'crms.nacc.udsftldspecimenconsent',query_type);
	
IF query_type = 'Simple' THEN
	SELECT p.pidn, it.InstrType, it.DCDate, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it 
		INNER JOIN lq_view_udsftldspecimenconsent i ON (it.InstrID = i.InstrID) 
		INNER JOIN temp_pidn p ON (p.PIDN = it.PIDN) 
      WHERE it.InstrType = 'UDS FTLD Specimen Consent' or it.InstrType is null 
      ORDER BY p.pidn, it.DCDate;
ELSEIF query_type = 'SimpleAllPatients' THEN
	SELECT p.pidn, it.InstrType, it.DCDate, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it  
	 	INNER JOIN lq_view_udsftldspecimenconsent i ON (it.InstrID = i.InstrID)  
	  RIGHT OUTER JOIN temp_pidn p ON (p.PIDN = it.PIDN)  
	WHERE it.InstrType =  'UDS FTLD Specimen Consent'  or it.InstrType is null 
	ORDER BY P.pidn, it.DCDate;

ELSEIF query_type = 'PrimaryAll' THEN 
	CREATE TEMPORARY TABLE temp_linkdata as 

  SELECT p.pidn,i.DCDate as link_date,i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
	FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
		INNER JOIN lq_view_udsftldspecimenconsent d ON (i.InstrID=d.InstrID) 
	WHERE NOT i.DCStatus = 'Scheduled' AND NOT i.DCStatus like 'Canceled%' 
	ORDER BY p.pidn, i.DCDate, i.InstrID ;
   	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
  SELECT * from temp_linkdata;
ELSEIF query_type = 'PrimaryLatest' THEN  
	CREATE TEMPORARY TABLE temp_linkdata as 

  SELECT p.pidn, i.DCDate as link_date,i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
	FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
	           INNER JOIN lq_view_udsftldspecimenconsent d ON (i.InstrID=d.InstrID) 
	WHERE i.DCDate = (SELECT MAX(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND  
		i2.InstrType =  'UDS FTLD Specimen Consent'  AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%') 
	ORDER BY p.pidn, i.DCDate, i.InstrID;
  	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
  SELECT * from temp_linkdata;
ELSEIF query_type = 'PrimaryFirst' THEN

  CREATE TEMPORARY TABLE temp_linkdata as 
	SELECT p.pidn,i.DCDate as link_date,i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.* 
	FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN) 
		INNER JOIN lq_view_udsftldspecimenconsent d ON (i.InstrID=d.InstrID)
	WHERE i.DCDate = (SELECT MIN(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND 
		i2.InstrType =  'UDS FTLD Specimen Consent'  AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%')
	ORDER BY p.pidn, i.InstrID;
  	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
  SELECT * from temp_linkdata;
ELSEIF query_type IN ('SecondaryAll','SecondaryClosest') THEN
 	 
	CREATE TEMPORARY TABLE temp_secondary_candidates AS
   SELECT l.pidn, l.link_date, l.link_id, i2.InstrType, i2.InstrID, DATEDIFF(l.link_date, i2.DCDate) AS Days 
	 FROM temp_linkdata l INNER JOIN instrumenttracking i2 ON (i2.PIDN=l.PIDN) 
	 WHERE i2.InstrType = 'UDS FTLD Specimen Consent';

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
		LEFT JOIN lq_view_udsftldspecimenconsent d ON (i.InstrID=d.InstrID) ORDER BY l.pidn, l.link_date, l.link_id;

	DROP TABLE temp_secondary_candidates;
END IF;
END$$

DELIMITER ;


INSERT INTO query_objects(instance,scope,module,section,target,short_desc,standard,primary_link,secondary_link) 
  VALUES('lava','crms','query','nacc','udsftldspecimenconsent','UDS FTLD Specimen Consent',1,1,1);






-- UDS FTLD UPDRS
CREATE VIEW `lq_view_udsftldupdrs` AS select 
`t1`.`InstrID` AS `InstrID`,`t2`.`FTDLTFAS` AS `FTDLTFAS`,`t2`.`FTDLIMB` AS `FTDLIMB`,`t2`.`FTDBULB` AS `FTDBULB`,`t2`.`FTDEYE` AS `FTDEYE`,`t2`.`FTDDYST` AS `FTDDYST`,`t2`.`FTDIDEO` AS `FTDIDEO`,`t2`.`FTDALIEN` AS `FTDALIEN`,`t2`.`FTDMYOCL` AS `FTDMYOCL`,`t2`.`FTDCORTS` AS `FTDCORTS`,`t2`.`FTDGSEV` AS `FTDGSEV`,`t2`.`FTDGSEVX` AS `FTDGSEVX`,`t2`.`FTDGTYP` AS `FTDGTYP`,`t2`.`FTDGTYPG` AS `FTDGTYPG`,`t2`.`FTDGTYPX` AS `FTDGTYPX`,
`t3`.`Packet` AS `Packet`,
`t3`.`FormID` AS `FormID`,
`t3`.`FormVer` AS `FormVer`,
`t3`.`ADCID` AS `ADCID`,
`t3`.`PTID` AS `PTID`,
`t3`.`VisitMo` AS `VisitMo`,
`t3`.`VisitDay` AS `VisitDay`,
`t3`.`VisitYr` AS `VisitYr`,
`t3`.`VisitNum` AS `VisitNum`,
`t3`.`Initials` AS `Initials`,
`t3`.`PacketDate` AS `PacketDate`,
`t3`.`PacketBy` AS `PacketBy`,
`t3`.`PacketStatus` AS `PacketStatus`,
`t3`.`PacketReason` AS `PacketReason`,
`t3`.`PacketNotes` AS `PacketNotes`,
`t3`.`DSDate` AS `DSDate`,
`t3`.`DSBy` AS `DSBy`,
`t3`.`DSStatus` AS `DSStatus`,
`t3`.`DSReason` AS `DSReason`,
`t3`.`DSNotes` AS `DSNotes`,
`t3`.`LCDate` AS `LCDate`,
`t3`.`LCBy` AS `LCBy`,
`t3`.`LCStatus` AS `LCStatus`,
`t3`.`LCReason` AS `LCReason`,
`t3`.`LCNotes` AS `LCNotes` 
from ((`instrumenttracking` `t1` join `udsftldupdrs` `t2` on((`t1`.`InstrID` = `t2`.`InstrID`))) join `udstracking` `t3` on((`t1`.`InstrID` = `t3`.`InstrID`))) where (`t1`.`InstrType` = 'UDS FTLD UPDRS');


DROP procedure IF EXISTS `lq_get_nacc_udsftldupdrs`;

DELIMITER $$

CREATE PROCEDURE `lq_get_nacc_udsftldupdrs`(user_name varchar(50), host_name varchar(25),query_type varchar(25), query_subtype VARCHAR(25), query_days INTEGER)
BEGIN

CALL lq_audit_event(user_name,host_name,'crms.nacc.udsftldupdrs',query_type);
	
IF query_type = 'Simple' THEN
	SELECT p.pidn, it.InstrType, it.DCDate, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it 
		INNER JOIN lq_view_udsftldupdrs i ON (it.InstrID = i.InstrID) 
		INNER JOIN temp_pidn p ON (p.PIDN = it.PIDN) 
      WHERE it.InstrType = 'UDS FTLD UPDRS' or it.InstrType is null 
      ORDER BY p.pidn, it.DCDate;
ELSEIF query_type = 'SimpleAllPatients' THEN
	SELECT p.pidn, it.InstrType, it.DCDate, it.DCStatus, it.AgeAtDC, i.* FROM instrumenttracking it  
	 	INNER JOIN lq_view_udsftldupdrs i ON (it.InstrID = i.InstrID)  
	  RIGHT OUTER JOIN temp_pidn p ON (p.PIDN = it.PIDN)  
	WHERE it.InstrType =  'UDS FTLD UPDRS'  or it.InstrType is null 
	ORDER BY P.pidn, it.DCDate;

ELSEIF query_type = 'PrimaryAll' THEN 
	CREATE TEMPORARY TABLE temp_linkdata as 

  SELECT p.pidn,i.DCDate as link_date,i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
	FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
		INNER JOIN lq_view_udsftldupdrs d ON (i.InstrID=d.InstrID) 
	WHERE NOT i.DCStatus = 'Scheduled' AND NOT i.DCStatus like 'Canceled%' 
	ORDER BY p.pidn, i.DCDate, i.InstrID ;
   	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
  SELECT * from temp_linkdata;
ELSEIF query_type = 'PrimaryLatest' THEN  
	CREATE TEMPORARY TABLE temp_linkdata as 

  SELECT p.pidn, i.DCDate as link_date,i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
	FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN)  
	           INNER JOIN lq_view_udsftldupdrs d ON (i.InstrID=d.InstrID) 
	WHERE i.DCDate = (SELECT MAX(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND  
		i2.InstrType =  'UDS FTLD UPDRS'  AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%') 
	ORDER BY p.pidn, i.DCDate, i.InstrID;
  	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
  SELECT * from temp_linkdata;
ELSEIF query_type = 'PrimaryFirst' THEN

  CREATE TEMPORARY TABLE temp_linkdata as 
	SELECT p.pidn,i.DCDate as link_date,i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.* 
	FROM temp_pidn p INNER JOIN instrumenttracking i ON (p.PIDN=i.PIDN) 
		INNER JOIN lq_view_udsftldupdrs d ON (i.InstrID=d.InstrID)
	WHERE i.DCDate = (SELECT MIN(i2.DCDate) from instrumenttracking i2 WHERE i2.PIDN=p.PIDN AND 
		i2.InstrType =  'UDS FTLD UPDRS'  AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%')
	ORDER BY p.pidn, i.InstrID;
  	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
  SELECT * from temp_linkdata;
ELSEIF query_type IN ('SecondaryAll','SecondaryClosest') THEN
 	 
	CREATE TEMPORARY TABLE temp_secondary_candidates AS
   SELECT l.pidn, l.link_date, l.link_id, i2.InstrType, i2.InstrID, DATEDIFF(l.link_date, i2.DCDate) AS Days 
	 FROM temp_linkdata l INNER JOIN instrumenttracking i2 ON (i2.PIDN=l.PIDN) 
	 WHERE i2.InstrType = 'UDS FTLD UPDRS';

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
		LEFT JOIN lq_view_udsftldupdrs d ON (i.InstrID=d.InstrID) ORDER BY l.pidn, l.link_date, l.link_id;

	DROP TABLE temp_secondary_candidates;
END IF;
END$$

DELIMITER ;


INSERT INTO query_objects(instance,scope,module,section,target,short_desc,standard,primary_link,secondary_link) 
  VALUES('lava','crms','query','nacc','udsftldupdrs','UDS FTLD UPDRS',1,1,1);



-- New NACC instruments March, 2018

-- UDS Language History
	CREATE VIEW `lq_view_udslanguagehistory` AS select 
	`t1`.`InstrID` AS `InstrID`,
	`t2`.`APREFLAN` AS `APREFLAN`,`t2`.`AYRSPAN` AS `AYRSPAN`,`t2`.`AYRENGL` AS `AYRENGL`,`t2`.`APCSPAN` AS `APCSPAN`,`t2`.`APCENGL` AS `APCENGL`,`t2`.`ASPKSPAN` AS `ASPKSPAN`,`t2`.`AREASPAN` AS `AREASPAN`,`t2`.`AWRISPAN` AS `AWRISPAN`,`t2`.`AUNDSPAN` AS `AUNDSPAN`,`t2`.`ASPKENGL` AS `ASPKENGL`,`t2`.`AREAENGL` AS `AREAENGL`,`t2`.`AWRIENGL` AS `AWRIENGL`,`t2`.`AUNDENGL` AS `AUNDENGL`,
	`t3`.`Packet` AS `Packet`,
	`t3`.`FormID` AS `FormID`,
	`t3`.`FormVer` AS `FormVer`,
	`t3`.`ADCID` AS `ADCID`,
	`t3`.`PTID` AS `PTID`,
	`t3`.`VisitMo` AS `VisitMo`,
	`t3`.`VisitDay` AS `VisitDay`,
	`t3`.`VisitYr` AS `VisitYr`,
	`t3`.`VisitNum` AS `VisitNum`,
	`t3`.`Initials` AS `Initials`,
	`t3`.`PacketDate` AS `PacketDate`,
	`t3`.`PacketBy` AS `PacketBy`,
	`t3`.`PacketStatus` AS `PacketStatus`,
	`t3`.`PacketReason` AS `PacketReason`,
	`t3`.`PacketNotes` AS `PacketNotes`,
	`t3`.`DSDate` AS `DSDate`,
	`t3`.`DSBy` AS `DSBy`,
	`t3`.`DSStatus` AS `DSStatus`,
	`t3`.`DSReason` AS `DSReason`,
	`t3`.`DSNotes` AS `DSNotes`,
	`t3`.`LCDate` AS `LCDate`,
	`t3`.`LCBy` AS `LCBy`,
	`t3`.`LCStatus` AS `LCStatus`,
	`t3`.`LCReason` AS `LCReason`,
	`t3`.`LCNotes` AS `LCNotes` 
	from ((`instrumenttracking` `t1` join `udslanguagehistory` `t2` on((`t1`.`InstrID` = `t2`.`InstrID`))) join `udstracking` `t3` on((`t1`.`InstrID` = `t3`.`InstrID`))) where (`t1`.`InstrType` = 'UDS Language History');
	
	
	
	DELIMITER $$
	CREATE PROCEDURE `lq_get_mac_udslanguagehistory`(user_name varchar(50), host_name varchar(50), query_type varchar(25), query_subtype VARCHAR(25), query_days INTEGER)
	BEGIN
	CALL lq_audit_event(user_name, host_name, 'crms.mac.udslanguagehistory', query_type);
	
	IF query_type = 'Simple' THEN
		SELECT p.PIDN, it.InstrType, it.DCDate, v.VType, it.DCStatus, it.AgeAtDC, i.* FROM InstrumentTracking it 
		    INNER JOIN visit v ON (it.VID = v.VID) 
			INNER JOIN lq_view_udslanguagehistory i ON (it.InstrID = i.InstrID) 
			INNER JOIN temp_pidn p ON (p.PIDN = it.PIDN) 
		WHERE it.InstrType = 'UDS Language History' or it.InstrType is null 
		ORDER BY p.pidn, it.DCDate;
	      
	ELSEIF query_type = 'SimpleAllPatients' THEN
		SELECT p.PIDN, it.InstrType, it.DCDate, v.VType, it.DCStatus, it.AgeAtDC, i.* FROM InstrumentTracking it  
		    INNER JOIN visit v ON (it.VID = v.VID) 
			INNER JOIN lq_view_udslanguagehistory i ON (it.InstrID = i.InstrID)  
			RIGHT OUTER JOIN temp_pidn p ON (p.PIDN = it.PIDN)  
		WHERE it.InstrType = 'UDS Language History' or it.InstrType is null 
		ORDER BY P.pidn, it.DCDate;
		
	ELSEIF query_type = 'VisitGrouping' THEN
	    SELECT l.PIDN, l.link_date, l.link_id, v.VType, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*
	    FROM temp_linkdata l LEFT OUTER JOIN (visit v, InstrumentTracking i, lq_view_udslanguagehistory d)
	      ON (l.link_id=v.vid AND v.vid=i.vid AND i.InstrID=d.InstrID AND
	          NOT i.DCStatus = 'Scheduled' AND NOT i.DCStatus like 'Canceled%')
	    ORDER BY l.PIDN, l.link_date, l.link_id;
		
	ELSEIF query_type = 'PrimaryAll' THEN 
		CREATE TEMPORARY TABLE temp_linkdata as 
			SELECT p.PIDN,i.DCDate as link_date, i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
			FROM temp_pidn p INNER JOIN InstrumentTracking i ON (p.PIDN=i.PIDN)  
				INNER JOIN lq_view_udslanguagehistory d ON (i.InstrID=d.InstrID) 
			WHERE NOT i.DCStatus = 'Scheduled' AND NOT i.DCStatus like 'Canceled%' 
			ORDER BY p.pidn, i.DCDate, i.InstrID ;
		ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
		SELECT * from temp_linkdata;
		
	ELSEIF query_type = 'PrimaryLatest' THEN  
		CREATE TEMPORARY TABLE temp_linkdata as 
			SELECT p.PIDN, i.DCDate as link_date, i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
			FROM temp_pidn p INNER JOIN InstrumentTracking i ON (p.PIDN=i.PIDN)  
				INNER JOIN lq_view_udslanguagehistory d ON (i.InstrID=d.InstrID) 
			WHERE i.DCDate = (SELECT MAX(i2.DCDate) from InstrumentTracking i2 WHERE i2.PIDN=p.PIDN AND  
				i2.InstrType = 'UDS Language History' AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%') 
			ORDER BY p.pidn, i.DCDate, i.InstrID;
		ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
		SELECT * from temp_linkdata;
		
	ELSEIF query_type = 'PrimaryFirst' THEN
		CREATE TEMPORARY TABLE temp_linkdata as 
			SELECT p.PIDN,i.DCDate as link_date, i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.* 
			FROM temp_pidn p INNER JOIN InstrumentTracking i ON (p.PIDN=i.PIDN) 
				INNER JOIN lq_view_udslanguagehistory d ON (i.InstrID=d.InstrID)
			WHERE i.DCDate = (SELECT MIN(i2.DCDate) from InstrumentTracking i2 WHERE i2.PIDN=p.PIDN AND 
				i2.InstrType = 'UDS Language History' AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%')
			ORDER BY p.pidn, i.InstrID;
		ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
		SELECT * from temp_linkdata;
		
	ELSEIF query_type IN ('SecondaryAll','SecondaryClosest') THEN
		
		CREATE TEMPORARY TABLE temp_secondary_candidates AS
			SELECT l.PIDN, l.link_date, l.link_id, i2.InstrType, i2.InstrID, DATEDIFF(i2.DCDate, l.link_date) AS Days 
			FROM temp_linkdata l INNER JOIN InstrumentTracking i2 ON (i2.PIDN=l.PIDN) 
			WHERE i2.InstrType = 'UDS Language History';
		ALTER TABLE temp_secondary_candidates ADD INDEX(pidn,link_date,link_id,Days);
		
		
		IF query_subtype = 'Earlier' THEN DELETE from temp_secondary_candidates WHERE Days >0;
		ELSEIF query_subtype = 'MoreRecent' THEN DELETE from temp_secondary_candidates WHERE Days <0;
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
	
		SELECT l.PIDN, l.link_date, l.link_id, v.VType, i.InstrType, i.DCDate, temp_secondary_candidates.days as DayDiff, i.DCStatus, i.AgeAtDC, d.* 
		FROM temp_linkdata l
			LEFT OUTER JOIN temp_secondary_candidates ON (l.pidn=temp_secondary_candidates.pidn and l.link_date = temp_secondary_candidates.link_date and l.link_id=temp_secondary_candidates.link_id) 
			LEFT JOIN InstrumentTracking i ON (temp_secondary_candidates.InstrID=i.InstrID)
			LEFT JOIN visit v ON (i.VID = v.VID)
			LEFT JOIN lq_view_udslanguagehistory d ON (i.InstrID=d.InstrID) ORDER BY l.pidn, l.link_date, l.link_id;
	
		DROP TABLE temp_secondary_candidates;
	
	END IF;
	
	END$$
	DELIMITER ;
	
	
	INSERT INTO query_objects(instance,scope,module,section,target,short_desc,standard,primary_link,secondary_link) 
	  VALUES('lava','crms','query','nacc','udslanguagehistory','UDS Language History',1,1,1);

	  
	  
	  
	  
-- UDS Form Checklist X

CREATE VIEW `lq_view_udsformchecklistx` AS select 
`t1`.`InstrID` AS `InstrID`,
`t2`.`LANGT1` AS `LANGT1`,`t2`.`LANGA1` AS `LANGA1`,`t2`.`LANGA2` AS `LANGA2`,`t2`.`A2SUB` AS `A2SUB`,`t2`.`A2NOT` AS `A2NOT`,`t2`.`LANGA3` AS `LANGA3`,`t2`.`A3SUB` AS `A3SUB`,`t2`.`A3NOT` AS `A3NOT`,`t2`.`LANGA4` AS `LANGA4`,`t2`.`A4SUB` AS `A4SUB`,`t2`.`A4NOT` AS `A4NOT`,`t2`.`LANGA5` AS `LANGA5`,`t2`.`LANGB1` AS `LANGB1`,`t2`.`B1SUB` AS `B1SUB`,`t2`.`B1NOT` AS `B1NOT`,`t2`.`LANGB4` AS `LANGB4`,`t2`.`LANGB5` AS `LANGB5`,`t2`.`B5SUB` AS `B5SUB`,`t2`.`B5NOT` AS `B5NOT`,`t2`.`LANGB6` AS `LANGB6`,`t2`.`B6SUB` AS `B6SUB`,`t2`.`B6NOT` AS `B6NOT`,`t2`.`LANGB7` AS `LANGB7`,`t2`.`B7SUB` AS `B7SUB`,`t2`.`B7NOT` AS `B7NOT`,`t2`.`LANGB8` AS `LANGB8`,`t2`.`LANGB9` AS `LANGB9`,`t2`.`LANGC1` AS `LANGC1`,`t2`.`LANGC2` AS `LANGC2`,`t2`.`LANGD1` AS `LANGD1`,`t2`.`LANGD2` AS `LANGD2`,`t2`.`LANGA3A` AS `LANGA3A`,`t2`.`FTDA3AFS` AS `FTDA3AFS`,`t2`.`FTDA3AFR` AS `FTDA3AFR`,`t2`.`LANGB3F` AS `LANGB3F`,`t2`.`LANGB9F` AS `LANGB9F`,`t2`.`LANGC1F` AS `LANGC1F`,`t2`.`LANGC2F` AS `LANGC2F`,`t2`.`LANGC3F` AS `LANGC3F`,`t2`.`LANGC4F` AS `LANGC4F`,`t2`.`FTDC4FS` AS `FTDC4FS`,`t2`.`FTDC4FR` AS `FTDC4FR`,`t2`.`LANGC5F` AS `LANGC5F`,`t2`.`FTDC5FS` AS `FTDC5FS`,`t2`.`FTDC5FR` AS `FTDC5FR`,`t2`.`LANGC6F` AS `LANGC6F`,`t2`.`FTDC6FS` AS `FTDC6FS`,`t2`.`FTDC6FR` AS `FTDC6FR`,`t2`.`LANGE2F` AS `LANGE2F`,`t2`.`LANGE3F` AS `LANGE3F`,`t2`.`LANGCLS` AS `LANGCLS`,`t2`.`CLSSUB` AS `CLSSUB`,
`t3`.`Packet` AS `Packet`,
`t3`.`FormID` AS `FormID`,
`t3`.`FormVer` AS `FormVer`,
`t3`.`ADCID` AS `ADCID`,
`t3`.`PTID` AS `PTID`,
`t3`.`VisitMo` AS `VisitMo`,
`t3`.`VisitDay` AS `VisitDay`,
`t3`.`VisitYr` AS `VisitYr`,
`t3`.`VisitNum` AS `VisitNum`,
`t3`.`Initials` AS `Initials`,
`t3`.`PacketDate` AS `PacketDate`,
`t3`.`PacketBy` AS `PacketBy`,
`t3`.`PacketStatus` AS `PacketStatus`,
`t3`.`PacketReason` AS `PacketReason`,
`t3`.`PacketNotes` AS `PacketNotes`,
`t3`.`DSDate` AS `DSDate`,
`t3`.`DSBy` AS `DSBy`,
`t3`.`DSStatus` AS `DSStatus`,
`t3`.`DSReason` AS `DSReason`,
`t3`.`DSNotes` AS `DSNotes`,
`t3`.`LCDate` AS `LCDate`,
`t3`.`LCBy` AS `LCBy`,
`t3`.`LCStatus` AS `LCStatus`,
`t3`.`LCReason` AS `LCReason`,
`t3`.`LCNotes` AS `LCNotes` 
from ((`instrumenttracking` `t1` join `udsformchecklistx` `t2` on((`t1`.`InstrID` = `t2`.`InstrID`))) join `udstracking` `t3` on((`t1`.`InstrID` = `t3`.`InstrID`))) where (`t1`.`InstrType` = 'UDS Form Checklist X');




DELIMITER $$
CREATE PROCEDURE `lq_get_mac_udsformchecklistx`(user_name varchar(50), host_name varchar(50), query_type varchar(25), query_subtype VARCHAR(25), query_days INTEGER)
BEGIN
CALL lq_audit_event(user_name, host_name, 'crms.mac.udsformchecklistx', query_type);

IF query_type = 'Simple' THEN
	SELECT p.PIDN, it.InstrType, it.DCDate, v.VType, it.DCStatus, it.AgeAtDC, i.* FROM InstrumentTracking it 
	    INNER JOIN visit v ON (it.VID = v.VID) 
		INNER JOIN lq_view_udsformchecklistx i ON (it.InstrID = i.InstrID) 
		INNER JOIN temp_pidn p ON (p.PIDN = it.PIDN) 
	WHERE it.InstrType = 'UDS Form Checklist X' or it.InstrType is null 
	ORDER BY p.pidn, it.DCDate;
      
ELSEIF query_type = 'SimpleAllPatients' THEN
	SELECT p.PIDN, it.InstrType, it.DCDate, v.VType, it.DCStatus, it.AgeAtDC, i.* FROM InstrumentTracking it  
	    INNER JOIN visit v ON (it.VID = v.VID) 
		INNER JOIN lq_view_udsformchecklistx i ON (it.InstrID = i.InstrID)  
		RIGHT OUTER JOIN temp_pidn p ON (p.PIDN = it.PIDN)  
	WHERE it.InstrType = 'UDS Form Checklist X' or it.InstrType is null 
	ORDER BY P.pidn, it.DCDate;
	
ELSEIF query_type = 'VisitGrouping' THEN
    SELECT l.PIDN, l.link_date, l.link_id, v.VType, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*
    FROM temp_linkdata l LEFT OUTER JOIN (visit v, InstrumentTracking i, lq_view_udsformchecklistx d)
      ON (l.link_id=v.vid AND v.vid=i.vid AND i.InstrID=d.InstrID AND
          NOT i.DCStatus = 'Scheduled' AND NOT i.DCStatus like 'Canceled%')
    ORDER BY l.PIDN, l.link_date, l.link_id;
	
ELSEIF query_type = 'PrimaryAll' THEN 
	CREATE TEMPORARY TABLE temp_linkdata as 
		SELECT p.PIDN,i.DCDate as link_date, i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
		FROM temp_pidn p INNER JOIN InstrumentTracking i ON (p.PIDN=i.PIDN)  
			INNER JOIN lq_view_udsformchecklistx d ON (i.InstrID=d.InstrID) 
		WHERE NOT i.DCStatus = 'Scheduled' AND NOT i.DCStatus like 'Canceled%' 
		ORDER BY p.pidn, i.DCDate, i.InstrID ;
	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
	SELECT * from temp_linkdata;
	
ELSEIF query_type = 'PrimaryLatest' THEN  
	CREATE TEMPORARY TABLE temp_linkdata as 
		SELECT p.PIDN, i.DCDate as link_date, i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.*  
		FROM temp_pidn p INNER JOIN InstrumentTracking i ON (p.PIDN=i.PIDN)  
			INNER JOIN lq_view_udsformchecklistx d ON (i.InstrID=d.InstrID) 
		WHERE i.DCDate = (SELECT MAX(i2.DCDate) from InstrumentTracking i2 WHERE i2.PIDN=p.PIDN AND  
			i2.InstrType = 'UDS Form Checklist X' AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%') 
		ORDER BY p.pidn, i.DCDate, i.InstrID;
	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
	SELECT * from temp_linkdata;
	
ELSEIF query_type = 'PrimaryFirst' THEN
	CREATE TEMPORARY TABLE temp_linkdata as 
		SELECT p.PIDN,i.DCDate as link_date, i.InstrID as link_id, i.InstrType, i.DCDate, i.DCStatus, i.AgeAtDC, d.* 
		FROM temp_pidn p INNER JOIN InstrumentTracking i ON (p.PIDN=i.PIDN) 
			INNER JOIN lq_view_udsformchecklistx d ON (i.InstrID=d.InstrID)
		WHERE i.DCDate = (SELECT MIN(i2.DCDate) from InstrumentTracking i2 WHERE i2.PIDN=p.PIDN AND 
			i2.InstrType = 'UDS Form Checklist X' AND NOT i2.DCStatus = 'Scheduled' AND NOT i2.DCStatus like 'Canceled%')
		ORDER BY p.pidn, i.InstrID;
	ALTER TABLE temp_linkdata ADD INDEX(pidn,link_date,link_id);	
	SELECT * from temp_linkdata;
	
ELSEIF query_type IN ('SecondaryAll','SecondaryClosest') THEN
	
	CREATE TEMPORARY TABLE temp_secondary_candidates AS
		SELECT l.PIDN, l.link_date, l.link_id, i2.InstrType, i2.InstrID, DATEDIFF(i2.DCDate, l.link_date) AS Days 
		FROM temp_linkdata l INNER JOIN InstrumentTracking i2 ON (i2.PIDN=l.PIDN) 
		WHERE i2.InstrType = 'UDS Form Checklist X';
	ALTER TABLE temp_secondary_candidates ADD INDEX(pidn,link_date,link_id,Days);
	
	
	IF query_subtype = 'Earlier' THEN DELETE from temp_secondary_candidates WHERE Days >0;
	ELSEIF query_subtype = 'MoreRecent' THEN DELETE from temp_secondary_candidates WHERE Days <0;
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

	SELECT l.PIDN, l.link_date, l.link_id, v.VType, i.InstrType, i.DCDate, temp_secondary_candidates.days as DayDiff, i.DCStatus, i.AgeAtDC, d.* 
	FROM temp_linkdata l
		LEFT OUTER JOIN temp_secondary_candidates ON (l.pidn=temp_secondary_candidates.pidn and l.link_date = temp_secondary_candidates.link_date and l.link_id=temp_secondary_candidates.link_id) 
		LEFT JOIN InstrumentTracking i ON (temp_secondary_candidates.InstrID=i.InstrID)
		LEFT JOIN visit v ON (i.VID = v.VID)
		LEFT JOIN lq_view_udsformchecklistx d ON (i.InstrID=d.InstrID) ORDER BY l.pidn, l.link_date, l.link_id;

	DROP TABLE temp_secondary_candidates;

END IF;

END$$
DELIMITER ;


INSERT INTO query_objects(instance,scope,module,section,target,short_desc,standard,primary_link,secondary_link) 
  VALUES('lava','crms','query','nacc','udsformchecklistx','UDS Form Checklist X',1,1,1);
  
  
  
DELETE FROM versionhistory WHERE module='lava-crms-nacc-lavaquery' AND version='3.6.9';
INSERT INTO versionhistory(module,version,versiondate,major,minor,fix,updaterequired)
VALUES ('lava-crms-nacc-lavaquery','3.6.9','2018-05-31',3,6,9,0);
  
	  