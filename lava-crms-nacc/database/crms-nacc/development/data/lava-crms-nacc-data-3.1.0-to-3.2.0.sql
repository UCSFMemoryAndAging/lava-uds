-- Emory: change lists from the general age lists that were of range 0-120 (used to be uds.ageOnsetUnknown and uds.ageOnsetNAUnknown), 
-- but should be 15-110                                                                                                                                   
UPDATE viewproperty SET list='uds.ageOnsetNAUnknown' WHERE instance='lava' AND scope='crms-nacc' AND entity='udsfamilyhistory1' AND propert\
y='momOnset';
UPDATE viewproperty SET list='uds.ageOnsetNAUnknown' WHERE instance='lava' AND scope='crms-nacc' AND entity='udsfamilyhistory1' AND propert\
y='dadOnset';
UPDATE viewproperty SET list='uds.ageOnsetNAUnknown' WHERE instance='lava' AND scope='crms-nacc' AND entity='udsfamilyhistory1' AND propert\
y LIKE 'sib%Ons';
UPDATE viewproperty SET list='uds.ageOnsetNAUnknown' WHERE instance='lava' AND scope='crms-nacc' AND entity='udsfamilyhistory1' AND propert\
y LIKE 'kids%Ons';
UPDATE viewproperty SET list='uds.ageOnsetNAUnknown' WHERE instance='lava' AND scope='crms-nacc' AND entity='udsfamilyhistory1' AND propert\
y LIKE 'rel%Ons';
UPDATE viewproperty SET list='uds.ageOnsetUnknown' WHERE instance='lava' AND scope='crms-nacc' AND entity='udsfamilyhistory2' AND property=\
'momOnset';
UPDATE viewproperty SET list='uds.ageOnsetUnknown' WHERE instance='lava' AND scope='crms-nacc' AND entity='udsfamilyhistory2' AND property=\
'dadOnset';
UPDATE viewproperty SET list='uds.ageOnsetUnknown' WHERE instance='lava' AND scope='crms-nacc' AND entity='udsfamilyhistory2' AND property \
LIKE 'sib%Ons';
UPDATE viewproperty SET list='uds.ageOnsetUnknown' WHERE instance='lava' AND scope='crms-nacc' AND entity='udsfamilyhistory2' AND property \
LIKE 'kid%Ons';
UPDATE viewproperty SET list='uds.ageOnsetUnknown' WHERE instance='lava' AND scope='crms-nacc' AND entity='udsfamilyhistory2' AND property \
LIKE 'rel%Ons';
-- TODO: technically, for follow-up udssymptomsonset1, the decage cannot be unknown, but seems permissible for now                          
UPDATE viewproperty SET list='uds.ageOnsetUnknown' WHERE instance='lava' AND scope='crms-nacc' AND entity='udssymptomsonset1' AND property \
LIKE 'decage';
UPDATE viewproperty SET list='uds.ageOnsetNAUnknown' WHERE instance='lava' AND scope='crms-nacc' AND entity='udssymptomsonset2' AND propert\
y LIKE 'decage';


-- Emory: For NaccPathology, one of the listnames was different than the bean/viewproperty.  Instead of renaming it in the bean 
-- and viewproperty, I just changed the name in the `list` table.
UPDATE list SET ListName='NaccPathMildModerateSevere' WHERE listname='NaccPathMildModSevere';

-- Emory: One of the naccpathology fields was spelled wrong
ALTER TABLE `naccpathology` CHANGE COLUMN `NPBRPARF` `NPBPARF` SMALLINT(5) NULL DEFAULT NULL;
UPDATE viewproperty SET property='npbparf' WHERE entity='naccpathology9' AND property='npbrparf';

-- Emory: udsneuropsych - The possible values for C1 MEMTIME should not have 95-98, according to data dictionary, for version 1 or version 2, 
-- unlike the majority of the C1 fields.
UPDATE viewproperty
  SET list = 'uds.c1.memtime'
  WHERE scope='crms-nacc' AND prefix IS NULL AND entity IN ('udsneuropsych1','udsneuropsych2') AND property='memTime';

-- Emory: UdsSymptomsOnset - One of the fields was misnamed, though correct in the database (“beDep” instead of “bdDep”).  
-- change B9's bdDep to beDep (the correct name)
UPDATE viewproperty
  SET messageCode='*.udssymptomsonset1.beDep',
      property='beDep'
  WHERE entity='udssymptomsonset1' AND property='bdDep';
  
UPDATE viewproperty
  SET messageCode='*.udssymptomsonset2.beDep',
      property='beDep'
  WHERE entity='udssymptomsonset2' AND property='bdDep';
  