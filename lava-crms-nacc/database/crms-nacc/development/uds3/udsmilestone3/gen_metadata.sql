DELETE from datadictionary where instance='lava' and scope='crms-nacc' and entity='udsmilestone3';

DELETE from viewproperty where instance='lava' and scope='crms-nacc' and entity='udsmilestone3';

DELETE from hibernateproperty where instance='lava' and scope='crms-nacc' and entity='udsmilestone3';

INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsmilestone3',1,'changemo','1a. Date of status change, month','','',1,'udsmilestone','CHANGEMO',1,'smallint','',1,'null','Date of status change, month','1a.','2015-02-27 16:36:47');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsmilestone3',2,'changedy','1b. Date of status change, day','','',1,'udsmilestone','CHANGEDY',2,'smallint','',1,'null','Date of status change, day','1b.','2015-02-27 16:36:47');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsmilestone3',3,'changeyr','1c. Date of status change, year','','',1,'udsmilestone','CHANGEYR',3,'smallint','',1,'null','Date of status change, year','1c.','2015-02-27 16:36:47');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsmilestone3',4,'protocol','2a. UDS data collection status changed; subject\'s new status is:','','',1,'udsmilestone','PROTOCOL',4,'smallint','',1,'null','UDS data collection status changed; subject\'s new status is:','2a.','2015-02-27 16:36:47');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsmilestone3',5,'aconsent','2a1. Autopsy consent on file?','','',1,'udsmilestone','ACONSENT',5,'smallint','',1,'null','Autopsy consent on file?','2a1.','2015-02-27 16:36:47');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsmilestone3',6,'recogim','2b1. Subject is too cognitively impaired','','',1,'udsmilestone','RECOGIM',6,'smallint','',1,'null','Subject is too cognitively impaired','2b1.','2015-02-27 16:36:47');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsmilestone3',7,'rephyill','2b2. Subject is too ill or physically impaired','','',1,'udsmilestone','REPHYILL',7,'smallint','',1,'null','Subject is too ill or physically impaired','2b2.','2015-02-27 16:36:47');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsmilestone3',8,'rerefuse','2b3. Subject refuses neuropsychological testing or clinical exam','','',1,'udsmilestone','REREFUSE',8,'smallint','',1,'null','Subject refuses neuropsychological testing or clinical exam','2b3.','2015-02-27 16:36:47');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsmilestone3',9,'renavail','2b4. Subject or co-participant unreachable, not available, or moved away','','',1,'udsmilestone','RENAVAIL',9,'smallint','',1,'null','Subject or co-participant unreachable, not available, or moved away','2b4.','2015-02-27 16:36:47');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsmilestone3',10,'renurse','2b5. Subject has permanently entered nursing home','','',1,'udsmilestone','RENURSE',10,'smallint','',1,'null','Subject has permanently entered nursing home','2b5.','2015-02-27 16:36:47');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsmilestone3',11,'nursemo','2b5a. Date permanently moved to nursing home, month','','',1,'udsmilestone','NURSEMO',11,'smallint','',1,'null','Date permanently moved to nursing home, month','2b5a.','2015-02-27 16:36:47');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsmilestone3',12,'nursedy','2b5b. Date permanently moved to nursing home, day','','',1,'udsmilestone','NURSEDY',12,'smallint','',1,'null','Date permanently moved to nursing home, day','2b5b.','2015-02-27 16:36:47');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsmilestone3',13,'nurseyr','2b5c. Date permanently moved to nursing home, year','','',1,'udsmilestone','NURSEYR',13,'smallint','',1,'null','Date permanently moved to nursing home, year','2b5c.','2015-02-27 16:36:47');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsmilestone3',14,'rejoin','2b6. Subject is rejoining ADC','','',1,'udsmilestone','REJOIN',14,'smallint','',1,'null','Subject is rejoining ADC','2b6.','2015-02-27 16:36:47');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsmilestone3',15,'ftlddisc','3. Subject will no longer receive FTLD Module follow-up, but annual in-person UDS visits will continue','','',1,'udsmilestone','FTLDDISC',15,'smallint','',1,'null','Subject will no longer receive FTLD Module follow-up, but annual in-person UDS visits will continue','3.','2015-02-27 16:36:47');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsmilestone3',16,'ftldreas','3a. FTLD discontinued reason','','',1,'udsmilestone','FTLDREAS',16,'smallint','',1,'null','FTLD discontinued reason','3a.','2015-02-27 16:36:47');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsmilestone3',17,'ftldreax','3a1. Other, specify','','',1,'udsmilestone','FTLDREAX',17,'varchar','60',1,'null','Other, specify','3a1.','2015-02-27 16:36:47');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsmilestone3',18,'deceased','4a. Subject has died','','',1,'udsmilestone','DECEASED',18,'smallint','',1,'null','Subject has died','4a.','2015-02-27 16:36:47');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsmilestone3',19,'discont','4b. Subject has been dropped from ADC','','',1,'udsmilestone','DISCONT',19,'smallint','',1,'null','Subject has been dropped from ADC','4b.','2015-02-27 16:36:47');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsmilestone3',20,'deathmo','5a1. Date of death, month','','',1,'udsmilestone','DEATHMO',20,'smallint','',1,'null','Date of death, month','5a1.','2015-02-27 16:36:47');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsmilestone3',21,'deathdy','5a2. Date of death, day','','',1,'udsmilestone','DEATHDY',21,'smallint','',1,'null','Date of death, day','5a2.','2015-02-27 16:36:47');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsmilestone3',22,'deathyr','5a3. Date of death, year','','',1,'udsmilestone','DEATHYR',22,'smallint','',1,'null','Date of death, year','5a3.','2015-02-27 16:36:47');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsmilestone3',23,'autopsy','5b. ADC autopsy','','',1,'udsmilestone','AUTOPSY',23,'smallint','',1,'null','ADC autopsy','5b.','2015-02-27 16:36:47');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsmilestone3',24,'discmo','6a1. Date dropped from ADC, month','','',1,'udsmilestone','DISCMO',24,'smallint','',1,'null','Date dropped from ADC, month','6a1.','2015-02-27 16:36:47');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsmilestone3',25,'discdy','6a2. Date dropped from ADC, day','','',1,'udsmilestone','DISCDY',25,'smallint','',1,'null','Date dropped from ADC, day','6a2.','2015-02-27 16:36:47');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsmilestone3',26,'discyr','6a3. Date dropped from ADC, year','','',1,'udsmilestone','DISCYR',26,'smallint','',1,'null','Date dropped from ADC, year','6a3.','2015-02-27 16:36:47');
INSERT INTO datadictionary (`instance`,`scope`,`entity`,`prop_order`,`prop_name`,`prop_description`,`data_values`,`data_calculation`,`required`,`db_table`,`db_column`,`db_order`,`db_datatype`,`db_datalength`,`db_nullable`,`db_default`,`notes`,`legacy_column`,`modified`) VALUES('lava','crms-nacc','udsmilestone3',27,'dropreas','6b. Primary reason subject discontinued ADC participation','','',1,'udsmilestone','DROPREAS',27,'smallint','',1,'null','Primary reason subject discontinued ADC participation','6b.','2015-02-27 16:36:47');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsmilestone3.changemo','en','lava','crms-nacc',NULL,'udsmilestone3','changemo',NULL,'r','scale','Yes','Date of status change, month','1a.',NULL,35,0,NULL,'uds.m1.month',NULL,1,'1a. Date of status change, month','2015-02-27 17:04:11');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsmilestone3.changedy','en','lava','crms-nacc',NULL,'udsmilestone3','changedy',NULL,'r','scale','Yes','Date of status change, day','1b.',NULL,35,0,NULL,'uds.m1.day',NULL,2,'1b. Date of status change, day','2015-02-27 17:04:11');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsmilestone3.changeyr','en','lava','crms-nacc',NULL,'udsmilestone3','changeyr',NULL,'r','scale','Yes','Date of status change, year','1c.',NULL,35,0,NULL,'uds.m1.year',NULL,3,'1c. Date of status change, year','2015-02-27 17:04:11');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsmilestone3.protocol','en','lava','crms-nacc',NULL,'udsmilestone3','protocol',NULL,'r','scale','Yes','UDS data collection status changed; subject\'s new status is:','2a.',NULL,35,0,NULL,'uds.v3.m1.protocol',NULL,4,'2a. UDS data collection status changed; subject\'s new status is:','2015-02-27 17:04:11');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsmilestone3.aconsent','en','lava','crms-nacc',NULL,'udsmilestone3','aconsent',NULL,'r','scale','Yes','2a1. Autopsy consent on file?','',NULL,35,0,NULL,'uds.noYes01',NULL,5,'2a1. Autopsy consent on file?','2015-02-27 17:04:11');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsmilestone3.recogim','en','lava','crms-nacc',NULL,'udsmilestone3','recogim',NULL,'r','scale','Yes','2b1. Subject is too cognitively impaired','',NULL,35,0,NULL,'uds.noYes01',NULL,6,'2b1. Subject is too cognitively impaired','2015-02-27 17:04:11');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsmilestone3.rephyill','en','lava','crms-nacc',NULL,'udsmilestone3','rephyill',NULL,'r','scale','Yes','2b2. Subject is too ill or physically impaired','',NULL,35,0,NULL,'uds.noYes01',NULL,7,'2b2. Subject is too ill or physically impaired','2015-02-27 17:04:11');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsmilestone3.rerefuse','en','lava','crms-nacc',NULL,'udsmilestone3','rerefuse',NULL,'r','scale','Yes','2b3. Subject refuses neuropsychological testing or clinical exam','',NULL,35,0,NULL,'uds.noYes01',NULL,8,'2b3. Subject refuses neuropsychological testing or clinical exam','2015-02-27 17:04:11');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsmilestone3.renavail','en','lava','crms-nacc',NULL,'udsmilestone3','renavail',NULL,'r','scale','Yes','2b4. Subject or co-participant unreachable, not available, or moved away','',NULL,35,0,NULL,'uds.noYes01',NULL,9,'2b4. Subject or co-participant unreachable, not available, or moved away','2015-02-27 17:04:11');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsmilestone3.renurse','en','lava','crms-nacc',NULL,'udsmilestone3','renurse',NULL,'r','scale','Yes','2b5. Subject has permanently entered nursing home','',NULL,35,0,NULL,'uds.noYes01',NULL,10,'2b5. Subject has permanently entered nursing home','2015-02-27 17:04:11');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsmilestone3.nurseMo','en','lava','crms-nacc',NULL,'udsmilestone3','nurseMo',NULL,'r','range','Yes','2b5a. Date permanently moved to nursing home, month','',NULL,35,0,NULL,'uds.m1.month',NULL,11,'2b5a. Date permanently moved to nursing home, month','2015-02-27 17:04:11');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsmilestone3.nurseDy','en','lava','crms-nacc',NULL,'udsmilestone3','nurseDy',NULL,'r','range','Yes','2b5b. Date permanently moved to nursing home, day','',NULL,35,0,NULL,'uds.m1.day',NULL,12,'2b5b. Date permanently moved to nursing home, day','2015-02-27 17:04:11');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsmilestone3.nurseYr','en','lava','crms-nacc',NULL,'udsmilestone3','nurseYr',NULL,'r','range','Yes','2b5c. Date permanently moved to nursing home, year','',NULL,35,0,NULL,'uds.m1.year',NULL,13,'2b5c. Date permanently moved to nursing home, year','2015-02-27 17:04:11');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsmilestone3.rejoin','en','lava','crms-nacc',NULL,'udsmilestone3','rejoin',NULL,'r','scale','Yes','2b6. Subject is rejoining ADC','',NULL,35,0,NULL,'uds.noYes01',NULL,14,'2b6. Subject is rejoining ADC','2015-02-27 17:04:11');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsmilestone3.ftlddisc','en','lava','crms-nacc',NULL,'udsmilestone3','ftlddisc',NULL,'r','scale','Yes','Subject will no longer receive FTLD Module follow-up, but annual in-person UDS visits will continue','3.',NULL,35,0,NULL,'uds.noYes01',NULL,15,'3. Subject will no longer receive FTLD Module follow-up, but annual in-person UDS visits will continue','2015-02-27 17:04:11');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsmilestone3.ftldreas','en','lava','crms-nacc',NULL,'udsmilestone3','ftldreas',NULL,'r','scale','Yes','3a. FTLD discontinued reason','',NULL,35,0,NULL,'uds.m1.ftldreas',NULL,16,'3a. FTLD discontinued reason','2015-02-27 17:04:11');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsmilestone3.ftldreax','en','lava','crms-nacc',NULL,'udsmilestone3','ftldreax',NULL,'r','string','Yes','3a1. Other, specify','',60,35,0,'onkeypress="UDS_onlyNaccCharactersAllowed(event)"','',NULL,17,'3a1. Other, specify','2015-02-27 17:04:11');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsmilestone3.deceased','en','lava','crms-nacc',NULL,'udsmilestone3','deceased',NULL,'r','scale','Yes','Subject has died','4a.',NULL,35,0,NULL,'uds.noYes01',NULL,18,'4a. Subject has died','2015-02-27 17:04:11');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsmilestone3.discont','en','lava','crms-nacc',NULL,'udsmilestone3','discont',NULL,'r','scale','Yes','Subject has been dropped from ADC','4b.',NULL,35,0,NULL,'uds.noYes01',NULL,19,'4b. Subject has been dropped from ADC','2015-02-27 17:04:11');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsmilestone3.deathMo','en','lava','crms-nacc',NULL,'udsmilestone3','deathMo',NULL,'r','range','Yes','Date of death, month','5a1.',NULL,35,0,NULL,'uds.m1.month',NULL,20,'5a1. Date of death, month','2015-02-27 17:04:11');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsmilestone3.deathDy','en','lava','crms-nacc',NULL,'udsmilestone3','deathDy',NULL,'r','range','Yes','Date of death, day','5a2.',NULL,35,0,NULL,'uds.m1.day',NULL,21,'5a2. Date of death, day','2015-02-27 17:04:11');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsmilestone3.deathYr','en','lava','crms-nacc',NULL,'udsmilestone3','deathYr',NULL,'r','range','Yes','Date of death, year','5a3.',NULL,35,0,NULL,'uds.m1.year',NULL,22,'5a3. Date of death, year','2015-02-27 17:04:11');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsmilestone3.autopsy','en','lava','crms-nacc',NULL,'udsmilestone3','autopsy',NULL,'r','scale','Yes','ADC autopsy','5b.',NULL,35,0,NULL,'uds.m1.autopsy',NULL,23,'5b. ADC autopsy','2015-02-27 17:04:11');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsmilestone3.discMo','en','lava','crms-nacc',NULL,'udsmilestone3','discMo',NULL,'r','range','Yes','Date dropped from ADC, month','6a1.',NULL,35,0,NULL,'uds.m1.month',NULL,24,'6a1. Date dropped from ADC, month','2015-02-27 17:04:11');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsmilestone3.discDy','en','lava','crms-nacc',NULL,'udsmilestone3','discDy',NULL,'r','range','Yes','Date dropped from ADC, day','6a2.',NULL,35,0,NULL,'uds.m1.day',NULL,25,'6a2. Date dropped from ADC, day','2015-02-27 17:04:11');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsmilestone3.discYr','en','lava','crms-nacc',NULL,'udsmilestone3','discYr',NULL,'r','range','Yes','Date dropped from ADC, year','6a3.',NULL,35,0,NULL,'uds.m1.year',NULL,26,'6a3. Date dropped from ADC, year','2015-02-27 17:04:11');
INSERT INTO viewproperty (`messageCode`,`locale`,`instance`,`scope`,`prefix`,`entity`,`property`,`section`,`context`,`style`,`required`,`label`,`label2`,`maxLength`,`size`,`indentLevel`,`attributes`,`list`,`listAttributes`,`propOrder`,`quickHelp`,`modified`) VALUES('*.udsmilestone3.dropreas','en','lava','crms-nacc',NULL,'udsmilestone3','dropreas',NULL,'r','scale','Yes','Primary reason subject discontinued ADC participation','6b.',NULL,35,0,NULL,'uds.m1.dropreas',NULL,27,'6b. Primary reason subject discontinued ADC participation','2015-02-27 17:04:11');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsmilestone3','changemo','udsmilestone','CHANGEMO','smallint',NULL,5,0,1,'changemo','short',NULL,'No','2015-02-27 17:04:11');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsmilestone3','changedy','udsmilestone','CHANGEDY','smallint',NULL,5,0,2,'changedy','short',NULL,'No','2015-02-27 17:04:11');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsmilestone3','changeyr','udsmilestone','CHANGEYR','smallint',NULL,5,0,3,'changeyr','short',NULL,'No','2015-02-27 17:04:11');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsmilestone3','protocol','udsmilestone','PROTOCOL','smallint',NULL,5,0,4,'protocol','short',NULL,'No','2015-02-27 17:04:11');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsmilestone3','aconsent','udsmilestone','ACONSENT','smallint',NULL,5,0,5,'aconsent','short',NULL,'No','2015-02-27 17:04:11');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsmilestone3','recogim','udsmilestone','RECOGIM','smallint',NULL,5,0,6,'recogim','short',NULL,'No','2015-02-27 17:04:11');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsmilestone3','rephyill','udsmilestone','REPHYILL','smallint',NULL,5,0,7,'rephyill','short',NULL,'No','2015-02-27 17:04:11');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsmilestone3','rerefuse','udsmilestone','REREFUSE','smallint',NULL,5,0,8,'rerefuse','short',NULL,'No','2015-02-27 17:04:11');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsmilestone3','renavail','udsmilestone','RENAVAIL','smallint',NULL,5,0,9,'renavail','short',NULL,'No','2015-02-27 17:04:11');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsmilestone3','renurse','udsmilestone','RENURSE','smallint',NULL,5,0,10,'renurse','short',NULL,'No','2015-02-27 17:04:11');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsmilestone3','nursemo','udsmilestone','NURSEMO','smallint',NULL,5,0,11,'nursemo','short',NULL,'No','2015-02-27 17:04:11');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsmilestone3','nursedy','udsmilestone','NURSEDY','smallint',NULL,5,0,12,'nursedy','short',NULL,'No','2015-02-27 17:04:11');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsmilestone3','nurseyr','udsmilestone','NURSEYR','smallint',NULL,5,0,13,'nurseyr','short',NULL,'No','2015-02-27 17:04:11');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsmilestone3','rejoin','udsmilestone','REJOIN','smallint',NULL,5,0,14,'rejoin','short',NULL,'No','2015-02-27 17:04:11');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsmilestone3','ftlddisc','udsmilestone','FTLDDISC','smallint',NULL,5,0,15,'ftlddisc','short',NULL,'No','2015-02-27 17:04:11');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsmilestone3','ftldreas','udsmilestone','FTLDREAS','smallint',NULL,5,0,16,'ftldreas','short',NULL,'No','2015-02-27 17:04:11');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsmilestone3','ftldreax','udsmilestone','FTLDREAX','varchar',60,NULL,NULL,17,'ftldreax','string',NULL,'No','2015-02-27 17:04:11');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsmilestone3','deceased','udsmilestone','DECEASED','smallint',NULL,5,0,18,'deceased','short',NULL,'No','2015-02-27 17:04:11');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsmilestone3','discont','udsmilestone','DISCONT','smallint',NULL,5,0,19,'discont','short',NULL,'No','2015-02-27 17:04:11');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsmilestone3','deathmo','udsmilestone','DEATHMO','smallint',NULL,5,0,20,'deathmo','short',NULL,'No','2015-02-27 17:04:11');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsmilestone3','deathdy','udsmilestone','DEATHDY','smallint',NULL,5,0,21,'deathdy','short',NULL,'No','2015-02-27 17:04:11');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsmilestone3','deathyr','udsmilestone','DEATHYR','smallint',NULL,5,0,22,'deathyr','short',NULL,'No','2015-02-27 17:04:11');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsmilestone3','autopsy','udsmilestone','AUTOPSY','smallint',NULL,5,0,23,'autopsy','short',NULL,'No','2015-02-27 17:04:11');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsmilestone3','discmo','udsmilestone','DISCMO','smallint',NULL,5,0,24,'discmo','short',NULL,'No','2015-02-27 17:04:11');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsmilestone3','discdy','udsmilestone','DISCDY','smallint',NULL,5,0,25,'discdy','short',NULL,'No','2015-02-27 17:04:11');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsmilestone3','discyr','udsmilestone','DISCYR','smallint',NULL,5,0,26,'discyr','short',NULL,'No','2015-02-27 17:04:11');
INSERT INTO hibernateproperty (`instance`,`scope`,`entity`,`property`,`dbTable`,`dbColumn`,`dbType`,`dbLength`,`dbPrecision`,`dbScale`,`dbOrder`,`hibernateProperty`,`hibernateType`,`hibernateClass`,`hibernateNotNull`,`modified`) VALUES('lava','crms-nacc','udsmilestone3','dropreas','udsmilestone','DROPREAS','smallint',NULL,5,0,27,'dropreas','short',NULL,'No','2015-02-27 17:04:11');