# -*- coding: utf-8 -*-
from pylava.core.column import *
from pylava.core.instrument import *
fullname='UDS Health History 3'
jname='UDSHealthHistory3'
tname='udshealthhistory3'

udscode='A5'

SMOKYRS_list = NumericRangeUds('uds3.udshealthhistory3.SMOKYRS',
                        odict([
                           (99,'Unknown'),
                        ]),
                    maximum=87 
    )


PACKSPER_list = NumericRangeUds('uds3.udshealthhistory3.PACKSPER',
                        odict([
                           (1,'1 cigarette to less than 1/2 pack'),
                           (2,'½ pack to less than 1 pack'),
                           (3,'1 pack to 1½ packs'),
                           (4,'1½ packs to 2 packs'),
                           (5,'More than two packs'),
                           (9,'Unknown'),
                        ])
    )


QUITSMOK_list = NumericRangeUds('uds3.udshealthhistory3.QUITSMOK',
                        odict([
                           (888,'N/A'),
                           (999,'Unknown'),
                        ]),
                    minimum=8 ,
                    maximum=110 
    )


ALCFREQ_list = NumericRangeUds('uds3.udshealthhistory3.ALCFREQ',
                        odict([
                           (0,'Less than once a month'),
                           (1,'About once a month'),
                           (2,'About once a week'),
                           (3,'A few times a week'),
                           (4,'Daily or almost daily'),
                           (9,'Unknown'),
                        ])
    )

CondPresence_list = NumericRangeUds('uds3.udshealthhistory3.CondPresence',
                        odict([
                           (0,'Absent'),
                           (1,'Recent/Active'),
                           (2,'Remote/Inactive'),
                           (9,'Unknown'),
                        ])
    )

PD_list = NumericRangeUds('uds3.udshealthhistory3.PD',
                        odict([
                           (0,'Absent'),
                           (1,'Recent/Active'),
                           (9,'Unknown'),
                        ])
    )

TBIBRIEF_list = NumericRangeUds('uds3.udshealthhistory3.TBIBRIEF',
                        odict([
                           (0,'No'),
                           (1,'Single'),
                           (2,'Repeated/multiple'),
                           (9,'Unknown'),
                        ])
    )

DIABTYPE_list = NumericRangeUds('uds3.udshealthhistory3.DIABTYPE',
                        odict([
                           (1,'Type 1'),
                           (2,'Type 2'),
                           (3,'Other type (diabetes insipidus, latent au- toimmune diabetes/type 1.5, gestational diabetes)'),
                           (9,'Unknown'),
                        ])
    )


ARTHTYPE_list = NumericRangeUds('uds3.udshealthhistory3.ARTHTYPE',
                        odict([
                           (1,'Rheumatoid'),
                           (2,'Osteoarthritis'),
                           (3,'Other'),
                           (9,'Unknown'),
                        ])
    )


ARTHUPEX_list = NumericRangeUds('uds3.udshealthhistory3.ARTHUPEX',
                        odict([
                           (0,''),
                           (1,'Upper Extremity'),
                        ])
    )


ARTHLOEX_list = NumericRangeUds('uds3.udshealthhistory3.ARTHLOEX',
                        odict([
                           (0,''),
                           (1,'Lower Extremity'),
                        ])
    )


ARTHSPIN_list = NumericRangeUds('uds3.udshealthhistory3.ARTHSPIN',
                        odict([
                           (0,''),
                           (1,'Spine'),
                        ])
    )


ARTHUNK_list = NumericRangeUds('uds3.udshealthhistory3.ARTHUNK',
                        odict([
                           (0,''),
                           (1,'Unknown'),
                        ])
    )

 
columns=[
    Choice("TOBAC30","Has subject smoked within the last 30 days?",listname="list.uds3.common.noyesunknown"),
    Choice("TOBAC100","Has subject smoked more than 100 cigarettes in his/her life?",listname="list.uds3.common.noyesunknown"),
    Choice("SMOKYRS","Total years smoked",lavalist=SMOKYRS_list),
    Choice("PACKSPER","Average number of packs smoked per day",lavalist=PACKSPER_list),
    Choice("QUITSMOK","If the subject quit smoking, specify age at which he/she last smoked (i.e., quit)",lavalist=QUITSMOK_list),
    Choice("ALCOCCAS","In the past three months, has the subject consumed any alcohol?",listname="list.uds3.common.noyesunknown"),
    Choice("ALCFREQ","During the past three months, how often did the subject have at least one drink of any alcoholic beverage such as wine, beer, malt liquor, or spirits?",lavalist=ALCFREQ_list),
    Choice("CVHATT","Heart attack/cardiac arrest",lavalist=CondPresence_list),
    Choice("HATTMULT","More than one heart attack?",listname="list.uds3.common.noyesunknown"),
    Choice("HATTYEAR","Year of most recent heart attack",listname="uds3.common.year"),
    Choice("CVAFIB","Atrial fibrillation",lavalist=CondPresence_list),
    Choice("CVANGIO","Angioplasty/endarterectomy/stent",lavalist=CondPresence_list),
    Choice("CVBYPASS","Cardiac bypass procedure",lavalist=CondPresence_list),
    Choice("CVPACDEF","Pacemaker and/or defibrillator",lavalist=CondPresence_list),
    Choice("CVCHF","Congestive heart failure",lavalist=CondPresence_list),
    Choice("CVANGINA","Angina",lavalist=CondPresence_list),
    Choice("CVHVALVE","Heart valve replacement or repair",lavalist=CondPresence_list),
    Choice("CVOTHR","Other cardiovascular disease",lavalist=CondPresence_list),
    VarChar("CVOTHRX","Other cardiovascular disease (specify):",60),
    Choice("CBSTROKE","Stroke - by history, not exam (imaging is not required)",lavalist=CondPresence_list),
    Choice("STROKMUL","More than one stroke?",listname="list.uds3.common.noyesunknown"),
    Choice("STROKYR","Year of most recent stroke",listname="uds3.common.year"),
    Choice("CBTIA","Transient ischemic attack (TIA)",lavalist=CondPresence_list),
    Choice("TIAMULT","More than one TIA",listname="list.uds3.common.noyesunknown"),
    Choice("TIAYEAR","Year of most recent TIA",listname="uds3.common.year"),
    Choice("PD","Parkinson’s disease (PD)",lavalist=PD_list),
    Choice("PDYR","Year of PD diagnosis",listname="uds3.common.year"),
    Choice("PDOTHR","Other parkinsonian disorder",lavalist=PD_list),
    Choice("PDOTHRYR","Year of parkinsonian disorder diagnosis",listname="uds3.common.year"),
    Choice("SEIZURES","Seizures",lavalist=CondPresence_list),
    Choice("TBI","Traumatic brain injury (TBI)",lavalist=CondPresence_list),
    Choice("TBIBRIEF","TBI with brief loss of consciousness (< 5 minutes)",lavalist=TBIBRIEF_list),
    Choice("TBIEXTEN","TBI with extended loss of consciousness (5 minutes or longer)",lavalist=TBIBRIEF_list),
    Choice("TBIWOLOS","TBI without loss of consciousness (as might result from military detonations or sports injuries)?",lavalist=TBIBRIEF_list),
    Choice("TBIYEAR","Year of most recent TBI",listname="uds3.common.year"),
    Choice("DIABETES","Diabetes",lavalist=CondPresence_list),
    Choice("DIABTYPE","If Recent/active or Remote/inactive, which type?",lavalist=DIABTYPE_list),
    Choice("HYPERTEN","Hypertension",lavalist=CondPresence_list),
    Choice("HYPERCHO","Hypercholesterolemia",lavalist=CondPresence_list),
    Choice("B12DEF","B12 deficiency",lavalist=CondPresence_list),
    Choice("THYROID","Thyroid disease",lavalist=CondPresence_list),
    Choice("ARTHRIT","Arthritis",lavalist=CondPresence_list),
    Choice("ARTHTYPE","Type of arthritis",lavalist=ARTHTYPE_list),
    VarChar("ARTHTYPX","Other arthritis (specify)",60),
    Choice("ARTHUPEX","Region affected: upper extremity",lavalist=ARTHUPEX_list),
    Choice("ARTHLOEX","Region affected: lower extremity",lavalist=ARTHLOEX_list),
    Choice("ARTHSPIN","Region affected: spine",lavalist=ARTHSPIN_list),
    Choice("ARTHUNK","Region affected: unknown",lavalist=ARTHUNK_list),
    Choice("INCONTU","Incontinence —- Urinary",lavalist=CondPresence_list),
    Choice("INCONTF","Incontinence — Bowel",lavalist=CondPresence_list),
    Choice("APNEA","Sleep apnea",lavalist=CondPresence_list),
    Choice("RBD","REM sleep behavior disorder (RBD)",lavalist=CondPresence_list),
    Choice("INSOMN","Hyposomnia/insomnia",lavalist=CondPresence_list),
    Choice("OTHSLEEP","Other sleep disorder",lavalist=CondPresence_list),
    VarChar("OTHSLEEX","Other sleep disorder (specify)",60),
    Choice("ALCOHOL","Alcohol abuse: Clinically significant impairment occuring over a 12-month period manifested in one of the following areas: work, driving, legal, or social",lavalist=CondPresence_list),
    Choice("ABUSOTHR","Other abused substances: Clinically significant impairment occuring over a 12-month period manifested in one of the following areas: work, driving, legal, or social",lavalist=CondPresence_list),
    VarChar("ABUSX","If Question 6b = 1 (Recent/active) or 2 (Remote/ inactive), then specify abused substance(s)",60),
    Choice("PTSD","Post-traumatic stress disorder (PTSD)",lavalist=CondPresence_list),
    Choice("BIPOLAR","Bipolar disorder",lavalist=CondPresence_list),
    Choice("SCHIZ","Schizophrenia",lavalist=CondPresence_list),
    Choice("DEP2YRS","Active depression in the last two years",listname="list.uds3.common.noyesunknown"),
    Choice("DEPOTHR","Depression episodes more than two years ago",listname="list.uds3.common.noyesunknown"),
    Choice("ANXIETY","Anxiety",lavalist=CondPresence_list),
    Choice("OCD","Obsessive-compulsive disorder (OCD)",lavalist=CondPresence_list),
    Choice("NPSYDEV","Developmental neuropsychiatric disorders (e.g., ASD, ADHD, dyslexia)",lavalist=CondPresence_list),
    Choice("PSYCDIS","Other psychiatric disorders",lavalist=CondPresence_list),
    VarChar("PSYCDISX","If recent/active or remote/ inactive, specify disorder",60),
]

UDSHealthHistory3=Instrument(fullname,jname,tname,columns)
