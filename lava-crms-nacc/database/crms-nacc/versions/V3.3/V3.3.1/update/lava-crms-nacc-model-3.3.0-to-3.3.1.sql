-- MADRC
-- Change numeric type of old A4 medication quantity tables

alter table udsmedicationspre1 modify PMAS DECIMAL(12,3);
alter table udsmedicationspre1 modify PMDS DECIMAL(12,3);
alter table udsmedicationspre1 modify PMES DECIMAL(12,3);
alter table udsmedicationspre1 modify PMFS DECIMAL(12,3);
alter table udsmedicationspre1 modify PMGS DECIMAL(12,3);
alter table udsmedicationspre1 modify PMHS DECIMAL(12,3);
alter table udsmedicationspre1 modify PMIS DECIMAL(12,3);
alter table udsmedicationspre1 modify PMJS DECIMAL(12,3);
alter table udsmedicationspre1 modify PMKS DECIMAL(12,3);
alter table udsmedicationspre1 modify PMLS DECIMAL(12,3);
alter table udsmedicationspre1 modify PMMS DECIMAL(12,3);
alter table udsmedicationspre1 modify PMNS DECIMAL(12,3);
alter table udsmedicationspre1 modify PMOS DECIMAL(12,3);
alter table udsmedicationspre1 modify PMPS DECIMAL(12,3);
alter table udsmedicationspre1 modify PMQS DECIMAL(12,3);
alter table udsmedicationspre1 modify PMRS DECIMAL(12,3);
alter table udsmedicationspre1 modify PMSS DECIMAL(12,3);
alter table udsmedicationspre1 modify PMTS DECIMAL(12,3);
update hibernateproperty set dbType='decimal',dbPrecision=12,dbScale=3,hibernateType='double' where dbTable='udsmedicationspre1' and  dbColumn in ('PMAS','PMBS','PMCS','PMDS','PMES','PMFS','PMGS','PMHS','PMIS','PMJS','PMKS','PMLS','PMMS','PMNS','PMOS','PMPS','PMQS','PMRS','PMSS','PMTS');

alter table udsmedicationsnon1 modify NMAS DECIMAL(12,3);
alter table udsmedicationsnon1 modify NMBS DECIMAL(12,3);
alter table udsmedicationsnon1 modify NMCS DECIMAL(12,3);
alter table udsmedicationsnon1 modify NMDS DECIMAL(12,3);
alter table udsmedicationsnon1 modify NMES DECIMAL(12,3);
alter table udsmedicationsnon1 modify NMFS DECIMAL(12,3);
alter table udsmedicationsnon1 modify NMGS DECIMAL(12,3);
alter table udsmedicationsnon1 modify NMHS DECIMAL(12,3);
alter table udsmedicationsnon1 modify NMIS DECIMAL(12,3);
alter table udsmedicationsnon1 modify NMJS DECIMAL(12,3);
alter table udsmedicationsnon1 modify NMKS DECIMAL(12,3);
alter table udsmedicationsnon1 modify NMLS DECIMAL(12,3);
alter table udsmedicationsnon1 modify NMMS DECIMAL(12,3);
alter table udsmedicationsnon1 modify NMNS DECIMAL(12,3);
alter table udsmedicationsnon1 modify NMOS DECIMAL(12,3);
alter table udsmedicationsnon1 modify NMPS DECIMAL(12,3);
alter table udsmedicationsnon1 modify NMQS DECIMAL(12,3);
alter table udsmedicationsnon1 modify NMRS DECIMAL(12,3);
alter table udsmedicationsnon1 modify NMSS DECIMAL(12,3);
alter table udsmedicationsnon1 modify NMTS DECIMAL(12,3);
update hibernateproperty set dbType='decimal',dbPrecision=12,dbScale=3,hibernateType='double' 
where dbTable='udsmedicationsnon1' and  dbColumn in ('NMAS','NMBS','NMCS','NMDS','NMES','NMFS','NMGS','NMHS','NMIS','NMJS','NMKS','NMLS','NMMS','NMNS','NMOS','NMPS','NMQS','NMRS','NMSS','NMTS');
 
alter table udsmedicationsvit1 modify VSAS DECIMAL(12,3);
alter table udsmedicationsvit1 modify VSBS DECIMAL(12,3);
alter table udsmedicationsvit1 modify VSCS DECIMAL(12,3);
alter table udsmedicationsvit1 modify VSDS DECIMAL(12,3);
alter table udsmedicationsvit1 modify VSES DECIMAL(12,3);
alter table udsmedicationsvit1 modify VSFS DECIMAL(12,3);
alter table udsmedicationsvit1 modify VSGS DECIMAL(12,3);
alter table udsmedicationsvit1 modify VSHS DECIMAL(12,3);
alter table udsmedicationsvit1 modify VSIS DECIMAL(12,3);
alter table udsmedicationsvit1 modify VSJS DECIMAL(12,3);
alter table udsmedicationsvit1 modify VSKS DECIMAL(12,3);
alter table udsmedicationsvit1 modify VSLS DECIMAL(12,3);
alter table udsmedicationsvit1 modify VSMS DECIMAL(12,3);
alter table udsmedicationsvit1 modify VSNS DECIMAL(12,3);
alter table udsmedicationsvit1 modify VSOS DECIMAL(12,3);
alter table udsmedicationsvit1 modify VSPS DECIMAL(12,3);
alter table udsmedicationsvit1 modify VSQS DECIMAL(12,3);
alter table udsmedicationsvit1 modify VSRS DECIMAL(12,3);
alter table udsmedicationsvit1 modify VSSS DECIMAL(12,3);
alter table udsmedicationsvit1 modify VSTS DECIMAL(12,3);
update hibernateproperty set dbType='decimal',dbPrecision=12,dbScale=3,hibernateType='double' 
where dbTable='udsmedicationsvit1' and  dbColumn in ('VSAS','VSBS','VSCS','VSDS','VSES','VSFS','VSGS','VSHS','VSIS','VSJS','VSKS','VSLS','VSMS','VSNS','VSOS','VSPS','VSQS','VSRS','VSSS','VSTS');

INSERT INTO versionhistory(module,version,versiondate,major,minor,fix,updaterequired)
VALUES ('lava-crms-nacc-model','3.3.1','2013-02-25',3,3,1,1);
 