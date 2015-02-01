delete from hibernateproperty where entity="udsdiagnosis3";
delete from viewproperty where entity="udsdiagnosis3";
delete from instrument where InstrName="UDS Diagnosis 3";
drop table if exists udsdiagnosis3;



-- Initialize table
CREATE TABLE udsdiagnosis3 (
  InstrID int(10) NOT NULL,
    `DXMETHOD` UNMAPPED TYPE
    `NORMCOG` UNMAPPED TYPE
    `DEMENTED` UNMAPPED TYPE
    `AMNDEM` UNMAPPED TYPE
    `PCA` UNMAPPED TYPE
    `PPASYN` UNMAPPED TYPE
    `PPASYNT` UNMAPPED TYPE
    `FTDSYN` UNMAPPED TYPE
    `LBDSYN` UNMAPPED TYPE
    `NAMNDEM` UNMAPPED TYPE
    `MCIAMEM` UNMAPPED TYPE
    `MCIAPLUS` UNMAPPED TYPE
    `MCIAPLAN` UNMAPPED TYPE
    `MCIAPATT` UNMAPPED TYPE
    `MCIAPEX` UNMAPPED TYPE
    `MCIAPVIS` UNMAPPED TYPE
    `MCINON1` UNMAPPED TYPE
    `MCIN1LAN` UNMAPPED TYPE
    `MCIN1ATT` UNMAPPED TYPE
    `MCIN1EX` UNMAPPED TYPE
    `MCIN1VIS` UNMAPPED TYPE
    `MCINON2` UNMAPPED TYPE
    `MCIN2LAN` UNMAPPED TYPE
    `MCIN2ATT` UNMAPPED TYPE
    `MCIN2EX` UNMAPPED TYPE
    `MCIN2VIS` UNMAPPED TYPE
    `IMPNOMCI` UNMAPPED TYPE
    `AMYLPET` UNMAPPED TYPE
    `AMYLCSF` UNMAPPED TYPE
    `FDGAD` UNMAPPED TYPE
    `HIPPATR` UNMAPPED TYPE
    `TAUPETAD` UNMAPPED TYPE
    `CSFTAU` UNMAPPED TYPE
    `FDGFTLD` UNMAPPED TYPE
    `TPETFTLD` UNMAPPED TYPE
    `MRFTLD` UNMAPPED TYPE
    `DATSCAN` UNMAPPED TYPE
    `OTHBIOM` UNMAPPED TYPE
    `OTHBIOMX` varchar(60) DEFAULT NULL,
    `IMAGLINF` UNMAPPED TYPE
    `IMAGLAC` UNMAPPED TYPE
    `IMAGMACH` UNMAPPED TYPE
    `IMAGMICH` UNMAPPED TYPE
    `IMAGMWMH` UNMAPPED TYPE
    `IMAGEWMH` UNMAPPED TYPE
    `ADMUT` UNMAPPED TYPE
    `FTLDMUT` UNMAPPED TYPE
    `OTHMUT` UNMAPPED TYPE
    `OTHMUTX` varchar(60) DEFAULT NULL,
    `ALZDIS` UNMAPPED TYPE
    `ALZDISIF` UNMAPPED TYPE
    `LBDIS` UNMAPPED TYPE
    `LBDIF` UNMAPPED TYPE
    `PARK` UNMAPPED TYPE
    `MSA` UNMAPPED TYPE
    `MSAIF` UNMAPPED TYPE
    `PSP` UNMAPPED TYPE
    `PSPIF` UNMAPPED TYPE
    `CORT` UNMAPPED TYPE
    `CORTIF` UNMAPPED TYPE
    `FTLDMO` UNMAPPED TYPE
    `FTLDMOIF` UNMAPPED TYPE
    `FTLDNOS` UNMAPPED TYPE
    `FTLDNOIF` UNMAPPED TYPE
    `FTLDSUBT` UNMAPPED TYPE
    `FTLDSUBX` varchar(60) DEFAULT NULL,
    `CVD` UNMAPPED TYPE
    `CVDIF` UNMAPPED TYPE
    `PREVSTK` UNMAPPED TYPE
    `STROKEDEC` UNMAPPED TYPE
    `STKIMAG` UNMAPPED TYPE
    `INFNETW` UNMAPPED TYPE
    `INFWMH` UNMAPPED TYPE
    `ESSTREM` UNMAPPED TYPE
    `ESSTREIF` UNMAPPED TYPE
    `DOWNS` UNMAPPED TYPE
    `DOWNSIF` UNMAPPED TYPE
    `HUNT` UNMAPPED TYPE
    `HUNTIF` UNMAPPED TYPE
    `PRION` UNMAPPED TYPE
    `PRIONIF` UNMAPPED TYPE
    `BRNINJ` UNMAPPED TYPE
    `BRNINJIF` UNMAPPED TYPE
    `BRNINCTE` UNMAPPED TYPE
    `HYCEPH` UNMAPPED TYPE
    `HYCEPHIF` UNMAPPED TYPE
    `EPILEP` UNMAPPED TYPE
    `EPILEPIF` UNMAPPED TYPE
    `NEOP` UNMAPPED TYPE
    `NEOPIF` UNMAPPED TYPE
    `NEOPSTAT` UNMAPPED TYPE
    `HIV` UNMAPPED TYPE
    `HIVIF` UNMAPPED TYPE
    `OTHCOG` UNMAPPED TYPE
    `OTHCOGIF` UNMAPPED TYPE
    `OTHCOGX` varchar(60) DEFAULT NULL,
    `DEP` UNMAPPED TYPE
    `DEPIF` UNMAPPED TYPE
    `DEPTREAT` UNMAPPED TYPE
    `BIPOLDX` UNMAPPED TYPE
    `BIPOLDIF` UNMAPPED TYPE
    `SCHIZOP` UNMAPPED TYPE
    `SCHIZOIF` UNMAPPED TYPE
    `ANXIET` UNMAPPED TYPE
    `ANXIETIF` UNMAPPED TYPE
    `DELIR` UNMAPPED TYPE
    `DELIRIF` UNMAPPED TYPE
    `PTSDDX` UNMAPPED TYPE
    `PTSDDXIF` UNMAPPED TYPE
    `OTHPSY` UNMAPPED TYPE
    `OTHPSYIF` UNMAPPED TYPE
    `OTHPSYX` varchar(60) DEFAULT NULL,
    `ALCDEM` UNMAPPED TYPE
    `ALCDEMIF` UNMAPPED TYPE
    `ALCABUSE` UNMAPPED TYPE
    `IMPSUB` UNMAPPED TYPE
    `IMPSUBIF` UNMAPPED TYPE
    `DYSILL` UNMAPPED TYPE
    `DYSILLIF` UNMAPPED TYPE
    `MEDS` UNMAPPED TYPE
    `MEDSIF` UNMAPPED TYPE
    `COGOTH` UNMAPPED TYPE
    `COGOTH1F` UNMAPPED TYPE
    `COGOTHX` varchar(60) DEFAULT NULL,
    `COGOTH2` UNMAPPED TYPE
    `COGOTH2F` UNMAPPED TYPE
    `COGOTH2X` varchar(60) DEFAULT NULL,
    `COGOTH3` UNMAPPED TYPE
    `COGOTH3F` UNMAPPED TYPE
    `COGOTH3X` varchar(60) DEFAULT NULL,

  PRIMARY KEY (`InstrID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
-- Add to instrument table
insert into instrument 
set InstrName="UDS Diagnosis 3", TableName="udsdiagnosis3", 
  FormName="LavaWebOnly", HasVersion=0;
-- Add columns to viewproperty table
insert into viewproperty 
set messageCode='*.udsdiagnosis3.dxmethod', locale='en', instance='lava', 
  scope='ucdlava', entity='udsdiagnosis3', property='dxmethod',
  required='No', proporder='1', attributes='', quickHelp='', 
  label="Diagnosis method — Responses in this form are based on diagnosis by::", context="r",
  list="uds3.udsdiagnosis3.DXMETHOD", style="scale";

insert into viewproperty 
set messageCode='*.udsdiagnosis3.normcog', locale='en', instance='lava', 
  scope='ucdlava', entity='udsdiagnosis3', property='normcog',
  required='No', proporder='2', attributes='', quickHelp='', 
  label="Does the subject have normal cognition and normal behavior?:", context="r",
  list="list.uds3.common.noyes01", style="scale";

insert into viewproperty 
set messageCode='*.udsdiagnosis3.demented', locale='en', instance='lava', 
  scope='ucdlava', entity='udsdiagnosis3', property='demented',
  required='No', proporder='3', attributes='', quickHelp='', 
  label="Does the subject meet criteria for dementia?:", context="r",
  list="list.uds3.common.noyes01", style="scale";

insert into viewproperty 
set messageCode='*.udsdiagnosis3.amndem', locale='en', instance='lava', 
  scope='ucdlava', entity='udsdiagnosis3', property='amndem',
  required='No', proporder='4', attributes='', quickHelp='', 
  label="Amnestic multidomain dementia syndrome:", context="r",
  list="uds3.udsdiagnosis3.AbsPres", style="scale";

insert into viewproperty 
set messageCode='*.udsdiagnosis3.pca', locale='en', instance='lava', 
  scope='ucdlava', entity='udsdiagnosis3', property='pca',
  required='No', proporder='5', attributes='', quickHelp='', 
  label="Posterior cortical atrophy syndrome (or primary visual presentation):", context="r",
  list="uds3.udsdiagnosis3.AbsPres", style="scale";

insert into viewproperty 
set messageCode='*.udsdiagnosis3.ppasyn', locale='en', instance='lava', 
  scope='ucdlava', entity='udsdiagnosis3', property='ppasyn',
  required='No', proporder='6', attributes='', quickHelp='', 
  label="Primary progressive aphasia (PPA) syndrome:", context="r",
  list="uds3.udsdiagnosis3.AbsPres", style="scale";

insert into viewproperty 
set messageCode='*.udsdiagnosis3.ppasynt', locale='en', instance='lava', 
  scope='ucdlava', entity='udsdiagnosis3', property='ppasynt',
  required='No', proporder='7', attributes='', quickHelp='', 
  label="If PPA present:", context="r",
  list="uds3.udsdiagnosis3.PPASYNT", style="scale";

insert into viewproperty 
set messageCode='*.udsdiagnosis3.ftdsyn', locale='en', instance='lava', 
  scope='ucdlava', entity='udsdiagnosis3', property='ftdsyn',
  required='No', proporder='8', attributes='', quickHelp='', 
  label="Behavioral variant FTD (bvFTD) syndrome:", context="r",
  list="uds3.udsdiagnosis3.AbsPres", style="scale";

insert into viewproperty 
set messageCode='*.udsdiagnosis3.lbdsyn', locale='en', instance='lava', 
  scope='ucdlava', entity='udsdiagnosis3', property='lbdsyn',
  required='No', proporder='9', attributes='', quickHelp='', 
  label="Lewy body dementia syndrome:", context="r",
  list="uds3.udsdiagnosis3.AbsPres", style="scale";

insert into viewproperty 
set messageCode='*.udsdiagnosis3.namndem', locale='en', instance='lava', 
  scope='ucdlava', entity='udsdiagnosis3', property='namndem',
  required='No', proporder='10', attributes='', quickHelp='', 
  label="Non-amnestic multidomain dementia, not PCA, PPA, bvFTD, or DLB syndrome:", context="r",
  list="uds3.udsdiagnosis3.AbsPres", style="scale";

insert into viewproperty 
set messageCode='*.udsdiagnosis3.mciamem', locale='en', instance='lava', 
  scope='ucdlava', entity='udsdiagnosis3', property='mciamem',
  required='No', proporder='11', attributes='', quickHelp='', 
  label="Amnestic MCI, single domain (aMCI SD):", context="r",
  list="uds3.udsdiagnosis3.AbsPres", style="scale";

insert into viewproperty 
set messageCode='*.udsdiagnosis3.mciaplus', locale='en', instance='lava', 
  scope='ucdlava', entity='udsdiagnosis3', property='mciaplus',
  required='No', proporder='12', attributes='', quickHelp='', 
  label="Amnestic MCI, multiple domains (aMCI MD):", context="r",
  list="uds3.udsdiagnosis3.AbsPres", style="scale";

insert into viewproperty 
set messageCode='*.udsdiagnosis3.mciaplan', locale='en', instance='lava', 
  scope='ucdlava', entity='udsdiagnosis3', property='mciaplan',
  required='No', proporder='13', attributes='', quickHelp='', 
  label="Amnestic MCI, multiple domains — language:", context="r",
  list="list.uds3.common.noyes01", style="scale";

insert into viewproperty 
set messageCode='*.udsdiagnosis3.mciapatt', locale='en', instance='lava', 
  scope='ucdlava', entity='udsdiagnosis3', property='mciapatt',
  required='No', proporder='14', attributes='', quickHelp='', 
  label="Amnestic MCI, multiple domains — attention:", context="r",
  list="list.uds3.common.noyes01", style="scale";

insert into viewproperty 
set messageCode='*.udsdiagnosis3.mciapex', locale='en', instance='lava', 
  scope='ucdlava', entity='udsdiagnosis3', property='mciapex',
  required='No', proporder='15', attributes='', quickHelp='', 
  label="Amnestic MCI, multiple domains — executive:", context="r",
  list="list.uds3.common.noyes01", style="scale";

insert into viewproperty 
set messageCode='*.udsdiagnosis3.mciapvis', locale='en', instance='lava', 
  scope='ucdlava', entity='udsdiagnosis3', property='mciapvis',
  required='No', proporder='16', attributes='', quickHelp='', 
  label="Amnestic MCI, multiple domains — visuospatial:", context="r",
  list="list.uds3.common.noyes01", style="scale";

insert into viewproperty 
set messageCode='*.udsdiagnosis3.mcinon1', locale='en', instance='lava', 
  scope='ucdlava', entity='udsdiagnosis3', property='mcinon1',
  required='No', proporder='17', attributes='', quickHelp='', 
  label="Non-amnestic MCI, single domain (naMCI SD):", context="r",
  list="uds3.udsdiagnosis3.AbsPres", style="scale";

insert into viewproperty 
set messageCode='*.udsdiagnosis3.mcin1lan', locale='en', instance='lava', 
  scope='ucdlava', entity='udsdiagnosis3', property='mcin1lan',
  required='No', proporder='18', attributes='', quickHelp='', 
  label="Non-Amnestic MCI-single domain — language:", context="r",
  list="list.uds3.common.noyes01", style="scale";

insert into viewproperty 
set messageCode='*.udsdiagnosis3.mcin1att', locale='en', instance='lava', 
  scope='ucdlava', entity='udsdiagnosis3', property='mcin1att',
  required='No', proporder='19', attributes='', quickHelp='', 
  label="Non-Amnestic MCI-single domain — attention:", context="r",
  list="list.uds3.common.noyes01", style="scale";

insert into viewproperty 
set messageCode='*.udsdiagnosis3.mcin1ex', locale='en', instance='lava', 
  scope='ucdlava', entity='udsdiagnosis3', property='mcin1ex',
  required='No', proporder='20', attributes='', quickHelp='', 
  label="Non-Amnestic MCI-single domain — Executive:", context="r",
  list="list.uds3.common.noyes01", style="scale";

insert into viewproperty 
set messageCode='*.udsdiagnosis3.mcin1vis', locale='en', instance='lava', 
  scope='ucdlava', entity='udsdiagnosis3', property='mcin1vis',
  required='No', proporder='21', attributes='', quickHelp='', 
  label="Non-Amnestic MCI-single domain — Visuospatial:", context="r",
  list="list.uds3.common.noyes01", style="scale";

insert into viewproperty 
set messageCode='*.udsdiagnosis3.mcinon2', locale='en', instance='lava', 
  scope='ucdlava', entity='udsdiagnosis3', property='mcinon2',
  required='No', proporder='22', attributes='', quickHelp='', 
  label="Non-Amnestic MCI-multiple domains (naMCI MD):", context="r",
  list="uds3.udsdiagnosis3.AbsPres", style="scale";

insert into viewproperty 
set messageCode='*.udsdiagnosis3.mcin2lan', locale='en', instance='lava', 
  scope='ucdlava', entity='udsdiagnosis3', property='mcin2lan',
  required='No', proporder='23', attributes='', quickHelp='', 
  label="Non-Amnestic MCI-multiple domains — language:", context="r",
  list="list.uds3.common.noyes01", style="scale";

insert into viewproperty 
set messageCode='*.udsdiagnosis3.mcin2att', locale='en', instance='lava', 
  scope='ucdlava', entity='udsdiagnosis3', property='mcin2att',
  required='No', proporder='24', attributes='', quickHelp='', 
  label="Non-Amnestic MCI-multiple domains — attention:", context="r",
  list="list.uds3.common.noyes01", style="scale";

insert into viewproperty 
set messageCode='*.udsdiagnosis3.mcin2ex', locale='en', instance='lava', 
  scope='ucdlava', entity='udsdiagnosis3', property='mcin2ex',
  required='No', proporder='25', attributes='', quickHelp='', 
  label="Non-Amnestic MCI-multiple domains — executive:", context="r",
  list="list.uds3.common.noyes01", style="scale";

insert into viewproperty 
set messageCode='*.udsdiagnosis3.mcin2vis', locale='en', instance='lava', 
  scope='ucdlava', entity='udsdiagnosis3', property='mcin2vis',
  required='No', proporder='26', attributes='', quickHelp='', 
  label="Non-Amnestic MCI-multiple domains — visuospatial:", context="r",
  list="list.uds3.common.noyes01", style="scale";

insert into viewproperty 
set messageCode='*.udsdiagnosis3.impnomci', locale='en', instance='lava', 
  scope='ucdlava', entity='udsdiagnosis3', property='impnomci',
  required='No', proporder='27', attributes='', quickHelp='', 
  label="Cognitively impaired, not MCI:", context="r",
  list="uds3.udsdiagnosis3.AbsPres", style="scale";

insert into viewproperty 
set messageCode='*.udsdiagnosis3.amylpet', locale='en', instance='lava', 
  scope='ucdlava', entity='udsdiagnosis3', property='amylpet',
  required='No', proporder='28', attributes='', quickHelp='', 
  label="Biomarker findings — abnormally elevated amyloid on PET:", context="r",
  list="uds3.udsdiagnosis3.AMYLPET", style="scale";

insert into viewproperty 
set messageCode='*.udsdiagnosis3.amylcsf', locale='en', instance='lava', 
  scope='ucdlava', entity='udsdiagnosis3', property='amylcsf',
  required='No', proporder='29', attributes='', quickHelp='', 
  label="Biomarker findings — abnormally low amyloid in CSF:", context="r",
  list="uds3.udsdiagnosis3.AMYLPET", style="scale";

insert into viewproperty 
set messageCode='*.udsdiagnosis3.fdgad', locale='en', instance='lava', 
  scope='ucdlava', entity='udsdiagnosis3', property='fdgad',
  required='No', proporder='30', attributes='', quickHelp='', 
  label="Biomarker finngs — FDGPET pattern of AD:", context="r",
  list="uds3.udsdiagnosis3.AMYLPET", style="scale";

insert into viewproperty 
set messageCode='*.udsdiagnosis3.hippatr', locale='en', instance='lava', 
  scope='ucdlava', entity='udsdiagnosis3', property='hippatr',
  required='No', proporder='31', attributes='', quickHelp='', 
  label="Biomarker findings — hippocampal atrophy:", context="r",
  list="uds3.udsdiagnosis3.AMYLPET", style="scale";

insert into viewproperty 
set messageCode='*.udsdiagnosis3.taupetad', locale='en', instance='lava', 
  scope='ucdlava', entity='udsdiagnosis3', property='taupetad',
  required='No', proporder='32', attributes='', quickHelp='', 
  label="Biomarker findings — Tau PET evidence for AD:", context="r",
  list="uds3.udsdiagnosis3.AMYLPET", style="scale";

insert into viewproperty 
set messageCode='*.udsdiagnosis3.csftau', locale='en', instance='lava', 
  scope='ucdlava', entity='udsdiagnosis3', property='csftau',
  required='No', proporder='33', attributes='', quickHelp='', 
  label="Biomarker findings — abnormally elevated CSF tau or ptau:", context="r",
  list="uds3.udsdiagnosis3.AMYLPET", style="scale";

insert into viewproperty 
set messageCode='*.udsdiagnosis3.fdgftld', locale='en', instance='lava', 
  scope='ucdlava', entity='udsdiagnosis3', property='fdgftld',
  required='No', proporder='34', attributes='', quickHelp='', 
  label="Biomarker findings — FDG-PET evidence for frontal or anterior temporal hypometabolism for FTLD:", context="r",
  list="uds3.udsdiagnosis3.AMYLPET", style="scale";

insert into viewproperty 
set messageCode='*.udsdiagnosis3.tpetftld', locale='en', instance='lava', 
  scope='ucdlava', entity='udsdiagnosis3', property='tpetftld',
  required='No', proporder='35', attributes='', quickHelp='', 
  label="Biomarker findings — Tau PET evidence for FTLD:", context="r",
  list="uds3.udsdiagnosis3.AMYLPET", style="scale";

insert into viewproperty 
set messageCode='*.udsdiagnosis3.mrftld', locale='en', instance='lava', 
  scope='ucdlava', entity='udsdiagnosis3', property='mrftld',
  required='No', proporder='36', attributes='', quickHelp='', 
  label="Biomarker findings — structural MR evidence for frontal or anterior temporal atrophy for FTLD:", context="r",
  list="uds3.udsdiagnosis3.AMYLPET", style="scale";

insert into viewproperty 
set messageCode='*.udsdiagnosis3.datscan', locale='en', instance='lava', 
  scope='ucdlava', entity='udsdiagnosis3', property='datscan',
  required='No', proporder='37', attributes='', quickHelp='', 
  label="Biomarker findings — dopamine transporter scan (DATscan) evidence of Lewy body disease:", context="r",
  list="uds3.udsdiagnosis3.AMYLPET", style="scale";

insert into viewproperty 
set messageCode='*.udsdiagnosis3.othbiom', locale='en', instance='lava', 
  scope='ucdlava', entity='udsdiagnosis3', property='othbiom',
  required='No', proporder='38', attributes='', quickHelp='', 
  label="Biomarker findings — other:", context="r",
  list="list.uds3.common.noyes01", style="scale";

insert into viewproperty 
set messageCode='*.udsdiagnosis3.othbiomx', locale='en', instance='lava', 
  scope='ucdlava', entity='udsdiagnosis3', property='othbiomx',
  required='No', proporder='39', attributes='', quickHelp='', 
  label="Biomarker findings - Other ( SPECIFY ):", context="r", maxLength="6", style="string";

insert into viewproperty 
set messageCode='*.udsdiagnosis3.imaglinf', locale='en', instance='lava', 
  scope='ucdlava', entity='udsdiagnosis3', property='imaglinf',
  required='No', proporder='40', attributes='', quickHelp='', 
  label="Imaging findings — large vessel infarct(s):", context="r",
  list="uds3.udsdiagnosis3.AMYLPET", style="scale";

insert into viewproperty 
set messageCode='*.udsdiagnosis3.imaglac', locale='en', instance='lava', 
  scope='ucdlava', entity='udsdiagnosis3', property='imaglac',
  required='No', proporder='41', attributes='', quickHelp='', 
  label="Imaging findings — lacunar infarct(s):", context="r",
  list="uds3.udsdiagnosis3.AMYLPET", style="scale";

insert into viewproperty 
set messageCode='*.udsdiagnosis3.imagmach', locale='en', instance='lava', 
  scope='ucdlava', entity='udsdiagnosis3', property='imagmach',
  required='No', proporder='42', attributes='', quickHelp='', 
  label="Imaging findings — macrohemorrhage(s):", context="r",
  list="uds3.udsdiagnosis3.AMYLPET", style="scale";

insert into viewproperty 
set messageCode='*.udsdiagnosis3.imagmich', locale='en', instance='lava', 
  scope='ucdlava', entity='udsdiagnosis3', property='imagmich',
  required='No', proporder='43', attributes='', quickHelp='', 
  label="Imaging findings — microhemorrhage(s):", context="r",
  list="uds3.udsdiagnosis3.AMYLPET", style="scale";

insert into viewproperty 
set messageCode='*.udsdiagnosis3.imagmwmh', locale='en', instance='lava', 
  scope='ucdlava', entity='udsdiagnosis3', property='imagmwmh',
  required='No', proporder='44', attributes='', quickHelp='', 
  label="Imaging findings — moderate white-matter hyperintensity (CHS score 5-6):", context="r",
  list="uds3.udsdiagnosis3.AMYLPET", style="scale";

insert into viewproperty 
set messageCode='*.udsdiagnosis3.imagewmh', locale='en', instance='lava', 
  scope='ucdlava', entity='udsdiagnosis3', property='imagewmh',
  required='No', proporder='45', attributes='', quickHelp='', 
  label="Imaging findings — extensive white-matter hyperintensity (CHS score 7-8):", context="r",
  list="uds3.udsdiagnosis3.AMYLPET", style="scale";

insert into viewproperty 
set messageCode='*.udsdiagnosis3.admut', locale='en', instance='lava', 
  scope='ucdlava', entity='udsdiagnosis3', property='admut',
  required='No', proporder='46', attributes='', quickHelp='', 
  label="Does the subject have a dominantly inherited AD mutation (PSEN1, PSEN2, APP)?:", context="r",
  list="uds3.udsdiagnosis3.AMYLPET", style="scale";

insert into viewproperty 
set messageCode='*.udsdiagnosis3.ftldmut', locale='en', instance='lava', 
  scope='ucdlava', entity='udsdiagnosis3', property='ftldmut',
  required='No', proporder='47', attributes='', quickHelp='', 
  label="Does the subject have a hereditary FTLD mutation (e.g., GRN, VCP, TARBP, FUS, C9orf72, CHMP2B, MAPT)?:", context="r",
  list="uds3.udsdiagnosis3.AMYLPET", style="scale";

insert into viewproperty 
set messageCode='*.udsdiagnosis3.othmut', locale='en', instance='lava', 
  scope='ucdlava', entity='udsdiagnosis3', property='othmut',
  required='No', proporder='48', attributes='', quickHelp='', 
  label="Does the subject have a hereditary mutation other than an AD or FTLD mutation?:", context="r",
  list="uds3.udsdiagnosis3.AMYLPET", style="scale";

insert into viewproperty 
set messageCode='*.udsdiagnosis3.othmutx', locale='en', instance='lava', 
  scope='ucdlava', entity='udsdiagnosis3', property='othmutx',
  required='No', proporder='49', attributes='', quickHelp='', 
  label="If Yes, specify:", context="r", maxLength="6", style="string";

insert into viewproperty 
set messageCode='*.udsdiagnosis3.alzdis', locale='en', instance='lava', 
  scope='ucdlava', entity='udsdiagnosis3', property='alzdis',
  required='No', proporder='50', attributes='', quickHelp='', 
  label="Alzheimer’s disease:", context="r",
  list="uds3.udsdiagnosis3.AbsPres", style="scale";

insert into viewproperty 
set messageCode='*.udsdiagnosis3.alzdisif', locale='en', instance='lava', 
  scope='ucdlava', entity='udsdiagnosis3', property='alzdisif',
  required='No', proporder='51', attributes='', quickHelp='', 
  label="Alzheimer’s disease, primary or contributing:", context="r",
  list="uds3.udsdiagnosis3.EtiologyIf", style="scale";

insert into viewproperty 
set messageCode='*.udsdiagnosis3.lbdis', locale='en', instance='lava', 
  scope='ucdlava', entity='udsdiagnosis3', property='lbdis',
  required='No', proporder='52', attributes='', quickHelp='', 
  label="Lewy body disease:", context="r",
  list="uds3.udsdiagnosis3.AbsPres", style="scale";

insert into viewproperty 
set messageCode='*.udsdiagnosis3.lbdif', locale='en', instance='lava', 
  scope='ucdlava', entity='udsdiagnosis3', property='lbdif',
  required='No', proporder='53', attributes='', quickHelp='', 
  label="Lewy body disease, primary or contributing:", context="r",
  list="uds3.udsdiagnosis3.EtiologyIf", style="scale";

insert into viewproperty 
set messageCode='*.udsdiagnosis3.park', locale='en', instance='lava', 
  scope='ucdlava', entity='udsdiagnosis3', property='park',
  required='No', proporder='54', attributes='', quickHelp='', 
  label="Parkinson?s disease:", context="r",
  list="uds3.udsdiagnosis3.AbsPres", style="scale";

insert into viewproperty 
set messageCode='*.udsdiagnosis3.msa', locale='en', instance='lava', 
  scope='ucdlava', entity='udsdiagnosis3', property='msa',
  required='No', proporder='55', attributes='', quickHelp='', 
  label="Multiple system atrophy:", context="r",
  list="uds3.udsdiagnosis3.AbsPres", style="scale";

insert into viewproperty 
set messageCode='*.udsdiagnosis3.msaif', locale='en', instance='lava', 
  scope='ucdlava', entity='udsdiagnosis3', property='msaif',
  required='No', proporder='56', attributes='', quickHelp='', 
  label="Multiple system atrophy, primary or contributing:", context="r",
  list="uds3.udsdiagnosis3.EtiologyIf", style="scale";

insert into viewproperty 
set messageCode='*.udsdiagnosis3.psp', locale='en', instance='lava', 
  scope='ucdlava', entity='udsdiagnosis3', property='psp',
  required='No', proporder='57', attributes='', quickHelp='', 
  label="Progressive supranuclear palsy (PSP):", context="r",
  list="uds3.udsdiagnosis3.AbsPres", style="scale";

insert into viewproperty 
set messageCode='*.udsdiagnosis3.pspif', locale='en', instance='lava', 
  scope='ucdlava', entity='udsdiagnosis3', property='pspif',
  required='No', proporder='58', attributes='', quickHelp='', 
  label="Progressive supranuclear palsy (PSP), primary or contributing:", context="r",
  list="uds3.udsdiagnosis3.EtiologyIf", style="scale";

insert into viewproperty 
set messageCode='*.udsdiagnosis3.cort', locale='en', instance='lava', 
  scope='ucdlava', entity='udsdiagnosis3', property='cort',
  required='No', proporder='59', attributes='', quickHelp='', 
  label="Corticobasal degeneration (CBD):", context="r",
  list="uds3.udsdiagnosis3.AbsPres", style="scale";

insert into viewproperty 
set messageCode='*.udsdiagnosis3.cortif', locale='en', instance='lava', 
  scope='ucdlava', entity='udsdiagnosis3', property='cortif',
  required='No', proporder='60', attributes='', quickHelp='', 
  label="Corticobasal degeneration (CBD), primary or contributing:", context="r",
  list="uds3.udsdiagnosis3.EtiologyIf", style="scale";

insert into viewproperty 
set messageCode='*.udsdiagnosis3.ftldmo', locale='en', instance='lava', 
  scope='ucdlava', entity='udsdiagnosis3', property='ftldmo',
  required='No', proporder='61', attributes='', quickHelp='', 
  label="FTLD with motor neuron disease:", context="r",
  list="uds3.udsdiagnosis3.AbsPres", style="scale";

insert into viewproperty 
set messageCode='*.udsdiagnosis3.ftldmoif', locale='en', instance='lava', 
  scope='ucdlava', entity='udsdiagnosis3', property='ftldmoif',
  required='No', proporder='62', attributes='', quickHelp='', 
  label="FTLD with motor neuron disease, primary or contributing:", context="r",
  list="uds3.udsdiagnosis3.EtiologyIf", style="scale";

insert into viewproperty 
set messageCode='*.udsdiagnosis3.ftldnos', locale='en', instance='lava', 
  scope='ucdlava', entity='udsdiagnosis3', property='ftldnos',
  required='No', proporder='63', attributes='', quickHelp='', 
  label="FTLD NOS:", context="r",
  list="uds3.udsdiagnosis3.AbsPres", style="scale";

insert into viewproperty 
set messageCode='*.udsdiagnosis3.ftldnoif', locale='en', instance='lava', 
  scope='ucdlava', entity='udsdiagnosis3', property='ftldnoif',
  required='No', proporder='64', attributes='', quickHelp='', 
  label="FTLD NOS, primary or contributing:", context="r",
  list="uds3.udsdiagnosis3.EtiologyIf", style="scale";

insert into viewproperty 
set messageCode='*.udsdiagnosis3.ftldsubt', locale='en', instance='lava', 
  scope='ucdlava', entity='udsdiagnosis3', property='ftldsubt',
  required='No', proporder='65', attributes='', quickHelp='', 
  label="If FTLD (Questions 14a - 14d) = 1 (Present), specify FTLD subtype:", context="r",
  list="uds3.udsdiagnosis3.FTLDSUBT", style="scale";

insert into viewproperty 
set messageCode='*.udsdiagnosis3.ftldsubx', locale='en', instance='lava', 
  scope='ucdlava', entity='udsdiagnosis3', property='ftldsubx',
  required='No', proporder='66', attributes='', quickHelp='', 
  label="Other FTLD, specify:", context="r", maxLength="6", style="string";

insert into viewproperty 
set messageCode='*.udsdiagnosis3.cvd', locale='en', instance='lava', 
  scope='ucdlava', entity='udsdiagnosis3', property='cvd',
  required='No', proporder='67', attributes='', quickHelp='', 
  label="Cerebrovascular disease:", context="r",
  list="uds3.udsdiagnosis3.AbsPres", style="scale";

insert into viewproperty 
set messageCode='*.udsdiagnosis3.cvdif', locale='en', instance='lava', 
  scope='ucdlava', entity='udsdiagnosis3', property='cvdif',
  required='No', proporder='68', attributes='', quickHelp='', 
  label="Cerebrovascular disease, primary or contributing:", context="r",
  list="uds3.udsdiagnosis3.EtiologyIf", style="scale";

insert into viewproperty 
set messageCode='*.udsdiagnosis3.prevstk', locale='en', instance='lava', 
  scope='ucdlava', entity='udsdiagnosis3', property='prevstk',
  required='No', proporder='69', attributes='', quickHelp='', 
  label="Previous symptomatic stroke:", context="r",
  list="list.uds3.common.noyes01", style="scale";

insert into viewproperty 
set messageCode='*.udsdiagnosis3.strokedec', locale='en', instance='lava', 
  scope='ucdlava', entity='udsdiagnosis3', property='strokedec',
  required='No', proporder='70', attributes='', quickHelp='', 
  label="Temporal relationship between stroke and cognitive decline?:", context="r",
  list="list.uds3.common.noyes01", style="scale";

insert into viewproperty 
set messageCode='*.udsdiagnosis3.stkimag', locale='en', instance='lava', 
  scope='ucdlava', entity='udsdiagnosis3', property='stkimag',
  required='No', proporder='71', attributes='', quickHelp='', 
  label="Confirmation of stroke by neuroimaging?:", context="r",
  list="uds3.udsdiagnosis3.ImagEv", style="scale";

insert into viewproperty 
set messageCode='*.udsdiagnosis3.infnetw', locale='en', instance='lava', 
  scope='ucdlava', entity='udsdiagnosis3', property='infnetw',
  required='No', proporder='72', attributes='', quickHelp='', 
  label="Is there imaging evidence of cystic infarction in cognitive network(s)?:", context="r",
  list="uds3.udsdiagnosis3.ImagEv", style="scale";

insert into viewproperty 
set messageCode='*.udsdiagnosis3.infwmh', locale='en', instance='lava', 
  scope='ucdlava', entity='udsdiagnosis3', property='infwmh',
  required='No', proporder='73', attributes='', quickHelp='', 
  label="Is there imaging evidence of cystic infarction, imaging evidence of extensive WMH (CHS grade 7–8), and impairment in executive function?:", context="r",
  list="uds3.udsdiagnosis3.ImagEv", style="scale";

insert into viewproperty 
set messageCode='*.udsdiagnosis3.esstrem', locale='en', instance='lava', 
  scope='ucdlava', entity='udsdiagnosis3', property='esstrem',
  required='No', proporder='74', attributes='', quickHelp='', 
  label="Essential tremor:", context="r",
  list="uds3.udsdiagnosis3.AbsPres", style="scale";

insert into viewproperty 
set messageCode='*.udsdiagnosis3.esstreif', locale='en', instance='lava', 
  scope='ucdlava', entity='udsdiagnosis3', property='esstreif',
  required='No', proporder='75', attributes='', quickHelp='', 
  label="Essential tremor, primary or contributing:", context="r",
  list="uds3.udsdiagnosis3.EtiologyIf", style="scale";

insert into viewproperty 
set messageCode='*.udsdiagnosis3.downs', locale='en', instance='lava', 
  scope='ucdlava', entity='udsdiagnosis3', property='downs',
  required='No', proporder='76', attributes='', quickHelp='', 
  label="Down syndrome:", context="r",
  list="uds3.udsdiagnosis3.AbsPres", style="scale";

insert into viewproperty 
set messageCode='*.udsdiagnosis3.downsif', locale='en', instance='lava', 
  scope='ucdlava', entity='udsdiagnosis3', property='downsif',
  required='No', proporder='77', attributes='', quickHelp='', 
  label="Down syndrome, primary or contributing:", context="r",
  list="uds3.udsdiagnosis3.EtiologyIf", style="scale";

insert into viewproperty 
set messageCode='*.udsdiagnosis3.hunt', locale='en', instance='lava', 
  scope='ucdlava', entity='udsdiagnosis3', property='hunt',
  required='No', proporder='78', attributes='', quickHelp='', 
  label="Huntington’s disease:", context="r",
  list="uds3.udsdiagnosis3.AbsPres", style="scale";

insert into viewproperty 
set messageCode='*.udsdiagnosis3.huntif', locale='en', instance='lava', 
  scope='ucdlava', entity='udsdiagnosis3', property='huntif',
  required='No', proporder='79', attributes='', quickHelp='', 
  label="Huntington’s disease, primary or contributing:", context="r",
  list="uds3.udsdiagnosis3.EtiologyIf", style="scale";

insert into viewproperty 
set messageCode='*.udsdiagnosis3.prion', locale='en', instance='lava', 
  scope='ucdlava', entity='udsdiagnosis3', property='prion',
  required='No', proporder='80', attributes='', quickHelp='', 
  label="Prion disease (CJD, other):", context="r",
  list="uds3.udsdiagnosis3.AbsPres", style="scale";

insert into viewproperty 
set messageCode='*.udsdiagnosis3.prionif', locale='en', instance='lava', 
  scope='ucdlava', entity='udsdiagnosis3', property='prionif',
  required='No', proporder='81', attributes='', quickHelp='', 
  label="Prion disease (CJD, other), primary or contributing:", context="r",
  list="uds3.udsdiagnosis3.EtiologyIf", style="scale";

insert into viewproperty 
set messageCode='*.udsdiagnosis3.brninj', locale='en', instance='lava', 
  scope='ucdlava', entity='udsdiagnosis3', property='brninj',
  required='No', proporder='82', attributes='', quickHelp='', 
  label="Traumatic brain injury:", context="r",
  list="uds3.udsdiagnosis3.AbsPres", style="scale";

insert into viewproperty 
set messageCode='*.udsdiagnosis3.brninjif', locale='en', instance='lava', 
  scope='ucdlava', entity='udsdiagnosis3', property='brninjif',
  required='No', proporder='83', attributes='', quickHelp='', 
  label="Traumatic brain injury, primary or contributing:", context="r",
  list="uds3.udsdiagnosis3.EtiologyIf", style="scale";

insert into viewproperty 
set messageCode='*.udsdiagnosis3.brnincte', locale='en', instance='lava', 
  scope='ucdlava', entity='udsdiagnosis3', property='brnincte',
  required='No', proporder='84', attributes='', quickHelp='', 
  label="If Present, does the subject have symptoms consistent with chronic traumatic encephalopathy?:", context="r",
  list="list.uds3.common.noyesunknown", style="scale";

insert into viewproperty 
set messageCode='*.udsdiagnosis3.hyceph', locale='en', instance='lava', 
  scope='ucdlava', entity='udsdiagnosis3', property='hyceph',
  required='No', proporder='85', attributes='', quickHelp='', 
  label="Normal-pressure hydrocephalus:", context="r",
  list="uds3.udsdiagnosis3.AbsPres", style="scale";

insert into viewproperty 
set messageCode='*.udsdiagnosis3.hycephif', locale='en', instance='lava', 
  scope='ucdlava', entity='udsdiagnosis3', property='hycephif',
  required='No', proporder='86', attributes='', quickHelp='', 
  label="Normal-pressure hydrocephalus, primary or contributing:", context="r",
  list="uds3.udsdiagnosis3.EtiologyIf", style="scale";

insert into viewproperty 
set messageCode='*.udsdiagnosis3.epilep', locale='en', instance='lava', 
  scope='ucdlava', entity='udsdiagnosis3', property='epilep',
  required='No', proporder='87', attributes='', quickHelp='', 
  label="Epilepsy:", context="r",
  list="uds3.udsdiagnosis3.AbsPres", style="scale";

insert into viewproperty 
set messageCode='*.udsdiagnosis3.epilepif', locale='en', instance='lava', 
  scope='ucdlava', entity='udsdiagnosis3', property='epilepif',
  required='No', proporder='88', attributes='', quickHelp='', 
  label="Epilepsy, primary or contributing:", context="r",
  list="uds3.udsdiagnosis3.EtiologyIf", style="scale";

insert into viewproperty 
set messageCode='*.udsdiagnosis3.neop', locale='en', instance='lava', 
  scope='ucdlava', entity='udsdiagnosis3', property='neop',
  required='No', proporder='89', attributes='', quickHelp='', 
  label="CNS neoplasm:", context="r",
  list="uds3.udsdiagnosis3.AbsPres", style="scale";

insert into viewproperty 
set messageCode='*.udsdiagnosis3.neopif', locale='en', instance='lava', 
  scope='ucdlava', entity='udsdiagnosis3', property='neopif',
  required='No', proporder='90', attributes='', quickHelp='', 
  label="CNS neoplasm, primary or contributing:", context="r",
  list="uds3.udsdiagnosis3.EtiologyIf", style="scale";

insert into viewproperty 
set messageCode='*.udsdiagnosis3.neopstat', locale='en', instance='lava', 
  scope='ucdlava', entity='udsdiagnosis3', property='neopstat',
  required='No', proporder='91', attributes='', quickHelp='', 
  label="CNS neoplasm, Benign or Malignant?:", context="r",
  list="uds3.udsdiagnosis3.NEOPSTAT", style="scale";

insert into viewproperty 
set messageCode='*.udsdiagnosis3.hiv', locale='en', instance='lava', 
  scope='ucdlava', entity='udsdiagnosis3', property='hiv',
  required='No', proporder='92', attributes='', quickHelp='', 
  label="Human immunodeficiency virus (HIV):", context="r",
  list="uds3.udsdiagnosis3.AbsPres", style="scale";

insert into viewproperty 
set messageCode='*.udsdiagnosis3.hivif', locale='en', instance='lava', 
  scope='ucdlava', entity='udsdiagnosis3', property='hivif',
  required='No', proporder='93', attributes='', quickHelp='', 
  label="Human immunodeficiency virus (HIV), primary or contributing:", context="r",
  list="uds3.udsdiagnosis3.EtiologyIf", style="scale";

insert into viewproperty 
set messageCode='*.udsdiagnosis3.othcog', locale='en', instance='lava', 
  scope='ucdlava', entity='udsdiagnosis3', property='othcog',
  required='No', proporder='94', attributes='', quickHelp='', 
  label="Cognitive impairment due to other neurologic, genetic, or infectious conditions not listed above:", context="r",
  list="uds3.udsdiagnosis3.AbsPres", style="scale";

insert into viewproperty 
set messageCode='*.udsdiagnosis3.othcogif', locale='en', instance='lava', 
  scope='ucdlava', entity='udsdiagnosis3', property='othcogif',
  required='No', proporder='95', attributes='', quickHelp='', 
  label="Cognitive impairment due to other neurologic, genetic, or infectious conditions not listed above, primary or contributing:", context="r",
  list="uds3.udsdiagnosis3.EtiologyIf", style="scale";

insert into viewproperty 
set messageCode='*.udsdiagnosis3.othcogx', locale='en', instance='lava', 
  scope='ucdlava', entity='udsdiagnosis3', property='othcogx',
  required='No', proporder='96', attributes='', quickHelp='', 
  label="Cognitive impairment due to other neurologic, genetic, or infectious conditions not listed above, If Present, specify::", context="r", maxLength="6", style="string";

insert into viewproperty 
set messageCode='*.udsdiagnosis3.dep', locale='en', instance='lava', 
  scope='ucdlava', entity='udsdiagnosis3', property='dep',
  required='No', proporder='97', attributes='', quickHelp='', 
  label="Active depression:", context="r",
  list="uds3.udsdiagnosis3.AbsPres", style="scale";

insert into viewproperty 
set messageCode='*.udsdiagnosis3.depif', locale='en', instance='lava', 
  scope='ucdlava', entity='udsdiagnosis3', property='depif',
  required='No', proporder='98', attributes='', quickHelp='', 
  label="Active depression, primary or contributing:", context="r",
  list="uds3.udsdiagnosis3.EtiologyIf", style="scale";

insert into viewproperty 
set messageCode='*.udsdiagnosis3.deptreat', locale='en', instance='lava', 
  scope='ucdlava', entity='udsdiagnosis3', property='deptreat',
  required='No', proporder='99', attributes='', quickHelp='', 
  label="If Present, select one::", context="r",
  list="uds3.udsdiagnosis3.DEPTREAT", style="scale";

insert into viewproperty 
set messageCode='*.udsdiagnosis3.bipoldx', locale='en', instance='lava', 
  scope='ucdlava', entity='udsdiagnosis3', property='bipoldx',
  required='No', proporder='100', attributes='', quickHelp='', 
  label="Bipolar disorder:", context="r",
  list="uds3.udsdiagnosis3.AbsPres", style="scale";

insert into viewproperty 
set messageCode='*.udsdiagnosis3.bipoldif', locale='en', instance='lava', 
  scope='ucdlava', entity='udsdiagnosis3', property='bipoldif',
  required='No', proporder='101', attributes='', quickHelp='', 
  label="Bipolar disorder, primary or contributing:", context="r",
  list="uds3.udsdiagnosis3.EtiologyIf", style="scale";

insert into viewproperty 
set messageCode='*.udsdiagnosis3.schizop', locale='en', instance='lava', 
  scope='ucdlava', entity='udsdiagnosis3', property='schizop',
  required='No', proporder='102', attributes='', quickHelp='', 
  label="Schizophrenia or other psychosis:", context="r",
  list="uds3.udsdiagnosis3.AbsPres", style="scale";

insert into viewproperty 
set messageCode='*.udsdiagnosis3.schizoif', locale='en', instance='lava', 
  scope='ucdlava', entity='udsdiagnosis3', property='schizoif',
  required='No', proporder='103', attributes='', quickHelp='', 
  label="Schizophrenia or other psychosis, primary or contributing:", context="r",
  list="uds3.udsdiagnosis3.EtiologyIf", style="scale";

insert into viewproperty 
set messageCode='*.udsdiagnosis3.anxiet', locale='en', instance='lava', 
  scope='ucdlava', entity='udsdiagnosis3', property='anxiet',
  required='No', proporder='104', attributes='', quickHelp='', 
  label="Anxiety disorder:", context="r",
  list="uds3.udsdiagnosis3.AbsPres", style="scale";

insert into viewproperty 
set messageCode='*.udsdiagnosis3.anxietif', locale='en', instance='lava', 
  scope='ucdlava', entity='udsdiagnosis3', property='anxietif',
  required='No', proporder='105', attributes='', quickHelp='', 
  label="Anxiety disorder, primary or contributing:", context="r",
  list="uds3.udsdiagnosis3.EtiologyIf", style="scale";

insert into viewproperty 
set messageCode='*.udsdiagnosis3.delir', locale='en', instance='lava', 
  scope='ucdlava', entity='udsdiagnosis3', property='delir',
  required='No', proporder='106', attributes='', quickHelp='', 
  label="Delirium present:", context="r",
  list="uds3.udsdiagnosis3.AbsPres", style="scale";

insert into viewproperty 
set messageCode='*.udsdiagnosis3.delirif', locale='en', instance='lava', 
  scope='ucdlava', entity='udsdiagnosis3', property='delirif',
  required='No', proporder='107', attributes='', quickHelp='', 
  label="Delirium, primary or contributing:", context="r",
  list="uds3.udsdiagnosis3.EtiologyIf", style="scale";

insert into viewproperty 
set messageCode='*.udsdiagnosis3.ptsddx', locale='en', instance='lava', 
  scope='ucdlava', entity='udsdiagnosis3', property='ptsddx',
  required='No', proporder='108', attributes='', quickHelp='', 
  label="Post-traumatic stress disorder (PTSD):", context="r",
  list="uds3.udsdiagnosis3.AbsPres", style="scale";

insert into viewproperty 
set messageCode='*.udsdiagnosis3.ptsddxif', locale='en', instance='lava', 
  scope='ucdlava', entity='udsdiagnosis3', property='ptsddxif',
  required='No', proporder='109', attributes='', quickHelp='', 
  label="Post-traumatic stress disorder (PTSD), primary or contributing:", context="r",
  list="uds3.udsdiagnosis3.EtiologyIf", style="scale";

insert into viewproperty 
set messageCode='*.udsdiagnosis3.othpsy', locale='en', instance='lava', 
  scope='ucdlava', entity='udsdiagnosis3', property='othpsy',
  required='No', proporder='110', attributes='', quickHelp='', 
  label="Other psychiatric disease:", context="r",
  list="uds3.udsdiagnosis3.AbsPres", style="scale";

insert into viewproperty 
set messageCode='*.udsdiagnosis3.othpsyif', locale='en', instance='lava', 
  scope='ucdlava', entity='udsdiagnosis3', property='othpsyif',
  required='No', proporder='111', attributes='', quickHelp='', 
  label="Other psychiatric disease, primary or contributing:", context="r",
  list="uds3.udsdiagnosis3.EtiologyIf", style="scale";

insert into viewproperty 
set messageCode='*.udsdiagnosis3.othpsyx', locale='en', instance='lava', 
  scope='ucdlava', entity='udsdiagnosis3', property='othpsyx',
  required='No', proporder='112', attributes='', quickHelp='', 
  label="Other psychiatric disease, If Present, specify::", context="r", maxLength="6", style="string";

insert into viewproperty 
set messageCode='*.udsdiagnosis3.alcdem', locale='en', instance='lava', 
  scope='ucdlava', entity='udsdiagnosis3', property='alcdem',
  required='No', proporder='113', attributes='', quickHelp='', 
  label="Cognitive impairment due to alcohol abuse:", context="r",
  list="uds3.udsdiagnosis3.AbsPres", style="scale";

insert into viewproperty 
set messageCode='*.udsdiagnosis3.alcdemif', locale='en', instance='lava', 
  scope='ucdlava', entity='udsdiagnosis3', property='alcdemif',
  required='No', proporder='114', attributes='', quickHelp='', 
  label="Cognitive impairment due to alcohol abuse, primary or contributing:", context="r",
  list="uds3.udsdiagnosis3.EtiologyIf", style="scale";

insert into viewproperty 
set messageCode='*.udsdiagnosis3.alcabuse', locale='en', instance='lava', 
  scope='ucdlava', entity='udsdiagnosis3', property='alcabuse',
  required='No', proporder='115', attributes='', quickHelp='', 
  label="Current alcohol abuse::", context="r",
  list="list.uds3.common.noyesunknown", style="scale";

insert into viewproperty 
set messageCode='*.udsdiagnosis3.impsub', locale='en', instance='lava', 
  scope='ucdlava', entity='udsdiagnosis3', property='impsub',
  required='No', proporder='116', attributes='', quickHelp='', 
  label="Cognitive impairment due to other substance abuse:", context="r",
  list="uds3.udsdiagnosis3.AbsPres", style="scale";

insert into viewproperty 
set messageCode='*.udsdiagnosis3.impsubif', locale='en', instance='lava', 
  scope='ucdlava', entity='udsdiagnosis3', property='impsubif',
  required='No', proporder='117', attributes='', quickHelp='', 
  label="Cognitive impairment due to other substance abuse, primary or contributing:", context="r",
  list="uds3.udsdiagnosis3.EtiologyIf", style="scale";

insert into viewproperty 
set messageCode='*.udsdiagnosis3.dysill', locale='en', instance='lava', 
  scope='ucdlava', entity='udsdiagnosis3', property='dysill',
  required='No', proporder='118', attributes='', quickHelp='', 
  label="Cognitive impairment due to systemic disease/medical illness:", context="r",
  list="uds3.udsdiagnosis3.AbsPres", style="scale";

insert into viewproperty 
set messageCode='*.udsdiagnosis3.dysillif', locale='en', instance='lava', 
  scope='ucdlava', entity='udsdiagnosis3', property='dysillif',
  required='No', proporder='119', attributes='', quickHelp='', 
  label="Cognitive impairment due to systemic disease/ medical illness, primary or contributing:", context="r",
  list="uds3.udsdiagnosis3.EtiologyIf", style="scale";

insert into viewproperty 
set messageCode='*.udsdiagnosis3.meds', locale='en', instance='lava', 
  scope='ucdlava', entity='udsdiagnosis3', property='meds',
  required='No', proporder='120', attributes='', quickHelp='', 
  label="Cognitive impairment due to medications:", context="r",
  list="uds3.udsdiagnosis3.AbsPres", style="scale";

insert into viewproperty 
set messageCode='*.udsdiagnosis3.medsif', locale='en', instance='lava', 
  scope='ucdlava', entity='udsdiagnosis3', property='medsif',
  required='No', proporder='121', attributes='', quickHelp='', 
  label="Cognitive impairment due to medications, primary or contributing:", context="r",
  list="uds3.udsdiagnosis3.EtiologyIf", style="scale";

insert into viewproperty 
set messageCode='*.udsdiagnosis3.cogoth', locale='en', instance='lava', 
  scope='ucdlava', entity='udsdiagnosis3', property='cogoth',
  required='No', proporder='122', attributes='', quickHelp='', 
  label="Cognitive impairment NOS:", context="r",
  list="uds3.udsdiagnosis3.AbsPres", style="scale";

insert into viewproperty 
set messageCode='*.udsdiagnosis3.cogoth1f', locale='en', instance='lava', 
  scope='ucdlava', entity='udsdiagnosis3', property='cogoth1f',
  required='No', proporder='123', attributes='', quickHelp='', 
  label="Cognitive impairment NOS, primary or contributing:", context="r",
  list="uds3.udsdiagnosis3.EtiologyIf", style="scale";

insert into viewproperty 
set messageCode='*.udsdiagnosis3.cogothx', locale='en', instance='lava', 
  scope='ucdlava', entity='udsdiagnosis3', property='cogothx',
  required='No', proporder='124', attributes='', quickHelp='', 
  label="Cognitive impairment NOS, If Present, specify::", context="r", maxLength="6", style="string";

insert into viewproperty 
set messageCode='*.udsdiagnosis3.cogoth2', locale='en', instance='lava', 
  scope='ucdlava', entity='udsdiagnosis3', property='cogoth2',
  required='No', proporder='125', attributes='', quickHelp='', 
  label="Cognitive impairment NOS:", context="r",
  list="uds3.udsdiagnosis3.AbsPres", style="scale";

insert into viewproperty 
set messageCode='*.udsdiagnosis3.cogoth2f', locale='en', instance='lava', 
  scope='ucdlava', entity='udsdiagnosis3', property='cogoth2f',
  required='No', proporder='126', attributes='', quickHelp='', 
  label="Cognitive impairment NOS, primary or contributing:", context="r",
  list="uds3.udsdiagnosis3.EtiologyIf", style="scale";

insert into viewproperty 
set messageCode='*.udsdiagnosis3.cogoth2x', locale='en', instance='lava', 
  scope='ucdlava', entity='udsdiagnosis3', property='cogoth2x',
  required='No', proporder='127', attributes='', quickHelp='', 
  label="Cognitive impairment NOS, If Present, specify::", context="r", maxLength="6", style="string";

insert into viewproperty 
set messageCode='*.udsdiagnosis3.cogoth3', locale='en', instance='lava', 
  scope='ucdlava', entity='udsdiagnosis3', property='cogoth3',
  required='No', proporder='128', attributes='', quickHelp='', 
  label="Cognitive impairment NOS:", context="r",
  list="uds3.udsdiagnosis3.AbsPres", style="scale";

insert into viewproperty 
set messageCode='*.udsdiagnosis3.cogoth3f', locale='en', instance='lava', 
  scope='ucdlava', entity='udsdiagnosis3', property='cogoth3f',
  required='No', proporder='129', attributes='', quickHelp='', 
  label="Cognitive impairment NOS, primary or contributing:", context="r",
  list="uds3.udsdiagnosis3.EtiologyIf", style="scale";

insert into viewproperty 
set messageCode='*.udsdiagnosis3.cogoth3x', locale='en', instance='lava', 
  scope='ucdlava', entity='udsdiagnosis3', property='cogoth3x',
  required='No', proporder='130', attributes='', quickHelp='', 
  label="Cognitive impairment NOS, If Present, specify::", context="r", maxLength="6", style="string";


