# -*- coding: utf-8 -*-
from pylava.core.column import *
from pylava.core.instrument import *
fullname='UDS Informant Demo 3'
jname='UDSInformantDemo3'
tname='udsinformantdemo3'


INBIRMO_list = NumericRangeUds('uds3.udsinformantdemo3.INBIRMO',
                        odict([
                           (99,'Unknown'),
                        ]),
                    minimum=1 ,
                    maximum=12 
    )


INBIRYR_list = NumericRangeUds('uds3.udsinformantdemo3.INBIRYR',
                        odict([
                           (9999,'Unknown'),
                        ]),
                    minimum=1875 ,
                    maximum=2010 
    )


INRATER_list = NumericRangeUds('uds3.udsinformantdemo3.INRATER',
                        odict([
                           (1,'White'),
                           (2,'Black or African American'),
                           (3,'American Indian or Alaska Native'),
                           (4,'Native Hawaiian or Other Pacific Islander'),
                           (5,'Asian'),
                           (50,'Other'),
                           (88,'None Reported'),
                           (99,'Unknown'),
                        ])
    )


INRELTO_list = NumericRangeUds('uds3.udsinformantdemo3.INRELTO',
                        odict([
                           (1,'Spouse, partner, or companion'),
                           (2,'Child'),
                           (3,'Sibling'),
                           (4,'Other relative'),
                           (5,'Friend, neighbor, or someone known through family,friends,work,or community'),
                           (6,'Paid caregiver, health care provider, or clinician'),
                        ])
    )


INKNOWN_list = NumericRangeUds('uds3.udsinformantdemo3.INKNOWN',
                        odict([
                           (999,'Unknown'),
                        ]),
                    maximum=120 
    )


INVISITS_list = NumericRangeUds('uds3.udsinformantdemo3.INVISITS',
                        odict([
                           (1,'Daily'),
                           (2,'At least 3 times per week'),
                           (3,'Weekly'),
                           (4,'At least 3 times per month'),
                           (5,'Monthly'),
                           (6,'Less than once a month'),
                        ])
    )


INCALLS_list = NumericRangeUds('uds3.udsinformantdemo3.INCALLS',
                        odict([
                           (1,'Daily'),
                           (2,'At least 3 times per week'),
                           (3,'Weekly'),
                           (5,'Monthly'),
                           (6,'Less than once a month'),
                        ])
    )

 
columns=[
    Choice("INBIRMO","Co-participant’s month of birth:",lavalist=INBIRMO_list),
    Choice("INBIRYR","Co-participant’s year of birth",lavalist=INBIRYR_list),
    Choice("INSEX","Co-participant’s sex:",listname="list.uds3.common.gender"),
    Choice("INHISP","Does the co-participant report being of Hispanic/ Latino ethnicity (i.e., having origins from mainly Spanish-speaking Latin American country), regardless of race?",listname="list.uds3.common.noyesunknown"),
    Choice("INHISPOR","If yes, what are the co-participant’s reported origins?",listname="uds3.udssubjectdemo3.HISPOR"),
    VarChar("INHISPOX","Other (specify):",60),
    Choice("INRACE","What does the co-participant report as his or her race?",listname="uds3.udssubjectdemo3.RACE"),
    VarChar("INRACEX","Other (specify):",60),
    Choice("INRASEC","What additional race does co-participant report?",listname="uds3.udssubjectdemo3.RACESEC"),
    VarChar("INRASECX","Other (specify)",60),
    Choice("INRATER","What additional race, beyond those reported in Questions 4 and 5, does the co-participant report?",lavalist=INRATER_list),
    VarChar("INRATERX","Other (specify)",60),
    Choice("INEDUC","Co-participant’s years of education — use the codes below to report the level achieved; if an attempted level is not completed, enter the number of years completed:",listname="uds3.udssubjectdemo3.EDUC"),
    Choice("INRELTO","What is co-participant’s relationship to subject?",lavalist=INRELTO_list),
    Choice("INKNOWN","How long has the co-participant known the subject?",lavalist=INKNOWN_list),
    Choice("INLIVWTH","Does the co-participant live with the subject?",listname="list.uds3.common.noyes01"),
    Choice("INVISITS","If no, approximate frequency of in-person visits?",lavalist=INVISITS_list),
    Choice("INCALLS","If no, approximate frequency of telephone contact?",lavalist=INCALLS_list),
    Choice("INRELY","Is there a question about the co-participant’s reliability?",listname="list.uds3.common.noyes01"),
]

UDSInformantDemo3=Instrument(fullname,jname,tname,columns)
