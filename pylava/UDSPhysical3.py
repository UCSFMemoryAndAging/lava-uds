# -*- coding: utf-8 -*-
from pylava.core.column import *
from pylava.core.instrument import *
fullname='UDS Physical 3'
jname='UDSPhysical3'
tname='udsphysical3'

udscode='B1'

WEIGHT_list = NumericRangeUds('uds3.udsphysical3.WEIGHT',
                        odict([ (888,'Not assessed'), ]),
                        minimum=50 , maximum=400 
              )

BPSYS_list = NumericRangeUds('uds3.udsphysical3.BPSYS',
                        odict([ (888,'Not assessed'), ]),
                        minimum=70 , maximum=230 
             )

BPDIAS_list = NumericRangeUds('uds3.udsphysical3.BPDIAS',
                        odict([ (888,'Not assessed'), ]),
                        minimum=30 , maximum=140 
              )

HRATE_list = NumericRangeUds('uds3.udsphysical3.HRATE',
                    odict([ (888,'Not assessed'), ]),
                    minimum=33 , maximum=160 
             )
 
columns=[
    DecimalChoice("HEIGHT","Subject height (inches):",4,1),
    Choice("WEIGHT","Subject weight (lbs)",lavalist=WEIGHT_list),
    Choice("BPSYS","Subject blood pressure (sitting)",lavalist=BPSYS_list),
    Choice("BPDIAS","Subject blood pressure (sitting), diastolic",lavalist=BPDIAS_list),
    Choice("HRATE","Subject resting heart rate (pulse)",lavalist=HRATE_list),
    Choice("VISION","Without corrective lenses, is the subject’s vision functionally normal?",listname="list.uds3.common.noyesunknown"),
    Choice("VISCORR","Does the subject usually wear corrective lenses?",listname="list.uds3.common.noyesunknown"),
    Choice("VISWCORR","If yes, is the subject’s vision functionally normal with corrective lenses?",listname="list.uds3.common.noyesunknown"),
    Choice("HEARING","Without a hearing aid(s), is the subject’s hearing functionally normal?",listname="list.uds3.common.noyesunknown"),
    Choice("HEARAID","Does the subject usually wear a hearing aid(s)?",listname="list.uds3.common.noyesunknown"),
    Choice("HEARWAID","If yes, is the subject’s hearing functionally normal with a hearing aid(s)?",listname="list.uds3.common.noyesunknown"),
]

UDSPhysical3=Instrument(fullname,jname,tname,columns)
