-- execute these statements (using the command in extract.script) to generate a SQL script for all
-- metadata/list data in the 'crms-app-demo' scope

-- ** so that no developer's changes are overwritten **
-- the generated SQL script should be stored in source control and checked out and applied by
-- anyone who is going to modify the metadata/list data for the 'crms-app-demo' scope, before they make
-- their modifications.
-- they must then update this SQL script with their mods, by running the command in extract.script,
-- and check it back into source control.

SELECT 'DELETE from datadictionary where instance=\'lava\' and scope=\'crms-app-demo\';';  
SELECT 'DELETE from viewproperty where instance=\'lava\' and scope=\'crms-app-demo\';';
SELECT 'DELETE from viewproperty where instance=\'demo\' and scope=\'crms-app-demo\';';
SELECT 'DELETE from hibernateproperty where instance=\'lava\' and scope=\'crms-app-demo\';';
-- NOTE: custom listvalues for lists whose scope is not 'crms-app-demo' (e.g. scope 'crms' lists 
-- like 'VisitType') should be included in the generated SQL script by using scope 'crms-app-demo'
-- in their listvalues records
SELECT 'DELETE from `listvalues` where instance=\'lava\' and scope=\'crms-app-demo\';';
SELECT 'DELETE from `list` where instance=\'lava\' and scope=\'crms-app-demo\';';
call util_CreateMetadataInsertStatements('lava','crms-app-demo','%');
call util_CreateMetadataInsertStatements('demo','core','%');
call util_CreateMetadataInsertStatements('demo','crms','%');
