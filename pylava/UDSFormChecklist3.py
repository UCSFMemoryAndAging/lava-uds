# -*- coding: utf-8 -*-
from pylava.core.column import *
from pylava.core.instrument import *
fullname='UDS Form Checklist 3'
jname='UDSFormChecklist3'
tname='udsformchecklist3'

 
columns=[
    Choice("A2SUB","A2 Informant Demographics — submitted",listname="list.uds3.common.noyes01"),
    Choice("A2NOT","If A2 not submitted, specify reason",listname="list.uds3.common.whyunable"),
    VarChar("A2COMM","If A2 not submitted — comments",60),
    Choice("A3SUB","A3 Subject Family History — submitted",listname="list.uds3.common.noyes01"),
    Choice("A3NOT","If A3 not submitted, specify reason (see key)",listname="list.uds3.common.whyunable"),
    VarChar("A3COMM","If A3 not submitted — comments",60),
    Choice("A4SUB","A4 Subject Medications — submitted",listname="list.uds3.common.noyes01"),
    Choice("A4NOT","If A4 not submitted, specify reason (see Key)",listname="list.uds3.common.whyunable"),
    VarChar("A4COMM","If A4 not submitted — comments",60),
    Choice("B1SUB","B1 Evaluation Form: Physical — submitted",listname="list.uds3.common.noyes01"),
    Choice("B1NOT","If B1 not submitted, specify reason (see Key)",listname="list.uds3.common.whyunable"),
    VarChar("B1COMM","If B1 not submitted — comments",60),
    Choice("B5SUB","B5 Behavioral Assessment: NPI-Q — submitted",listname="list.uds3.common.noyes01"),
    Choice("B5NOT","If B5 not submitted, specify reason (see Key)",listname="list.uds3.common.whyunable"),
    VarChar("B5COMM","If B5 not submitted — comments",60),
    Choice("B6SUB","B6 Behavioral Assessment: GDS — submitted",listname="list.uds3.common.noyes01"),
    Choice("B6NOT","If B6 not submitted, specify reason (see Key)",listname="list.uds3.common.whyunable"),
    VarChar("B6COMM","If B6 not submitted — comments",60),
    Choice("B7SUB","B7 Functional Assessment: FAQ — submitted",listname="list.uds3.common.noyes01"),
    Choice("B7NOT","If B7 not submitted, specify reason (see Key)",listname="list.uds3.common.whyunable"),
    VarChar("B7COMM","If B7 not submitted — comments",60),
]

UDSFormChecklist3=Instrument(fullname,jname,tname,columns)
