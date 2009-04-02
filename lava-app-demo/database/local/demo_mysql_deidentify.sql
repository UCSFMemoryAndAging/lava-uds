LOCK TABLES `patient` WRITE;
UPDATE patient SET FName = concat(substr(FName,1,1),substr(LName,1,1),PIDN), LName = 'DE-IDENTIFIED';
UPDATE patient SET FullName = FName, FullNameNoSuffix = FName, FullNameRev = FName, FullNameRevNoSuffix = FName;
UNLOCK TABLES;
