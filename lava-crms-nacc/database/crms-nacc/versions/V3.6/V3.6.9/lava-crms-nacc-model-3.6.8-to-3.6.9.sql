-- UDS Language History
	
	CREATE TABLE udslanguagehistory (
	  InstrID int(10) NOT NULL,
	    `APREFLAN` smallint(5) DEFAULT NULL,
	    `AYRSPAN` smallint(5) DEFAULT NULL,
	    `AYRENGL` smallint(5) DEFAULT NULL,
	    `APCSPAN` smallint(5) DEFAULT NULL,
	    `APCENGL` smallint(5) DEFAULT NULL,
	    `ASPKSPAN` smallint(5) DEFAULT NULL,
	    `AREASPAN` smallint(5) DEFAULT NULL,
	    `AWRISPAN` smallint(5) DEFAULT NULL,
	    `AUNDSPAN` smallint(5) DEFAULT NULL,
	    `ASPKENGL` smallint(5) DEFAULT NULL,
	    `AREAENGL` smallint(5) DEFAULT NULL,
	    `AWRIENGL` smallint(5) DEFAULT NULL,
	    `AUNDENGL` smallint(5) DEFAULT NULL,
	
	  PRIMARY KEY (`InstrID`)
	) ENGINE=InnoDB DEFAULT CHARSET=latin1;






-- UDS Form Checklist X

CREATE TABLE udsformchecklistx (
  InstrID int(10) NOT NULL,
    `LANGT1` smallint(5) DEFAULT NULL,
    `LANGA1` smallint(5) DEFAULT NULL,
    `LANGA2` smallint(5) DEFAULT NULL,
    `A2SUB` smallint(5) DEFAULT NULL,
    `A2NOT` smallint(5) DEFAULT NULL,
    `LANGA3` smallint(5) DEFAULT NULL,
    `A3SUB` smallint(5) DEFAULT NULL,
    `A3NOT` smallint(5) DEFAULT NULL,
    `LANGA4` smallint(5) DEFAULT NULL,
    `A4SUB` smallint(5) DEFAULT NULL,
    `A4NOT` smallint(5) DEFAULT NULL,
    `LANGA5` smallint(5) DEFAULT NULL,
    `LANGB1` smallint(5) DEFAULT NULL,
    `B1SUB` smallint(5) DEFAULT NULL,
    `B1NOT` smallint(5) DEFAULT NULL,
    `LANGB4` smallint(5) DEFAULT NULL,
    `LANGB5` smallint(5) DEFAULT NULL,
    `B5SUB` smallint(5) DEFAULT NULL,
    `B5NOT` smallint(5) DEFAULT NULL,
    `LANGB6` smallint(5) DEFAULT NULL,
    `B6SUB` smallint(5) DEFAULT NULL,
    `B6NOT` smallint(5) DEFAULT NULL,
    `LANGB7` smallint(5) DEFAULT NULL,
    `B7SUB` smallint(5) DEFAULT NULL,
    `B7NOT` smallint(5) DEFAULT NULL,
    `LANGB8` smallint(5) DEFAULT NULL,
    `LANGB9` smallint(5) DEFAULT NULL,
    `LANGC1` smallint(5) DEFAULT NULL,
    `LANGC2` smallint(5) DEFAULT NULL,
    `LANGD1` smallint(5) DEFAULT NULL,
    `LANGD2` smallint(5) DEFAULT NULL,
    `LANGA3A` smallint(5) DEFAULT NULL,
    `FTDA3AFS` smallint(5) DEFAULT NULL,
    `FTDA3AFR` smallint(5) DEFAULT NULL,
    `LANGB3F` smallint(5) DEFAULT NULL,
    `LANGB9F` smallint(5) DEFAULT NULL,
    `LANGC1F` smallint(5) DEFAULT NULL,
    `LANGC2F` smallint(5) DEFAULT NULL,
    `LANGC3F` smallint(5) DEFAULT NULL,
    `LANGC4F` smallint(5) DEFAULT NULL,
    `FTDC4FS` smallint(5) DEFAULT NULL,
    `FTDC4FR` smallint(5) DEFAULT NULL,
    `LANGC5F` smallint(5) DEFAULT NULL,
    `FTDC5FS` smallint(5) DEFAULT NULL,
    `FTDC5FR` smallint(5) DEFAULT NULL,
    `LANGC6F` smallint(5) DEFAULT NULL,
    `FTDC6FS` smallint(5) DEFAULT NULL,
    `FTDC6FR` smallint(5) DEFAULT NULL,
    `LANGE2F` smallint(5) DEFAULT NULL,
    `LANGE3F` smallint(5) DEFAULT NULL,
    `LANGCLS` smallint(5) DEFAULT NULL,
    `CLSSUB` smallint(5) DEFAULT NULL,
  PRIMARY KEY (`InstrID`),
  CONSTRAINT `udsformchecklistx_itrack_key` FOREIGN KEY (`InstrID`) REFERENCES `instrumenttracking` (`InstrID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


DELETE FROM versionhistory WHERE module='lava-crms-nacc-model' AND version='3.6.9';
INSERT INTO versionhistory(module,version,versiondate,major,minor,fix,updaterequired)
VALUES ('lava-crms-nacc-model','3.6.9','2018-05-31',3,6,9,0);
