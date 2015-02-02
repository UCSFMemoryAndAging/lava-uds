# -*- coding: utf-8 -*-
from pylava.core.column import *
from pylava.core.instrument import *
fullname='UDS CDR 3'
jname='UDSCDR3'
tname='udscdr3'

columns=[
  DecimalChoice("MEMORY","MEMORY",2,1,listname='uds.b7.cdrScale'),
  DecimalChoice("ORIENT","ORIENTATION",2,1,listname='uds.b7.cdrScale'),
  DecimalChoice("JUDGMENT","JUDGMENT AND PROBLEM-SOLVING",2,1,listname='uds.b7.cdrScale'),
  DecimalChoice("COMMUN","COMMUNITY AFFAIRS",2,1,listname='uds.b7.cdrScale'),
  DecimalChoice("HOMEHOBB","HOME AND HOBBIES",2,1,listname='uds.b7.cdrScale'),
  DecimalChoice("PERSCARE","PERSONAL CARE",2,1,listname='uds.b7.cdrScale'),
  DecimalChoice("CDRSUM","CDR SUM OF BOXES",3,1,listname='ref.totalErrorCodesDecimal'),
  DecimalChoice("CDRGLOB","GLOBAL CDR",2,1,listname='uds.b7.cdrScale'),
  DecimalChoice("COMPORT","Behavior, comportment, and personality",2,1,listname='uds.b7.cdrScale'),
  DecimalChoice("CDRLANG","Language",2,1,listname='uds.b7.cdrScale')
,
]

UDSCDR3=Instrument(fullname,jname,tname,columns)
