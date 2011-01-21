UPDATE viewproperty SET list = 'uds.b7.cdrScale', 
listAttributes = 'codes=ref.udsErrorCodesDecimal'
WHERE entity LIKE 'udscdr%' 
AND property IN ('memory','orient','judgement','commun','homeHobb','comport','cdrLang');

UPDATE viewproperty SET list = 'uds.b7.cdrScaleNoPoint5', 
listAttributes = 'codes=ref.udsErrorCodesDecimal'
WHERE entity LIKE 'udscdr%' 
AND property IN ('persCare');

UPDATE viewproperty SET list = 'ref.totalErrorCodeDecimal' WHERE entity LIKE 'udscdr%' 
AND property IN ('cdrSum','cdrGlob');

INSERT INTO list (ListName,NumericKey) VALUES ('CDRScale',1);
SELECT @listID := ListID FROM list WHERE ListName = 'CDRScale';
INSERT INTO listvalues (ListID,ValueKey,ValueDesc,OrderID) VALUES(@listID,'0','None',1);
INSERT INTO listvalues (ListID,ValueKey,ValueDesc,OrderID) VALUES(@listID,'.5','Questionable',2);
INSERT INTO listvalues (ListID,ValueKey,ValueDesc,OrderID) VALUES(@listID,'1','Mild',3);
INSERT INTO listvalues (ListID,ValueKey,ValueDesc,OrderID) VALUES(@listID,'2','Moderate',4);
INSERT INTO listvalues (ListID,ValueKey,ValueDesc,OrderID) VALUES(@listID,'3','Severe',5);
