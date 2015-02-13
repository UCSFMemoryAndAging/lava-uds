-- only need to add keys for new tables created for UDS 3.0

ALTER TABLE `udsfamilyhistory3` ADD CONSTRAINT `udsfamilyhistory3__InstrID` 
 FOREIGN KEY (`InstrID` )
 REFERENCES `instrumenttracking` (`InstrID` )
 ON DELETE NO ACTION
 ON UPDATE NO ACTION, ADD INDEX `udsfamilyhistory3__InstrID` (`InstrID` ASC) ;
 
 