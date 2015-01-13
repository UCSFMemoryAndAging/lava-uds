delete from hibernateproperty where entity="udsneuropsychbattery3";
delete from viewproperty where entity="udsneuropsychbattery3";
delete from instrument where InstrName="UDS Neuropsych Battery 3";
drop table if exists udsneuropsychbattery3;



-- Initialize table
CREATE TABLE udsneuropsychbattery3 (
  InstrID int(10) NOT NULL,
    `MOCACOMP` UNMAPPED TYPE
    `MOCAREAS` UNMAPPED TYPE
    `MOCALOC` UNMAPPED TYPE
    `MOCALAN` UNMAPPED TYPE
    `MOCALANX` varchar(60) DEFAULT NULL,
    `MOCAVIS` UNMAPPED TYPE
    `MOCAHEAR` UNMAPPED TYPE
    `MOCATOTS` UNMAPPED TYPE
    `MOCATRAI` UNMAPPED TYPE
    `MOCACUBE` UNMAPPED TYPE
    `MOCACLOC` UNMAPPED TYPE
    `MOCACLON` UNMAPPED TYPE
    `MOCACLOH` UNMAPPED TYPE
    `MOCANAMI` UNMAPPED TYPE
    `MOCAREGI` UNMAPPED TYPE
    `MOCADIGI` UNMAPPED TYPE
    `MOCALETT` UNMAPPED TYPE
    `MOCASER7` UNMAPPED TYPE
    `MOCAREPE` UNMAPPED TYPE
    `MOCAFLUE` UNMAPPED TYPE
    `MOCAABST` UNMAPPED TYPE
    `MOCARECN` UNMAPPED TYPE
    `MOCARECC` UNMAPPED TYPE
    `MOCARECR` UNMAPPED TYPE
    `MOCAORDT` UNMAPPED TYPE
    `MOCAORMO` UNMAPPED TYPE
    `MOCAORYR` UNMAPPED TYPE
    `MOCAORDY` UNMAPPED TYPE
    `MOCAORPL` UNMAPPED TYPE
    `MOCAORCT` UNMAPPED TYPE
    `NPSYCLOC` UNMAPPED TYPE
    `NPSYLAN` UNMAPPED TYPE
    `NPSYLANX` varchar(60) DEFAULT NULL,
    `CRAFTVRS` UNMAPPED TYPE
    `CRAFTURS` UNMAPPED TYPE
    `UDSBENTC` UNMAPPED TYPE
    `DIGFORCT` UNMAPPED TYPE
    `DIGFORSL` UNMAPPED TYPE
    `DIGBACCT` UNMAPPED TYPE
    `DIGBACLS` UNMAPPED TYPE
    `ANIMALS` UNMAPPED TYPE
    `VEG` UNMAPPED TYPE
    `TRAILA` UNMAPPED TYPE
    `TRAILARR` UNMAPPED TYPE
    `TRAILALI` UNMAPPED TYPE
    `TRAILB` UNMAPPED TYPE
    `TRAILBRR` UNMAPPED TYPE
    `TRAILBLI` UNMAPPED TYPE
    `CRAFTDVR` UNMAPPED TYPE
    `CRAFTDRE` UNMAPPED TYPE
    `CRAFTDTI` UNMAPPED TYPE
    `CRAFTCUE` UNMAPPED TYPE
    `UDSBENTD` UNMAPPED TYPE
    `UDSBENRS` UNMAPPED TYPE
    `MINTTOTS` UNMAPPED TYPE
    `MINTTOTW` UNMAPPED TYPE
    `MINTSCNG` UNMAPPED TYPE
    `MINTSCNC` UNMAPPED TYPE
    `MINTPCNG` UNMAPPED TYPE
    `MINTPCNC` UNMAPPED TYPE
    `UDSVERFC` UNMAPPED TYPE
    `UDSVERFN` UNMAPPED TYPE
    `UDSVERNF` UNMAPPED TYPE
    `UDSVERLC` UNMAPPED TYPE
    `UDSVERLR` UNMAPPED TYPE
    `UDSVERLN` UNMAPPED TYPE
    `UDSVERTN` UNMAPPED TYPE
    `UDSVERTE` UNMAPPED TYPE
    `UDSVERTI` UNMAPPED TYPE
    `COGSTAT` UNMAPPED TYPE

  PRIMARY KEY (`InstrID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
-- Add to instrument table
insert into instrument 
set InstrName="UDS Neuropsych Battery 3", TableName="udsneuropsychbattery3", 
  FormName="LavaWebOnly", HasVersion=0;
-- Add columns to viewproperty table
insert into viewproperty 
set messageCode='*.udsneuropsychbattery3.mocacomp', locale='en', instance='lava', 
  scope='ucdlava', entity='udsneuropsychbattery3', property='mocacomp',
  required='No', proporder='1', attributes='', quickHelp='', 
  label="Was any part of MoCA administered?:", context="r",
  list="list.uds3.common.noyes01", style="scale";

insert into viewproperty 
set messageCode='*.udsneuropsychbattery3.mocareas', locale='en', instance='lava', 
  scope='ucdlava', entity='udsneuropsychbattery3', property='mocareas',
  required='No', proporder='2', attributes='', quickHelp='', 
  label="Was any part of MoCA administered? If No, enter reason code, 95-98:", context="r",
  list="list.uds3.common.whyunable", style="scale";

insert into viewproperty 
set messageCode='*.udsneuropsychbattery3.mocaloc', locale='en', instance='lava', 
  scope='ucdlava', entity='udsneuropsychbattery3', property='mocaloc',
  required='No', proporder='3', attributes='', quickHelp='', 
  label="MoCA was administered?:", context="r",
  list="uds3.udsneuropsychbattery3.MOCALOC", style="scale";

insert into viewproperty 
set messageCode='*.udsneuropsychbattery3.mocalan', locale='en', instance='lava', 
  scope='ucdlava', entity='udsneuropsychbattery3', property='mocalan',
  required='No', proporder='4', attributes='', quickHelp='', 
  label="Language of MoCA administration:", context="r",
  list="uds3.udsneuropsychbattery3.Language", style="scale";

insert into viewproperty 
set messageCode='*.udsneuropsychbattery3.mocalanx', locale='en', instance='lava', 
  scope='ucdlava', entity='udsneuropsychbattery3', property='mocalanx',
  required='No', proporder='5', attributes='', quickHelp='', 
  label="Language of MoCA administration — 0ther specify:", context="r", maxLength="6", style="string";

insert into viewproperty 
set messageCode='*.udsneuropsychbattery3.mocavis', locale='en', instance='lava', 
  scope='ucdlava', entity='udsneuropsychbattery3', property='mocavis',
  required='No', proporder='6', attributes='', quickHelp='', 
  label="Subject was unable to complete one or more sections due to visual impairment:", context="r",
  list="list.uds3.common.noyes01", style="scale";

insert into viewproperty 
set messageCode='*.udsneuropsychbattery3.mocahear', locale='en', instance='lava', 
  scope='ucdlava', entity='udsneuropsychbattery3', property='mocahear',
  required='No', proporder='7', attributes='', quickHelp='', 
  label="Subject was unable to complete one or more sections due to hearing impairment:", context="r",
  list="list.uds3.common.noyes01", style="scale";

insert into viewproperty 
set messageCode='*.udsneuropsychbattery3.mocatots', locale='en', instance='lava', 
  scope='ucdlava', entity='udsneuropsychbattery3', property='mocatots',
  required='No', proporder='8', attributes='', quickHelp='', 
  label="MoCA Total Raw Score — uncorrected:", context="r",
  list="uds3.udsneuropsychbattery3.MOCATOTS", style="scale";

insert into viewproperty 
set messageCode='*.udsneuropsychbattery3.mocatrai', locale='en', instance='lava', 
  scope='ucdlava', entity='udsneuropsychbattery3', property='mocatrai',
  required='No', proporder='9', attributes='', quickHelp='', 
  label="MoCA: Visuospatial/executive — Trails:", context="r",
  list="uds3.udsneuropsychbattery3.MOCATRAI", style="scale";

insert into viewproperty 
set messageCode='*.udsneuropsychbattery3.mocacube', locale='en', instance='lava', 
  scope='ucdlava', entity='udsneuropsychbattery3', property='mocacube',
  required='No', proporder='10', attributes='', quickHelp='', 
  label="MoCA: Visuospatial/executive — Cube:", context="r",
  list="uds3.udsneuropsychbattery3.MOCATRAI", style="scale";

insert into viewproperty 
set messageCode='*.udsneuropsychbattery3.mocacloc', locale='en', instance='lava', 
  scope='ucdlava', entity='udsneuropsychbattery3', property='mocacloc',
  required='No', proporder='11', attributes='', quickHelp='', 
  label="MoCA: Visuospatial/executive — Clock contour:", context="r",
  list="uds3.udsneuropsychbattery3.MOCATRAI", style="scale";

insert into viewproperty 
set messageCode='*.udsneuropsychbattery3.mocaclon', locale='en', instance='lava', 
  scope='ucdlava', entity='udsneuropsychbattery3', property='mocaclon',
  required='No', proporder='12', attributes='', quickHelp='', 
  label="MoCA: Visuospatial/executive — Clock numbers:", context="r",
  list="uds3.udsneuropsychbattery3.MOCATRAI", style="scale";

insert into viewproperty 
set messageCode='*.udsneuropsychbattery3.mocacloh', locale='en', instance='lava', 
  scope='ucdlava', entity='udsneuropsychbattery3', property='mocacloh',
  required='No', proporder='13', attributes='', quickHelp='', 
  label="MoCA: Visuospatial/executive — Clock hands:", context="r",
  list="uds3.udsneuropsychbattery3.MOCATRAI", style="scale";

insert into viewproperty 
set messageCode='*.udsneuropsychbattery3.mocanami', locale='en', instance='lava', 
  scope='ucdlava', entity='udsneuropsychbattery3', property='mocanami',
  required='No', proporder='14', attributes='', quickHelp='', 
  label="MoCA: Language — Naming:", context="r",
  list="uds3.udsneuropsychbattery3.MOCANAMI", style="scale";

insert into viewproperty 
set messageCode='*.udsneuropsychbattery3.mocaregi', locale='en', instance='lava', 
  scope='ucdlava', entity='udsneuropsychbattery3', property='mocaregi',
  required='No', proporder='15', attributes='', quickHelp='', 
  label="MoCA: Memory — Registration (two trials):", context="r",
  list="uds3.udsneuropsychbattery3.MOCAREGI", style="scale";

insert into viewproperty 
set messageCode='*.udsneuropsychbattery3.mocadigi', locale='en', instance='lava', 
  scope='ucdlava', entity='udsneuropsychbattery3', property='mocadigi',
  required='No', proporder='16', attributes='', quickHelp='', 
  label="MoCA: Attention — Digits:", context="r",
  list="uds3.udsneuropsychbattery3.MOCADIGI", style="scale";

insert into viewproperty 
set messageCode='*.udsneuropsychbattery3.mocalett', locale='en', instance='lava', 
  scope='ucdlava', entity='udsneuropsychbattery3', property='mocalett',
  required='No', proporder='17', attributes='', quickHelp='', 
  label="MoCA: Attention — Letter A:", context="r",
  list="uds3.udsneuropsychbattery3.MOCATRAI", style="scale";

insert into viewproperty 
set messageCode='*.udsneuropsychbattery3.mocaser7', locale='en', instance='lava', 
  scope='ucdlava', entity='udsneuropsychbattery3', property='mocaser7',
  required='No', proporder='18', attributes='', quickHelp='', 
  label="MoCA: Attention — Serial 7s:", context="r",
  list="uds3.udsneuropsychbattery3.MOCANAMI", style="scale";

insert into viewproperty 
set messageCode='*.udsneuropsychbattery3.mocarepe', locale='en', instance='lava', 
  scope='ucdlava', entity='udsneuropsychbattery3', property='mocarepe',
  required='No', proporder='19', attributes='', quickHelp='', 
  label="MoCA: Language — Repetition:", context="r",
  list="uds3.udsneuropsychbattery3.MOCADIGI", style="scale";

insert into viewproperty 
set messageCode='*.udsneuropsychbattery3.mocaflue', locale='en', instance='lava', 
  scope='ucdlava', entity='udsneuropsychbattery3', property='mocaflue',
  required='No', proporder='20', attributes='', quickHelp='', 
  label="MoCA: Language — Fluency:", context="r",
  list="uds3.udsneuropsychbattery3.MOCATRAI", style="scale";

insert into viewproperty 
set messageCode='*.udsneuropsychbattery3.mocaabst', locale='en', instance='lava', 
  scope='ucdlava', entity='udsneuropsychbattery3', property='mocaabst',
  required='No', proporder='21', attributes='', quickHelp='', 
  label="MoCA: Abstraction:", context="r",
  list="uds3.udsneuropsychbattery3.MOCADIGI", style="scale";

insert into viewproperty 
set messageCode='*.udsneuropsychbattery3.mocarecn', locale='en', instance='lava', 
  scope='ucdlava', entity='udsneuropsychbattery3', property='mocarecn',
  required='No', proporder='22', attributes='', quickHelp='', 
  label="MoCA: Delayed recall — No cue:", context="r",
  list="uds3.udsneuropsychbattery3.MOCARECN", style="scale";

insert into viewproperty 
set messageCode='*.udsneuropsychbattery3.mocarecc', locale='en', instance='lava', 
  scope='ucdlava', entity='udsneuropsychbattery3', property='mocarecc',
  required='No', proporder='23', attributes='', quickHelp='', 
  label="MoCA: Delayed recall — Category cue:", context="r",
  list="uds3.udsneuropsychbattery3.MOCARECC", style="scale";

insert into viewproperty 
set messageCode='*.udsneuropsychbattery3.mocarecr', locale='en', instance='lava', 
  scope='ucdlava', entity='udsneuropsychbattery3', property='mocarecr',
  required='No', proporder='24', attributes='', quickHelp='', 
  label="MoCA: Delayed recall — Recognition:", context="r",
  list="uds3.udsneuropsychbattery3.MOCARECC", style="scale";

insert into viewproperty 
set messageCode='*.udsneuropsychbattery3.mocaordt', locale='en', instance='lava', 
  scope='ucdlava', entity='udsneuropsychbattery3', property='mocaordt',
  required='No', proporder='25', attributes='', quickHelp='', 
  label="MoCA: Orientation — Date:", context="r",
  list="uds3.udsneuropsychbattery3.MOCATRAI", style="scale";

insert into viewproperty 
set messageCode='*.udsneuropsychbattery3.mocaormo', locale='en', instance='lava', 
  scope='ucdlava', entity='udsneuropsychbattery3', property='mocaormo',
  required='No', proporder='26', attributes='', quickHelp='', 
  label="MoCA: Orientation — Month:", context="r",
  list="uds3.udsneuropsychbattery3.MOCATRAI", style="scale";

insert into viewproperty 
set messageCode='*.udsneuropsychbattery3.mocaoryr', locale='en', instance='lava', 
  scope='ucdlava', entity='udsneuropsychbattery3', property='mocaoryr',
  required='No', proporder='27', attributes='', quickHelp='', 
  label="MoCA: Orientation — Year:", context="r",
  list="uds3.udsneuropsychbattery3.MOCATRAI", style="scale";

insert into viewproperty 
set messageCode='*.udsneuropsychbattery3.mocaordy', locale='en', instance='lava', 
  scope='ucdlava', entity='udsneuropsychbattery3', property='mocaordy',
  required='No', proporder='28', attributes='', quickHelp='', 
  label="MoCA: Orientation — Day:", context="r",
  list="uds3.udsneuropsychbattery3.MOCATRAI", style="scale";

insert into viewproperty 
set messageCode='*.udsneuropsychbattery3.mocaorpl', locale='en', instance='lava', 
  scope='ucdlava', entity='udsneuropsychbattery3', property='mocaorpl',
  required='No', proporder='29', attributes='', quickHelp='', 
  label="MoCA: Orientation — Place:", context="r",
  list="uds3.udsneuropsychbattery3.MOCATRAI", style="scale";

insert into viewproperty 
set messageCode='*.udsneuropsychbattery3.mocaorct', locale='en', instance='lava', 
  scope='ucdlava', entity='udsneuropsychbattery3', property='mocaorct',
  required='No', proporder='30', attributes='', quickHelp='', 
  label="MoCA: Orientation — City:", context="r",
  list="uds3.udsneuropsychbattery3.MOCATRAI", style="scale";

insert into viewproperty 
set messageCode='*.udsneuropsychbattery3.npsycloc', locale='en', instance='lava', 
  scope='ucdlava', entity='udsneuropsychbattery3', property='npsycloc',
  required='No', proporder='31', attributes='', quickHelp='', 
  label="The tests following the MoCA were administered:", context="r",
  list="uds3.udsneuropsychbattery3.NPSYCLOC", style="scale";

insert into viewproperty 
set messageCode='*.udsneuropsychbattery3.npsylan', locale='en', instance='lava', 
  scope='ucdlava', entity='udsneuropsychbattery3', property='npsylan',
  required='No', proporder='32', attributes='', quickHelp='', 
  label="Test following MoCA: Language of test administration:", context="r",
  list="uds3.udsneuropsychbattery3.Language", style="scale";

insert into viewproperty 
set messageCode='*.udsneuropsychbattery3.npsylanx', locale='en', instance='lava', 
  scope='ucdlava', entity='udsneuropsychbattery3', property='npsylanx',
  required='No', proporder='33', attributes='', quickHelp='', 
  label="Testa following MoCA: Language of test administration — Other specify:", context="r", maxLength="6", style="string";

insert into viewproperty 
set messageCode='*.udsneuropsychbattery3.craftvrs', locale='en', instance='lava', 
  scope='ucdlava', entity='udsneuropsychbattery3', property='craftvrs',
  required='No', proporder='34', attributes='', quickHelp='', 
  label="Craft Story 21 Recall (Immediate): Total story units recalled, verbatim scoring:", context="r",
  list="uds3.udsneuropsychbattery3.CRAFTVRS", style="scale";

insert into viewproperty 
set messageCode='*.udsneuropsychbattery3.crafturs', locale='en', instance='lava', 
  scope='ucdlava', entity='udsneuropsychbattery3', property='crafturs',
  required='No', proporder='35', attributes='', quickHelp='', 
  label="Craft Story 21 Recall (Immediate): Total story units recalled, paraphrase scoring:", context="r",
  list="uds3.udsneuropsychbattery3.CRAFTURS", style="scale";

insert into viewproperty 
set messageCode='*.udsneuropsychbattery3.udsbentc', locale='en', instance='lava', 
  scope='ucdlava', entity='udsneuropsychbattery3', property='udsbentc',
  required='No', proporder='36', attributes='', quickHelp='', 
  label="Benson Complex Figure Copy: Total Score for copy of Benson figure:", context="r",
  list="uds3.udsneuropsychbattery3.UDSBENTC", style="scale";

insert into viewproperty 
set messageCode='*.udsneuropsychbattery3.digforct', locale='en', instance='lava', 
  scope='ucdlava', entity='udsneuropsychbattery3', property='digforct',
  required='No', proporder='37', attributes='', quickHelp='', 
  label="Number Span Test: Forward - Number of correct trials:", context="r",
  list="uds3.udsneuropsychbattery3.DIGFORCT", style="scale";

insert into viewproperty 
set messageCode='*.udsneuropsychbattery3.digforsl', locale='en', instance='lava', 
  scope='ucdlava', entity='udsneuropsychbattery3', property='digforsl',
  required='No', proporder='38', attributes='', quickHelp='', 
  label="Number Span Test: Forward — Longest span forward:", context="r",
  list="uds3.udsneuropsychbattery3.DIGFORSL", style="scale";

insert into viewproperty 
set messageCode='*.udsneuropsychbattery3.digbacct', locale='en', instance='lava', 
  scope='ucdlava', entity='udsneuropsychbattery3', property='digbacct',
  required='No', proporder='39', attributes='', quickHelp='', 
  label="Number Span Test: Backward — Number of correct trials:", context="r",
  list="uds3.udsneuropsychbattery3.DIGFORCT", style="scale";

insert into viewproperty 
set messageCode='*.udsneuropsychbattery3.digbacls', locale='en', instance='lava', 
  scope='ucdlava', entity='udsneuropsychbattery3', property='digbacls',
  required='No', proporder='40', attributes='', quickHelp='', 
  label="Number Span Test: Backward — Longest span backward:", context="r",
  list="uds3.udsneuropsychbattery3.DIGBACLS", style="scale";

insert into viewproperty 
set messageCode='*.udsneuropsychbattery3.animals', locale='en', instance='lava', 
  scope='ucdlava', entity='udsneuropsychbattery3', property='animals',
  required='No', proporder='41', attributes='', quickHelp='', 
  label="Category Fluency — Animals: Total number of animals named in 60 seconds:", context="r",
  list="uds3.udsneuropsychbattery3.ANIMALS", style="scale";

insert into viewproperty 
set messageCode='*.udsneuropsychbattery3.veg', locale='en', instance='lava', 
  scope='ucdlava', entity='udsneuropsychbattery3', property='veg',
  required='No', proporder='42', attributes='', quickHelp='', 
  label="Category Fluency — Vegetables: Total number of vegtables named in 60 seconds:", context="r",
  list="uds3.udsneuropsychbattery3.ANIMALS", style="scale";

insert into viewproperty 
set messageCode='*.udsneuropsychbattery3.traila', locale='en', instance='lava', 
  scope='ucdlava', entity='udsneuropsychbattery3', property='traila',
  required='No', proporder='43', attributes='', quickHelp='', 
  label="Trail Making Test — Part A: Total number of seconds to complete:", context="r",
  list="uds3.udsneuropsychbattery3.TRAILA", style="scale";

insert into viewproperty 
set messageCode='*.udsneuropsychbattery3.trailarr', locale='en', instance='lava', 
  scope='ucdlava', entity='udsneuropsychbattery3', property='trailarr',
  required='No', proporder='44', attributes='', quickHelp='', 
  label="Trail Making Test — Part A: Number of commission errors:", context="r",
  list="uds3.udsneuropsychbattery3.TRAILARR", style="scale";

insert into viewproperty 
set messageCode='*.udsneuropsychbattery3.trailali', locale='en', instance='lava', 
  scope='ucdlava', entity='udsneuropsychbattery3', property='trailali',
  required='No', proporder='45', attributes='', quickHelp='', 
  label="Trail Making Test — Part A: Number of correct lines:", context="r",
  list="uds3.udsneuropsychbattery3.TRAILALI", style="scale";

insert into viewproperty 
set messageCode='*.udsneuropsychbattery3.trailb', locale='en', instance='lava', 
  scope='ucdlava', entity='udsneuropsychbattery3', property='trailb',
  required='No', proporder='46', attributes='', quickHelp='', 
  label="Trail Making Test Part B: Total number of seconds to complete:", context="r",
  list="uds3.udsneuropsychbattery3.TRAILB", style="scale";

insert into viewproperty 
set messageCode='*.udsneuropsychbattery3.trailbrr', locale='en', instance='lava', 
  scope='ucdlava', entity='udsneuropsychbattery3', property='trailbrr',
  required='No', proporder='47', attributes='', quickHelp='', 
  label="Trail Making Test Part B: Number of commission errors:", context="r",
  list="uds3.udsneuropsychbattery3.TRAILARR", style="scale";

insert into viewproperty 
set messageCode='*.udsneuropsychbattery3.trailbli', locale='en', instance='lava', 
  scope='ucdlava', entity='udsneuropsychbattery3', property='trailbli',
  required='No', proporder='48', attributes='', quickHelp='', 
  label="Trail Making Test Part B: Number of correct lines:", context="r",
  list="uds3.udsneuropsychbattery3.TRAILALI", style="scale";

insert into viewproperty 
set messageCode='*.udsneuropsychbattery3.craftdvr', locale='en', instance='lava', 
  scope='ucdlava', entity='udsneuropsychbattery3', property='craftdvr',
  required='No', proporder='49', attributes='', quickHelp='', 
  label="Craft Story 21 Recall (Delayed): Total story units recalled, verbatim scoring:", context="r",
  list="uds3.udsneuropsychbattery3.CRAFTVRS", style="scale";

insert into viewproperty 
set messageCode='*.udsneuropsychbattery3.craftdre', locale='en', instance='lava', 
  scope='ucdlava', entity='udsneuropsychbattery3', property='craftdre',
  required='No', proporder='50', attributes='', quickHelp='', 
  label="Craft Story 21 Recall (Delayed): Total story units recalled, paraphrase scoring:", context="r",
  list="uds3.udsneuropsychbattery3.CRAFTURS", style="scale";

insert into viewproperty 
set messageCode='*.udsneuropsychbattery3.craftdti', locale='en', instance='lava', 
  scope='ucdlava', entity='udsneuropsychbattery3', property='craftdti',
  required='No', proporder='51', attributes='', quickHelp='', 
  label="Craft Story 21 Recall (Delayed): Delay time:", context="r",
  list="uds3.udsneuropsychbattery3.CRAFTDTI", style="scale";

insert into viewproperty 
set messageCode='*.udsneuropsychbattery3.craftcue', locale='en', instance='lava', 
  scope='ucdlava', entity='udsneuropsychbattery3', property='craftcue',
  required='No', proporder='52', attributes='', quickHelp='', 
  label="Craft Story 21 Recall (Delayed): Cue (boy) needed:", context="r",
  list="list.uds3.common.noyes01", style="scale";

insert into viewproperty 
set messageCode='*.udsneuropsychbattery3.udsbentd', locale='en', instance='lava', 
  scope='ucdlava', entity='udsneuropsychbattery3', property='udsbentd',
  required='No', proporder='53', attributes='', quickHelp='', 
  label="Benson Complex Figure Recall — Total score for drawing of Benson figure following 10- to 15-minuted delay:", context="r",
  list="uds3.udsneuropsychbattery3.UDSBENTC", style="scale";

insert into viewproperty 
set messageCode='*.udsneuropsychbattery3.udsbenrs', locale='en', instance='lava', 
  scope='ucdlava', entity='udsneuropsychbattery3', property='udsbenrs',
  required='No', proporder='54', attributes='', quickHelp='', 
  label="Benson Complex Figure Recall — Recognized original stimulus among four options:", context="r",
  list="list.uds3.common.noyes01", style="scale";

insert into viewproperty 
set messageCode='*.udsneuropsychbattery3.minttots', locale='en', instance='lava', 
  scope='ucdlava', entity='udsneuropsychbattery3', property='minttots',
  required='No', proporder='55', attributes='', quickHelp='', 
  label="Multilingual Naming Test (MINT) — Total score:", context="r",
  list="uds3.udsneuropsychbattery3.MINTTOTS", style="scale";

insert into viewproperty 
set messageCode='*.udsneuropsychbattery3.minttotw', locale='en', instance='lava', 
  scope='ucdlava', entity='udsneuropsychbattery3', property='minttotw',
  required='No', proporder='56', attributes='', quickHelp='', 
  label="Multilingual Naming Test (MINT) — Total correct without semantic cue:", context="r",
  list="uds3.udsneuropsychbattery3.MINTTOTW", style="scale";

insert into viewproperty 
set messageCode='*.udsneuropsychbattery3.mintscng', locale='en', instance='lava', 
  scope='ucdlava', entity='udsneuropsychbattery3', property='mintscng',
  required='No', proporder='57', attributes='', quickHelp='', 
  label="Multilingual Naming Test (MINT) — Semantic cues: Number given:", context="r",
  list="uds3.udsneuropsychbattery3.MINTTOTW", style="scale";

insert into viewproperty 
set messageCode='*.udsneuropsychbattery3.mintscnc', locale='en', instance='lava', 
  scope='ucdlava', entity='udsneuropsychbattery3', property='mintscnc',
  required='No', proporder='58', attributes='', quickHelp='', 
  label="Multilingual Naming Test (MINT) — Semantic cues: Number correct with cue:", context="r",
  list="uds3.udsneuropsychbattery3.MINTSCNC", style="scale";

insert into viewproperty 
set messageCode='*.udsneuropsychbattery3.mintpcng', locale='en', instance='lava', 
  scope='ucdlava', entity='udsneuropsychbattery3', property='mintpcng',
  required='No', proporder='59', attributes='', quickHelp='', 
  label="Multilingual Naming Test (MINT) — Phonemic cues: Number given:", context="r",
  list="uds3.udsneuropsychbattery3.MINTTOTW", style="scale";

insert into viewproperty 
set messageCode='*.udsneuropsychbattery3.mintpcnc', locale='en', instance='lava', 
  scope='ucdlava', entity='udsneuropsychbattery3', property='mintpcnc',
  required='No', proporder='60', attributes='', quickHelp='', 
  label="Multilingual Naming Test (MINT) — Phonemic cues: Number correct with cue:", context="r",
  list="uds3.udsneuropsychbattery3.MINTSCNC", style="scale";

insert into viewproperty 
set messageCode='*.udsneuropsychbattery3.udsverfc', locale='en', instance='lava', 
  scope='ucdlava', entity='udsneuropsychbattery3', property='udsverfc',
  required='No', proporder='61', attributes='', quickHelp='', 
  label="Verbal Fluency: Phonemic Test — Number of correct F-words generated in 1 minute:", context="r",
  list="uds3.udsneuropsychbattery3.UDSVERFC", style="scale";

insert into viewproperty 
set messageCode='*.udsneuropsychbattery3.udsverfn', locale='en', instance='lava', 
  scope='ucdlava', entity='udsneuropsychbattery3', property='udsverfn',
  required='No', proporder='62', attributes='', quickHelp='', 
  label="Verbal Fluency: Phonemic Test — Number of correct F-words repeated in 1 minute:", context="r",
  list="uds3.udsfamilyhistory3.KIDS", style="scale";

insert into viewproperty 
set messageCode='*.udsneuropsychbattery3.udsvernf', locale='en', instance='lava', 
  scope='ucdlava', entity='udsneuropsychbattery3', property='udsvernf',
  required='No', proporder='63', attributes='', quickHelp='', 
  label="Verbal Fluency: Phonemic Test — Number of non-Fwords and rule violation errors in 1 minute:", context="r",
  list="uds3.udsfamilyhistory3.KIDS", style="scale";

insert into viewproperty 
set messageCode='*.udsneuropsychbattery3.udsverlc', locale='en', instance='lava', 
  scope='ucdlava', entity='udsneuropsychbattery3', property='udsverlc',
  required='No', proporder='64', attributes='', quickHelp='', 
  label="Verbal Fluency: Phonemic Test — Number of correct L-words generated in 1 minute:", context="r",
  list="uds3.udsneuropsychbattery3.UDSVERFC", style="scale";

insert into viewproperty 
set messageCode='*.udsneuropsychbattery3.udsverlr', locale='en', instance='lava', 
  scope='ucdlava', entity='udsneuropsychbattery3', property='udsverlr',
  required='No', proporder='65', attributes='', quickHelp='', 
  label="Verbal Fluency: Phonemic Test — Number of correct L-words repeated in 1 minute:", context="r",
  list="uds3.udsfamilyhistory3.KIDS", style="scale";

insert into viewproperty 
set messageCode='*.udsneuropsychbattery3.udsverln', locale='en', instance='lava', 
  scope='ucdlava', entity='udsneuropsychbattery3', property='udsverln',
  required='No', proporder='66', attributes='', quickHelp='', 
  label="Verbal Fluency: Phonemic Test — Number of non-Lwords and rule violation errors in 1 minute:", context="r",
  list="uds3.udsfamilyhistory3.KIDS", style="scale";

insert into viewproperty 
set messageCode='*.udsneuropsychbattery3.udsvertn', locale='en', instance='lava', 
  scope='ucdlava', entity='udsneuropsychbattery3', property='udsvertn',
  required='No', proporder='67', attributes='', quickHelp='', 
  label="Verbal Fluency: Phonemic Test — Total number of correct F-words and L-words:", context="r",
  list="uds3.udsneuropsychbattery3.UDSVERTN", style="scale";

insert into viewproperty 
set messageCode='*.udsneuropsychbattery3.udsverte', locale='en', instance='lava', 
  scope='ucdlava', entity='udsneuropsychbattery3', property='udsverte',
  required='No', proporder='68', attributes='', quickHelp='', 
  label="Verbal Fluency: Phonemic Test — Total number of F-word and L-words repetition errors:", context="r",
  list="uds3.udsneuropsychbattery3.UDSVERTE", style="scale";

insert into viewproperty 
set messageCode='*.udsneuropsychbattery3.udsverti', locale='en', instance='lava', 
  scope='ucdlava', entity='udsneuropsychbattery3', property='udsverti',
  required='No', proporder='69', attributes='', quickHelp='', 
  label="Verbal Fluency: Phonemic Test — Number of non-F/L-words and rule violation errors:", context="r",
  list="uds3.udsneuropsychbattery3.UDSVERTE", style="scale";

insert into viewproperty 
set messageCode='*.udsneuropsychbattery3.cogstat', locale='en', instance='lava', 
  scope='ucdlava', entity='udsneuropsychbattery3', property='cogstat',
  required='No', proporder='70', attributes='', quickHelp='', 
  label="Overall appraisal: Per the clinician, based on the UDS neuropsychological examination, the subjects cognitive status is deemed:", context="r",
  list="uds3.udsneuropsychbattery3.COGSTAT", style="scale";


