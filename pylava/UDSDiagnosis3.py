# -*- coding: utf-8 -*-
from pylava.core.column import *
from pylava.core.instrument import *
fullname='UDS Diagnosis 3'
jname='UDSDiagnosis3'
tname='udsdiagnosis3'

udscode='D1'

ImagEv_list = NumericRangeUds('uds3.udsdiagnosis3.ImagEv',
                        odict([
                           (1,'No'),
                           (2,'Yes'),
                           (9,'Unknown, no relevant imaging data available'),
                        ])
    )
DXMETHOD_list = NumericRangeUds('uds3.udsdiagnosis3.DXMETHOD',
                        odict([
                           (1,'A single clinician'),
                           (2,'A formal consensus panel'),
                           (3,'Other (two or more clinicians or informal group)'),
                        ])
    )


AbsPres_list = NumericRangeUds('uds3.udsdiagnosis3.AbsPres',
                        odict([
                           (0,'Absent'),
                           (1,'Present'),
                        ])
    )


PPASYNT_list = NumericRangeUds('uds3.udsdiagnosis3.PPASYNT',
                        odict([
                           (1,'Meets criteria for semantic PPA'),
                           (2,'Meets criteria for logopenic PPA'),
                           (3,'Meets criteria for nonfluent/ agrammatic PPA'),
                           (4,'PPA other/not otherwise specified'),
                        ])
    )


AMYLPET_list = NumericRangeUds('uds3.udsdiagnosis3.AMYLPET',
                        odict([
                           (0,'No'),
                           (1,'Yes'),
                           (8,'Unknown/not assessed'),
                        ])
    )


EtiologyIf_list = NumericRangeUds('uds3.udsdiagnosis3.EtiologyIf',
                        odict([
                           (1,'Primary'),
                           (2,'Contributing'),
                           (3,'Non-contributing'),
                        ])
    )


FTLDSUBT_list = NumericRangeUds('uds3.udsdiagnosis3.FTLDSUBT',
                        odict([
                           (1,'Tauopathy'),
                           (2,'TDP-43 proteinopathy'),
                           (3,'Other'),
                           (9,'Unknown'),
                        ])
    )


NEOPSTAT_list = NumericRangeUds('uds3.udsdiagnosis3.NEOPSTAT',
                        odict([
                           (1,'Benign'),
                           (2,'Malignant'),
                        ])
    )

DEPTREAT_list = NumericRangeUds('uds3.udsdiagnosis3.DEPTREAT',
                        odict([
                           (0,'Untreated'),
                           (1,'Treated with medications and/or counseling'),
                        ])
    )
 
columns=[
    Choice("DXMETHOD","Diagnosis method — Responses in this form are based on diagnosis by:",lavalist=DXMETHOD_list),
    Choice("NORMCOG","Does the subject have normal cognition and normal behavior?",listname="list.uds3.common.noyes01"),
    Choice("DEMENTED","Does the subject meet criteria for dementia?",listname="list.uds3.common.noyes01"),
    Choice("AMNDEM","Amnestic multidomain dementia syndrome",lavalist=AbsPres_list),
    Choice("PCA","Posterior cortical atrophy syndrome (or primary visual presentation)",lavalist=AbsPres_list),
    Choice("PPASYN","Primary progressive aphasia (PPA) syndrome",lavalist=AbsPres_list),
    Choice("PPASYNT","If PPA present",lavalist=PPASYNT_list),
    Choice("FTDSYN","Behavioral variant FTD (bvFTD) syndrome",lavalist=AbsPres_list),
    Choice("LBDSYN","Lewy body dementia syndrome",lavalist=AbsPres_list),
    Choice("NAMNDEM","Non-amnestic multidomain dementia, not PCA, PPA, bvFTD, or DLB syndrome",lavalist=AbsPres_list),
    Choice("MCIAMEM","Amnestic MCI, single domain (aMCI SD)",lavalist=AbsPres_list),
    Choice("MCIAPLUS","Amnestic MCI, multiple domains (aMCI MD)",lavalist=AbsPres_list),
    Choice("MCIAPLAN","Amnestic MCI, multiple domains — language",listname="list.uds3.common.noyes01"),
    Choice("MCIAPATT","Amnestic MCI, multiple domains — attention",listname="list.uds3.common.noyes01"),
    Choice("MCIAPEX","Amnestic MCI, multiple domains — executive",listname="list.uds3.common.noyes01"),
    Choice("MCIAPVIS","Amnestic MCI, multiple domains — visuospatial",listname="list.uds3.common.noyes01"),
    Choice("MCINON1","Non-amnestic MCI, single domain (naMCI SD)",lavalist=AbsPres_list),
    Choice("MCIN1LAN","Non-Amnestic MCI-single domain — language",listname="list.uds3.common.noyes01"),
    Choice("MCIN1ATT","Non-Amnestic MCI-single domain — attention",listname="list.uds3.common.noyes01"),
    Choice("MCIN1EX","Non-Amnestic MCI-single domain — Executive",listname="list.uds3.common.noyes01"),
    Choice("MCIN1VIS","Non-Amnestic MCI-single domain — Visuospatial",listname="list.uds3.common.noyes01"),
    Choice("MCINON2","Non-Amnestic MCI-multiple domains (naMCI MD)",lavalist=AbsPres_list),
    Choice("MCIN2LAN","Non-Amnestic MCI-multiple domains — language",listname="list.uds3.common.noyes01"),
    Choice("MCIN2ATT","Non-Amnestic MCI-multiple domains — attention",listname="list.uds3.common.noyes01"),
    Choice("MCIN2EX","Non-Amnestic MCI-multiple domains — executive",listname="list.uds3.common.noyes01"),
    Choice("MCIN2VIS","Non-Amnestic MCI-multiple domains — visuospatial",listname="list.uds3.common.noyes01"),
    Choice("IMPNOMCI","Cognitively impaired, not MCI",lavalist=AbsPres_list),
    Choice("AMYLPET","Biomarker findings — abnormally elevated amyloid on PET",lavalist=AMYLPET_list),
    Choice("AMYLCSF","Biomarker findings — abnormally low amyloid in CSF",lavalist=AMYLPET_list),
    Choice("FDGAD","Biomarker finngs — FDGPET pattern of AD",lavalist=AMYLPET_list),
    Choice("HIPPATR","Biomarker findings — hippocampal atrophy",lavalist=AMYLPET_list),
    Choice("TAUPETAD","Biomarker findings — Tau PET evidence for AD",lavalist=AMYLPET_list),
    Choice("CSFTAU","Biomarker findings — abnormally elevated CSF tau or ptau",lavalist=AMYLPET_list),
    Choice("FDGFTLD","Biomarker findings — FDG-PET evidence for frontal or anterior temporal hypometabolism for FTLD",lavalist=AMYLPET_list),
    Choice("TPETFTLD","Biomarker findings — Tau PET evidence for FTLD",lavalist=AMYLPET_list),
    Choice("MRFTLD","Biomarker findings — structural MR evidence for frontal or anterior temporal atrophy for FTLD",lavalist=AMYLPET_list),
    Choice("DATSCAN","Biomarker findings — dopamine transporter scan (DATscan) evidence of Lewy body disease",lavalist=AMYLPET_list),
    Choice("OTHBIOM","Biomarker findings — other",listname="list.uds3.common.noyes01"),
    VarChar("OTHBIOMX","Biomarker findings - Other ( SPECIFY )",60),
    Choice("IMAGLINF","Imaging findings — large vessel infarct(s)",lavalist=AMYLPET_list),
    Choice("IMAGLAC","Imaging findings — lacunar infarct(s)",lavalist=AMYLPET_list),
    Choice("IMAGMACH","Imaging findings — macrohemorrhage(s)",lavalist=AMYLPET_list),
    Choice("IMAGMICH","Imaging findings — microhemorrhage(s)",lavalist=AMYLPET_list),
    Choice("IMAGMWMH","Imaging findings — moderate white-matter hyperintensity (CHS score 5-6)",lavalist=AMYLPET_list),
    Choice("IMAGEWMH","Imaging findings — extensive white-matter hyperintensity (CHS score 7-8)",lavalist=AMYLPET_list),
    Choice("ADMUT","Does the subject have a dominantly inherited AD mutation (PSEN1, PSEN2, APP)?",lavalist=AMYLPET_list),
    Choice("FTLDMUT","Does the subject have a hereditary FTLD mutation (e.g., GRN, VCP, TARBP, FUS, C9orf72, CHMP2B, MAPT)?",lavalist=AMYLPET_list),
    Choice("OTHMUT","Does the subject have a hereditary mutation other than an AD or FTLD mutation?",lavalist=AMYLPET_list),
    VarChar("OTHMUTX","If Yes, specify",60),
    Choice("ALZDIS","Alzheimer’s disease",lavalist=AbsPres_list),
    Choice("ALZDISIF","Alzheimer’s disease, primary or contributing",lavalist=EtiologyIf_list),
    Choice("LBDIS","Lewy body disease",lavalist=AbsPres_list),
    Choice("LBDIF","Lewy body disease, primary or contributing",lavalist=EtiologyIf_list),
    Choice("PARK","Parkinson?s disease",lavalist=AbsPres_list),
    Choice("MSA","Multiple system atrophy",lavalist=AbsPres_list),
    Choice("MSAIF","Multiple system atrophy, primary or contributing",lavalist=EtiologyIf_list),
    Choice("PSP","Progressive supranuclear palsy (PSP)",lavalist=AbsPres_list),
    Choice("PSPIF","Progressive supranuclear palsy (PSP), primary or contributing",lavalist=EtiologyIf_list),
    Choice("CORT","Corticobasal degeneration (CBD)",lavalist=AbsPres_list),
    Choice("CORTIF","Corticobasal degeneration (CBD), primary or contributing",lavalist=EtiologyIf_list),
    Choice("FTLDMO","FTLD with motor neuron disease",lavalist=AbsPres_list),
    Choice("FTLDMOIF","FTLD with motor neuron disease, primary or contributing",lavalist=EtiologyIf_list),
    Choice("FTLDNOS","FTLD NOS",lavalist=AbsPres_list),
    Choice("FTLDNOIF","FTLD NOS, primary or contributing",lavalist=EtiologyIf_list),
    Choice("FTLDSUBT","If FTLD (Questions 14a - 14d) = 1 (Present), specify FTLD subtype",lavalist=FTLDSUBT_list),
    VarChar("FTLDSUBX","Other FTLD, specify",60),
    Choice("CVD","Cerebrovascular disease",lavalist=AbsPres_list),
    Choice("CVDIF","Cerebrovascular disease, primary or contributing",lavalist=EtiologyIf_list),
    Choice("PREVSTK","Previous symptomatic stroke",listname="list.uds3.common.noyes01"),
    Choice("STROKEDEC","Temporal relationship between stroke and cognitive decline?",listname="list.uds3.common.noyes01"),
    Choice("STKIMAG","Confirmation of stroke by neuroimaging?",lavalist=ImagEv_list),
    Choice("INFNETW","Is there imaging evidence of cystic infarction in cognitive network(s)?",lavalist=ImagEv_list),
    Choice("INFWMH","Is there imaging evidence of cystic infarction, imaging evidence of extensive WMH (CHS grade 7–8), and impairment in executive function?",lavalist=ImagEv_list),
    Choice("ESSTREM","Essential tremor",lavalist=AbsPres_list),
    Choice("ESSTREIF","Essential tremor, primary or contributing",lavalist=EtiologyIf_list),
    Choice("DOWNS","Down syndrome",lavalist=AbsPres_list),
    Choice("DOWNSIF","Down syndrome, primary or contributing",lavalist=EtiologyIf_list),
    Choice("HUNT","Huntington’s disease",lavalist=AbsPres_list),
    Choice("HUNTIF","Huntington’s disease, primary or contributing",lavalist=EtiologyIf_list),
    Choice("PRION","Prion disease (CJD, other)",lavalist=AbsPres_list),
    Choice("PRIONIF","Prion disease (CJD, other), primary or contributing",lavalist=EtiologyIf_list),
    Choice("BRNINJ","Traumatic brain injury",lavalist=AbsPres_list),
    Choice("BRNINJIF","Traumatic brain injury, primary or contributing",lavalist=EtiologyIf_list),
    Choice("BRNINCTE","If Present, does the subject have symptoms consistent with chronic traumatic encephalopathy?",listname="list.uds3.common.noyesunknown"),
    Choice("HYCEPH","Normal-pressure hydrocephalus",lavalist=AbsPres_list),
    Choice("HYCEPHIF","Normal-pressure hydrocephalus, primary or contributing",lavalist=EtiologyIf_list),
    Choice("EPILEP","Epilepsy",lavalist=AbsPres_list),
    Choice("EPILEPIF","Epilepsy, primary or contributing",lavalist=EtiologyIf_list),
    Choice("NEOP","CNS neoplasm",lavalist=AbsPres_list),
    Choice("NEOPIF","CNS neoplasm, primary or contributing",lavalist=EtiologyIf_list),
    Choice("NEOPSTAT","CNS neoplasm, Benign or Malignant?",lavalist=NEOPSTAT_list),
    Choice("HIV","Human immunodeficiency virus (HIV)",lavalist=AbsPres_list),
    Choice("HIVIF","Human immunodeficiency virus (HIV), primary or contributing",lavalist=EtiologyIf_list),
    Choice("OTHCOG","Cognitive impairment due to other neurologic, genetic, or infectious conditions not listed above",lavalist=AbsPres_list),
    Choice("OTHCOGIF","Cognitive impairment due to other neurologic, genetic, or infectious conditions not listed above, primary or contributing",lavalist=EtiologyIf_list),
    VarChar("OTHCOGX","Cognitive impairment due to other neurologic, genetic, or infectious conditions not listed above, If Present, specify:",60),
    Choice("DEP","Active depression",lavalist=AbsPres_list),
    Choice("DEPIF","Active depression, primary or contributing",lavalist=EtiologyIf_list),
    Choice("DEPTREAT","If Present, select one:",lavalist=DEPTREAT_list),
    Choice("BIPOLDX","Bipolar disorder",lavalist=AbsPres_list),
    Choice("BIPOLDIF","Bipolar disorder, primary or contributing",lavalist=EtiologyIf_list),
    Choice("SCHIZOP","Schizophrenia or other psychosis",lavalist=AbsPres_list),
    Choice("SCHIZOIF","Schizophrenia or other psychosis, primary or contributing",lavalist=EtiologyIf_list),
    Choice("ANXIET","Anxiety disorder",lavalist=AbsPres_list),
    Choice("ANXIETIF","Anxiety disorder, primary or contributing",lavalist=EtiologyIf_list),
    Choice("DELIR","Delirium present",lavalist=AbsPres_list),
    Choice("DELIRIF","Delirium, primary or contributing",lavalist=EtiologyIf_list),
    Choice("PTSDDX","Post-traumatic stress disorder (PTSD)",lavalist=AbsPres_list),
    Choice("PTSDDXIF","Post-traumatic stress disorder (PTSD), primary or contributing",lavalist=EtiologyIf_list),
    Choice("OTHPSY","Other psychiatric disease",lavalist=AbsPres_list),
    Choice("OTHPSYIF","Other psychiatric disease, primary or contributing",lavalist=EtiologyIf_list),
    VarChar("OTHPSYX","Other psychiatric disease, If Present, specify:",60),
    Choice("ALCDEM","Cognitive impairment due to alcohol abuse",lavalist=AbsPres_list),
    Choice("ALCDEMIF","Cognitive impairment due to alcohol abuse, primary or contributing",lavalist=EtiologyIf_list),
    Choice("ALCABUSE","Current alcohol abuse:",listname="list.uds3.common.noyesunknown"),
    Choice("IMPSUB","Cognitive impairment due to other substance abuse",lavalist=AbsPres_list),
    Choice("IMPSUBIF","Cognitive impairment due to other substance abuse, primary or contributing",lavalist=EtiologyIf_list),
    Choice("DYSILL","Cognitive impairment due to systemic disease/medical illness",lavalist=AbsPres_list),
    Choice("DYSILLIF","Cognitive impairment due to systemic disease/ medical illness, primary or contributing",lavalist=EtiologyIf_list),
    Choice("MEDS","Cognitive impairment due to medications",lavalist=AbsPres_list),
    Choice("MEDSIF","Cognitive impairment due to medications, primary or contributing",lavalist=EtiologyIf_list),
    Choice("COGOTH","Cognitive impairment NOS",lavalist=AbsPres_list),
    Choice("COGOTH1F","Cognitive impairment NOS, primary or contributing",lavalist=EtiologyIf_list),
    VarChar("COGOTHX","Cognitive impairment NOS, If Present, specify:",60),
    Choice("COGOTH2","Cognitive impairment NOS",lavalist=AbsPres_list),
    Choice("COGOTH2F","Cognitive impairment NOS, primary or contributing",lavalist=EtiologyIf_list),
    VarChar("COGOTH2X","Cognitive impairment NOS, If Present, specify:",60),
    Choice("COGOTH3","Cognitive impairment NOS",lavalist=AbsPres_list),
    Choice("COGOTH3F","Cognitive impairment NOS, primary or contributing",lavalist=EtiologyIf_list),
    VarChar("COGOTH3X","Cognitive impairment NOS, If Present, specify:",60),
]

UDSDiagnosis3=Instrument(fullname,jname,tname,columns)
