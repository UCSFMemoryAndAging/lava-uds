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
