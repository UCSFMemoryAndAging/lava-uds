DROP TABLE cdrcalclookup;

CREATE TABLE cdrcalclookup (
  `Memory` decimal(3,1) DEFAULT NULL,
  `Ornt` decimal(3,1) DEFAULT NULL,
  `Prblm` decimal(3,1) DEFAULT NULL,
  `cmnaff` decimal(3,1) DEFAULT NULL,
  `hobby` decimal(3,1) DEFAULT NULL,
  `Care` decimal(3,1) DEFAULT NULL,
  `CDRTot` decimal(3,1) DEFAULT NULL,
  `BoxScore` decimal(3,1) DEFAULT NULL,
  KEY `composite_index` (`Memory`,`Ornt`,`Prblm`,`cmnaff`,`hobby`,`Care`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOAD DATA LOCAL INFILE '/home/ctoohey/workspace/lava-crms-nacc/database/crms-nacc/update/cdrcalclookup.csv' 
INTO TABLE cdrcalclookup
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
(Memory, Ornt, Prblm, cmnaff, hobby, Care, CDRTot, BoxScore);




