SELECT 'DELETE from viewproperty where instance=\'lava\' and scope=\'crms-nacc\';';
SELECT 'DELETE from hibernateproperty where instance=\'lava\' and scope=\'crms-nacc\';';  
SELECT 'DELETE from `listvalues` where `ListID` in (SELECT `ListID` from `list` where `scope`=''crms-nacc'');';
SELECT 'DELETE from `list` where `scope`=''crms-nacc'';';
call util_CreateMetadataInsertStatements('lava','crms-nacc','%');
