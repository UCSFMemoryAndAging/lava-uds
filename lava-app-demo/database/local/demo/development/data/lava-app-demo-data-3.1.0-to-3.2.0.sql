-- for FTLD module

INSERT INTO `listvalues` (`ListID`,`instance`,`scope`,`ValueKey`,`ValueDesc`,`OrderID`,`modified`) SELECT `ListID`,'lava','crms-app-demo','UDS','FTLD Assessment',0,'2012-10-02 20:57:59' FROM `list` where `ListName`='VisitType';

INSERT IGNORE into instrument(instrname, tablename, formname, hasversion) values('UDS FTLD BIS','Multiple','LavaWebOnly',1);
INSERT IGNORE into instrument(instrname, tablename, formname, hasversion) values('UDS FTLD Clin Features','Multiple','LavaWebOnly',1);
INSERT IGNORE into instrument(instrname, tablename, formname, hasversion) values('UDS FTLD Family History','Multiple','LavaWebOnly',1);
INSERT IGNORE into instrument(instrname, tablename, formname, hasversion) values('UDS FTLD Form Checklist','Multiple','LavaWebOnly',1);
INSERT IGNORE into instrument(instrname, tablename, formname, hasversion) values('UDS FTLD Imaging Avail','Multiple','LavaWebOnly',1);
INSERT IGNORE into instrument(instrname, tablename, formname, hasversion) values('UDS FTLD Imaging Diag','Multiple','LavaWebOnly',1);
INSERT IGNORE into instrument(instrname, tablename, formname, hasversion) values('UDS FTLD IRI','Multiple','LavaWebOnly',1);
INSERT IGNORE into instrument(instrname, tablename, formname, hasversion) values('UDS FTLD Neuropsych','Multiple','LavaWebOnly',1);
INSERT IGNORE into instrument(instrname, tablename, formname, hasversion) values('UDS FTLD RSMS','Multiple','LavaWebOnly',1);
INSERT IGNORE into instrument(instrname, tablename, formname, hasversion) values('UDS FTLD SBOC','Multiple','LavaWebOnly',1);
INSERT IGNORE into instrument(instrname, tablename, formname, hasversion) values('UDS FTLD SNQ','Multiple','LavaWebOnly',1);
INSERT IGNORE into instrument(instrname, tablename, formname, hasversion) values('UDS FTLD Specimen Consent','Multiple','LavaWebOnly',1);
INSERT IGNORE into instrument(instrname, tablename, formname, hasversion) values('UDS FTLD UPDRS','Multiple','LavaWebOnly',1);
