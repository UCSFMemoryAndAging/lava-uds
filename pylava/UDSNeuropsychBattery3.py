# -*- coding: utf-8 -*-
from pylava.core.column import *
from pylava.core.instrument import *
fullname='UDS Neuropsych Battery 3'
jname='UDSNeuropsychBattery3'
tname='udsneuropsychbattery3'

udscode='C2'

MOCALOC_list = NumericRangeUds('uds3.udsneuropsychbattery3.MOCALOC',
                        odict([
                           (1,'In ADC or Clinic'),
                           (2,'In Home'),
                           (3,'In-person - other'),
                        ])
    )

Language_list = NumericRangeUds('uds3.udsneuropsychbattery3.Language',
                        odict([
                           (1,'English'),
                           (2,'Spanish'),
                           (3,'Other'),
                        ])
    )

MOCATOTS_list = NumericRangeUds('uds3.udsneuropsychbattery3.MOCATOTS',
                        odict([
                           (88,'Item not administered'),
                        ]),
                    maximum=30 
    )

MOCATRAI_list = NumericRangeUds('uds3.udsneuropsychbattery3.MOCATRAI',
                        odict([
                           (95,'Physical problem'),
                           (96,'Cognitive/behavior problem'),
                           (97,'Other problem'),
                           (98,'Verbal refusal'),
                        ]),
                    maximum=1 
    )

MOCANAMI_list = NumericRangeUds('uds3.udsneuropsychbattery3.MOCANAMI',
                        odict([
                           (95,'Physical problem'),
                           (96,'Cognitive/behavior problem'),
                           (97,'Other problem'),
                           (98,'Verbal refusal'),
                        ]),
                    maximum=3 
    )

MOCAREGI_list = NumericRangeUds('uds3.udsneuropsychbattery3.MOCAREGI',
                        odict([
                           (95,'Physical problem'),
                           (96,'Cognitive/behavior problem'),
                           (97,'Other problem'),
                           (98,'Verbal refusal'),
                        ]),
                    maximum=10 
    )

MOCADIGI_list = NumericRangeUds('uds3.udsneuropsychbattery3.MOCADIGI',
                        odict([
                           (95,'Physical problem'),
                           (96,'Cognitive/behavior problem'),
                           (97,'Other problem'),
                           (98,'Verbal refusal'),
                        ]),
                    maximum=2 
    )

MOCARECN_list = NumericRangeUds('uds3.udsneuropsychbattery3.MOCARECN',
                        odict([
                           (95,'Physical problem'),
                           (96,'Cognitive/behavior problem'),
                           (97,'Other problem'),
                           (98,'Verbal refusal'),
                        ]),
                    maximum=5 
    )

MOCARECC_list = NumericRangeUds('uds3.udsneuropsychbattery3.MOCARECC',
                        odict([
                           (88,'Not applicable'),
                        ]),
                    maximum=5 
    )

NPSYCLOC_list = NumericRangeUds('uds3.udsneuropsychbattery3.NPSYCLOC',
                        odict([
                           (1,'In ADC or clinic'),
                           (2,'In home'),
                           (3,'In person — other'),
                        ])
    )

CRAFTVRS_list = NumericRangeUds('uds3.udsneuropsychbattery3.CRAFTVRS',
                        odict([
                           (95,'Physical problem'),
                           (96,'Cognitive/behavior problem'),
                           (97,'Other problem'),
                           (98,'Verbal refusal'),
                        ]),
                    maximum=44 
    )

CRAFTURS_list = NumericRangeUds('uds3.udsneuropsychbattery3.CRAFTURS',
                    maximum=25 
    )

UDSBENTC_list = NumericRangeUds('uds3.udsneuropsychbattery3.UDSBENTC',
                        odict([
                           (95,'Physical problem'),
                           (96,'Cognitive/behavior problem'),
                           (97,'Other problem'),
                           (98,'Verbal refusal'),
                        ]),
                    maximum=17 
    )

DIGFORCT_list = NumericRangeUds('uds3.udsneuropsychbattery3.DIGFORCT',
                        odict([
                           (95,'Physical problem'),
                           (96,'Cognitive/behavior problem'),
                           (97,'Other problem'),
                           (98,'Verbal refusal'),
                        ]),
                    maximum=14 
    )

DIGFORSL_list = NumericRangeUds('uds3.udsneuropsychbattery3.DIGFORSL',
                        odict([
                           (0,'0 3-9'),
                        ])
    )

DIGBACLS_list = NumericRangeUds('uds3.udsneuropsychbattery3.DIGBACLS',
                        odict([
                           (0,'0 2-8'),
                        ])
    )

ANIMALS_list = NumericRangeUds('uds3.udsneuropsychbattery3.ANIMALS',
                        odict([
                           (95,'Physical problem'),
                           (96,'Cognitive/behavior problem'),
                           (97,'Other problem'),
                           (98,'Verbal refusal'),
                        ]),
                    maximum=77 
    )

TRAILA_list = NumericRangeUds('uds3.udsneuropsychbattery3.TRAILA',
                        odict([
                           (995,'Physical problem'),
                           (996,'Cognitive/behavior problem'),
                           (997,'Other problem'),
                           (998,'Verbal refusal'),
                        ]),
                    maximum=150 
    )


TRAILARR_list = NumericRangeUds('uds3.udsneuropsychbattery3.TRAILARR',
                    maximum=40 
    )


TRAILALI_list = NumericRangeUds('uds3.udsneuropsychbattery3.TRAILALI',
                    maximum=24 
    )


TRAILB_list = NumericRangeUds('uds3.udsneuropsychbattery3.TRAILB',
                        odict([
                           (995,'Physical problem'),
                           (996,'Cognitive/behavior problem'),
                           (997,'Other problem'),
                           (998,'Verbal refusal'),
                        ]),
                    maximum=300 
    )


CRAFTDTI_list = NumericRangeUds('uds3.udsneuropsychbattery3.CRAFTDTI',
                        odict([
                           (99,'Unknown'),
                        ]),
                    maximum=85 
    )


MINTTOTS_list = NumericRangeUds('uds3.udsneuropsychbattery3.MINTTOTS',
                        odict([
                           (95,'Physical problem'),
                           (96,'Cognitive/behavior problem'),
                           (97,'Other problem'),
                           (98,'Verbal refusal'),
                        ]),
                    maximum=32 
    )


MINTTOTW_list = NumericRangeUds('uds3.udsneuropsychbattery3.MINTTOTW',
                    maximum=32 
    )


MINTSCNC_list = NumericRangeUds('uds3.udsneuropsychbattery3.MINTSCNC',
                        odict([
                           (88,'Not applicable'),
                        ]),
                    maximum=32 
    )


UDSVERFC_list = NumericRangeUds('uds3.udsneuropsychbattery3.UDSVERFC',
                        odict([
                           (95,'Physical problem'),
                           (96,'Cognitive/behavior problem'),
                           (97,'Other problem'),
                           (98,'Verbal refusal'),
                        ]),
                    maximum=40 
    )


UDSVERTN_list = NumericRangeUds('uds3.udsneuropsychbattery3.UDSVERTN',
                    maximum=80 
    )


UDSVERTE_list = NumericRangeUds('uds3.udsneuropsychbattery3.UDSVERTE',
                    maximum=30 
    )


COGSTAT_list = NumericRangeUds('uds3.udsneuropsychbattery3.COGSTAT',
                        odict([
                           (1,'Better than normal for age'),
                           (2,'Normal for age'),
                           (3,'One or two test scores abnormal'),
                           (4,'Three or more scores are abnormal or lower than expected'),
                           (0,'Clinican unable to render opinion'),
                        ])
    )

 
columns=[
    Choice("MOCACOMP","Was any part of MoCA administered?",listname="list.uds3.common.noyes01"),
    Choice("MOCAREAS","Was any part of MoCA administered? If No, enter reason code, 95-98",listname="list.uds3.common.whyunable"),
    Choice("MOCALOC","MoCA was administered?",lavalist=MOCALOC_list),
    Choice("MOCALAN","Language of MoCA administration",lavalist=Language_list),
    VarChar("MOCALANX","Language of MoCA administration — 0ther specify",60),
    Choice("MOCAVIS","Subject was unable to complete one or more sections due to visual impairment",listname="list.uds3.common.noyes01"),
    Choice("MOCAHEAR","Subject was unable to complete one or more sections due to hearing impairment",listname="list.uds3.common.noyes01"),
    Choice("MOCATOTS","MoCA Total Raw Score — uncorrected",lavalist=MOCATOTS_list),
    Choice("MOCATRAI","MoCA: Visuospatial/executive — Trails",lavalist=MOCATRAI_list),
    Choice("MOCACUBE","MoCA: Visuospatial/executive — Cube",lavalist=MOCATRAI_list),
    Choice("MOCACLOC","MoCA: Visuospatial/executive — Clock contour",lavalist=MOCATRAI_list),
    Choice("MOCACLON","MoCA: Visuospatial/executive — Clock numbers",lavalist=MOCATRAI_list),
    Choice("MOCACLOH","MoCA: Visuospatial/executive — Clock hands",lavalist=MOCATRAI_list),
    Choice("MOCANAMI","MoCA: Language — Naming",lavalist=MOCANAMI_list),
    Choice("MOCAREGI","MoCA: Memory — Registration (two trials)",lavalist=MOCAREGI_list),
    Choice("MOCADIGI","MoCA: Attention — Digits",lavalist=MOCADIGI_list),
    Choice("MOCALETT","MoCA: Attention — Letter A",lavalist=MOCATRAI_list),
    Choice("MOCASER7","MoCA: Attention — Serial 7s",lavalist=MOCANAMI_list),
    Choice("MOCAREPE","MoCA: Language — Repetition",lavalist=MOCADIGI_list),
    Choice("MOCAFLUE","MoCA: Language — Fluency",lavalist=MOCATRAI_list),
    Choice("MOCAABST","MoCA: Abstraction",lavalist=MOCADIGI_list),
    Choice("MOCARECN","MoCA: Delayed recall — No cue",lavalist=MOCARECN_list),
    Choice("MOCARECC","MoCA: Delayed recall — Category cue",lavalist=MOCARECC_list),
    Choice("MOCARECR","MoCA: Delayed recall — Recognition",lavalist=MOCARECC_list),
    Choice("MOCAORDT","MoCA: Orientation — Date",lavalist=MOCATRAI_list),
    Choice("MOCAORMO","MoCA: Orientation — Month",lavalist=MOCATRAI_list),
    Choice("MOCAORYR","MoCA: Orientation — Year",lavalist=MOCATRAI_list),
    Choice("MOCAORDY","MoCA: Orientation — Day",lavalist=MOCATRAI_list),
    Choice("MOCAORPL","MoCA: Orientation — Place",lavalist=MOCATRAI_list),
    Choice("MOCAORCT","MoCA: Orientation — City",lavalist=MOCATRAI_list),
    Choice("NPSYCLOC","The tests following the MoCA were administered",lavalist=NPSYCLOC_list),
    Choice("NPSYLAN","Test following MoCA: Language of test administration",lavalist=Language_list),
    VarChar("NPSYLANX","Testa following MoCA: Language of test administration — Other specify",60),
    Choice("CRAFTVRS","Craft Story 21 Recall (Immediate): Total story units recalled, verbatim scoring",lavalist=CRAFTVRS_list),
    Choice("CRAFTURS","Craft Story 21 Recall (Immediate): Total story units recalled, paraphrase scoring",lavalist=CRAFTURS_list),
    Choice("UDSBENTC","Benson Complex Figure Copy: Total Score for copy of Benson figure",lavalist=UDSBENTC_list),
    Choice("DIGFORCT","Number Span Test: Forward - Number of correct trials",lavalist=DIGFORCT_list),
    Choice("DIGFORSL","Number Span Test: Forward — Longest span forward",lavalist=DIGFORSL_list),
    Choice("DIGBACCT","Number Span Test: Backward — Number of correct trials",lavalist=DIGFORCT_list),
    Choice("DIGBACLS","Number Span Test: Backward — Longest span backward",lavalist=DIGBACLS_list),
    Choice("ANIMALS","Category Fluency — Animals: Total number of animals named in 60 seconds",lavalist=ANIMALS_list),
    Choice("VEG","Category Fluency — Vegetables: Total number of vegtables named in 60 seconds",lavalist=ANIMALS_list),
    Choice("TRAILA","Trail Making Test — Part A: Total number of seconds to complete",lavalist=TRAILA_list),
    Choice("TRAILARR","Trail Making Test — Part A: Number of commission errors",lavalist=TRAILARR_list),
    Choice("TRAILALI","Trail Making Test — Part A: Number of correct lines",lavalist=TRAILALI_list),
    Choice("TRAILB","Trail Making Test Part B: Total number of seconds to complete",lavalist=TRAILB_list),
    Choice("TRAILBRR","Trail Making Test Part B: Number of commission errors",lavalist=TRAILARR_list),
    Choice("TRAILBLI","Trail Making Test Part B: Number of correct lines",lavalist=TRAILALI_list),
    Choice("CRAFTDVR","Craft Story 21 Recall (Delayed): Total story units recalled, verbatim scoring",lavalist=CRAFTVRS_list),
    Choice("CRAFTDRE","Craft Story 21 Recall (Delayed): Total story units recalled, paraphrase scoring",lavalist=CRAFTURS_list),
    Choice("CRAFTDTI","Craft Story 21 Recall (Delayed): Delay time",lavalist=CRAFTDTI_list),
    Choice("CRAFTCUE","Craft Story 21 Recall (Delayed): Cue (boy) needed",listname="list.uds3.common.noyes01"),
    Choice("UDSBENTD","Benson Complex Figure Recall — Total score for drawing of Benson figure following 10- to 15-minuted delay",lavalist=UDSBENTC_list),
    Choice("UDSBENRS","Benson Complex Figure Recall — Recognized original stimulus among four options",listname="list.uds3.common.noyes01"),
    Choice("MINTTOTS","Multilingual Naming Test (MINT) — Total score",lavalist=MINTTOTS_list),
    Choice("MINTTOTW","Multilingual Naming Test (MINT) — Total correct without semantic cue",lavalist=MINTTOTW_list),
    Choice("MINTSCNG","Multilingual Naming Test (MINT) — Semantic cues: Number given",lavalist=MINTTOTW_list),
    Choice("MINTSCNC","Multilingual Naming Test (MINT) — Semantic cues: Number correct with cue",lavalist=MINTSCNC_list),
    Choice("MINTPCNG","Multilingual Naming Test (MINT) — Phonemic cues: Number given",lavalist=MINTTOTW_list),
    Choice("MINTPCNC","Multilingual Naming Test (MINT) — Phonemic cues: Number correct with cue",lavalist=MINTSCNC_list),
    Choice("UDSVERFC","Verbal Fluency: Phonemic Test — Number of correct F-words generated in 1 minute",lavalist=UDSVERFC_list),
    Choice("UDSVERFN","Verbal Fluency: Phonemic Test — Number of correct F-words repeated in 1 minute",listname="uds3.udsfamilyhistory3.KIDS"),
    Choice("UDSVERNF","Verbal Fluency: Phonemic Test — Number of non-Fwords and rule violation errors in 1 minute",listname="uds3.udsfamilyhistory3.KIDS"),
    Choice("UDSVERLC","Verbal Fluency: Phonemic Test — Number of correct L-words generated in 1 minute",lavalist=UDSVERFC_list),
    Choice("UDSVERLR","Verbal Fluency: Phonemic Test — Number of correct L-words repeated in 1 minute",listname="uds3.udsfamilyhistory3.KIDS"),
    Choice("UDSVERLN","Verbal Fluency: Phonemic Test — Number of non-Lwords and rule violation errors in 1 minute",listname="uds3.udsfamilyhistory3.KIDS"),
    Choice("UDSVERTN","Verbal Fluency: Phonemic Test — Total number of correct F-words and L-words",lavalist=UDSVERTN_list),
    Choice("UDSVERTE","Verbal Fluency: Phonemic Test — Total number of F-word and L-words repetition errors",lavalist=UDSVERTE_list),
    Choice("UDSVERTI","Verbal Fluency: Phonemic Test — Number of non-F/L-words and rule violation errors",lavalist=UDSVERTE_list),
    Choice("COGSTAT","Overall appraisal: Per the clinician, based on the UDS neuropsychological examination, the subjects cognitive status is deemed",lavalist=COGSTAT_list),
]

UDSNeuropsychBattery3=Instrument(fullname,jname,tname,columns)
