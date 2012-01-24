SELECT 'DELETE from datadictionary where instance=\'lava\' and scope=\'crms-nacc\';';  
SELECT 'DELETE from viewproperty where instance=\'lava\' and scope=\'crms-nacc\';';
SELECT 'DELETE from hibernateproperty where instance=\'lava\' and scope=\'crms-nacc\';';  
SELECT 'DELETE from `listvalues` where instance=\'lava\' and scope=\'crms-nacc\';';
SELECT 'DELETE from `list` where instance=\'lava\' and scope=\'crms-nacc\';';
call util_CreateMetadataInsertStatements('lava','crms-nacc','%');
