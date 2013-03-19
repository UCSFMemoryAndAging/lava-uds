-- all tables for the FTLD module

DROP TABLE IF EXISTS `udsftldbis`;
CREATE TABLE IF NOT EXISTS `udsftldbis` (
  `InstrID` INT NOT NULL ,
  `FTDCPC4F` smallint NULL DEFAULT null ,
  `FTDWORKU` smallint NULL DEFAULT null ,
  `FTDMIST` smallint NULL DEFAULT null ,
  `FTDCRIT` smallint NULL DEFAULT null ,
  `FTDWORR` smallint NULL DEFAULT null ,
  `FTDBAD` smallint NULL DEFAULT null ,
  `FTDPOOR` smallint NULL DEFAULT null ,
  `FTDFFEAR` smallint NULL DEFAULT null ,
  `FTDBIST` smallint NULL DEFAULT null ,
  PRIMARY KEY (`InstrID`) )
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;

ALTER TABLE `udsftldbis` ADD CONSTRAINT `udsftldbis__InstrID`
 FOREIGN KEY (`InstrID` )
 REFERENCES `instrumenttracking` (`InstrID`)
 ON DELETE NO ACTION
 ON UPDATE NO ACTION, ADD INDEX `udsftldbis__InstrID` (`InstrID` ASC);


DROP TABLE IF EXISTS `udsftldclinfeatures`;
CREATE TABLE IF NOT EXISTS `udsftldclinfeatures` (
  `InstrID` INT NOT NULL ,
  `FTDPPASL` smallint NULL DEFAULT null ,
  `FTDPPAPO` smallint NULL DEFAULT null ,
  `FTDPPAIW` smallint NULL DEFAULT null ,
  `FTDPPASW` smallint NULL DEFAULT null ,
  `FTDPPAPK` smallint NULL DEFAULT null ,
  `FTDPPAGS` smallint NULL DEFAULT null ,
  `FTDPPAEH` smallint NULL DEFAULT null ,
  `FTDPPACS` smallint NULL DEFAULT null ,
  `FTDPPASS` smallint NULL DEFAULT null ,
  `FTDPPASR` smallint NULL DEFAULT null ,
  `FTDPPASD` smallint NULL DEFAULT null ,
  `FTDCPPA` smallint NULL DEFAULT null ,
  `FTDCPPAS` smallint NULL DEFAULT null ,
  `FTDBVCLN` smallint NULL DEFAULT null ,
  `FTDBVDIS` smallint NULL DEFAULT null ,
  `FTDBVAPA` smallint NULL DEFAULT null ,
  `FTDBVLOS` smallint NULL DEFAULT null ,
  `FTDBVRIT` smallint NULL DEFAULT null ,
  `FTDBVHYP` smallint NULL DEFAULT null ,
  `FTDBVNEU` smallint NULL DEFAULT null ,
  `FTDBVIDL` smallint NULL DEFAULT null ,
  `FTDBVFT` smallint NULL DEFAULT null ,
  `FTDEMGPV` smallint NULL DEFAULT null ,
  `FTDEMGPY` smallint NULL DEFAULT null ,
  `FTDEMGMN` smallint NULL DEFAULT null ,
  `FTDPABVF` smallint NULL DEFAULT null ,
  PRIMARY KEY (`InstrID`) )
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;

ALTER TABLE `udsftldclinfeatures` ADD CONSTRAINT `udsftldclinfeatures__InstrID`
 FOREIGN KEY (`InstrID` )
 REFERENCES `instrumenttracking` (`InstrID`)
 ON DELETE NO ACTION
 ON UPDATE NO ACTION, ADD INDEX `udsftldclinfeatures__InstrID` (`InstrID` ASC);


DROP TABLE IF EXISTS `udsftldfamilyhistory`;
CREATE TABLE IF NOT EXISTS `udsftldfamilyhistory` (
  `InstrID` INT NOT NULL ,
  `FTDAFF` smallint NULL DEFAULT null ,
  `FTDMUTAT` smallint NULL DEFAULT null ,
  `FTDPMUT` smallint NULL DEFAULT null ,
  `FTDPMUTX` varchar(60) NULL DEFAULT null ,
  `FTDMCLAB` smallint NULL DEFAULT null ,
  `FTDMRLAB` smallint NULL DEFAULT null ,
  `FTDMFAMR` smallint NULL DEFAULT null ,
  `FTDMOTH` smallint NULL DEFAULT null ,
  `FTDMOTHX` varchar(60) NULL DEFAULT null ,
  `FTDMOMN` smallint NULL DEFAULT null ,
  `FTDMOMP` smallint NULL DEFAULT null ,
  `FTDMOME` smallint NULL DEFAULT null ,
  `FTDMOMA` smallint NULL DEFAULT null ,
  `FTDDADN` smallint NULL DEFAULT null ,
  `FTDDADP` smallint NULL DEFAULT null ,
  `FTDDADE` smallint NULL DEFAULT null ,
  `FTDDADA` smallint NULL DEFAULT null ,
  `FTDBSAM` smallint NULL DEFAULT null ,
  `FTDBSA` smallint NULL DEFAULT null ,
  `FTDNSA` smallint NULL DEFAULT null ,
  `FTDPSA` smallint NULL DEFAULT null ,
  `FTDMSA` smallint NULL DEFAULT null ,
  `FTDASA` smallint NULL DEFAULT null ,
  `FTDBSBM` smallint NULL DEFAULT null ,
  `FTDBSB` smallint NULL DEFAULT null ,
  `FTDNSB` smallint NULL DEFAULT null ,
  `FTDPSB` smallint NULL DEFAULT null ,
  `FTDMSB` smallint NULL DEFAULT null ,
  `FTDASB` smallint NULL DEFAULT null ,
  `FTDBSCM` smallint NULL DEFAULT null ,
  `FTDBSC` smallint NULL DEFAULT null ,
  `FTDNSC` smallint NULL DEFAULT null ,
  `FTDPSC` smallint NULL DEFAULT null ,
  `FTDMSC` smallint NULL DEFAULT null ,
  `FTDASC` smallint NULL DEFAULT null ,
  `FTDBSDM` smallint NULL DEFAULT null ,
  `FTDBSD` smallint NULL DEFAULT null ,
  `FTDNSD` smallint NULL DEFAULT null ,
  `FTDPSD` smallint NULL DEFAULT null ,
  `FTDMSD` smallint NULL DEFAULT null ,
  `FTDASD` smallint NULL DEFAULT null ,
  `FTDBSEM` smallint NULL DEFAULT null ,
  `FTDBSE` smallint NULL DEFAULT null ,
  `FTDNSE` smallint NULL DEFAULT null ,
  `FTDPSE` smallint NULL DEFAULT null ,
  `FTDMSE` smallint NULL DEFAULT null ,
  `FTDASE` smallint NULL DEFAULT null ,
  `FTDBSFM` smallint NULL DEFAULT null ,
  `FTDBSF` smallint NULL DEFAULT null ,
  `FTDNSF` smallint NULL DEFAULT null ,
  `FTDPSF` smallint NULL DEFAULT null ,
  `FTDMSF` smallint NULL DEFAULT null ,
  `FTDASF` smallint NULL DEFAULT null ,
  `FTDBSGM` smallint NULL DEFAULT null ,
  `FTDBSG` smallint NULL DEFAULT null ,
  `FTDNSG` smallint NULL DEFAULT null ,
  `FTDPSG` smallint NULL DEFAULT null ,
  `FTDMSG` smallint NULL DEFAULT null ,
  `FTDASG` smallint NULL DEFAULT null ,
  `FTDBSHM` smallint NULL DEFAULT null ,
  `FTDBSH` smallint NULL DEFAULT null ,
  `FTDNSH` smallint NULL DEFAULT null ,
  `FTDPSH` smallint NULL DEFAULT null ,
  `FTDMSH` smallint NULL DEFAULT null ,
  `FTDASH` smallint NULL DEFAULT null ,
  `FTDBSIM` smallint NULL DEFAULT null ,
  `FTDBSI` smallint NULL DEFAULT null ,
  `FTDNSI` smallint NULL DEFAULT null ,
  `FTDPSI` smallint NULL DEFAULT null ,
  `FTDMSI` smallint NULL DEFAULT null ,
  `FTDASI` smallint NULL DEFAULT null ,
  `FTDBSJM` smallint NULL DEFAULT null ,
  `FTDBSJ` smallint NULL DEFAULT null ,
  `FTDNSJ` smallint NULL DEFAULT null ,
  `FTDPSJ` smallint NULL DEFAULT null ,
  `FTDMSJ` smallint NULL DEFAULT null ,
  `FTDASJ` smallint NULL DEFAULT null ,
  `FTDBSKM` smallint NULL DEFAULT null ,
  `FTDBSK` smallint NULL DEFAULT null ,
  `FTDNSK` smallint NULL DEFAULT null ,
  `FTDPSK` smallint NULL DEFAULT null ,
  `FTDMSK` smallint NULL DEFAULT null ,
  `FTDASK` smallint NULL DEFAULT null ,
  `FTDBSLM` smallint NULL DEFAULT null ,
  `FTDBSL` smallint NULL DEFAULT null ,
  `FTDNSL` smallint NULL DEFAULT null ,
  `FTDPSL` smallint NULL DEFAULT null ,
  `FTDMSL` smallint NULL DEFAULT null ,
  `FTDASL` smallint NULL DEFAULT null ,
  `FTDBSMM` smallint NULL DEFAULT null ,
  `FTDBSM` smallint NULL DEFAULT null ,
  `FTDNSM` smallint NULL DEFAULT null ,
  `FTDPSM` smallint NULL DEFAULT null ,
  `FTDMSM` smallint NULL DEFAULT null ,
  `FTDASM` smallint NULL DEFAULT null ,
  `FTDBCAM` smallint NULL DEFAULT null ,
  `FTDBCA` smallint NULL DEFAULT null ,
  `FTDNCA` smallint NULL DEFAULT null ,
  `FTDPCA` smallint NULL DEFAULT null ,
  `FTDMCA` smallint NULL DEFAULT null ,
  `FTDACA` smallint NULL DEFAULT null ,
  `FTDBCBM` smallint NULL DEFAULT null ,
  `FTDBCB` smallint NULL DEFAULT null ,
  `FTDNCB` smallint NULL DEFAULT null ,
  `FTDPCB` smallint NULL DEFAULT null ,
  `FTDMCB` smallint NULL DEFAULT null ,
  `FTDACB` smallint NULL DEFAULT null ,
  `FTDBCCM` smallint NULL DEFAULT null ,
  `FTDBCC` smallint NULL DEFAULT null ,
  `FTDNCC` smallint NULL DEFAULT null ,
  `FTDPCC` smallint NULL DEFAULT null ,
  `FTDMCC` smallint NULL DEFAULT null ,
  `FTDACC` smallint NULL DEFAULT null ,
  `FTDBCDM` smallint NULL DEFAULT null ,
  `FTDBCD` smallint NULL DEFAULT null ,
  `FTDNCD` smallint NULL DEFAULT null ,
  `FTDPCD` smallint NULL DEFAULT null ,
  `FTDMCD` smallint NULL DEFAULT null ,
  `FTDACD` smallint NULL DEFAULT null ,
  `FTDBCEM` smallint NULL DEFAULT null ,
  `FTDBCE` smallint NULL DEFAULT null ,
  `FTDNCE` smallint NULL DEFAULT null ,
  `FTDPCE` smallint NULL DEFAULT null ,
  `FTDMCE` smallint NULL DEFAULT null ,
  `FTDACE` smallint NULL DEFAULT null ,
  `FTDBCFM` smallint NULL DEFAULT null ,
  `FTDBCF` smallint NULL DEFAULT null ,
  `FTDNCF` smallint NULL DEFAULT null ,
  `FTDPCF` smallint NULL DEFAULT null ,
  `FTDMCF` smallint NULL DEFAULT null ,
  `FTDACF` smallint NULL DEFAULT null ,
  `FTDBCGM` smallint NULL DEFAULT null ,
  `FTDBCG` smallint NULL DEFAULT null ,
  `FTDNCG` smallint NULL DEFAULT null ,
  `FTDPCG` smallint NULL DEFAULT null ,
  `FTDMCG` smallint NULL DEFAULT null ,
  `FTDACG` smallint NULL DEFAULT null ,
  `FTDBCHM` smallint NULL DEFAULT null ,
  `FTDBCH` smallint NULL DEFAULT null ,
  `FTDNCH` smallint NULL DEFAULT null ,
  `FTDPCH` smallint NULL DEFAULT null ,
  `FTDMCH` smallint NULL DEFAULT null ,
  `FTDACH` smallint NULL DEFAULT null ,
  `FTDBCIM` smallint NULL DEFAULT null ,
  `FTDBCI` smallint NULL DEFAULT null ,
  `FTDNCI` smallint NULL DEFAULT null ,
  `FTDPCI` smallint NULL DEFAULT null ,
  `FTDMCI` smallint NULL DEFAULT null ,
  `FTDACI` smallint NULL DEFAULT null ,
  `FTDBCJM` smallint NULL DEFAULT null ,
  `FTDBCJ` smallint NULL DEFAULT null ,
  `FTDNCJ` smallint NULL DEFAULT null ,
  `FTDPCJ` smallint NULL DEFAULT null ,
  `FTDMCJ` smallint NULL DEFAULT null ,
  `FTDACJ` smallint NULL DEFAULT null ,
  `FTDBCKM` smallint NULL DEFAULT null ,
  `FTDBCK` smallint NULL DEFAULT null ,
  `FTDNCK` smallint NULL DEFAULT null ,
  `FTDPCK` smallint NULL DEFAULT null ,
  `FTDMCK` smallint NULL DEFAULT null ,
  `FTDACK` smallint NULL DEFAULT null ,
  `FTDBCLM` smallint NULL DEFAULT null ,
  `FTDBCL` smallint NULL DEFAULT null ,
  `FTDNCL` smallint NULL DEFAULT null ,
  `FTDPCL` smallint NULL DEFAULT null ,
  `FTDMCL` smallint NULL DEFAULT null ,
  `FTDACL` smallint NULL DEFAULT null ,
  `FTDBCMM` smallint NULL DEFAULT null ,
  `FTDBCM` smallint NULL DEFAULT null ,
  `FTDNCM` smallint NULL DEFAULT null ,
  `FTDPCM` smallint NULL DEFAULT null ,
  `FTDMCM` smallint NULL DEFAULT null ,
  `FTDACM` smallint NULL DEFAULT null ,
  PRIMARY KEY (`InstrID`) )
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;

ALTER TABLE `udsftldfamilyhistory` ADD CONSTRAINT `udsftldfamilyhistory__InstrID`
 FOREIGN KEY (`InstrID` )
 REFERENCES `instrumenttracking` (`InstrID`)
 ON DELETE NO ACTION
 ON UPDATE NO ACTION, ADD INDEX `udsftldfamilyhistory__InstrID` (`InstrID` ASC);


DROP TABLE IF EXISTS `udsftldformchecklist`;
CREATE TABLE IF NOT EXISTS `udsftldformchecklist` (
  `InstrID` INT NOT NULL ,
  `FTDA3AFS` smallint NULL DEFAULT null ,
  `FTDA3AFR` smallint NULL DEFAULT null ,
  `FTDA3AFC` varchar(60) NULL DEFAULT null ,
  `FTDA3FS` smallint NULL DEFAULT null ,
  `FTDA3FR` smallint NULL DEFAULT null ,
  `FTDA3FC` varchar(60) NULL DEFAULT null ,
  `FTDC4FS` smallint NULL DEFAULT null ,
  `FTDC4FR` smallint NULL DEFAULT null ,
  `FTDC4FC` varchar(60) NULL DEFAULT null ,
  `FTDC5FS` smallint NULL DEFAULT null ,
  `FTDC5FR` smallint NULL DEFAULT null ,
  `FTDC5FC` varchar(60) NULL DEFAULT null ,
  `FTDC6FS` smallint NULL DEFAULT null ,
  `FTDC6FR` smallint NULL DEFAULT null ,
  `FTDC6FC` varchar(60) NULL DEFAULT null ,
  PRIMARY KEY (`InstrID`) )
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;

ALTER TABLE `udsftldformchecklist` ADD CONSTRAINT `udsftldformchecklist__InstrID`
 FOREIGN KEY (`InstrID` )
 REFERENCES `instrumenttracking` (`InstrID`)
 ON DELETE NO ACTION
 ON UPDATE NO ACTION, ADD INDEX `udsftldformchecklist__InstrID` (`InstrID` ASC);


DROP TABLE IF EXISTS `udsftldimagingavail`;
CREATE TABLE IF NOT EXISTS `udsftldimagingavail` (
  `InstrID` INT NOT NULL ,
  `FTDSMRI` smallint NULL DEFAULT null ,
  `FTDSMMO` smallint NULL DEFAULT null ,
  `FTDSMDY` smallint NULL DEFAULT null ,
  `FTDSMYR` smallint NULL DEFAULT null ,
  `FTDSMDIC` smallint NULL DEFAULT null ,
  `FTDSMDIS` varchar(60) NULL DEFAULT null ,
  `FTDSMADN` smallint NULL DEFAULT null ,
  `FTDSMADV` varchar(60) NULL DEFAULT null ,
  `FTDSMMAN` smallint NULL DEFAULT null ,
  `FTDSMMAO` varchar(60) NULL DEFAULT null ,
  `FTDSMMAM` varchar(60) NULL DEFAULT null ,
  `FTDSMFS` smallint NULL DEFAULT null ,
  `FTDSMFSO` varchar(60) NULL DEFAULT null ,
  `FTDSMQU` smallint NULL DEFAULT null ,
  `FTDFDGPT` smallint NULL DEFAULT null ,
  `FTDFPMO` smallint NULL DEFAULT null ,
  `FTDFPDY` smallint NULL DEFAULT null ,
  `FTDFPYR` smallint NULL DEFAULT null ,
  `FTDFDDIC` smallint NULL DEFAULT null ,
  `FTDFDDID` varchar(60) NULL DEFAULT null ,
  `FTDFDADN` smallint NULL DEFAULT null ,
  `FTDFDADV` varchar(60) NULL DEFAULT null ,
  `FTDFDMAN` smallint NULL DEFAULT null ,
  `FTDFDMAO` varchar(60) NULL DEFAULT null ,
  `FTDFDMAM` varchar(60) NULL DEFAULT null ,
  `FTDFDQU` smallint NULL DEFAULT null ,
  `FTDAMYPT` smallint NULL DEFAULT null ,
  `FTDAMMO` smallint NULL DEFAULT null ,
  `FTDAMDY` smallint NULL DEFAULT null ,
  `FTDAMYR` smallint NULL DEFAULT null ,
  `FTDAMDIC` smallint NULL DEFAULT null ,
  `FTDAMDID` varchar(60) NULL DEFAULT null ,
  `FTDAMLIG` smallint NULL DEFAULT null ,
  `FTDAMLIO` varchar(60) NULL DEFAULT null ,
  `FTDAMADN` smallint NULL DEFAULT null ,
  `FTDAMADV` varchar(60) NULL DEFAULT null ,
  `FTDAMMAN` smallint NULL DEFAULT null ,
  `FTDAMMAO` varchar(60) NULL DEFAULT null ,
  `FTDAMMAM` varchar(60) NULL DEFAULT null ,
  `FTDAMQU` smallint NULL DEFAULT null ,
  `FTDOTHER` smallint NULL DEFAULT null ,
  `FTDOTDOP` smallint NULL DEFAULT null ,
  `FTDOTSER` smallint NULL DEFAULT null ,
  `FTDOTCHO` smallint NULL DEFAULT null ,
  `FTDOTANO` smallint NULL DEFAULT null ,
  `FTDOTANS` varchar(60) NULL DEFAULT null ,
  PRIMARY KEY (`InstrID`) )
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;

ALTER TABLE `udsftldimagingavail` ADD CONSTRAINT `udsftldimagingavail__InstrID`
 FOREIGN KEY (`InstrID` )
 REFERENCES `instrumenttracking` (`InstrID`)
 ON DELETE NO ACTION
 ON UPDATE NO ACTION, ADD INDEX `udsftldimagingavail__InstrID` (`InstrID` ASC);


DROP TABLE IF EXISTS `udsftldimagingdiag`;
CREATE TABLE IF NOT EXISTS `udsftldimagingdiag` (
  `InstrID` INT NOT NULL ,
  `FTDIDIAG` smallint NULL DEFAULT null ,
  `FTDSMRIO` smallint NULL DEFAULT null ,
  `FTDMRIFA` smallint NULL DEFAULT null ,
  `FTDMRIRF` smallint NULL DEFAULT null ,
  `FTDMRILF` smallint NULL DEFAULT null ,
  `FTDMRIRT` smallint NULL DEFAULT null ,
  `FTDMRILT` smallint NULL DEFAULT null ,
  `FTDMRIRM` smallint NULL DEFAULT null ,
  `FTDMRILM` smallint NULL DEFAULT null ,
  `FTDMRIRP` smallint NULL DEFAULT null ,
  `FTDMRILP` smallint NULL DEFAULT null ,
  `FTDMRIRB` smallint NULL DEFAULT null ,
  `FTDMRILB` smallint NULL DEFAULT null ,
  `FTDMRIOB` smallint NULL DEFAULT null ,
  `FTDMRIOS` varchar(60) NULL DEFAULT null ,
  `FTDFDGPE` smallint NULL DEFAULT null ,
  `FTDFDGFH` smallint NULL DEFAULT null ,
  `FTDFDGRF` smallint NULL DEFAULT null ,
  `FTDFDGLF` smallint NULL DEFAULT null ,
  `FTDFDGRT` smallint NULL DEFAULT null ,
  `FTDFDGLT` smallint NULL DEFAULT null ,
  `FTDFDGRM` smallint NULL DEFAULT null ,
  `FTDFDGLM` smallint NULL DEFAULT null ,
  `FTDFDGRP` smallint NULL DEFAULT null ,
  `FTDFDGLP` smallint NULL DEFAULT null ,
  `FTDFDGRB` smallint NULL DEFAULT null ,
  `FTDFDGLB` smallint NULL DEFAULT null ,
  `FTDFDGOA` smallint NULL DEFAULT null ,
  `FTDFDGOS` varchar(60) NULL DEFAULT null ,
  `FTDAMYP` smallint NULL DEFAULT null ,
  `FTDAMYVI` smallint NULL DEFAULT null ,
  `FTDAMYRF` smallint NULL DEFAULT null ,
  `FTDAMYLF` smallint NULL DEFAULT null ,
  `FTDAMYRT` smallint NULL DEFAULT null ,
  `FTDAMYLT` smallint NULL DEFAULT null ,
  `FTDAMYRM` smallint NULL DEFAULT null ,
  `FTDAMYLM` smallint NULL DEFAULT null ,
  `FTDAMYRP` smallint NULL DEFAULT null ,
  `FTDAMYLP` smallint NULL DEFAULT null ,
  `FTDAMYRB` smallint NULL DEFAULT null ,
  `FTDAMYLB` smallint NULL DEFAULT null ,
  `FTDAMYOA` smallint NULL DEFAULT null ,
  `FTDAMYOS` varchar(60) NULL DEFAULT null ,
  `FTDCBFSP` smallint NULL DEFAULT null ,
  `FTDCBFVI` smallint NULL DEFAULT null ,
  `FTDCBFRF` smallint NULL DEFAULT null ,
  `FTDCBFLF` smallint NULL DEFAULT null ,
  `FTDCBFRT` smallint NULL DEFAULT null ,
  `FTDCBFLT` smallint NULL DEFAULT null ,
  `FTDCBFRM` smallint NULL DEFAULT null ,
  `FTDCBFLM` smallint NULL DEFAULT null ,
  `FTDCBFRP` smallint NULL DEFAULT null ,
  `FTDCBFLP` smallint NULL DEFAULT null ,
  `FTDCBFRB` smallint NULL DEFAULT null ,
  `FTDCBFLB` smallint NULL DEFAULT null ,
  `FTDCBFOA` smallint NULL DEFAULT null ,
  `FTDCBFOS` varchar(60) NULL DEFAULT null ,
  `FTDOTHI` smallint NULL DEFAULT null ,
  `FTDOTHIS` varchar(60) NULL DEFAULT null ,
  PRIMARY KEY (`InstrID`) )
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;

ALTER TABLE `udsftldimagingdiag` ADD CONSTRAINT `udsftldimagingdiag__InstrID`
 FOREIGN KEY (`InstrID` )
 REFERENCES `instrumenttracking` (`InstrID`)
 ON DELETE NO ACTION
 ON UPDATE NO ACTION, ADD INDEX `udsftldimagingdiag__InstrID` (`InstrID` ASC);


DROP TABLE IF EXISTS `udsftldiri`;
CREATE TABLE IF NOT EXISTS `udsftldiri` (
  `InstrID` INT NOT NULL ,
  `FTDCPC5F` smallint NULL DEFAULT null ,
  `FTDINSEX` smallint NULL DEFAULT null ,
  `FTDINFMO` smallint NULL DEFAULT null ,
  `FTDINFYR` smallint NULL DEFAULT null ,
  `FTDINFRE` smallint NULL DEFAULT null ,
  `FTDFEEL` smallint NULL DEFAULT null ,
  `FTDDIFF` smallint NULL DEFAULT null ,
  `FTDSORR` smallint NULL DEFAULT null ,
  `FTDSIDE` smallint NULL DEFAULT null ,
  `FTDADVAN` smallint NULL DEFAULT null ,
  `FTDIMAG` smallint NULL DEFAULT null ,
  `FTDMISF` smallint NULL DEFAULT null ,
  `FTDWASTE` smallint NULL DEFAULT null ,
  `FTDPITY` smallint NULL DEFAULT null ,
  `FTDQTOUC` smallint NULL DEFAULT null ,
  `FTDSIDES` smallint NULL DEFAULT null ,
  `FTDSOFTH` smallint NULL DEFAULT null ,
  `FTDUPSET` smallint NULL DEFAULT null ,
  `FTDCRITI` smallint NULL DEFAULT null ,
  `FTDIRIEC` smallint NULL DEFAULT null ,
  `FTDIRIPT` smallint NULL DEFAULT null ,
  PRIMARY KEY (`InstrID`) )
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;

ALTER TABLE `udsftldiri` ADD CONSTRAINT `udsftldiri__InstrID`
 FOREIGN KEY (`InstrID` )
 REFERENCES `instrumenttracking` (`InstrID`)
 ON DELETE NO ACTION
 ON UPDATE NO ACTION, ADD INDEX `udsftldiri__InstrID` (`InstrID` ASC);


DROP TABLE IF EXISTS `udsftldneuropsych`;
CREATE TABLE IF NOT EXISTS `udsftldneuropsych` (
  `InstrID` INT NOT NULL ,
  `FTDBENTC` smallint NULL DEFAULT null ,
  `FTDVERFC` smallint NULL DEFAULT null ,
  `FTDVERFN` smallint NULL DEFAULT null ,
  `FTDVERNF` smallint NULL DEFAULT null ,
  `FTDVERLC` smallint NULL DEFAULT null ,
  `FTDVERLR` smallint NULL DEFAULT null ,
  `FTDVERLN` smallint NULL DEFAULT null ,
  `FTDVERTN` smallint NULL DEFAULT null ,
  `FTDVERTE` smallint NULL DEFAULT null ,
  `FTDVERTI` smallint NULL DEFAULT null ,
  `FTDWORRC` smallint NULL DEFAULT null ,
  `FTDWORRS` smallint NULL DEFAULT null ,
  `FTDWORRR` smallint NULL DEFAULT null ,
  `FTDWORIC` smallint NULL DEFAULT null ,
  `FTDWORIS` smallint NULL DEFAULT null ,
  `FTDWORIR` smallint NULL DEFAULT null ,
  `FTDWORIP` smallint NULL DEFAULT null ,
  `FTDBENTD` smallint NULL DEFAULT null ,
  `FTDBENRS` smallint NULL DEFAULT null ,
  `FTDSEMMT` smallint NULL DEFAULT null ,
  `FTDSEMAA` smallint NULL DEFAULT null ,
  `FTDSEMTA` smallint NULL DEFAULT null ,
  `FTDSEMSU` smallint NULL DEFAULT null ,
  `FTDANASW` smallint NULL DEFAULT null ,
  `FTDANAOW` smallint NULL DEFAULT null ,
  `FTDANATS` smallint NULL DEFAULT null ,
  `FTDSENAS` smallint NULL DEFAULT null ,
  `FTDSENOS` smallint NULL DEFAULT null ,
  `FTDSENSR` smallint NULL DEFAULT null ,
  `FTDSENPR` smallint NULL DEFAULT null ,
  `FTDNOUNC` smallint NULL DEFAULT null ,
  `FTDVERBC` smallint NULL DEFAULT null ,
  `FTDRATIO` decimal(5,2) NULL DEFAULT null ,
  `FTDREAAS` smallint NULL DEFAULT null ,
  `FTDREAOS` smallint NULL DEFAULT null ,
  `FTDREASR` smallint NULL DEFAULT null ,
  `FTDREAPR` smallint NULL DEFAULT null ,
  PRIMARY KEY (`InstrID`) )
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;

ALTER TABLE `udsftldneuropsych` ADD CONSTRAINT `udsftldneuropsych__InstrID`
 FOREIGN KEY (`InstrID` )
 REFERENCES `instrumenttracking` (`InstrID`)
 ON DELETE NO ACTION
 ON UPDATE NO ACTION, ADD INDEX `udsftldneuropsych__InstrID` (`InstrID` ASC);


DROP TABLE IF EXISTS `udsftldrsms`;
CREATE TABLE IF NOT EXISTS `udsftldrsms` (
  `InstrID` INT NOT NULL ,
  `FTDCPC6F` smallint NULL DEFAULT null ,
  `FTDALTER` smallint NULL DEFAULT null ,
  `FTDEMOT` smallint NULL DEFAULT null ,
  `FTDACROS` smallint NULL DEFAULT null ,
  `FTDCONV` smallint NULL DEFAULT null ,
  `FTDINTUI` smallint NULL DEFAULT null ,
  `FTDJOKE` smallint NULL DEFAULT null ,
  `FTDIMAGP` smallint NULL DEFAULT null ,
  `FTDINAPP` smallint NULL DEFAULT null ,
  `FTDCHBEH` smallint NULL DEFAULT null ,
  `FTDADBEH` smallint NULL DEFAULT null ,
  `FTDLYING` smallint NULL DEFAULT null ,
  `FTDGOODF` smallint NULL DEFAULT null ,
  `FTDREGUL` smallint NULL DEFAULT null ,
  `FTDSMSCR` smallint NULL DEFAULT null ,
  `FTDSPSCR` smallint NULL DEFAULT null ,
  `FTDRSMST` smallint NULL DEFAULT null ,
  PRIMARY KEY (`InstrID`) )
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;

ALTER TABLE `udsftldrsms` ADD CONSTRAINT `udsftldrsms__InstrID`
 FOREIGN KEY (`InstrID` )
 REFERENCES `instrumenttracking` (`InstrID`)
 ON DELETE NO ACTION
 ON UPDATE NO ACTION, ADD INDEX `udsftldrsms__InstrID` (`InstrID` ASC);


DROP TABLE IF EXISTS `udsftldsboc`;
CREATE TABLE IF NOT EXISTS `udsftldsboc` (
  `InstrID` INT NOT NULL ,
  `FTDSELF` smallint NULL DEFAULT null ,
  `FTDBADLY` smallint NULL DEFAULT null ,
  `FTDDEPR` smallint NULL DEFAULT null ,
  `FTDEMOTD` smallint NULL DEFAULT null ,
  `FTDLSELF` smallint NULL DEFAULT null ,
  `FTDDISR` smallint NULL DEFAULT null ,
  `FTDBELCH` smallint NULL DEFAULT null ,
  `FTDGIGG` smallint NULL DEFAULT null ,
  `FTDPRIV` smallint NULL DEFAULT null ,
  `FTDNEGAT` smallint NULL DEFAULT null ,
  `FTDECOMM` smallint NULL DEFAULT null ,
  `FTDINAPJ` smallint NULL DEFAULT null ,
  `FTDFAILA` smallint NULL DEFAULT null ,
  `FTDRESIS` smallint NULL DEFAULT null ,
  `FTDINTER` smallint NULL DEFAULT null ,
  `FTDVERBA` smallint NULL DEFAULT null ,
  `FTDPHYSI` smallint NULL DEFAULT null ,
  `FTDTOPIC` smallint NULL DEFAULT null ,
  `FTDPROTO` smallint NULL DEFAULT null ,
  `FTDPREO` smallint NULL DEFAULT null ,
  `FTDFINI` smallint NULL DEFAULT null ,
  `FTDACTED` smallint NULL DEFAULT null ,
  `FTDABS` smallint NULL DEFAULT null ,
  `FTDFEEDB` smallint NULL DEFAULT null ,
  `FTDFRUST` smallint NULL DEFAULT null ,
  `FTDANXI` smallint NULL DEFAULT null ,
  `FTDNERVO` smallint NULL DEFAULT null ,
  `FTDNDIAG` smallint NULL DEFAULT null ,
  `FTDSTIMB` smallint NULL DEFAULT null ,
  `FTDSTIME` smallint NULL DEFAULT null ,
  `FTDOBJEC` smallint NULL DEFAULT null ,
  `FTDCIRCU` smallint NULL DEFAULT null ,
  `FTDPERSE` smallint NULL DEFAULT null ,
  `FTDREPEA` smallint NULL DEFAULT null ,
  `FTDANECD` smallint NULL DEFAULT null ,
  `FTDDINIT` smallint NULL DEFAULT null ,
  `FTDDELAY` smallint NULL DEFAULT null ,
  `FTDADDVE` smallint NULL DEFAULT null ,
  `FTDFLUCT` smallint NULL DEFAULT null ,
  `FTDLOSTT` smallint NULL DEFAULT null ,
  `FTDREPRU` smallint NULL DEFAULT null ,
  `FTDTRAIN` smallint NULL DEFAULT null ,
  `FTDDISCL` smallint NULL DEFAULT null ,
  `FTDSPONT` smallint NULL DEFAULT null ,
  `FTDSPONR` smallint NULL DEFAULT null ,
  `FTDSTOOD` smallint NULL DEFAULT null ,
  `FTDTOUCH` smallint NULL DEFAULT null ,
  `FTDDSOCI` smallint NULL DEFAULT null ,
  `FTDEXAGG` smallint NULL DEFAULT null ,
  `FTDSBTOT` smallint NULL DEFAULT null ,
  `FTDSBCTO` smallint NULL DEFAULT null ,
  `FTDLENGT` smallint NULL DEFAULT null ,
  PRIMARY KEY (`InstrID`) )
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;

ALTER TABLE `udsftldsboc` ADD CONSTRAINT `udsftldsboc__InstrID`
 FOREIGN KEY (`InstrID` )
 REFERENCES `instrumenttracking` (`InstrID`)
 ON DELETE NO ACTION
 ON UPDATE NO ACTION, ADD INDEX `udsftldsboc__InstrID` (`InstrID` ASC);


DROP TABLE IF EXISTS `udsftldsnq`;
CREATE TABLE IF NOT EXISTS `udsftldsnq` (
  `InstrID` INT NOT NULL ,
  `FTDCPC2F` smallint NULL DEFAULT null ,
  `FTDHAIRD` smallint NULL DEFAULT null ,
  `FTDSPIT` smallint NULL DEFAULT null ,
  `FTDNOSE` smallint NULL DEFAULT null ,
  `FTDCOAGE` smallint NULL DEFAULT null ,
  `FTDCRY` smallint NULL DEFAULT null ,
  `FTDCUT` smallint NULL DEFAULT null ,
  `FTDYTRIP` smallint NULL DEFAULT null ,
  `FTDEATP` smallint NULL DEFAULT null ,
  `FTDTELLA` smallint NULL DEFAULT null ,
  `FTDOPIN` smallint NULL DEFAULT null ,
  `FTDLAUGH` smallint NULL DEFAULT null ,
  `FTDSHIRT` smallint NULL DEFAULT null ,
  `FTDKEEPM` smallint NULL DEFAULT null ,
  `FTDPICKN` smallint NULL DEFAULT null ,
  `FTDOVER` smallint NULL DEFAULT null ,
  `FTDEATR` smallint NULL DEFAULT null ,
  `FTDHAIRL` smallint NULL DEFAULT null ,
  `FTDSHIRW` smallint NULL DEFAULT null ,
  `FTDMOVE` smallint NULL DEFAULT null ,
  `FTDHUGS` smallint NULL DEFAULT null ,
  `FTDLOUD` smallint NULL DEFAULT null ,
  `FTDLOST` smallint NULL DEFAULT null ,
  `FTDSNTOT` smallint NULL DEFAULT null ,
  `FTDSNTBS` smallint NULL DEFAULT null ,
  `FTDSNTOS` smallint NULL DEFAULT null ,
  `FTDSNRAT` decimal(5,2) NULL DEFAULT null ,
  PRIMARY KEY (`InstrID`) )
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;

ALTER TABLE `udsftldsnq` ADD CONSTRAINT `udsftldsnq__InstrID`
 FOREIGN KEY (`InstrID` )
 REFERENCES `instrumenttracking` (`InstrID`)
 ON DELETE NO ACTION
 ON UPDATE NO ACTION, ADD INDEX `udsftldsnq__InstrID` (`InstrID` ASC);


DROP TABLE IF EXISTS `udsftldspecimenconsent`;
CREATE TABLE IF NOT EXISTS `udsftldspecimenconsent` (
  `InstrID` INT NOT NULL ,
  `FTDRELCO` smallint NULL DEFAULT null ,
  `FTDSIBBY` smallint NULL DEFAULT null ,
  `FTDCHDBY` smallint NULL DEFAULT null ,
  `FTDSTORE` smallint NULL DEFAULT null ,
  `FTDSLEAR` smallint NULL DEFAULT null ,
  `FTDCOMME` smallint NULL DEFAULT null ,
  PRIMARY KEY (`InstrID`) )
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;

ALTER TABLE `udsftldspecimenconsent` ADD CONSTRAINT `udsftldspecimenconsent__InstrID`
 FOREIGN KEY (`InstrID` )
 REFERENCES `instrumenttracking` (`InstrID`)
 ON DELETE NO ACTION
 ON UPDATE NO ACTION, ADD INDEX `udsftldspecimenconsent__InstrID` (`InstrID` ASC);


DROP TABLE IF EXISTS `udsftldupdrs`;
CREATE TABLE IF NOT EXISTS `udsftldupdrs` (
  `InstrID` INT NOT NULL ,
  `FTDLTFAS` smallint NULL DEFAULT null ,
  `FTDLIMB` smallint NULL DEFAULT null ,
  `FTDBULB` smallint NULL DEFAULT null ,
  `FTDEYE` smallint NULL DEFAULT null ,
  `FTDDYST` smallint NULL DEFAULT null ,
  `FTDIDEO` smallint NULL DEFAULT null ,
  `FTDALIEN` smallint NULL DEFAULT null ,
  `FTDMYOCL` smallint NULL DEFAULT null ,
  `FTDCORTS` smallint NULL DEFAULT null ,
  `FTDGSEV` smallint NULL DEFAULT null ,
  `FTDGSEVX` varchar(60) NULL DEFAULT null ,
  `FTDGTYP` smallint NULL DEFAULT null ,
  `FTDGTYPG` varchar(60) NULL DEFAULT null ,
  `FTDGTYPX` varchar(60) NULL DEFAULT null ,
  PRIMARY KEY (`InstrID`) )
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;

ALTER TABLE `udsftldupdrs` ADD CONSTRAINT `udsftldupdrs__InstrID`
 FOREIGN KEY (`InstrID` )
 REFERENCES `instrumenttracking` (`InstrID`)
 ON DELETE NO ACTION
 ON UPDATE NO ACTION, ADD INDEX `udsftldupdrs__InstrID` (`InstrID` ASC);

 
INSERT INTO versionhistory(module,version,versiondate,major,minor,fix,updaterequired)
VALUES ('lava-crms-nacc-model','3.2.0','2012-10-12',3,2,0,1);
 