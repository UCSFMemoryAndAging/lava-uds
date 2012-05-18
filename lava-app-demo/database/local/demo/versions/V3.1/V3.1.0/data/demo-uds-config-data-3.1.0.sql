

-- Consent Type (listName = 'ConsentType')
INSERT INTO `listvalues` (`ListID`,`instance`,`scope`,`ValueKey`,`ValueDesc`,`OrderID`,`modified`) SELECT `ListID`,'lava','crms-app-demo','UDS','UDS (HXXXXX-12345)',0,'2012-01-24 20:57:59' FROM `list` where `ListName`='ConsentType';



-- Referral Sources (listName='Referral Sources')
INSERT INTO `listvalues` (`ListID`,`instance`,`scope`,`ValueKey`,`ValueDesc`,`OrderID`,`modified`) SELECT `ListID`,'lava','crms-app-demo','UDS','CLINIC',0,'2012-01-24 20:57:59' FROM `list` where `ListName`='ReferralSources';
INSERT INTO `listvalues` (`ListID`,`instance`,`scope`,`ValueKey`,`ValueDesc`,`OrderID`,`modified`) SELECT `ListID`,'lava','crms-app-demo','UDS','COMMUNITY',0,'2012-01-24 20:57:59' FROM `list` where `ListName`='ReferralSources';

-- Staff List (listName='StaffList'
INSERT INTO `listvalues` (`ListID`,`instance`,`scope`,`ValueKey`,`ValueDesc`,`OrderID`,`modified`) SELECT `ListID`,'lava','crms-app-demo','GENERAL','Example, J.',0,'2012-01-24 20:57:59' FROM `list` where `ListName`='StaffList';

-- Visit Locations (listName='VisitLocations')
INSERT INTO `listvalues` (`ListID`,`instance`,`scope`,`ValueKey`,`ValueDesc`,`OrderID`,`modified`) SELECT `ListID`,'lava','crms-app-demo','GENERAL','CLINIC',0,'2012-01-24 20:57:59' FROM `list` where `ListName`='VisitLocations';
INSERT INTO `listvalues` (`ListID`,`instance`,`scope`,`ValueKey`,`ValueDesc`,`OrderID`,`modified`) SELECT `ListID`,'lava','crms-app-demo','GENERAL','MRI',0,'2012-01-24 20:57:59' FROM `list` where `ListName`='VisitLocations';


-- Visit Types (listName='VisitType')
INSERT INTO `listvalues` (`ListID`,`instance`,`scope`,`ValueKey`,`ValueDesc`,`OrderID`,`modified`) SELECT `ListID`,'lava','crms-app-demo','UDS','Initial Assessment',0,'2012-01-24 20:57:59' FROM `list` where `ListName`='VisitType';
INSERT INTO `listvalues` (`ListID`,`instance`,`scope`,`ValueKey`,`ValueDesc`,`OrderID`,`modified`) SELECT `ListID`,'lava','crms-app-demo','UDS','Follow Up Assessment',0,'2012-01-24 20:57:59' FROM `list` where `ListName`='VisitType';
INSERT INTO `listvalues` (`ListID`,`instance`,`scope`,`ValueKey`,`ValueDesc`,`OrderID`,`modified`) SELECT `ListID`,'lava','crms-app-demo','UDS','Telephone Follow Up',0,'2012-01-24 20:57:59' FROM `list` where `ListName`='VisitType';
INSERT INTO `listvalues` (`ListID`,`instance`,`scope`,`ValueKey`,`ValueDesc`,`OrderID`,`modified`) SELECT `ListID`,'lava','crms-app-demo','UDS','General Visit',0,'2012-01-24 20:57:59' FROM `list` where `ListName`='VisitType';

/*
-- Query: SELECT * FROM `lava_demo`.`instrument`
-- Date: 2012-01-25 20:27
*/
INSERT INTO `instrument` (InstrID,InstrName,TableName,FormName,Category,HasVersion,modified) VALUES (24,'NACC Pathology','NACCPathology','NACCPathology',NULL,1,'2009-01-25 04:57:36');
INSERT INTO `instrument` (InstrID,InstrName,TableName,FormName,Category,HasVersion,modified) VALUES (79,'UDS Appraisal','Multiple','LavaWebOnly',NULL,1,'2009-01-25 04:57:36');
INSERT INTO `instrument` (InstrID,InstrName,TableName,FormName,Category,HasVersion,modified) VALUES (80,'UDS CDR','Multiple','LavaWebOnly',NULL,1,'2009-01-25 04:57:36');
INSERT INTO `instrument` (InstrID,InstrName,TableName,FormName,Category,HasVersion,modified) VALUES (81,'UDS Diagnosis','Multiple','LavaWebOnly',NULL,1,'2009-01-25 04:57:36');
INSERT INTO `instrument` (InstrID,InstrName,TableName,FormName,Category,HasVersion,modified) VALUES (82,'UDS Family History','Multiple','LavaWebOnly',NULL,1,'2009-01-25 04:57:36');
INSERT INTO `instrument` (InstrID,InstrName,TableName,FormName,Category,HasVersion,modified) VALUES (83,'UDS FAQ','Multiple','LavaWebOnly',NULL,1,'2009-01-25 04:57:36');
INSERT INTO `instrument` (InstrID,InstrName,TableName,FormName,Category,HasVersion,modified) VALUES (84,'UDS GDS','Multiple','LavaWebOnly',NULL,1,'2009-01-25 04:57:36');
INSERT INTO `instrument` (InstrID,InstrName,TableName,FormName,Category,HasVersion,modified) VALUES (85,'UDS Hachinski','Multiple','LavaWebOnly',NULL,1,'2009-01-25 04:57:36');
INSERT INTO `instrument` (InstrID,InstrName,TableName,FormName,Category,HasVersion,modified) VALUES (86,'UDS Health History','Multiple','LavaWebOnly',NULL,1,'2009-01-25 04:57:36');
INSERT INTO `instrument` (InstrID,InstrName,TableName,FormName,Category,HasVersion,modified) VALUES (87,'UDS Informant Demo','Multiple','LavaWebOnly',NULL,1,'2009-01-25 04:57:36');
INSERT INTO `instrument` (InstrID,InstrName,TableName,FormName,Category,HasVersion,modified) VALUES (88,'UDS Labs Imaging','Multiple','LavaWebOnly',NULL,1,'2009-01-25 04:57:36');
INSERT INTO `instrument` (InstrID,InstrName,TableName,FormName,Category,HasVersion,modified) VALUES (89,'UDS Medications','Multiple','LavaWebOnly',NULL,1,'2009-01-25 04:57:36');
INSERT INTO `instrument` (InstrID,InstrName,TableName,FormName,Category,HasVersion,modified) VALUES (90,'UDS NeuroPsych','Multiple','LavaWebOnly',NULL,1,'2009-01-25 04:57:36');
INSERT INTO `instrument` (InstrID,InstrName,TableName,FormName,Category,HasVersion,modified) VALUES (91,'UDS NPI','Multiple','LavaWebOnly',NULL,1,'2009-01-25 04:57:36');
INSERT INTO `instrument` (InstrID,InstrName,TableName,FormName,Category,HasVersion,modified) VALUES (92,'UDS Physical','Multiple','LavaWebOnly',NULL,1,'2009-01-25 04:57:36');
INSERT INTO `instrument` (InstrID,InstrName,TableName,FormName,Category,HasVersion,modified) VALUES (93,'UDS Subject Demo','Multiple','LavaWebOnly',NULL,1,'2009-01-25 04:57:36');
INSERT INTO `instrument` (InstrID,InstrName,TableName,FormName,Category,HasVersion,modified) VALUES (94,'UDS Symptoms Onset','Multiple','LavaWebOnly',NULL,1,'2009-01-25 04:57:36');
INSERT INTO `instrument` (InstrID,InstrName,TableName,FormName,Category,HasVersion,modified) VALUES (95,'UDS UPDRS','Multiple','LavaWebOnly',NULL,1,'2009-01-25 04:57:36');
INSERT INTO `instrument` (InstrID,InstrName,TableName,FormName,Category,HasVersion,modified) VALUES (97,'UDS Milestone','Multiple','LavaWebOnly',NULL,1,'2009-01-25 04:57:36');
INSERT INTO `instrument` (InstrID,InstrName,TableName,FormName,Category,HasVersion,modified) VALUES (105,'MDS Status','MDSStatus','MDSStatus',NULL,0,'2009-01-25 04:57:36');
INSERT INTO `instrument` (InstrID,InstrName,TableName,FormName,Category,HasVersion,modified) VALUES (106,'UDS Form Checklist','Multiple','LavaWebOnly',NULL,1,'2009-01-25 04:57:36');
INSERT INTO `instrument` (InstrID,InstrName,TableName,FormName,Category,HasVersion,modified) VALUES (144,'UDS Phone Inclusion','Multiple','LavaWebOnly',NULL,1,'2009-01-25 04:57:36');

/*
-- Query: SELECT * FROM `lava_demo`.`projectunit`
-- Date: 2012-01-25 20:43
*/
INSERT INTO `projectunit` (ProjUnitID,Project,Unit,Status,EffDate,ExpDate,ProjUnitDesc,modified) VALUES (1,'UDS',NULL,'ACTIVE','2003-12-03 19:59:00',NULL,'UDS','2009-01-25 04:58:00');
