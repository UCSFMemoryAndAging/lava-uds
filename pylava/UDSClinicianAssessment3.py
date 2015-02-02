# -*- coding: utf-8 -*-
# This instrument is new.
from pylava.core.column import *
from pylava.core.instrument import *
fullname='UDS Clinician Assessment 3'
jname='UDSClinicianAssessment3'
tname='udsclinicianassessment3'

udscode='D2'

CANCER_list = NumericRangeUds('uds3.udsclinicianassessment3.CANCER',
                        odict([
                           (0,'No'),
                           (1,'Yes, primary/non-metastatic'),
                           (2,'Yes, metastatic'),
                           (8,'Not assessed'),
                        ])
    )

DIABET_list = NumericRangeUds('uds3.udsclinicianassessment3.DIABET',
                        odict([
                           (0,'No'),
                           (1,'Yes, Type I'),
                           (2,'Yes, Type II'),
                           (3,'Yes, other type'),
                           (9,'Not assessed or unknown'),
                        ])
    )


ARTYPE_list = NumericRangeUds('uds3.udsclinicianassessment3.ARTYPE',
                        odict([
                           (1,'Rheumatoid'),
                           (2,'Osteoarthritis'),
                           (3,'Other (specify)'),
                           (9,'Unknown'),
                        ])
    )

ARTUPEX_list = NumericRangeUds('uds3.udsclinicianassessment3.ARTUPEX',
                        odict([
                           (0,'No'),
                           (1,'Yes'),
                        ])
    )

columns=[
    Choice("CANCER","History of cancer (excluding non-melanoma skin cancer), primary or metastatic",lavalist=CANCER_list),
    VarChar("CANCSITE","Cancer primary site specification",60),
    Choice("DIABET","diabetes",lavalist=DIABET_list),
    Choice("MYOINF","myocardial infarct",listname="uds3.common.NoYesNa"),
    Choice("CONGHRT","congestive heart failure",listname="uds3.common.NoYesNa"),
    Choice("AFIBRILL","Atrial fibrillation",listname="uds3.common.NoYesNa"),
    Choice("HYPERT","hypertension",listname="uds3.common.NoYesNa"),
    Choice("ANGINA","angina",listname="uds3.common.NoYesNa"),
    Choice("HYPCHOL","hypercholesterolemia",listname="uds3.common.NoYesNa"),
    Choice("VB12DEF","B12 deficiency",listname="uds3.common.NoYesNa"),
    Choice("THYDIS","thyroid disease",listname="uds3.common.NoYesNa"),
    Choice("ARTH","arthritis",listname="uds3.common.NoYesNa"),
    Choice("ARTYPE","Arthritis type",lavalist=ARTYPE_list),
    VarChar("ARTYPEX","Other arthritis type specification",60),
    Choice("ARTUPEX","Arthritis region affected — upper extremity",lavalist=ARTUPEX_list),
    Choice("ARTLOEX","Arthritis region affected — lower extremity",listname="uds3.udsclinicianassessment3.ARTUPEX"),
    Choice("ARTSPIN","Arthritis region affected — Spine",listname="uds3.udsclinicianassessment3.ARTUPEX"),
    Choice("ARTUNKN","Arthritis region affected — unknown",listname="uds3.udsclinicianassessment3.ARTUPEX"),
    Choice("URINEINC","incontinence, urinary",listname="uds3.common.NoYesNa"),
    Choice("BOWLINC","Incontinence, bowel",listname="uds3.common.NoYesNa"),
    Choice("SLEEPAP","Sleep apnea",listname="uds3.common.NoYesNa"),
    Choice("REMDIS","REM sleep behavior disorder (RBD)",listname="uds3.common.NoYesNa"),
    Choice("HYPOSOM","hyposomnia/insomnia",listname="uds3.common.NoYesNa"),
    Choice("SLEEPOTH","other sleep disorder",listname="uds3.common.NoYesNa"),
    VarChar("SLEEPOTX","Other sleep disorder specification",60),
    Choice("ANGIOCP","Carotid procedure: angioplasty, endarterectomy, or stent",listname="uds3.common.NoYesNa"),
    Choice("ANGIOPCI","Percutaneous coronary intervention: angioplasty and/or stent",listname="uds3.common.NoYesNa"),
    Choice("PACEMAKE","Procedure: pacemaker and/or defibrillator",listname="uds3.common.NoYesNa"),
    Choice("HVALVE","Procedure: heart valve replacement or repair",listname="uds3.common.NoYesNa"),
    Choice("ANTIENC","Antibody-mediated encephalopathy",listname="uds3.common.NoYesNa"),
    VarChar("ANTIENCX","Antibody-mediated encephalopathy, specify",60),
    Choice("OTHCOND","Other medical conditions or procedures not listed above",listname="uds3.common.NoYesNa"),
    VarChar("OTHCONDX","Other medical conditions specification",60),
]

UDSClinicianAssessment3=Instrument(fullname,jname,tname,columns)
