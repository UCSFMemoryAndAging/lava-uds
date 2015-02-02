# -*- coding: utf-8 -*-
from pylava.core.column import *
from pylava.core.instrument import *
fullname='UDS Neuro Findings 3'
jname='UDSNeuroFindings3'
tname='udsneurofindings3'
# formerly UDSAppraisal

udscode='B8'

NORMEXAM_list = NumericRangeUds('uds3.udsneurofindings3.NORMEXAM',
                        odict([
                           (0,'No abnormal findings'),
                           (1,'Yes — abnormal findings were consistent with syndromes listed in Questions 2-8'),
                           (2,'Yes — abnormal findings were consistent with age-associated changes or irrelevant to dementing disorders (e.g., Bell’s palsy)'),
                        ])
    )

columns=[
    Choice("NORMEXAM","Were there abnormal neurological exam findings?",lavalist=NORMEXAM_list),
    Choice("PARKSIGN","Parkinsonian signs",listname="list.uds3.common.noyes01"),
    Choice("RESTTRL","Resting tremor — left arm",listname="uds3.common.NoYesNa"),
    Choice("RESTTRR","Resting tremor — right arm",listname="uds3.common.NoYesNa"),
    Choice("SLOWINGL","Slowing of fine motor movements — left side",listname="uds3.common.NoYesNa"),
    Choice("SLOWINGR","Slowing of fine motor movements — right side",listname="uds3.common.NoYesNa"),
    Choice("RIGIDL","Rigidity — left arm",listname="uds3.common.NoYesNa"),
    Choice("RIGIDR","Rigidity — right arm",listname="uds3.common.NoYesNa"),
    Choice("BRADY","Bradykinesia",listname="uds3.common.NoYesNa"),
    Choice("PARKGAIT","Parkinsonian gait disorder",listname="uds3.common.NoYesNa"),
    Choice("POSTINST","Postural instability",listname="uds3.common.NoYesNa"),
    Choice("CVDSIGNS","Neurological sign considered by examiner to be most likely consistent with cerebrovascular disease",listname="list.uds3.common.noyes01"),
    Choice("CORTDEF","Cortical cognitive deficit (e.g., aphasia, apraxia, neglect)",listname="uds3.common.NoYesNa"),
    Choice("SIVDFIND","Focal or other neurological findings consistend with SIVD",listname="uds3.common.NoYesNa"),
    Choice("CVDMOTL","Motor (may include weakness of combination of face, arm, and leg; reflex changes, etc.) — left side",listname="uds3.common.NoYesNa"),
    Choice("CVDMOTR","Motor (may include weakness of combination of face, arm, and leg; reflex changes, etc.) — right side",listname="uds3.common.NoYesNa"),
    Choice("CORTVISL","Cortical visual field loss — left side",listname="uds3.common.NoYesNa"),
    Choice("CORTVISR","Cortical visual field loss — right side",listname="uds3.common.NoYesNa"),
    Choice("SOMATL","Somatosensory loss — left side",listname="uds3.common.NoYesNa"),
    Choice("SOMATR","Somatosensory loss — right side",listname="uds3.common.NoYesNa"),
    Choice("POSTCORT","Higher cortical visual problem suggesting posterior cortical atrophy (e.g., prosopagnosia, simultagnosia, Balint’s syndrome) or apraxia of gaze",listname="list.uds3.common.noyes01"),
    Choice("PSPCBS","Findings suggestive of progressive supranuclear palsy (PSP), corticobasal syndrome, or other related disorders",listname="list.uds3.common.noyes01"),
    Choice("EYEPSP","Eye movement changes consistent with PSP",listname="uds3.common.NoYesNa"),
    Choice("DYSPSP","Dysarthria consistent with PSP",listname="uds3.common.NoYesNa"),
    Choice("AXIALPSP","Axial rigidity consistent with PSP",listname="uds3.common.NoYesNa"),
    Choice("GAITPSP","Gait disorder consistent with PSP",listname="uds3.common.NoYesNa"),
    Choice("APRAXSP","Apraxia of speech",listname="uds3.common.NoYesNa"),
    Choice("APRAXL","Apraxia — left side",listname="uds3.common.NoYesNa"),
    Choice("APRAXR","Apraxia — right side",listname="uds3.common.NoYesNa"),
    Choice("CORTSENL","Cortical sensory deficits - left side",listname="uds3.common.NoYesNa"),
    Choice("CORTSENR","Cortical sensory deficits — right side",listname="uds3.common.NoYesNa"),
    Choice("ATAXL","Ataxia — left side",listname="uds3.common.NoYesNa"),
    Choice("ATAXR","Ataxia — right side",listname="uds3.common.NoYesNa"),
    Choice("ALIENLML","Alien limb — left side",listname="uds3.common.NoYesNa"),
    Choice("ALIENLMR","Alien limb — right side",listname="uds3.common.NoYesNa"),
    Choice("DYSTONL","Dystonia — left side",listname="uds3.common.NoYesNa"),
    Choice("DYSTONR","Dystonia — right side",listname="uds3.common.NoYesNa"),
    Choice("MYOCLLT","Myoclonus — left side",listname="uds3.common.NoYesNa"),
    Choice("MYOCLRT","Myoclonus — right side",listname="uds3.common.NoYesNa"),
    Choice("ALSFIND","Findings suggesting ALS",listname="list.uds3.common.noyes01"),
    Choice("GAITNPH","Normal pressure hydrocephalus: Gait apraxia",listname="list.uds3.common.noyes01"),
    Choice("OTHNEUR","Other findings (e.g., cerebella ataxia, chorea, myoclonus) (NOTE: For this question, do not specify symptoms that have already been checked above.)",listname="list.uds3.common.noyes01"),
    VarChar("OTHNEURX","Other findings (specify)",60),
]

UDSNeuroFindings3=Instrument(fullname,jname,tname,columns)
