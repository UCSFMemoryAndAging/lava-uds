UPDATE viewproperty SET list = 'ref.totalErrorCodeDecimal' WHERE entity LIKE 'udscdr%' 
AND property IN ('cdrSum','cdrGlob');
