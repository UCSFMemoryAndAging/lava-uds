# -*- coding: utf-8 -*-
from pylava.core.column import *
from pylava.core.instrument import *
fullname='UDS NPI 3'
jname='UDSNPI3'
tname='udsnpi3'

udscode='B5'

NPIQINF_list = NumericRangeUds('uds3.udsnpi3.NPIQINF',
                        odict([
                           (1,'Spouse'),
                           (2,'Child'),
                           (3,'Other'),
                        ])
    )


MMSU_list = NumericRangeUds('uds3.udsnpi3.MMSU',
                odict([
                   (1,'Mild (noticeable, but not a significant change)'),
                   (2,'Moderate (significant, but not a dramatic change)'),
                   (3,'Severe (very marked or prominent a dra- matic change)'),
                   (9,'Unknown'),
                ])
)

 
columns=[
    Choice("NPIQINF","NPI CO-PARTICIPANT",listname="uds3.udsnpi3.NPIQINF"),
    VarChar("NPIQINFX","If NPI informant other - specify",60),
    Choice("DEL","DELUSIONS: Does the patient believe that others are stealing from him or her, or planning to harm him or her in some way?",listname="list.uds3.common.noyesunknown"),
    Choice("DELSEV","If DELUSIONS, rate severity",lavalist=MMSU_list),
    Choice("HALL","HALLUCINATIONS: Does the patient act as if he or she hears voices? Does he or she talk to people who are not there?",listname="list.uds3.common.noyesunknown"),
    Choice("HALLSEV","If HALLUCINATIONS, rate severity",lavalist=MMSU_list),
    Choice("AGIT","AGITATION OR AGGRESSION: Is the patient stubborn and resistive to help from others?",listname="list.uds3.common.noyesunknown"),
    Choice("AGITSEV","If AGITATION OR AGGRESSION, rate severity",lavalist=MMSU_list),
    Choice("DEPD","DEPRESSION OR DYSPHORIA: Does the patient act as if he or she is sad or in low spirits? Does he or she cry?",listname="list.uds3.common.noyesunknown"),
    Choice("DEPDSEV","If DEPRESSION OR DYSPHORIA, rate severity",lavalist=MMSU_list),
    Choice("ANX","ANXIETY: Does the patient become upset when separated from you? Does he or she have any other signs of nervousness, such as shortness of breath, sighing, being unable to relax, or feeling excessively tense?",listname="list.uds3.common.noyesunknown"),
    Choice("ANXSEV","If ANXIETY, rate severity",lavalist=MMSU_list),
    Choice("ELAT","ELATION OR EUPHORIA: Does the patient appear to feel too good or act excessively happy?",listname="list.uds3.common.noyesunknown"),
    Choice("ELATSEV","If ELATION OR EUPHORIA, rate severity",lavalist=MMSU_list),
    Choice("APA","APATHY OR INDIFFERENCE: Does the patient seem less interested in his or her usual activities and in the activities and plans of others?",listname="list.uds3.common.noyesunknown"),
    Choice("APASEV","If APATHY OR INDIFFERENCE, rate severity",lavalist=MMSU_list),
    Choice("DISN","DISINHIBITION: Does the patient seem to act impulsively? For example, does the patient talk to strangers as if he or she knows them, or does the patient say things that may hurt people’s feelings?",listname="list.uds3.common.noyesunknown"),
    Choice("DISNSEV","If DISINHIBITION, rate severity:",lavalist=MMSU_list),
    Choice("IRR","IRRITABILITY OR LABILITY: Is the patient impatient or cranky? Does he or she have difficulty coping with delays or waiting for planned activities?",listname="list.uds3.common.noyesunknown"),
    Choice("IRRSEV","If IRRITABILITY OR LABILITY, rate severity",lavalist=MMSU_list),
    Choice("MOT","MOTOR DISTURBANCE: Does the patient engage in repetitive activities, such as pacing around the house, handling buttons, wrapping string, or doing other things repeatedly?",listname="list.uds3.common.noyesunknown"),
    Choice("MOTSEV","If MOTOR DISTURBANCE, rate severity",lavalist=MMSU_list),
    Choice("NITE","NIGHTTIME BEHAVIORS: Does the patient awaken you during the night, rise too early in the morning, or take excessive naps during the day?",listname="list.uds3.common.noyesunknown"),
    Choice("NITESEV","If NIGHTTIME BEHAVIORS, rate severity:",lavalist=MMSU_list),
    Choice("APP","APPETITE AND EATING: Has the patient lost or gained weight, or had a change in the food he or she likes?",listname="list.uds3.common.noyesunknown"),
    Choice("APPSEV","If APPETITE AND EATING, rate severity:",lavalist=MMSU_list),
]

UDSNPI3=Instrument(fullname,jname,tname,columns)
