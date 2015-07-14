UPDATE viewproperty SET list = 'uds.b9.frstChgI' WHERE messageCode = '*.udssymptomsonset3.frstChg';

INSERT INTO viewproperty (messageCode,locale,instance,scope,prefix,entity,property,context,style,required,label,indentLevel,list,modified)
VALUES ('followup.udssymptomsonset3.frstChg','en','lava','crms-nacc','followup','udssymptomsonset3','frstChg','r','scale','No','21. Indicate the predominant domain that wwas first recognized as changed in the subject','0','uds.b9.frstChgF','2015-07-13');

DELETE FROM versionhistory WHERE module='lava-crms-nacc-data' AND version='3.6.4';
INSERT INTO versionhistory(module,version,versiondate,major,minor,fix,updaterequired)
VALUES ('lava-crms-nacc-data','3.6.4','2015-07-13',3,6,4,0);



