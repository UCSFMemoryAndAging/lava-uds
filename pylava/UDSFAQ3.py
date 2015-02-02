# -*- coding: utf-8 -*-
from pylava.core.column import *
from pylava.core.instrument import *
fullname='UDS FAQ 3'
jname='UDSFAQ3'
tname='udsfaq3'

udscode='B7'

Difficulty_list = NumericRangeUds('uds3.udsfaq3.Difficulty',
                        odict([
                           (0,'Normal'),
                           (1,'Has difficulty, but does by self'),
                           (2,'Requires assistance'),
                           (3,'Dependent'),
                           (8,'Not applicable (e.g., never did)'),
                           (9,'Unknown'),
                        ])
    )
 
columns=[
    Choice("BILLS","In the past four weeks, did the subject have any difficulty or need help with: Writing checks, paying bills, or balancing a checkbook",lavalist=Difficulty_list),
    Choice("TAXES","In the past four weeks, did the subject have any difficulty or need help with: Assembling tax records, business affairs, or other papers",lavalist=Difficulty_list),
    Choice("SHOPPING","In the past four weeks, did the subject have any difficulty or need help with: Shopping alone for clothes, household necessities, or groceries",lavalist=Difficulty_list),
    Choice("GAMES","In the past four weeks, did the subject have any difficulty or need help with: Playing a game of skill such as bridge or chess, working on a hobby",lavalist=Difficulty_list),
    Choice("STOVE","In the past four weeks, did the subject have any difficulty or need help with: Heating water, making a cup of coffee, turning off the stove",lavalist=Difficulty_list),
    Choice("MEALPREP","In the past four weeks, did the subject have any difficulty or need help with: Preparing a balanced meal",lavalist=Difficulty_list),
    Choice("EVENTS","In the past four weeks, did the subject have any difficulty or need help with: Keeping track of current events",lavalist=Difficulty_list),
    Choice("PAYATTN","In the past four weeks, did the subject have any difficulty or need help with: Paying attention to and understanding a TV program, book, or magazine",lavalist=Difficulty_list),
    Choice("REMDATES","In the past four weeks, did the subject have any difficulty or need help with: Remembering appointments, family occasions, holidays, medications",lavalist=Difficulty_list),
    Choice("TRAVEL","In the past four weeks, did the subject have any difficulty or need help with: Traveling out of the neighborhood, driving, or arranging to take public transportation",lavalist=Difficulty_list),
]

UDSFAQ3=Instrument(fullname,jname,tname,columns)
