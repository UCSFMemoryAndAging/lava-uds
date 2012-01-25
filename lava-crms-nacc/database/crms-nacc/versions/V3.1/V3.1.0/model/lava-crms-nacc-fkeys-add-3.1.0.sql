ALTER TABLE `mdsstatus` ADD CONSTRAINT `mdsstatus__InstrID` 
 FOREIGN KEY (`InstrID` )
 REFERENCES `instrumenttracking` (`InstrID` )
 ON DELETE NO ACTION
 ON UPDATE NO ACTION, ADD INDEX `mdsstatus__InstrID` (`InstrID` ASC) ;
 
ALTER TABLE `naccpathology` ADD CONSTRAINT `naccpathology__InstrID` 
 FOREIGN KEY (`InstrID` )
 REFERENCES `instrumenttracking` (`InstrID` )
 ON DELETE NO ACTION
 ON UPDATE NO ACTION, ADD INDEX `naccpathology__InstrID` (`InstrID` ASC) ;
 
ALTER TABLE `udsappraisal` ADD CONSTRAINT `udsappraisal__InstrID` 
 FOREIGN KEY (`InstrID` )
 REFERENCES `instrumenttracking` (`InstrID` )
 ON DELETE NO ACTION
 ON UPDATE NO ACTION, ADD INDEX `udsappraisal__InstrID` (`InstrID` ASC) ;
 
ALTER TABLE `udscdr` ADD CONSTRAINT `udscdr__InstrID` 
 FOREIGN KEY (`InstrID` )
 REFERENCES `instrumenttracking` (`InstrID` )
 ON DELETE NO ACTION
 ON UPDATE NO ACTION, ADD INDEX `udscdr__InstrID` (`InstrID` ASC) ;
ALTER TABLE `udsdiagnosis` ADD CONSTRAINT `udsdiagnosis__InstrID` 
 FOREIGN KEY (`InstrID` )
 REFERENCES `instrumenttracking` (`InstrID` )
 ON DELETE NO ACTION
 ON UPDATE NO ACTION, ADD INDEX `udsdiagnosis__InstrID` (`InstrID` ASC) ;
 
ALTER TABLE `udsfamilyhistory1` ADD CONSTRAINT `udsfamilyhistory1__InstrID` 
 FOREIGN KEY (`InstrID` )
 REFERENCES `instrumenttracking` (`InstrID` )
 ON DELETE NO ACTION
 ON UPDATE NO ACTION, ADD INDEX `udsfamilyhistory1__InstrID` (`InstrID` ASC) ;
 
ALTER TABLE `udsfamilyhistory2` ADD CONSTRAINT `udsfamilyhistory2__InstrID` 
 FOREIGN KEY (`InstrID` )
 REFERENCES `instrumenttracking` (`InstrID` )
 ON DELETE NO ACTION
 ON UPDATE NO ACTION, ADD INDEX `udsfamilyhistory2__InstrID` (`InstrID` ASC) ;
 
ALTER TABLE `udsfamilyhistorychildren2` ADD CONSTRAINT `udsfamilyhistorychildren2__InstrID` 
 FOREIGN KEY (`InstrID` )
 REFERENCES `instrumenttracking` (`InstrID` )
 ON DELETE NO ACTION
 ON UPDATE NO ACTION, ADD INDEX `udsfamilyhistorychildren2__InstrID` (`InstrID` ASC) ;
 
ALTER TABLE `udsfamilyhistoryrelatives2` ADD CONSTRAINT `udsfamilyhistoryrelatives2__InstrID` 
 FOREIGN KEY (`InstrID` )
 REFERENCES `instrumenttracking` (`InstrID` )
 ON DELETE NO ACTION
 ON UPDATE NO ACTION, ADD INDEX `udsfamilyhistoryrelatives2__InstrID` (`InstrID` ASC) ;
 
ALTER TABLE `udsfaq` ADD CONSTRAINT `udsfaq__InstrID` 
 FOREIGN KEY (`InstrID` )
 REFERENCES `instrumenttracking` (`InstrID` )
 ON DELETE NO ACTION
 ON UPDATE NO ACTION, ADD INDEX `udsfaq__InstrID` (`InstrID` ASC) ;
 
ALTER TABLE `udsformchecklist` ADD CONSTRAINT `udsformchecklist__InstrID` 
 FOREIGN KEY (`InstrID` )
 REFERENCES `instrumenttracking` (`InstrID` )
 ON DELETE NO ACTION
 ON UPDATE NO ACTION, ADD INDEX `udsformchecklist__InstrID` (`InstrID` ASC) ;
 
ALTER TABLE `udsgds` ADD CONSTRAINT `udsgds__InstrID` 
 FOREIGN KEY (`InstrID` )
 REFERENCES `instrumenttracking` (`InstrID` )
 ON DELETE NO ACTION
 ON UPDATE NO ACTION, ADD INDEX `udsgds__InstrID` (`InstrID` ASC) ;
 
ALTER TABLE `udshachinski` ADD CONSTRAINT `udshachinski__InstrID` 
 FOREIGN KEY (`InstrID` )
 REFERENCES `instrumenttracking` (`InstrID` )
 ON DELETE NO ACTION
 ON UPDATE NO ACTION, ADD INDEX `udshachinski__InstrID` (`InstrID` ASC) ;
 
ALTER TABLE `udshealthhistory` ADD CONSTRAINT `udshealthhistory__InstrID` 
 FOREIGN KEY (`InstrID` )
 REFERENCES `instrumenttracking` (`InstrID` )
 ON DELETE NO ACTION
 ON UPDATE NO ACTION, ADD INDEX `udshealthhistory__InstrID` (`InstrID` ASC) ;
 
ALTER TABLE `udsinformantdemo` ADD CONSTRAINT `udsinformantdemo__InstrID` 
 FOREIGN KEY (`InstrID` )
 REFERENCES `instrumenttracking` (`InstrID` )
 ON DELETE NO ACTION
 ON UPDATE NO ACTION, ADD INDEX `udsinformantdemo__InstrID` (`InstrID` ASC) ;
 
ALTER TABLE `udslabsimaging` ADD CONSTRAINT `udslabsimaging__InstrID` 
 FOREIGN KEY (`InstrID` )
 REFERENCES `instrumenttracking` (`InstrID` )
 ON DELETE NO ACTION
 ON UPDATE NO ACTION, ADD INDEX `udslabsimaging__InstrID` (`InstrID` ASC) ;
 
ALTER TABLE `udsmedications2` ADD CONSTRAINT `udsmedications2__InstrID` 
 FOREIGN KEY (`InstrID` )
 REFERENCES `instrumenttracking` (`InstrID` )
 ON DELETE NO ACTION
 ON UPDATE NO ACTION, ADD INDEX `udsmedications2__InstrID` (`InstrID` ASC) ;
 
ALTER TABLE `udsmedicationsdetails2` ADD CONSTRAINT `udsmedicationsdetails2__InstrID` 
 FOREIGN KEY (`InstrID` )
 REFERENCES `instrumenttracking` (`InstrID` )
 ON DELETE NO ACTION
 ON UPDATE NO ACTION, ADD INDEX `udsmedicationsdetails2__InstrID` (`InstrID` ASC) ;
 
ALTER TABLE `udsmedicationsnon1` ADD CONSTRAINT `udsmedicationsnon1__InstrID` 
 FOREIGN KEY (`InstrID` )
 REFERENCES `instrumenttracking` (`InstrID` )
 ON DELETE NO ACTION
 ON UPDATE NO ACTION, ADD INDEX `udsmedicationsnon1__InstrID` (`InstrID` ASC) ;
 
ALTER TABLE `udsmedicationspre1` ADD CONSTRAINT `udsmedicationspre1__InstrID` 
 FOREIGN KEY (`InstrID` )
 REFERENCES `instrumenttracking` (`InstrID` )
 ON DELETE NO ACTION
 ON UPDATE NO ACTION, ADD INDEX `udsmedicationspre1__InstrID` (`InstrID` ASC) ;
 
ALTER TABLE `udsmedicationsvit1` ADD CONSTRAINT `udsmedicationsvit1__InstrID` 
 FOREIGN KEY (`InstrID` )
 REFERENCES `instrumenttracking` (`InstrID` )
 ON DELETE NO ACTION
 ON UPDATE NO ACTION, ADD INDEX `udsmedicationsvit1__InstrID` (`InstrID` ASC) ;
 
ALTER TABLE `udsmilestone` ADD CONSTRAINT `udsmilestone__InstrID` 
 FOREIGN KEY (`InstrID` )
 REFERENCES `instrumenttracking` (`InstrID` )
 ON DELETE NO ACTION
 ON UPDATE NO ACTION, ADD INDEX `udsmilestone__InstrID` (`InstrID` ASC) ;
 
ALTER TABLE `udsneuropsych` ADD CONSTRAINT `udsneuropsych__InstrID` 
 FOREIGN KEY (`InstrID` )
 REFERENCES `instrumenttracking` (`InstrID` )
 ON DELETE NO ACTION
 ON UPDATE NO ACTION, ADD INDEX `udsneuropsych__InstrID` (`InstrID` ASC) ;
 
ALTER TABLE `udsnpi` ADD CONSTRAINT `udsnpi__InstrID` 
 FOREIGN KEY (`InstrID` )
 REFERENCES `instrumenttracking` (`InstrID` )
 ON DELETE NO ACTION
 ON UPDATE NO ACTION, ADD INDEX `udsnpi__InstrID` (`InstrID` ASC) ;
 
ALTER TABLE `udsphoneinclusion` ADD CONSTRAINT `udsphoneinclusion__InstrID` 
 FOREIGN KEY (`InstrID` )
 REFERENCES `instrumenttracking` (`InstrID` )
 ON DELETE NO ACTION
 ON UPDATE NO ACTION, ADD INDEX `udsphoneinclusion__InstrID` (`InstrID` ASC) ;
 
ALTER TABLE `udsphysical` ADD CONSTRAINT `udsphysical__InstrID` 
 FOREIGN KEY (`InstrID` )
 REFERENCES `instrumenttracking` (`InstrID` )
 ON DELETE NO ACTION
 ON UPDATE NO ACTION, ADD INDEX `udsphysical__InstrID` (`InstrID` ASC) ;
 
ALTER TABLE `udssubjectdemo` ADD CONSTRAINT `udssubjectdemo__InstrID` 
 FOREIGN KEY (`InstrID` )
 REFERENCES `instrumenttracking` (`InstrID` )
 ON DELETE NO ACTION
 ON UPDATE NO ACTION, ADD INDEX `udssubjectdemo__InstrID` (`InstrID` ASC) ;
 
ALTER TABLE `udssymptomsonset` ADD CONSTRAINT `udssymptomsonset__InstrID` 
 FOREIGN KEY (`InstrID` )
 REFERENCES `instrumenttracking` (`InstrID` )
 ON DELETE NO ACTION
 ON UPDATE NO ACTION, ADD INDEX `udssymptomsonset__InstrID` (`InstrID` ASC) ;
 
ALTER TABLE `udstracking` ADD CONSTRAINT `udstracking__InstrID` 
 FOREIGN KEY (`InstrID` )
 REFERENCES `instrumenttracking` (`InstrID` )
 ON DELETE NO ACTION
 ON UPDATE NO ACTION, ADD INDEX `udstracking__InstrID` (`InstrID` ASC) ;
 
ALTER TABLE `udsupdrs` ADD CONSTRAINT `udsupdrs__InstrID` 
 FOREIGN KEY (`InstrID` )
 REFERENCES `instrumenttracking` (`InstrID` )
 ON DELETE NO ACTION
 ON UPDATE NO ACTION, ADD INDEX `udsupdrs__InstrID` (`InstrID` ASC) ;
 
 
 ALTER TABLE `udsvisit` ADD CONSTRAINT `udsvisit__VID` 
 FOREIGN KEY (`VID` )
 REFERENCES `visit` (`VID` )
 ON DELETE NO ACTION
 ON UPDATE NO ACTION, ADD INDEX `udsvisit__VID` (`VID` ASC) ;
 