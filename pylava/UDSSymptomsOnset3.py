# -*- coding: utf-8 -*-
from pylava.core.column import *
from pylava.core.instrument import *
fullname='UDS Symptoms Onset 3'
jname='UDSSymptomsOnset3'
tname='udssymptomsonset3'

udscode='B9'

DECSUB_list = NumericRangeUds('uds3.udssymptomsonset3.DECSUB',
                        odict([
                           (0,'No'),
                           (1,'Yes'),
                           (8,'Could not be assessed/subject too impaired'),
                        ])
    )


DECIN_list = NumericRangeUds('uds3.udssymptomsonset3.DECIN',
                        odict([
                           (0,'No'),
                           (1,'Yes'),
                           (8,'There is no co-participant'),
                        ])
    )


SymptomAge_list = NumericRangeUds('uds3.udssymptomsonset3.SymptomAge',
                    minimum=15 ,
                    maximum=110 
    )


COGFPRED_list = NumericRangeUds('uds3.udssymptomsonset3.COGFPRED',
                        odict([
                           (1,'Memory'),
                           (2,'Orientation'),
                           (3,'Executive function — judgment, planning, problem-solving'),
                           (4,'Language'),
                           (5,'Visuospatial function'),
                           (6,'Attention/concentration'),
                           (7,'Fluctuating cognition'),
                           (8,'Other (specify)'),
                           (99,'Unknown'),
                        ])
    )


MODE_list = NumericRangeUds('uds3.udssymptomsonset3.MODE',
                        odict([
                           (1,'Gradual'),
                           (2,'Subacute'),
                           (3,'Abrupt'),
                           (4,'Other (specify)'),
                           (99,'Unknown'),
                        ])
    )


BEVHAGO_list = NumericRangeUds('uds3.udssymptomsonset3.BEVHAGO',
                        odict([
                           (888,'N/A, not well-formed'),
                        ]),
                    minimum=15 ,
                    maximum=110 
    )


BEFPRED_list = NumericRangeUds('uds3.udssymptomsonset3.BEFPRED',
                        odict([
                           (1,'Apathy / withdrawal'),
                           (2,'Depressed mood'),
                           (3,'Psychosis'),
                           (4,'Disinhibition'),
                           (5,'Irritability'),
                           (6,'Agitation'),
                           (7,'Personality change'),
                           (8,'REM sleep behavior disorder'),
                           (9,'Anxiety'),
                           (10,'Other (specify)'),
                           (99,'Unknown'),
                        ])
    )


MOFRST_list = NumericRangeUds('uds3.udssymptomsonset3.MOFRST',
                        odict([
                           (1,'Gait disorder'),
                           (2,'Falls'),
                           (3,'Tremor'),
                           (4,'Slowness'),
                           (99,'Unknown'),
                        ])
    )

COURSE_list = NumericRangeUds('uds3.udssymptomsonset3.COURSE',
                        odict([
                           (1,'Gradually progressive'),
                           (2,'Stepwise'),
                           (3,'Static'),
                           (4,'Fluctuating'),
                           (5,'Improved'),
                           (8,'N/A'),
                           (9,'Unknown'),
                        ])
    )


FRSTCHG_list = NumericRangeUds('uds3.udssymptomsonset3.FRSTCHG',
                        odict([
                           (1,'Cognition'),
                           (2,'Behavior'),
                           (3,'Motor function'),
                           (8,'N/A'),
                           (9,'Unknown'),
                        ])
    )

 
columns=[
    Choice("DECSUB","Does the subject report a decline in memory (relative to previously attained abilities)?",lavalist=DECSUB_list),
    Choice("DECIN","Does the co-participant report a decline in subject’s memory (relative to previously attained abilities)?",lavalist=DECIN_list),
    Choice("DECCLCOG","Based on the clinician’s judgment, is the subject currently experiencing meaningful impairment in cognition?",listname="list.uds3.common.noyes01"),
    Choice("COGMEM","Indicate whether the subject currently is meaningfully impaired, relative to previously attained abilities, in memory",listname="list.uds3.common.noyesunknown"),
    Choice("COGORI","Indicate whether the subject currently is meaningfully impaired, relative to previously attained abilities, in orientation",listname="list.uds3.common.noyesunknown"),
    Choice("COGJUDG","Indicate whether the subject currently is meaningfully impaired, relative to previously attained abilities, in executive function — judgment, planning, or problem-solving",listname="list.uds3.common.noyesunknown"),
    Choice("COGLANG","Indicate whether the subject currently is meaningfully impaired, relative to previously attained abilities, in language",listname="list.uds3.common.noyesunknown"),
    Choice("COGVIS","Indicate whether the subject currently is meaningfully impaired, relative to previously attained abilities, in visuospatial function",listname="list.uds3.common.noyesunknown"),
    Choice("COGATTN","Indicate whether the subject currently is meaningfully impaired, relative to previously attained abilities, in attention or concentration",listname="list.uds3.common.noyesunknown"),
    Choice("COGFLUC","Indicate whether the subject currently has fluctuating cognition",listname="list.uds3.common.noyesunknown"),
    Choice("COGFLAGO","At what age did the fluctuating cognition begin?",lavalist=SymptomAge_list),
    Choice("COGOTHR","Indicate whether the subject currently is meaningfully impaired, relative to previously attained abilities, in other cognitive domains",listname="list.uds3.common.noyes01"),
    VarChar("COGOTHRX","Specification of other cognitive impairment",60),
    Choice("COGFPRED","Indicate the predominant symptom that was first recognized as a decline in the subject’s cognition",lavalist=COGFPRED_list),
    VarChar("COGFPREX","Specification for Other predominant symptom first recognized as a decline in the subject’s cognition",60),
    Choice("COGMODE","Mode of onset of cognitive symptoms",lavalist=MODE_list),
    VarChar("COGMODEX","Specification for mode of onset of other cognitive symptoms",60),
    Choice("DECAGE","Based on clinician’s assessment, at what age did the cognitive decline begin? (The clinician must use his/her best judgment to estimate an age of onset.)",lavalist=SymptomAge_list),
    Choice("DECCLBE","Based on clinician’s judgment, is the subject currently experiencing any kind of behavioral symptoms?",listname="list.uds3.common.noyes01"),
    Choice("BEAPATHY","Subject currently manifests meaningful change in behavior — Apathy, withdrawal",listname="list.uds3.common.noyesunknown"),
    Choice("BEDEP","Subject currently manifests meaningful change in behavior — Depressed mood",listname="list.uds3.common.noyesunknown"),
    Choice("BEVHALL","Subject currently manifests meaningful change in behavior — Psychosis — Visual hallucinations",listname="list.uds3.common.noyesunknown"),
    Choice("BEVWELL","If yes, are the hallucinations well-formed and detailed?",listname="list.uds3.common.noyesunknown"),
    Choice("BEVHAGO","If well-formed, clear-cut visual hallucinations, at what age did these hallucinations begin?",lavalist=BEVHAGO_list),
    Choice("BEAHALL","Subject currently manifests meaningful change in behavior — Psychosis — Auditory hallucinations",listname="list.uds3.common.noyesunknown"),
    Choice("BEDEL","Subject currently manifests meaningful change in behavior — Psychosis — Abnormal, false, or delusional beliefs",listname="list.uds3.common.noyesunknown"),
    Choice("BEDISIN","Subject currently manifests meaningful change in behavior — Disinhibition",listname="list.uds3.common.noyesunknown"),
    Choice("BEIRRIT","Subject currently manifests meaningful change in behavior — Irritability",listname="list.uds3.common.noyesunknown"),
    Choice("BEAGIT","Subject currently manifests meaningful change in behavior — Agitation",listname="list.uds3.common.noyesunknown"),
    Choice("BEPERCH","Subject currently manifests meaningful change in behavior — Personality change",listname="list.uds3.common.noyesunknown"),
    Choice("BEREM","Subject currently manifests meaningful change in behavior — REM sleep behavior disorder",listname="list.uds3.common.noyesunknown"),
    Choice("BEREMAGO","If Yes, at what age did the REM sleep behavior disorder begin? (The clinician must use his/her best judgment to estimate an age of onset.)",lavalist=SymptomAge_list),
    Choice("BEANX","Subject currently manifests meaningful change in behavior — Anxiety",listname="list.uds3.common.noyesunknown"),
    Choice("BEOTHR","Subject currently manifests meaningful change in behavior — Other",listname="list.uds3.common.noyes01"),
    VarChar("BEOTHRX","Subject currently manifests meaningful change in behavior — Other, specify",60),
    Choice("BEFPRED","Indicate the predominant symptom that was first recognized as a decline in the subject’s behavior",lavalist=BEFPRED_list),
    VarChar("BEFPREDX","Specification of other predominant symptom that was first recognized as a decline in the subject’s behavior",60),
    Choice("BEMODE","Mode of onset of behavioral symptoms",lavalist=MODE_list),
    VarChar("BEMODEX","Specification of other mode of onset of behavioral symptoms",60),
    Choice("BEAGE","Based on the clinician’s assessment, at what age did the behavioral symptoms begin? (The clinician must use his/her best judgment to estimate an age of onset.)",lavalist=SymptomAge_list),
    Choice("DECCLMOT","Based on clinician’s judgement, is the subject currently experiencing any motor symptoms?",listname="list.uds3.common.noyes01"),
    Choice("MOGAIT","Indicate whether the subject currently has meaningful changes in motor function — Gait disorder",listname="list.uds3.common.noyesunknown"),
    Choice("MOFALLS","Indicate whether the subject currently has meaningful changes in motor function — Falls",listname="list.uds3.common.noyesunknown"),
    Choice("MOTREM","Indicate whether the subject currently has meaningful changes in motor function — Tremor",listname="list.uds3.common.noyesunknown"),
    Choice("MOSLOW","Indicate whether the subject currently has meaningful changes in motor function — Slowness",listname="list.uds3.common.noyesunknown"),
    Choice("MOFRST","Indicate the predominant symptom that was first recognized as a decline in the subject’s motor function",lavalist=MOFRST_list),
    Choice("MOMODE","Mode of onset of motor symptoms",lavalist=MODE_list),
    VarChar("MOMODEX","Specification for other mode of onset of motor symptoms",60),
    Choice("MOMOPARK","Were changes in motor function suggestive of parkinsonism?",listname="list.uds3.common.noyesunknown"),
    Choice("PARKAGE","If yes, at what age did the motor symptoms suggestive of parkinsonism begin",lavalist=SymptomAge_list),
    Choice("MOMOALS","Were changes in motor function suggestive of amyotrophic lateral sclerosis?",listname="list.uds3.common.noyesunknown"),
    Choice("ALSAGE","If yes, at what age did the motor symptoms suggestive of ALS begin?",lavalist=SymptomAge_list),
    Choice("MOAGE","Based on clinician’s assessment, at what age did the motor changes begin? (The clinician must use his/her best judgement to estimate an age of onset.)",lavalist=SymptomAge_list),
    Choice("COURSE","Overall course of decline of cognitive/behavioral/ motor syndrome",lavalist=COURSE_list),
    Choice("FRSTCHG","Indicate the predominant domain that was first recognized as changed in the subject",lavalist=FRSTCHG_list),
    Choice("LBDEVAL","Is the subject a potential candidate for further evaluation for Lewy body disease?",listname="list.uds3.common.noyes01"),
    Choice("FTLDEVAL","Is the subject a potential candidate for further evaluation for frontotemporal lobar degeneration?",listname="list.uds3.common.noyes01"),
]

UDSSymptomsOnset3=Instrument(fullname,jname,tname,columns)
