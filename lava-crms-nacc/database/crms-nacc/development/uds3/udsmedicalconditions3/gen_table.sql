use lava_demo;

DROP TABLE IF EXISTS `udsmedicalconditions`;
CREATE TABLE IF NOT EXISTS `udsmedicalconditions` (
  `InstrID` INT NOT NULL ,
  `CANCER` smallint NULL DEFAULT null ,
  `CANCSITE` varchar(60) NULL DEFAULT null ,
  `DIABET` smallint NULL DEFAULT null ,
  `MYOINF` smallint NULL DEFAULT null ,
  `CONGHRT` smallint NULL DEFAULT null ,
  `AFIBRILL` smallint NULL DEFAULT null ,
  `HYPERT` smallint NULL DEFAULT null ,
  `ANGINA` smallint NULL DEFAULT null ,
  `HYPCHOL` smallint NULL DEFAULT null ,
  `VB12DEF` smallint NULL DEFAULT null ,
  `THYDIS` smallint NULL DEFAULT null ,
  `ARTH` smallint NULL DEFAULT null ,
  `ARTYPE` smallint NULL DEFAULT null ,
  `ARTYPEX` varchar(60) NULL DEFAULT null ,
  `ARTUPEX` smallint NULL DEFAULT null ,
  `ARTLOEX` smallint NULL DEFAULT null ,
  `ARTSPIN` smallint NULL DEFAULT null ,
  `ARTUNKN` smallint NULL DEFAULT null ,
  `URINEINC` smallint NULL DEFAULT null ,
  `BOWLINC` smallint NULL DEFAULT null ,
  `SLEEPAP` smallint NULL DEFAULT null ,
  `REMDIS` smallint NULL DEFAULT null ,
  `HYPOSOM` smallint NULL DEFAULT null ,
  `SLEEPOTH` smallint NULL DEFAULT null ,
  `SLEEPOTX` varchar(60) NULL DEFAULT null ,
  `ANGIOCP` smallint NULL DEFAULT null ,
  `ANGIOPCI` smallint NULL DEFAULT null ,
  `PACEMAKE` smallint NULL DEFAULT null ,
  `HVALVE` smallint NULL DEFAULT null ,
  `ANTIENC` smallint NULL DEFAULT null ,
  `ANTIENCX` varchar(60) NULL DEFAULT null ,
  `OTHCOND` smallint NULL DEFAULT null ,
  `OTHCONDX` varchar(60) NULL DEFAULT null ,
  PRIMARY KEY (`InstrID`) )
ENGINE = InnoDB;

ALTER TABLE `udsmedicalconditions` ADD CONSTRAINT `udsmedicalconditions__InstrID`
 FOREIGN KEY (`InstrID` )
 REFERENCES `instrumenttracking` (`InstrID`)
 ON DELETE NO ACTION
 ON UPDATE NO ACTION, ADD INDEX `udsmedicalconditions__InstrID` (`InstrID` ASC);

INSERT IGNORE into instrument(instrname, tablename, formname, hasversion) values('UDS Medical Conditions','Multiple','LavaWebOnly',1);
