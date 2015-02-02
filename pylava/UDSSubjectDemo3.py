# -*- coding: utf-8 -*-
from pylava.core.column import *
from pylava.core.instrument import *
fullname='UDS Subject Demo 3'
jname='UDSSubjectDemo3'
tname='udssubjectdemo3'


REASON_list = NumericRangeUds('uds3.udssubjectdemo3.REASON',
                        odict([
                           (1,'To participate in a research study'),
                           (2,'To have a clinical evaluation'),
                           (4,'Both'),
                           (9,'Unknown'),
                        ])
    )


REFERSC_list = NumericRangeUds('uds3.udssubjectdemo3.REFERSC',
                        odict([
                           (1,'Self-referral'),
                           (2,'Non-professional contact'),
                           (3,'ADC participant referral'),
                           (4,'ADC clinician, staff, or investigator referral'),
                           (5,'Nurse, doctor, or other health care provider'),
                           (6,'Other research clinician/staff/investigator'),
                           (8,'Other'),
                           (9,'Unknown'),
                        ])
    )


LEARNED_list = NumericRangeUds('uds3.udssubjectdemo3.LEARNED',
                        odict([
                           (1,'ADC advertisement'),
                           (2,'News article or TV program'),
                           (3,'Conference or community event'),
                           (4,'Another organizations’s media appeal or website'),
                           (8,'Other'),
                           (9,'Unknown'),
                        ])
    )


PRESTAT_list = NumericRangeUds('uds3.udssubjectdemo3.PRESTAT',
                        odict([
                           (1,'Case, patient, proband'),
                           (2,'Control or normal'),
                           (3,'No presumed disease status'),
                        ])
    )


PRESPART_list = NumericRangeUds('uds3.udssubjectdemo3.PRESPART',
                        odict([
                           (1,'Initial evaluation only'),
                           (2,'Longitudinal follow-up planned'),
                        ])
    )


SOURCENW_list = NumericRangeUds('uds3.udssubjectdemo3.SOURCENW',
                        odict([
                           (1,'Primarily ADC-funded'),
                           (2,'Subject is supported primarily by a non- ADC study'),
                        ])
    )


HISPOR_list = NumericRangeUds('uds3.udssubjectdemo3.HISPOR',
                        odict([
                           (1,'Mexican, Chicano, or Mexican-American'),
                           (2,'Puerto Rican'),
                           (3,'Cuban'),
                           (4,'Dominican'),
                           (5,'Central American'),
                           (6,'South American'),
                           (50,'Other (specify)'),
                           (99,'Unknown'),
                        ])
    )


RACE_list = NumericRangeUds('uds3.udssubjectdemo3.RACE',
                        odict([
                           (1,'White'),
                           (2,'Black or African American'),
                           (3,'American Indian or Alaska Native'),
                           (4,'Native Hawaiian or Other Pacific Islander'),
                           (5,'Asian'),
                           (50,'Other (specify)'),
                           (99,'Unknown'),
                        ])
    )


RACESEC_list = NumericRangeUds('uds3.udssubjectdemo3.RACESEC',
                        odict([
                           (1,'White'),
                           (2,'Black or African American'),
                           (3,'American Indian or Alaska Native'),
                           (4,'Native Hawaiian or Other Pacific Islander'),
                           (5,'Asian'),
                           (50,'Other'),
                           (88,'None reported'),
                           (99,'Unknown'),
                        ])
    )


PRIMLANG_list = NumericRangeUds('uds3.udssubjectdemo3.PRIMLANG',
                        odict([
                           (1,'English'),
                           (2,'Spanish'),
                           (3,'Mandarin'),
                           (4,'Cantonese'),
                           (5,'Russian'),
                           (6,'Japanese'),
                           (8,'Other primary language (specify)'),
                           (9,'Unknown'),
                        ])
    )


EDUC_list = NumericRangeUds('uds3.udssubjectdemo3.EDUC',
                        odict([
                           (99,'Unknown'),
                        ]),
                    maximum=36 
    )


MARISTAT_list = NumericRangeUds('uds3.udssubjectdemo3.MARISTAT',
                        odict([
                           (1,'Married'),
                           (2,'Widowed'),
                           (3,'Divorced'),
                           (4,'Separated'),
                           (5,'Never married (or marriage was annulled)'),
                           (6,'Living as married/domestic partner'),
                           (9,'Unknown'),
                        ])
    )


LIVSITUA_list = NumericRangeUds('uds3.udssubjectdemo3.LIVSITUA',
                        odict([
                           (1,'Lives alone'),
                           (2,'Lives with one other person: a spouse or partner'),
                           (3,'Lives with one other person: a relative, friend, or roommate'),
                           (4,'Lives with caregiver who is not spouse/partner, relative, or friend'),
                           (5,'Lives with a group (related or not related) in a private residence'),
                           (6,'Lives in a group home (e.g., assisted living, nursing home, convent)'),
                           (9,'Unknown'),
                        ])
    )


INDEPEND_list = NumericRangeUds('uds3.udssubjectdemo3.INDEPEND',
                        odict([
                           (1,'Able to live independently'),
                           (2,'Requires some assistance with complex activities'),
                           (3,'Requires some assistance with basic activities'),
                           (4,'Completely dependent'),
                           (9,'Unknown'),
                        ])
    )


RESIDENC_list = NumericRangeUds('uds3.udssubjectdemo3.RESIDENC',
                        odict([
                           (1,'Single- or multi-family private residence (apartment, condo, house)'),
                           (2,'Retirement community or independent group living'),
                           (3,'Assisted living, adult family home, or boarding home'),
                           (4,'Skilled nursing facility, nursing home, hospital, or hospice'),
                           (9,'Unknown'),
                        ])
    )


HANDED_list = NumericRangeUds('uds3.udssubjectdemo3.HANDED',
                        odict([
                           (1,'Left-handed'),
                           (2,'Right-handed'),
                           (3,'Ambidextrous'),
                           (9,'Unknown'),
                        ])
    )

 
columns=[
    Choice("REASON","Primary reason for coming to ADC",lavalist=REASON_list),
    Choice("REFERSC","Principal referral source:",lavalist=REFERSC_list),
    Choice("LEARNED","If the referral source was self-referral or a non-professional contact, how did the referral source learn of the ADC?",lavalist=LEARNED_list),
    Choice("PRESTAT","Presumed disease status at enrollment",lavalist=PRESTAT_list),
    Choice("PRESPART","Presumed participation",lavalist=PRESPART_list),
    Choice("SOURCENW","ADC enrollment type",lavalist=SOURCENW_list),
    Choice("BIRTHMO","Subject’s month of birth",listname="list.uds3.common.month"),
    Choice("BIRTHYR","Subject’s year of birth",listname="list.uds3.common.year"),
    Choice("SEX","Subject’s sex",listname="list.uds3.common.gender"),
    Choice("HISPANIC","Does the subject report being of Hispanic/Latino ethnicity (i.e., having origins from a mainly Spanish-speaking Latin American country), regardless of race?",listname="list.uds3.common.noyesunknown"),
    Choice("HISPOR","If yes, what are the subject’s reported origins?",lavalist=HISPOR_list),
    VarChar("HISPORX","Other (specify):",60),
    Choice("RACE","What does the subject report as his or her race?",lavalist=RACE_list),
    VarChar("RACEX","Other (specify):",60),
    Choice("RACESEC","What additional race does subject report?",lavalist=RACESEC_list),
    VarChar("RACESECX","Other (specify):",60),
    Choice("RACETER","What additional race, beyond those reported in Questions 9 and 10, does subject report?",lavalist=RACESEC_list),
    VarChar("RACETERX","Other (specify):",60),
    Choice("PRIMLANG","Subject’s primary language:",lavalist=PRIMLANG_list),
    VarChar("PRIMLANX","Other (specify):",60),
    Choice("EDUC","Subject’s years of education, use the codes below to report the level achieved; if an attempted level is not completed, enter the number of years completed: 12 = high school or GED, 16 = bachelor’s degree, 18 = master’s degree, 20 = doctorate, 99 = unknown",lavalist=EDUC_list),
    Choice("MARISTAT","Subject’s current marital status:",lavalist=MARISTAT_list),
    Choice("LIVSITUA","What is the subject’s living situation?",lavalist=LIVSITUA_list),
    Choice("INDEPEND","What is the subject’s level of independence?",lavalist=INDEPEND_list),
    Choice("RESIDENC","What is the subject’s primary type of residence?",lavalist=RESIDENC_list),
    VarChar("ZIP","ZIP Code (first three digits) of subject’s primary residence:",3),
    Choice("HANDED","Is the subject left- or right-handed (for example, which hand would s/ he normally use to write or throw a ball)?",lavalist=HANDED_list),
]

UDSSubjectDemo3=Instrument(fullname,jname,tname,columns)
