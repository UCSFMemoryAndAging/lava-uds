# -*- coding: utf-8 -*-
from pylava.core.column import *
from pylava.core.instrument import *
fullname='UDS GDS 3'
jname='UDSGDS3'
tname='udsgds3'

udscode='B6'

NOGDS_list = NumericRangeUds('uds3.udsgds3.NOGDS',
                        odict([
                           (0,'Able to complete (box not checked)'),
                           (1,'Not able to complete (box checked)'),
                        ])
    )


YesNoDna_list = NumericRangeUds('uds3.udsgds3.YesNoDna',
                        odict([
                           (0,'Yes'),
                           (1,'No'),
                           (9,'Did not answer'),
                        ])
    )

NoYesDna_list = NumericRangeUds('uds3.udsgds3.NoYesDna',
                        odict([
                           (0,'Yes'),
                           (1,'No'),
                           (9,'Did not answer'),
                        ])
    )

GDS_list = NumericRangeUds('uds3.udsgds3.GDS',
                        odict([
                           (88,'Did not complete'),
                        ]),
                    maximum=15 
    )

 
columns=[
    Choice("NOGDS","Check this box if the subject is not able to complete the GDS, based on the clinician’s best judgment",lavalist=NOGDS_list),
    Choice("SATIS","Are you basically satisfied with your life?",lavalist=YesNoDna_list),
    Choice("DROPACT","Have you dropped many of your activities and interests?",lavalist=NoYesDna_list),
    Choice("EMPTY","Do you feel that your life is empty?",lavalist=NoYesDna_list),
    Choice("BORED","Do you often get bored?",lavalist=NoYesDna_list),
    Choice("SPIRITS","Are you in good spirits most of the time?",lavalist=YesNoDna_list),
    Choice("AFRAID","Are you afraid that something bad is going to happen to you?",lavalist=NoYesDna_list),
    Choice("HAPPY","Do you feel happy most of the time?",lavalist=YesNoDna_list),
    Choice("HELPLESS","Do you often feel helpless?",lavalist=NoYesDna_list),
    Choice("STAYHOME","Do you prefer to stay at home, rather than going out and doing new things?",lavalist=NoYesDna_list),
    Choice("MEMPROB","Do you feel you have more problems with memory than most?",lavalist=NoYesDna_list),
    Choice("WONDRFUL","Do you think it is wonderful to be alive now?",lavalist=YesNoDna_list),
    Choice("WRTHLESS","Do you feel pretty worthless the way you are now?",lavalist=NoYesDna_list),
    Choice("ENERGY","Do you feel full of energy?",lavalist=YesNoDna_list),
    Choice("HOPELESS","Do you feel that your situation is hopeless?",lavalist=NoYesDna_list),
    Choice("BETTER","Do you think that most people are better off than you are?",lavalist=NoYesDna_list),
    Choice("GDS","Sum of all circled answers for a Total GDS Score",lavalist=GDS_list),
]

UDSGDS3=Instrument(fullname,jname,tname,columns)
