-- Update to logicchecks_emory.sql:

-- Emory has confirmed that this 4xxx error code (normally suggesting telephone visit) is
--   applied to initial and in-person follow-up
-- NOTE: this deactivates this check when applied (activeDate=NULL); it requires a reactivation
--   for its logic to apply again! (so that its logic is flushed throughout all pertinent entities)
UPDATE logiccheck
  SET notes='NACC broke checkCode naming conventions here; it is still unclear if 4155 is code for visitType=F',
      activeDate=NULL,
      modified=CURRENT_TIMESTAMP
  WHERE entity1classname='UdsDiagnosis' AND codeID=17;

UPDATE instrumentlogiccheck
  SET visitTypes='I,F,T',
      checkCodes='4154,4155,4155'
  WHERE CheckDefId IN 
  (SELECT CheckDefId FROM logiccheck WHERE entity1classname='UdsDiagnosis' AND codeID=17);
