update viewproperty set list='reference.totalErrorCode', attributes='disabled' where entity='udsneuropsychmoca3' and property='mocatots';
update viewproperty set label='1m. MoCA: Memory - Registration (two trials) - (Not counted in scoring)' where entity='udsneuropsychmoca3' and property='mocaregi';
update viewproperty set quickHelp=label where entity='udsneuropsychmoca3' and property='mocaregi';
update viewproperty set label='1u. MoCA: Delayed recall - Category cue - (Not counted in scoring)' where entity='udsneuropsychmoca3' and property='mocarecc';
update viewproperty set quickHelp=label where entity='udsneuropsychmoca3' and property='mocarecc';
update viewproperty set label='1v. MoCA: Delayed recall Recognition - (Not counted in scoring)' where entity='udsneuropsychmoca3' and property='mocarecr';
update viewproperty set quickHelp=label where entity='udsneuropsychmoca3' and property='mocarecr';
update viewproperty set label='2b1. Test following MoCA: Language of test administration - Other specify' where entity='udsneuropsychmoca3' and property='npsylanx';
update viewproperty set quickHelp=label where entity='udsneuropsychmoca3' and property='npsylanx';



DELETE FROM versionhistory WHERE module='lava-crms-nacc-data' AND version='3.6.8';
INSERT INTO versionhistory(module,version,versiondate,major,minor,fix,updaterequired)
VALUES ('lava-crms-nacc-data','3.6.8','2016-02-02',3,6,8,0);
