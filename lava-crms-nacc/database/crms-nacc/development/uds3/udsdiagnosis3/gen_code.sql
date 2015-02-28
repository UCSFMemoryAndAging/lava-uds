<?xml version="1.0"?>

<!DOCTYPE hibernate-mapping PUBLIC
    "-//Hibernate/Hibernate Mapping DTD 3.0//EN"
    "http://hibernate.sourceforge.net/hibernate-mapping-3.0.dtd">

<hibernate-mapping>

<class name="edu.ucsf.memory.[scope].[module].model.udsdiagnosis3" table="udsdiagnosis3" select-before-update="true">

		<id name="id" type="long">
			<column name="[KEY COLUMN]" not-null="true"/>
			<generator class="identity"/>
		</id>


		<property name="normCog" column="NORMCOG" type="short"/>
		<property name="demented" column="DEMENTED" type="short"/>
		<property name="mciaMem" column="MCIAMEM" type="short"/>
		<property name="mciaPlus" column="MCIAPLUS" type="short"/>
		<property name="mciaPLan" column="MCIAPLAN" type="short"/>
		<property name="mciaPAtt" column="MCIAPATT" type="short"/>
		<property name="mciaPEx" column="MCIAPEX" type="short"/>
		<property name="mciaPVis" column="MCIAPVIS" type="short"/>
		<property name="mciNon1" column="MCINON1" type="short"/>
		<property name="mciN1Lan" column="MCIN1LAN" type="short"/>
		<property name="mciN1Att" column="MCIN1ATT" type="short"/>
		<property name="mciN1Ex" column="MCIN1EX" type="short"/>
		<property name="mciN1Vis" column="MCIN1VIS" type="short"/>
		<property name="mciNon2" column="MCINON2" type="short"/>
		<property name="mciN2Lan" column="MCIN2LAN" type="short"/>
		<property name="mciN2Att" column="MCIN2ATT" type="short"/>
		<property name="mciN2Ex" column="MCIN2EX" type="short"/>
		<property name="mciN2Vis" column="MCIN2VIS" type="short"/>
		<property name="impNoMci" column="IMPNOMCI" type="short"/>
		<property name="alcDem" column="ALCDEM" type="short"/>
		<property name="alcDemIf" column="ALCDEMIF" type="short"/>
		<property name="psp" column="PSP" type="short"/>
		<property name="pspIf" column="PSPIF" type="short"/>
		<property name="cort" column="CORT" type="short"/>
		<property name="cortIf" column="CORTIF" type="short"/>
		<property name="hunt" column="HUNT" type="short"/>
		<property name="huntIf" column="HUNTIF" type="short"/>
		<property name="prion" column="PRION" type="short"/>
		<property name="prionIf" column="PRIONIF" type="short"/>
		<property name="meds" column="MEDS" type="short"/>
		<property name="medsIf" column="MEDSIF" type="short"/>
		<property name="dysIll" column="DYSILL" type="short"/>
		<property name="dysIllIf" column="DYSILLIF" type="short"/>
		<property name="dep" column="DEP" type="short"/>
		<property name="depIf" column="DEPIF" type="short"/>
		<property name="othPsy" column="OTHPSY" type="short"/>
		<property name="othPsyIf" column="OTHPSYIF" type="short"/>
		<property name="downs" column="DOWNS" type="short"/>
		<property name="downsIf" column="DOWNSIF" type="short"/>
		<property name="park" column="PARK" type="short"/>
		<property name="hyceph" column="HYCEPH" type="short"/>
		<property name="hycephIf" column="HYCEPHIF" type="short"/>
		<property name="brnInj" column="BRNINJ" type="short"/>
		<property name="brnInjIf" column="BRNINJIF" type="short"/>
		<property name="neop" column="NEOP" type="short"/>
		<property name="neopIf" column="NEOPIF" type="short"/>
		<property name="cogOth" column="COGOTH" type="short"/>
		<property name="cogOthIf" column="COGOTHIF" type="short"/>
		<property name="cogOthx" column="COGOTHX" type="string" length="60"/>
		<property name="cogOth2" column="COGOTH2" type="short"/>
		<property name="cogOth2If" column="COGOTH2IF" type="short"/>
		<property name="cogOth2x" column="COGOTH2X" type="string" length="60"/>
		<property name="cogOth3" column="COGOTH3" type="short"/>
		<property name="cogOth3If" column="COGOTH3IF" type="short"/>
		<property name="cogOth3x" column="COGOTH3X" type="string" length="60"/>
		<property name="dxmethod" column="DXMETHOD" type="short"/>
		<property name="amndem" column="AMNDEM" type="short"/>
		<property name="pca" column="PCA" type="short"/>
		<property name="ppasyn" column="PPASYN" type="short"/>
		<property name="ppasynt" column="PPASYNT" type="short"/>
		<property name="ftdsyn" column="FTDSYN" type="short"/>
		<property name="lbdsyn" column="LBDSYN" type="short"/>
		<property name="namndem" column="NAMNDEM" type="short"/>
		<property name="amylpet" column="AMYLPET" type="short"/>
		<property name="amylcsf" column="AMYLCSF" type="short"/>
		<property name="fdgad" column="FDGAD" type="short"/>
		<property name="hippatr" column="HIPPATR" type="short"/>
		<property name="taupetad" column="TAUPETAD" type="short"/>
		<property name="csftau" column="CSFTAU" type="short"/>
		<property name="fdgftld" column="FDGFTLD" type="short"/>
		<property name="tpetftld" column="TPETFTLD" type="short"/>
		<property name="mrftld" column="MRFTLD" type="short"/>
		<property name="datscan" column="DATSCAN" type="short"/>
		<property name="othbiom" column="OTHBIOM" type="short"/>
		<property name="othbiomx" column="OTHBIOMX" type="string" length="60"/>
		<property name="imaglinf" column="IMAGLINF" type="short"/>
		<property name="imaglac" column="IMAGLAC" type="short"/>
		<property name="imagmach" column="IMAGMACH" type="short"/>
		<property name="imagmich" column="IMAGMICH" type="short"/>
		<property name="imagmwmh" column="IMAGMWMH" type="short"/>
		<property name="imagewmh" column="IMAGEWMH" type="short"/>
		<property name="admut" column="ADMUT" type="short"/>
		<property name="ftldmut" column="FTLDMUT" type="short"/>
		<property name="othmut" column="OTHMUT" type="short"/>
		<property name="othmutx" column="OTHMUTX" type="string" length="60"/>
		<property name="alzdis" column="ALZDIS" type="short"/>
		<property name="alzdisif" column="ALZDISIF" type="short"/>
		<property name="lbdis" column="LBDIS" type="short"/>
		<property name="lbdif" column="LBDIF" type="short"/>
		<property name="msa" column="MSA" type="short"/>
		<property name="msaif" column="MSAIF" type="short"/>
		<property name="ftldmo" column="FTLDMO" type="short"/>
		<property name="ftldmoif" column="FTLDMOIF" type="short"/>
		<property name="ftldnos" column="FTLDNOS" type="short"/>
		<property name="ftldnoif" column="FTLDNOIF" type="short"/>
		<property name="ftldsubt" column="FTLDSUBT" type="short"/>
		<property name="ftldsubx" column="FTLDSUBX" type="string" length="60"/>
		<property name="cvd" column="CVD" type="short"/>
		<property name="cvdif" column="CVDIF" type="short"/>
		<property name="prevstk" column="PREVSTK" type="short"/>
		<property name="strokdec" column="STROKDEC" type="short"/>
		<property name="stkimag" column="STKIMAG" type="short"/>
		<property name="infnetw" column="INFNETW" type="short"/>
		<property name="infwmh" column="INFWMH" type="short"/>
		<property name="esstrem" column="ESSTREM" type="short"/>
		<property name="esstreif" column="ESSTREIF" type="short"/>
		<property name="brnincte" column="BRNINCTE" type="short"/>
		<property name="epilep" column="EPILEP" type="short"/>
		<property name="epilepif" column="EPILEPIF" type="short"/>
		<property name="neopstat" column="NEOPSTAT" type="short"/>
		<property name="hiv" column="HIV" type="short"/>
		<property name="hivif" column="HIVIF" type="short"/>
		<property name="othcog" column="OTHCOG" type="short"/>
		<property name="othcogif" column="OTHCOGIF" type="short"/>
		<property name="othcogx" column="OTHCOGX" type="string" length="60"/>
		<property name="deptreat" column="DEPTREAT" type="short"/>
		<property name="bipoldx" column="BIPOLDX" type="short"/>
		<property name="bipoldif" column="BIPOLDIF" type="short"/>
		<property name="schizop" column="SCHIZOP" type="short"/>
		<property name="schizoif" column="SCHIZOIF" type="short"/>
		<property name="anxiet" column="ANXIET" type="short"/>
		<property name="anxietif" column="ANXIETIF" type="short"/>
		<property name="delir" column="DELIR" type="short"/>
		<property name="delirif" column="DELIRIF" type="short"/>
		<property name="ptsddx" column="PTSDDX" type="short"/>
		<property name="ptsddxif" column="PTSDDXIF" type="short"/>
		<property name="othpsyx" column="OTHPSYX" type="string" length="60"/>
		<property name="alcabuse" column="ALCABUSE" type="short"/>
		<property name="impsub" column="IMPSUB" type="short"/>
		<property name="impsubif" column="IMPSUBIF" type="short"/>


	<!-- associations -->



	<!-- filters -->
               <!--define or remove these standard filters-->
               <filter name="projectContext" condition=":projectContext)=[define]"/>
               <filter name="patient" condition=":patientId=[define]"/>


</class>


         <!-- queries  -->



</hibernate-mapping>
protected Short normCog;
protected Short demented;
protected Short mciaMem;
protected Short mciaPlus;
protected Short mciaPLan;
protected Short mciaPAtt;
protected Short mciaPEx;
protected Short mciaPVis;
protected Short mciNon1;
protected Short mciN1Lan;
protected Short mciN1Att;
protected Short mciN1Ex;
protected Short mciN1Vis;
protected Short mciNon2;
protected Short mciN2Lan;
protected Short mciN2Att;
protected Short mciN2Ex;
protected Short mciN2Vis;
protected Short impNoMci;
protected Short alcDem;
protected Short alcDemIf;
protected Short psp;
protected Short pspIf;
protected Short cort;
protected Short cortIf;
protected Short hunt;
protected Short huntIf;
protected Short prion;
protected Short prionIf;
protected Short meds;
protected Short medsIf;
protected Short dysIll;
protected Short dysIllIf;
protected Short dep;
protected Short depIf;
protected Short othPsy;
protected Short othPsyIf;
protected Short downs;
protected Short downsIf;
protected Short park;
protected Short hyceph;
protected Short hycephIf;
protected Short brnInj;
protected Short brnInjIf;
protected Short neop;
protected Short neopIf;
protected Short cogOth;
protected Short cogOthIf;
protected String cogOthx;
protected Short cogOth2;
protected Short cogOth2If;
protected String cogOth2x;
protected Short cogOth3;
protected Short cogOth3If;
protected String cogOth3x;
protected Short dxmethod;
protected Short amndem;
protected Short pca;
protected Short ppasyn;
protected Short ppasynt;
protected Short ftdsyn;
protected Short lbdsyn;
protected Short namndem;
protected Short amylpet;
protected Short amylcsf;
protected Short fdgad;
protected Short hippatr;
protected Short taupetad;
protected Short csftau;
protected Short fdgftld;
protected Short tpetftld;
protected Short mrftld;
protected Short datscan;
protected Short othbiom;
protected String othbiomx;
protected Short imaglinf;
protected Short imaglac;
protected Short imagmach;
protected Short imagmich;
protected Short imagmwmh;
protected Short imagewmh;
protected Short admut;
protected Short ftldmut;
protected Short othmut;
protected String othmutx;
protected Short alzdis;
protected Short alzdisif;
protected Short lbdis;
protected Short lbdif;
protected Short msa;
protected Short msaif;
protected Short ftldmo;
protected Short ftldmoif;
protected Short ftldnos;
protected Short ftldnoif;
protected Short ftldsubt;
protected String ftldsubx;
protected Short cvd;
protected Short cvdif;
protected Short prevstk;
protected Short strokdec;
protected Short stkimag;
protected Short infnetw;
protected Short infwmh;
protected Short esstrem;
protected Short esstreif;
protected Short brnincte;
protected Short epilep;
protected Short epilepif;
protected Short neopstat;
protected Short hiv;
protected Short hivif;
protected Short othcog;
protected Short othcogif;
protected String othcogx;
protected Short deptreat;
protected Short bipoldx;
protected Short bipoldif;
protected Short schizop;
protected Short schizoif;
protected Short anxiet;
protected Short anxietif;
protected Short delir;
protected Short delirif;
protected Short ptsddx;
protected Short ptsddxif;
protected String othpsyx;
protected Short alcabuse;
protected Short impsub;
protected Short impsubif;
"dxmethod",
"normCog",
"demented",
"amndem",
"pca",
"ppasyn",
"ppasynt",
"ftdsyn",
"lbdsyn",
"namndem",
"mciaMem",
"mciaPlus",
"mciaPLan",
"mciaPAtt",
"mciaPEx",
"mciaPVis",
"mciNon1",
"mciN1Lan",
"mciN1Att",
"mciN1Ex",
"mciN1Vis",
"mciNon2",
"mciN2Lan",
"mciN2Att",
"mciN2Ex",
"mciN2Vis",
"impNoMci",
"amylpet",
"amylcsf",
"fdgad",
"hippatr",
"taupetad",
"csftau",
"fdgftld",
"tpetftld",
"mrftld",
"datscan",
"othbiom",
"othbiomx",
"imaglinf",
"imaglac",
"imagmach",
"imagmich",
"imagmwmh",
"imagewmh",
"admut",
"ftldmut",
"othmut",
"othmutx",
"alzdis",
"alzdisif",
"lbdis",
"lbdif",
"park",
"msa",
"msaif",
"psp",
"pspIf",
"cort",
"cortIf",
"ftldmo",
"ftldmoif",
"ftldnos",
"ftldnoif",
"ftldsubt",
"ftldsubx",
"cvd",
"cvdif",
"prevstk",
"strokdec",
"stkimag",
"infnetw",
"infwmh",
"esstrem",
"esstreif",
"downs",
"downsIf",
"hunt",
"huntIf",
"prion",
"prionIf",
"brnInj",
"brnInjIf",
"brnincte",
"hyceph",
"hycephIf",
"epilep",
"epilepif",
"neop",
"neopIf",
"neopstat",
"hiv",
"hivif",
"othcog",
"othcogif",
"othcogx",
"dep",
"depIf",
"deptreat",
"bipoldx",
"bipoldif",
"schizop",
"schizoif",
"anxiet",
"anxietif",
"delir",
"delirif",
"ptsddx",
"ptsddxif",
"othPsy",
"othPsyIf",
"othpsyx",
"alcDem",
"alcDemIf",
"alcabuse",
"impsub",
"impsubif",
"dysIll",
"dysIllIf",
"meds",
"medsIf",
"cogOth",
"cogOthIf",
"cogOth2",
"cogOth2If",
"cogOth3",
"cogOth3If",
<tags:createField property="dxmethod" component="${component}"/>
<tags:createField property="normCog" component="${component}"/>
<tags:createField property="demented" component="${component}"/>
<tags:createField property="amndem" component="${component}"/>
<tags:createField property="pca" component="${component}"/>
<tags:createField property="ppasyn" component="${component}"/>
<tags:createField property="ppasynt" component="${component}"/>
<tags:createField property="ftdsyn" component="${component}"/>
<tags:createField property="lbdsyn" component="${component}"/>
<tags:createField property="namndem" component="${component}"/>
<tags:createField property="mciaMem" component="${component}"/>
<tags:createField property="mciaPlus" component="${component}"/>
<tags:createField property="mciaPLan" component="${component}"/>
<tags:createField property="mciaPAtt" component="${component}"/>
<tags:createField property="mciaPEx" component="${component}"/>
<tags:createField property="mciaPVis" component="${component}"/>
<tags:createField property="mciNon1" component="${component}"/>
<tags:createField property="mciN1Lan" component="${component}"/>
<tags:createField property="mciN1Att" component="${component}"/>
<tags:createField property="mciN1Ex" component="${component}"/>
<tags:createField property="mciN1Vis" component="${component}"/>
<tags:createField property="mciNon2" component="${component}"/>
<tags:createField property="mciN2Lan" component="${component}"/>
<tags:createField property="mciN2Att" component="${component}"/>
<tags:createField property="mciN2Ex" component="${component}"/>
<tags:createField property="mciN2Vis" component="${component}"/>
<tags:createField property="impNoMci" component="${component}"/>
<tags:createField property="amylpet" component="${component}"/>
<tags:createField property="amylcsf" component="${component}"/>
<tags:createField property="fdgad" component="${component}"/>
<tags:createField property="hippatr" component="${component}"/>
<tags:createField property="taupetad" component="${component}"/>
<tags:createField property="csftau" component="${component}"/>
<tags:createField property="fdgftld" component="${component}"/>
<tags:createField property="tpetftld" component="${component}"/>
<tags:createField property="mrftld" component="${component}"/>
<tags:createField property="datscan" component="${component}"/>
<tags:createField property="othbiom" component="${component}"/>
<tags:createField property="othbiomx" component="${component}"/>
<tags:createField property="imaglinf" component="${component}"/>
<tags:createField property="imaglac" component="${component}"/>
<tags:createField property="imagmach" component="${component}"/>
<tags:createField property="imagmich" component="${component}"/>
<tags:createField property="imagmwmh" component="${component}"/>
<tags:createField property="imagewmh" component="${component}"/>
<tags:createField property="admut" component="${component}"/>
<tags:createField property="ftldmut" component="${component}"/>
<tags:createField property="othmut" component="${component}"/>
<tags:createField property="othmutx" component="${component}"/>
<tags:createField property="alzdis" component="${component}"/>
<tags:createField property="alzdisif" component="${component}"/>
<tags:createField property="lbdis" component="${component}"/>
<tags:createField property="lbdif" component="${component}"/>
<tags:createField property="park" component="${component}"/>
<tags:createField property="msa" component="${component}"/>
<tags:createField property="msaif" component="${component}"/>
<tags:createField property="psp" component="${component}"/>
<tags:createField property="pspIf" component="${component}"/>
<tags:createField property="cort" component="${component}"/>
<tags:createField property="cortIf" component="${component}"/>
<tags:createField property="ftldmo" component="${component}"/>
<tags:createField property="ftldmoif" component="${component}"/>
<tags:createField property="ftldnos" component="${component}"/>
<tags:createField property="ftldnoif" component="${component}"/>
<tags:createField property="ftldsubt" component="${component}"/>
<tags:createField property="ftldsubx" component="${component}"/>
<tags:createField property="cvd" component="${component}"/>
<tags:createField property="cvdif" component="${component}"/>
<tags:createField property="prevstk" component="${component}"/>
<tags:createField property="strokdec" component="${component}"/>
<tags:createField property="stkimag" component="${component}"/>
<tags:createField property="infnetw" component="${component}"/>
<tags:createField property="infwmh" component="${component}"/>
<tags:createField property="esstrem" component="${component}"/>
<tags:createField property="esstreif" component="${component}"/>
<tags:createField property="downs" component="${component}"/>
<tags:createField property="downsIf" component="${component}"/>
<tags:createField property="hunt" component="${component}"/>
<tags:createField property="huntIf" component="${component}"/>
<tags:createField property="prion" component="${component}"/>
<tags:createField property="prionIf" component="${component}"/>
<tags:createField property="brnInj" component="${component}"/>
<tags:createField property="brnInjIf" component="${component}"/>
<tags:createField property="brnincte" component="${component}"/>
<tags:createField property="hyceph" component="${component}"/>
<tags:createField property="hycephIf" component="${component}"/>
<tags:createField property="epilep" component="${component}"/>
<tags:createField property="epilepif" component="${component}"/>
<tags:createField property="neop" component="${component}"/>
<tags:createField property="neopIf" component="${component}"/>
<tags:createField property="neopstat" component="${component}"/>
<tags:createField property="hiv" component="${component}"/>
<tags:createField property="hivif" component="${component}"/>
<tags:createField property="othcog" component="${component}"/>
<tags:createField property="othcogif" component="${component}"/>
<tags:createField property="othcogx" component="${component}"/>
<tags:createField property="dep" component="${component}"/>
<tags:createField property="depIf" component="${component}"/>
<tags:createField property="deptreat" component="${component}"/>
<tags:createField property="bipoldx" component="${component}"/>
<tags:createField property="bipoldif" component="${component}"/>
<tags:createField property="schizop" component="${component}"/>
<tags:createField property="schizoif" component="${component}"/>
<tags:createField property="anxiet" component="${component}"/>
<tags:createField property="anxietif" component="${component}"/>
<tags:createField property="delir" component="${component}"/>
<tags:createField property="delirif" component="${component}"/>
<tags:createField property="ptsddx" component="${component}"/>
<tags:createField property="ptsddxif" component="${component}"/>
<tags:createField property="othPsy" component="${component}"/>
<tags:createField property="othPsyIf" component="${component}"/>
<tags:createField property="othpsyx" component="${component}"/>
<tags:createField property="alcDem" component="${component}"/>
<tags:createField property="alcDemIf" component="${component}"/>
<tags:createField property="alcabuse" component="${component}"/>
<tags:createField property="impsub" component="${component}"/>
<tags:createField property="impsubif" component="${component}"/>
<tags:createField property="dysIll" component="${component}"/>
<tags:createField property="dysIllIf" component="${component}"/>
<tags:createField property="meds" component="${component}"/>
<tags:createField property="medsIf" component="${component}"/>
<tags:createField property="cogOth" component="${component}"/>
<tags:createField property="cogOthIf" component="${component}"/>
<tags:createField property="cogOthx" component="${component}"/>
<tags:createField property="cogOth2" component="${component}"/>
<tags:createField property="cogOth2If" component="${component}"/>
<tags:createField property="cogOth2x" component="${component}"/>
<tags:createField property="cogOth3" component="${component}"/>
<tags:createField property="cogOth3If" component="${component}"/>
<tags:createField property="cogOth3x" component="${component}"/>



<tags:createField property="dxmethod" component="${component}" entity="udsdiagnosis3"/>
<tags:createField property="normCog" component="${component}" entity="udsdiagnosis3"/>
<tags:createField property="demented" component="${component}" entity="udsdiagnosis3"/>
<tags:createField property="amndem" component="${component}" entity="udsdiagnosis3"/>
<tags:createField property="pca" component="${component}" entity="udsdiagnosis3"/>
<tags:createField property="ppasyn" component="${component}" entity="udsdiagnosis3"/>
<tags:createField property="ppasynt" component="${component}" entity="udsdiagnosis3"/>
<tags:createField property="ftdsyn" component="${component}" entity="udsdiagnosis3"/>
<tags:createField property="lbdsyn" component="${component}" entity="udsdiagnosis3"/>
<tags:createField property="namndem" component="${component}" entity="udsdiagnosis3"/>
<tags:createField property="mciaMem" component="${component}" entity="udsdiagnosis3"/>
<tags:createField property="mciaPlus" component="${component}" entity="udsdiagnosis3"/>
<tags:createField property="mciaPLan" component="${component}" entity="udsdiagnosis3"/>
<tags:createField property="mciaPAtt" component="${component}" entity="udsdiagnosis3"/>
<tags:createField property="mciaPEx" component="${component}" entity="udsdiagnosis3"/>
<tags:createField property="mciaPVis" component="${component}" entity="udsdiagnosis3"/>
<tags:createField property="mciNon1" component="${component}" entity="udsdiagnosis3"/>
<tags:createField property="mciN1Lan" component="${component}" entity="udsdiagnosis3"/>
<tags:createField property="mciN1Att" component="${component}" entity="udsdiagnosis3"/>
<tags:createField property="mciN1Ex" component="${component}" entity="udsdiagnosis3"/>
<tags:createField property="mciN1Vis" component="${component}" entity="udsdiagnosis3"/>
<tags:createField property="mciNon2" component="${component}" entity="udsdiagnosis3"/>
<tags:createField property="mciN2Lan" component="${component}" entity="udsdiagnosis3"/>
<tags:createField property="mciN2Att" component="${component}" entity="udsdiagnosis3"/>
<tags:createField property="mciN2Ex" component="${component}" entity="udsdiagnosis3"/>
<tags:createField property="mciN2Vis" component="${component}" entity="udsdiagnosis3"/>
<tags:createField property="impNoMci" component="${component}" entity="udsdiagnosis3"/>
<tags:createField property="amylpet" component="${component}" entity="udsdiagnosis3"/>
<tags:createField property="amylcsf" component="${component}" entity="udsdiagnosis3"/>
<tags:createField property="fdgad" component="${component}" entity="udsdiagnosis3"/>
<tags:createField property="hippatr" component="${component}" entity="udsdiagnosis3"/>
<tags:createField property="taupetad" component="${component}" entity="udsdiagnosis3"/>
<tags:createField property="csftau" component="${component}" entity="udsdiagnosis3"/>
<tags:createField property="fdgftld" component="${component}" entity="udsdiagnosis3"/>
<tags:createField property="tpetftld" component="${component}" entity="udsdiagnosis3"/>
<tags:createField property="mrftld" component="${component}" entity="udsdiagnosis3"/>
<tags:createField property="datscan" component="${component}" entity="udsdiagnosis3"/>
<tags:createField property="othbiom" component="${component}" entity="udsdiagnosis3"/>
<tags:createField property="othbiomx" component="${component}" entity="udsdiagnosis3"/>
<tags:createField property="imaglinf" component="${component}" entity="udsdiagnosis3"/>
<tags:createField property="imaglac" component="${component}" entity="udsdiagnosis3"/>
<tags:createField property="imagmach" component="${component}" entity="udsdiagnosis3"/>
<tags:createField property="imagmich" component="${component}" entity="udsdiagnosis3"/>
<tags:createField property="imagmwmh" component="${component}" entity="udsdiagnosis3"/>
<tags:createField property="imagewmh" component="${component}" entity="udsdiagnosis3"/>
<tags:createField property="admut" component="${component}" entity="udsdiagnosis3"/>
<tags:createField property="ftldmut" component="${component}" entity="udsdiagnosis3"/>
<tags:createField property="othmut" component="${component}" entity="udsdiagnosis3"/>
<tags:createField property="othmutx" component="${component}" entity="udsdiagnosis3"/>
<tags:createField property="alzdis" component="${component}" entity="udsdiagnosis3"/>
<tags:createField property="alzdisif" component="${component}" entity="udsdiagnosis3"/>
<tags:createField property="lbdis" component="${component}" entity="udsdiagnosis3"/>
<tags:createField property="lbdif" component="${component}" entity="udsdiagnosis3"/>
<tags:createField property="park" component="${component}" entity="udsdiagnosis3"/>
<tags:createField property="msa" component="${component}" entity="udsdiagnosis3"/>
<tags:createField property="msaif" component="${component}" entity="udsdiagnosis3"/>
<tags:createField property="psp" component="${component}" entity="udsdiagnosis3"/>
<tags:createField property="pspIf" component="${component}" entity="udsdiagnosis3"/>
<tags:createField property="cort" component="${component}" entity="udsdiagnosis3"/>
<tags:createField property="cortIf" component="${component}" entity="udsdiagnosis3"/>
<tags:createField property="ftldmo" component="${component}" entity="udsdiagnosis3"/>
<tags:createField property="ftldmoif" component="${component}" entity="udsdiagnosis3"/>
<tags:createField property="ftldnos" component="${component}" entity="udsdiagnosis3"/>
<tags:createField property="ftldnoif" component="${component}" entity="udsdiagnosis3"/>
<tags:createField property="ftldsubt" component="${component}" entity="udsdiagnosis3"/>
<tags:createField property="ftldsubx" component="${component}" entity="udsdiagnosis3"/>
<tags:createField property="cvd" component="${component}" entity="udsdiagnosis3"/>
<tags:createField property="cvdif" component="${component}" entity="udsdiagnosis3"/>
<tags:createField property="prevstk" component="${component}" entity="udsdiagnosis3"/>
<tags:createField property="strokdec" component="${component}" entity="udsdiagnosis3"/>
<tags:createField property="stkimag" component="${component}" entity="udsdiagnosis3"/>
<tags:createField property="infnetw" component="${component}" entity="udsdiagnosis3"/>
<tags:createField property="infwmh" component="${component}" entity="udsdiagnosis3"/>
<tags:createField property="esstrem" component="${component}" entity="udsdiagnosis3"/>
<tags:createField property="esstreif" component="${component}" entity="udsdiagnosis3"/>
<tags:createField property="downs" component="${component}" entity="udsdiagnosis3"/>
<tags:createField property="downsIf" component="${component}" entity="udsdiagnosis3"/>
<tags:createField property="hunt" component="${component}" entity="udsdiagnosis3"/>
<tags:createField property="huntIf" component="${component}" entity="udsdiagnosis3"/>
<tags:createField property="prion" component="${component}" entity="udsdiagnosis3"/>
<tags:createField property="prionIf" component="${component}" entity="udsdiagnosis3"/>
<tags:createField property="brnInj" component="${component}" entity="udsdiagnosis3"/>
<tags:createField property="brnInjIf" component="${component}" entity="udsdiagnosis3"/>
<tags:createField property="brnincte" component="${component}" entity="udsdiagnosis3"/>
<tags:createField property="hyceph" component="${component}" entity="udsdiagnosis3"/>
<tags:createField property="hycephIf" component="${component}" entity="udsdiagnosis3"/>
<tags:createField property="epilep" component="${component}" entity="udsdiagnosis3"/>
<tags:createField property="epilepif" component="${component}" entity="udsdiagnosis3"/>
<tags:createField property="neop" component="${component}" entity="udsdiagnosis3"/>
<tags:createField property="neopIf" component="${component}" entity="udsdiagnosis3"/>
<tags:createField property="neopstat" component="${component}" entity="udsdiagnosis3"/>
<tags:createField property="hiv" component="${component}" entity="udsdiagnosis3"/>
<tags:createField property="hivif" component="${component}" entity="udsdiagnosis3"/>
<tags:createField property="othcog" component="${component}" entity="udsdiagnosis3"/>
<tags:createField property="othcogif" component="${component}" entity="udsdiagnosis3"/>
<tags:createField property="othcogx" component="${component}" entity="udsdiagnosis3"/>
<tags:createField property="dep" component="${component}" entity="udsdiagnosis3"/>
<tags:createField property="depIf" component="${component}" entity="udsdiagnosis3"/>
<tags:createField property="deptreat" component="${component}" entity="udsdiagnosis3"/>
<tags:createField property="bipoldx" component="${component}" entity="udsdiagnosis3"/>
<tags:createField property="bipoldif" component="${component}" entity="udsdiagnosis3"/>
<tags:createField property="schizop" component="${component}" entity="udsdiagnosis3"/>
<tags:createField property="schizoif" component="${component}" entity="udsdiagnosis3"/>
<tags:createField property="anxiet" component="${component}" entity="udsdiagnosis3"/>
<tags:createField property="anxietif" component="${component}" entity="udsdiagnosis3"/>
<tags:createField property="delir" component="${component}" entity="udsdiagnosis3"/>
<tags:createField property="delirif" component="${component}" entity="udsdiagnosis3"/>
<tags:createField property="ptsddx" component="${component}" entity="udsdiagnosis3"/>
<tags:createField property="ptsddxif" component="${component}" entity="udsdiagnosis3"/>
<tags:createField property="othPsy" component="${component}" entity="udsdiagnosis3"/>
<tags:createField property="othPsyIf" component="${component}" entity="udsdiagnosis3"/>
<tags:createField property="othpsyx" component="${component}" entity="udsdiagnosis3"/>
<tags:createField property="alcDem" component="${component}" entity="udsdiagnosis3"/>
<tags:createField property="alcDemIf" component="${component}" entity="udsdiagnosis3"/>
<tags:createField property="alcabuse" component="${component}" entity="udsdiagnosis3"/>
<tags:createField property="impsub" component="${component}" entity="udsdiagnosis3"/>
<tags:createField property="impsubif" component="${component}" entity="udsdiagnosis3"/>
<tags:createField property="dysIll" component="${component}" entity="udsdiagnosis3"/>
<tags:createField property="dysIllIf" component="${component}" entity="udsdiagnosis3"/>
<tags:createField property="meds" component="${component}" entity="udsdiagnosis3"/>
<tags:createField property="medsIf" component="${component}" entity="udsdiagnosis3"/>
<tags:createField property="cogOth" component="${component}" entity="udsdiagnosis3"/>
<tags:createField property="cogOthIf" component="${component}" entity="udsdiagnosis3"/>
<tags:createField property="cogOthx" component="${component}" entity="udsdiagnosis3"/>
<tags:createField property="cogOth2" component="${component}" entity="udsdiagnosis3"/>
<tags:createField property="cogOth2If" component="${component}" entity="udsdiagnosis3"/>
<tags:createField property="cogOth2x" component="${component}" entity="udsdiagnosis3"/>
<tags:createField property="cogOth3" component="${component}" entity="udsdiagnosis3"/>
<tags:createField property="cogOth3If" component="${component}" entity="udsdiagnosis3"/>
<tags:createField property="cogOth3x" component="${component}" entity="udsdiagnosis3"/>



<tags:createField property="dxmethod" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="normCog" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="demented" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="amndem" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="pca" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="ppasyn" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="ppasynt" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="ftdsyn" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="lbdsyn" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="namndem" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="mciaMem" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="mciaPlus" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="mciaPLan" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="mciaPAtt" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="mciaPEx" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="mciaPVis" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="mciNon1" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="mciN1Lan" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="mciN1Att" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="mciN1Ex" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="mciN1Vis" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="mciNon2" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="mciN2Lan" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="mciN2Att" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="mciN2Ex" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="mciN2Vis" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="impNoMci" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="amylpet" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="amylcsf" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="fdgad" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="hippatr" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="taupetad" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="csftau" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="fdgftld" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="tpetftld" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="mrftld" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="datscan" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="othbiom" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="othbiomx" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="imaglinf" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="imaglac" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="imagmach" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="imagmich" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="imagmwmh" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="imagewmh" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="admut" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="ftldmut" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="othmut" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="othmutx" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="alzdis" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="alzdisif" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="lbdis" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="lbdif" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="park" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="msa" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="msaif" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="psp" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="pspIf" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="cort" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="cortIf" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="ftldmo" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="ftldmoif" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="ftldnos" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="ftldnoif" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="ftldsubt" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="ftldsubx" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="cvd" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="cvdif" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="prevstk" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="strokdec" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="stkimag" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="infnetw" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="infwmh" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="esstrem" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="esstreif" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="downs" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="downsIf" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="hunt" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="huntIf" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="prion" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="prionIf" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="brnInj" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="brnInjIf" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="brnincte" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="hyceph" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="hycephIf" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="epilep" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="epilepif" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="neop" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="neopIf" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="neopstat" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="hiv" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="hivif" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="othcog" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="othcogif" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="othcogx" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="dep" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="depIf" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="deptreat" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="bipoldx" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="bipoldif" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="schizop" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="schizoif" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="anxiet" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="anxietif" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="delir" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="delirif" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="ptsddx" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="ptsddxif" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="othPsy" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="othPsyIf" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="othpsyx" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="alcDem" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="alcDemIf" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="alcabuse" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="impsub" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="impsubif" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="dysIll" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="dysIllIf" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="meds" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="medsIf" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="cogOth" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="cogOthIf" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="cogOthx" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="cogOth2" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="cogOth2If" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="cogOth2x" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="cogOth3" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="cogOth3If" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="cogOth3x" component="${component}" entity="${instrTypeEncoded}"/>



<tags:createField property="dxmethod" component="udsdiagnosis3"/>
<tags:createField property="normCog" component="udsdiagnosis3"/>
<tags:createField property="demented" component="udsdiagnosis3"/>
<tags:createField property="amndem" component="udsdiagnosis3"/>
<tags:createField property="pca" component="udsdiagnosis3"/>
<tags:createField property="ppasyn" component="udsdiagnosis3"/>
<tags:createField property="ppasynt" component="udsdiagnosis3"/>
<tags:createField property="ftdsyn" component="udsdiagnosis3"/>
<tags:createField property="lbdsyn" component="udsdiagnosis3"/>
<tags:createField property="namndem" component="udsdiagnosis3"/>
<tags:createField property="mciaMem" component="udsdiagnosis3"/>
<tags:createField property="mciaPlus" component="udsdiagnosis3"/>
<tags:createField property="mciaPLan" component="udsdiagnosis3"/>
<tags:createField property="mciaPAtt" component="udsdiagnosis3"/>
<tags:createField property="mciaPEx" component="udsdiagnosis3"/>
<tags:createField property="mciaPVis" component="udsdiagnosis3"/>
<tags:createField property="mciNon1" component="udsdiagnosis3"/>
<tags:createField property="mciN1Lan" component="udsdiagnosis3"/>
<tags:createField property="mciN1Att" component="udsdiagnosis3"/>
<tags:createField property="mciN1Ex" component="udsdiagnosis3"/>
<tags:createField property="mciN1Vis" component="udsdiagnosis3"/>
<tags:createField property="mciNon2" component="udsdiagnosis3"/>
<tags:createField property="mciN2Lan" component="udsdiagnosis3"/>
<tags:createField property="mciN2Att" component="udsdiagnosis3"/>
<tags:createField property="mciN2Ex" component="udsdiagnosis3"/>
<tags:createField property="mciN2Vis" component="udsdiagnosis3"/>
<tags:createField property="impNoMci" component="udsdiagnosis3"/>
<tags:createField property="amylpet" component="udsdiagnosis3"/>
<tags:createField property="amylcsf" component="udsdiagnosis3"/>
<tags:createField property="fdgad" component="udsdiagnosis3"/>
<tags:createField property="hippatr" component="udsdiagnosis3"/>
<tags:createField property="taupetad" component="udsdiagnosis3"/>
<tags:createField property="csftau" component="udsdiagnosis3"/>
<tags:createField property="fdgftld" component="udsdiagnosis3"/>
<tags:createField property="tpetftld" component="udsdiagnosis3"/>
<tags:createField property="mrftld" component="udsdiagnosis3"/>
<tags:createField property="datscan" component="udsdiagnosis3"/>
<tags:createField property="othbiom" component="udsdiagnosis3"/>
<tags:createField property="othbiomx" component="udsdiagnosis3"/>
<tags:createField property="imaglinf" component="udsdiagnosis3"/>
<tags:createField property="imaglac" component="udsdiagnosis3"/>
<tags:createField property="imagmach" component="udsdiagnosis3"/>
<tags:createField property="imagmich" component="udsdiagnosis3"/>
<tags:createField property="imagmwmh" component="udsdiagnosis3"/>
<tags:createField property="imagewmh" component="udsdiagnosis3"/>
<tags:createField property="admut" component="udsdiagnosis3"/>
<tags:createField property="ftldmut" component="udsdiagnosis3"/>
<tags:createField property="othmut" component="udsdiagnosis3"/>
<tags:createField property="othmutx" component="udsdiagnosis3"/>
<tags:createField property="alzdis" component="udsdiagnosis3"/>
<tags:createField property="alzdisif" component="udsdiagnosis3"/>
<tags:createField property="lbdis" component="udsdiagnosis3"/>
<tags:createField property="lbdif" component="udsdiagnosis3"/>
<tags:createField property="park" component="udsdiagnosis3"/>
<tags:createField property="msa" component="udsdiagnosis3"/>
<tags:createField property="msaif" component="udsdiagnosis3"/>
<tags:createField property="psp" component="udsdiagnosis3"/>
<tags:createField property="pspIf" component="udsdiagnosis3"/>
<tags:createField property="cort" component="udsdiagnosis3"/>
<tags:createField property="cortIf" component="udsdiagnosis3"/>
<tags:createField property="ftldmo" component="udsdiagnosis3"/>
<tags:createField property="ftldmoif" component="udsdiagnosis3"/>
<tags:createField property="ftldnos" component="udsdiagnosis3"/>
<tags:createField property="ftldnoif" component="udsdiagnosis3"/>
<tags:createField property="ftldsubt" component="udsdiagnosis3"/>
<tags:createField property="ftldsubx" component="udsdiagnosis3"/>
<tags:createField property="cvd" component="udsdiagnosis3"/>
<tags:createField property="cvdif" component="udsdiagnosis3"/>
<tags:createField property="prevstk" component="udsdiagnosis3"/>
<tags:createField property="strokdec" component="udsdiagnosis3"/>
<tags:createField property="stkimag" component="udsdiagnosis3"/>
<tags:createField property="infnetw" component="udsdiagnosis3"/>
<tags:createField property="infwmh" component="udsdiagnosis3"/>
<tags:createField property="esstrem" component="udsdiagnosis3"/>
<tags:createField property="esstreif" component="udsdiagnosis3"/>
<tags:createField property="downs" component="udsdiagnosis3"/>
<tags:createField property="downsIf" component="udsdiagnosis3"/>
<tags:createField property="hunt" component="udsdiagnosis3"/>
<tags:createField property="huntIf" component="udsdiagnosis3"/>
<tags:createField property="prion" component="udsdiagnosis3"/>
<tags:createField property="prionIf" component="udsdiagnosis3"/>
<tags:createField property="brnInj" component="udsdiagnosis3"/>
<tags:createField property="brnInjIf" component="udsdiagnosis3"/>
<tags:createField property="brnincte" component="udsdiagnosis3"/>
<tags:createField property="hyceph" component="udsdiagnosis3"/>
<tags:createField property="hycephIf" component="udsdiagnosis3"/>
<tags:createField property="epilep" component="udsdiagnosis3"/>
<tags:createField property="epilepif" component="udsdiagnosis3"/>
<tags:createField property="neop" component="udsdiagnosis3"/>
<tags:createField property="neopIf" component="udsdiagnosis3"/>
<tags:createField property="neopstat" component="udsdiagnosis3"/>
<tags:createField property="hiv" component="udsdiagnosis3"/>
<tags:createField property="hivif" component="udsdiagnosis3"/>
<tags:createField property="othcog" component="udsdiagnosis3"/>
<tags:createField property="othcogif" component="udsdiagnosis3"/>
<tags:createField property="othcogx" component="udsdiagnosis3"/>
<tags:createField property="dep" component="udsdiagnosis3"/>
<tags:createField property="depIf" component="udsdiagnosis3"/>
<tags:createField property="deptreat" component="udsdiagnosis3"/>
<tags:createField property="bipoldx" component="udsdiagnosis3"/>
<tags:createField property="bipoldif" component="udsdiagnosis3"/>
<tags:createField property="schizop" component="udsdiagnosis3"/>
<tags:createField property="schizoif" component="udsdiagnosis3"/>
<tags:createField property="anxiet" component="udsdiagnosis3"/>
<tags:createField property="anxietif" component="udsdiagnosis3"/>
<tags:createField property="delir" component="udsdiagnosis3"/>
<tags:createField property="delirif" component="udsdiagnosis3"/>
<tags:createField property="ptsddx" component="udsdiagnosis3"/>
<tags:createField property="ptsddxif" component="udsdiagnosis3"/>
<tags:createField property="othPsy" component="udsdiagnosis3"/>
<tags:createField property="othPsyIf" component="udsdiagnosis3"/>
<tags:createField property="othpsyx" component="udsdiagnosis3"/>
<tags:createField property="alcDem" component="udsdiagnosis3"/>
<tags:createField property="alcDemIf" component="udsdiagnosis3"/>
<tags:createField property="alcabuse" component="udsdiagnosis3"/>
<tags:createField property="impsub" component="udsdiagnosis3"/>
<tags:createField property="impsubif" component="udsdiagnosis3"/>
<tags:createField property="dysIll" component="udsdiagnosis3"/>
<tags:createField property="dysIllIf" component="udsdiagnosis3"/>
<tags:createField property="meds" component="udsdiagnosis3"/>
<tags:createField property="medsIf" component="udsdiagnosis3"/>
<tags:createField property="cogOth" component="udsdiagnosis3"/>
<tags:createField property="cogOthIf" component="udsdiagnosis3"/>
<tags:createField property="cogOthx" component="udsdiagnosis3"/>
<tags:createField property="cogOth2" component="udsdiagnosis3"/>
<tags:createField property="cogOth2If" component="udsdiagnosis3"/>
<tags:createField property="cogOth2x" component="udsdiagnosis3"/>
<tags:createField property="cogOth3" component="udsdiagnosis3"/>
<tags:createField property="cogOth3If" component="udsdiagnosis3"/>
<tags:createField property="cogOth3x" component="udsdiagnosis3"/>



<tags:listField property="dxmethod" component="${component}" listIndex="${iterator.index}" entityType="udsdiagnosis3"/>
<tags:listField property="normCog" component="${component}" listIndex="${iterator.index}" entityType="udsdiagnosis3"/>
<tags:listField property="demented" component="${component}" listIndex="${iterator.index}" entityType="udsdiagnosis3"/>
<tags:listField property="amndem" component="${component}" listIndex="${iterator.index}" entityType="udsdiagnosis3"/>
<tags:listField property="pca" component="${component}" listIndex="${iterator.index}" entityType="udsdiagnosis3"/>
<tags:listField property="ppasyn" component="${component}" listIndex="${iterator.index}" entityType="udsdiagnosis3"/>
<tags:listField property="ppasynt" component="${component}" listIndex="${iterator.index}" entityType="udsdiagnosis3"/>
<tags:listField property="ftdsyn" component="${component}" listIndex="${iterator.index}" entityType="udsdiagnosis3"/>
<tags:listField property="lbdsyn" component="${component}" listIndex="${iterator.index}" entityType="udsdiagnosis3"/>
<tags:listField property="namndem" component="${component}" listIndex="${iterator.index}" entityType="udsdiagnosis3"/>
<tags:listField property="mciaMem" component="${component}" listIndex="${iterator.index}" entityType="udsdiagnosis3"/>
<tags:listField property="mciaPlus" component="${component}" listIndex="${iterator.index}" entityType="udsdiagnosis3"/>
<tags:listField property="mciaPLan" component="${component}" listIndex="${iterator.index}" entityType="udsdiagnosis3"/>
<tags:listField property="mciaPAtt" component="${component}" listIndex="${iterator.index}" entityType="udsdiagnosis3"/>
<tags:listField property="mciaPEx" component="${component}" listIndex="${iterator.index}" entityType="udsdiagnosis3"/>
<tags:listField property="mciaPVis" component="${component}" listIndex="${iterator.index}" entityType="udsdiagnosis3"/>
<tags:listField property="mciNon1" component="${component}" listIndex="${iterator.index}" entityType="udsdiagnosis3"/>
<tags:listField property="mciN1Lan" component="${component}" listIndex="${iterator.index}" entityType="udsdiagnosis3"/>
<tags:listField property="mciN1Att" component="${component}" listIndex="${iterator.index}" entityType="udsdiagnosis3"/>
<tags:listField property="mciN1Ex" component="${component}" listIndex="${iterator.index}" entityType="udsdiagnosis3"/>
<tags:listField property="mciN1Vis" component="${component}" listIndex="${iterator.index}" entityType="udsdiagnosis3"/>
<tags:listField property="mciNon2" component="${component}" listIndex="${iterator.index}" entityType="udsdiagnosis3"/>
<tags:listField property="mciN2Lan" component="${component}" listIndex="${iterator.index}" entityType="udsdiagnosis3"/>
<tags:listField property="mciN2Att" component="${component}" listIndex="${iterator.index}" entityType="udsdiagnosis3"/>
<tags:listField property="mciN2Ex" component="${component}" listIndex="${iterator.index}" entityType="udsdiagnosis3"/>
<tags:listField property="mciN2Vis" component="${component}" listIndex="${iterator.index}" entityType="udsdiagnosis3"/>
<tags:listField property="impNoMci" component="${component}" listIndex="${iterator.index}" entityType="udsdiagnosis3"/>
<tags:listField property="amylpet" component="${component}" listIndex="${iterator.index}" entityType="udsdiagnosis3"/>
<tags:listField property="amylcsf" component="${component}" listIndex="${iterator.index}" entityType="udsdiagnosis3"/>
<tags:listField property="fdgad" component="${component}" listIndex="${iterator.index}" entityType="udsdiagnosis3"/>
<tags:listField property="hippatr" component="${component}" listIndex="${iterator.index}" entityType="udsdiagnosis3"/>
<tags:listField property="taupetad" component="${component}" listIndex="${iterator.index}" entityType="udsdiagnosis3"/>
<tags:listField property="csftau" component="${component}" listIndex="${iterator.index}" entityType="udsdiagnosis3"/>
<tags:listField property="fdgftld" component="${component}" listIndex="${iterator.index}" entityType="udsdiagnosis3"/>
<tags:listField property="tpetftld" component="${component}" listIndex="${iterator.index}" entityType="udsdiagnosis3"/>
<tags:listField property="mrftld" component="${component}" listIndex="${iterator.index}" entityType="udsdiagnosis3"/>
<tags:listField property="datscan" component="${component}" listIndex="${iterator.index}" entityType="udsdiagnosis3"/>
<tags:listField property="othbiom" component="${component}" listIndex="${iterator.index}" entityType="udsdiagnosis3"/>
<tags:listField property="othbiomx" component="${component}" listIndex="${iterator.index}" entityType="udsdiagnosis3"/>
<tags:listField property="imaglinf" component="${component}" listIndex="${iterator.index}" entityType="udsdiagnosis3"/>
<tags:listField property="imaglac" component="${component}" listIndex="${iterator.index}" entityType="udsdiagnosis3"/>
<tags:listField property="imagmach" component="${component}" listIndex="${iterator.index}" entityType="udsdiagnosis3"/>
<tags:listField property="imagmich" component="${component}" listIndex="${iterator.index}" entityType="udsdiagnosis3"/>
<tags:listField property="imagmwmh" component="${component}" listIndex="${iterator.index}" entityType="udsdiagnosis3"/>
<tags:listField property="imagewmh" component="${component}" listIndex="${iterator.index}" entityType="udsdiagnosis3"/>
<tags:listField property="admut" component="${component}" listIndex="${iterator.index}" entityType="udsdiagnosis3"/>
<tags:listField property="ftldmut" component="${component}" listIndex="${iterator.index}" entityType="udsdiagnosis3"/>
<tags:listField property="othmut" component="${component}" listIndex="${iterator.index}" entityType="udsdiagnosis3"/>
<tags:listField property="othmutx" component="${component}" listIndex="${iterator.index}" entityType="udsdiagnosis3"/>
<tags:listField property="alzdis" component="${component}" listIndex="${iterator.index}" entityType="udsdiagnosis3"/>
<tags:listField property="alzdisif" component="${component}" listIndex="${iterator.index}" entityType="udsdiagnosis3"/>
<tags:listField property="lbdis" component="${component}" listIndex="${iterator.index}" entityType="udsdiagnosis3"/>
<tags:listField property="lbdif" component="${component}" listIndex="${iterator.index}" entityType="udsdiagnosis3"/>
<tags:listField property="park" component="${component}" listIndex="${iterator.index}" entityType="udsdiagnosis3"/>
<tags:listField property="msa" component="${component}" listIndex="${iterator.index}" entityType="udsdiagnosis3"/>
<tags:listField property="msaif" component="${component}" listIndex="${iterator.index}" entityType="udsdiagnosis3"/>
<tags:listField property="psp" component="${component}" listIndex="${iterator.index}" entityType="udsdiagnosis3"/>
<tags:listField property="pspIf" component="${component}" listIndex="${iterator.index}" entityType="udsdiagnosis3"/>
<tags:listField property="cort" component="${component}" listIndex="${iterator.index}" entityType="udsdiagnosis3"/>
<tags:listField property="cortIf" component="${component}" listIndex="${iterator.index}" entityType="udsdiagnosis3"/>
<tags:listField property="ftldmo" component="${component}" listIndex="${iterator.index}" entityType="udsdiagnosis3"/>
<tags:listField property="ftldmoif" component="${component}" listIndex="${iterator.index}" entityType="udsdiagnosis3"/>
<tags:listField property="ftldnos" component="${component}" listIndex="${iterator.index}" entityType="udsdiagnosis3"/>
<tags:listField property="ftldnoif" component="${component}" listIndex="${iterator.index}" entityType="udsdiagnosis3"/>
<tags:listField property="ftldsubt" component="${component}" listIndex="${iterator.index}" entityType="udsdiagnosis3"/>
<tags:listField property="ftldsubx" component="${component}" listIndex="${iterator.index}" entityType="udsdiagnosis3"/>
<tags:listField property="cvd" component="${component}" listIndex="${iterator.index}" entityType="udsdiagnosis3"/>
<tags:listField property="cvdif" component="${component}" listIndex="${iterator.index}" entityType="udsdiagnosis3"/>
<tags:listField property="prevstk" component="${component}" listIndex="${iterator.index}" entityType="udsdiagnosis3"/>
<tags:listField property="strokdec" component="${component}" listIndex="${iterator.index}" entityType="udsdiagnosis3"/>
<tags:listField property="stkimag" component="${component}" listIndex="${iterator.index}" entityType="udsdiagnosis3"/>
<tags:listField property="infnetw" component="${component}" listIndex="${iterator.index}" entityType="udsdiagnosis3"/>
<tags:listField property="infwmh" component="${component}" listIndex="${iterator.index}" entityType="udsdiagnosis3"/>
<tags:listField property="esstrem" component="${component}" listIndex="${iterator.index}" entityType="udsdiagnosis3"/>
<tags:listField property="esstreif" component="${component}" listIndex="${iterator.index}" entityType="udsdiagnosis3"/>
<tags:listField property="downs" component="${component}" listIndex="${iterator.index}" entityType="udsdiagnosis3"/>
<tags:listField property="downsIf" component="${component}" listIndex="${iterator.index}" entityType="udsdiagnosis3"/>
<tags:listField property="hunt" component="${component}" listIndex="${iterator.index}" entityType="udsdiagnosis3"/>
<tags:listField property="huntIf" component="${component}" listIndex="${iterator.index}" entityType="udsdiagnosis3"/>
<tags:listField property="prion" component="${component}" listIndex="${iterator.index}" entityType="udsdiagnosis3"/>
<tags:listField property="prionIf" component="${component}" listIndex="${iterator.index}" entityType="udsdiagnosis3"/>
<tags:listField property="brnInj" component="${component}" listIndex="${iterator.index}" entityType="udsdiagnosis3"/>
<tags:listField property="brnInjIf" component="${component}" listIndex="${iterator.index}" entityType="udsdiagnosis3"/>
<tags:listField property="brnincte" component="${component}" listIndex="${iterator.index}" entityType="udsdiagnosis3"/>
<tags:listField property="hyceph" component="${component}" listIndex="${iterator.index}" entityType="udsdiagnosis3"/>
<tags:listField property="hycephIf" component="${component}" listIndex="${iterator.index}" entityType="udsdiagnosis3"/>
<tags:listField property="epilep" component="${component}" listIndex="${iterator.index}" entityType="udsdiagnosis3"/>
<tags:listField property="epilepif" component="${component}" listIndex="${iterator.index}" entityType="udsdiagnosis3"/>
<tags:listField property="neop" component="${component}" listIndex="${iterator.index}" entityType="udsdiagnosis3"/>
<tags:listField property="neopIf" component="${component}" listIndex="${iterator.index}" entityType="udsdiagnosis3"/>
<tags:listField property="neopstat" component="${component}" listIndex="${iterator.index}" entityType="udsdiagnosis3"/>
<tags:listField property="hiv" component="${component}" listIndex="${iterator.index}" entityType="udsdiagnosis3"/>
<tags:listField property="hivif" component="${component}" listIndex="${iterator.index}" entityType="udsdiagnosis3"/>
<tags:listField property="othcog" component="${component}" listIndex="${iterator.index}" entityType="udsdiagnosis3"/>
<tags:listField property="othcogif" component="${component}" listIndex="${iterator.index}" entityType="udsdiagnosis3"/>
<tags:listField property="othcogx" component="${component}" listIndex="${iterator.index}" entityType="udsdiagnosis3"/>
<tags:listField property="dep" component="${component}" listIndex="${iterator.index}" entityType="udsdiagnosis3"/>
<tags:listField property="depIf" component="${component}" listIndex="${iterator.index}" entityType="udsdiagnosis3"/>
<tags:listField property="deptreat" component="${component}" listIndex="${iterator.index}" entityType="udsdiagnosis3"/>
<tags:listField property="bipoldx" component="${component}" listIndex="${iterator.index}" entityType="udsdiagnosis3"/>
<tags:listField property="bipoldif" component="${component}" listIndex="${iterator.index}" entityType="udsdiagnosis3"/>
<tags:listField property="schizop" component="${component}" listIndex="${iterator.index}" entityType="udsdiagnosis3"/>
<tags:listField property="schizoif" component="${component}" listIndex="${iterator.index}" entityType="udsdiagnosis3"/>
<tags:listField property="anxiet" component="${component}" listIndex="${iterator.index}" entityType="udsdiagnosis3"/>
<tags:listField property="anxietif" component="${component}" listIndex="${iterator.index}" entityType="udsdiagnosis3"/>
<tags:listField property="delir" component="${component}" listIndex="${iterator.index}" entityType="udsdiagnosis3"/>
<tags:listField property="delirif" component="${component}" listIndex="${iterator.index}" entityType="udsdiagnosis3"/>
<tags:listField property="ptsddx" component="${component}" listIndex="${iterator.index}" entityType="udsdiagnosis3"/>
<tags:listField property="ptsddxif" component="${component}" listIndex="${iterator.index}" entityType="udsdiagnosis3"/>
<tags:listField property="othPsy" component="${component}" listIndex="${iterator.index}" entityType="udsdiagnosis3"/>
<tags:listField property="othPsyIf" component="${component}" listIndex="${iterator.index}" entityType="udsdiagnosis3"/>
<tags:listField property="othpsyx" component="${component}" listIndex="${iterator.index}" entityType="udsdiagnosis3"/>
<tags:listField property="alcDem" component="${component}" listIndex="${iterator.index}" entityType="udsdiagnosis3"/>
<tags:listField property="alcDemIf" component="${component}" listIndex="${iterator.index}" entityType="udsdiagnosis3"/>
<tags:listField property="alcabuse" component="${component}" listIndex="${iterator.index}" entityType="udsdiagnosis3"/>
<tags:listField property="impsub" component="${component}" listIndex="${iterator.index}" entityType="udsdiagnosis3"/>
<tags:listField property="impsubif" component="${component}" listIndex="${iterator.index}" entityType="udsdiagnosis3"/>
<tags:listField property="dysIll" component="${component}" listIndex="${iterator.index}" entityType="udsdiagnosis3"/>
<tags:listField property="dysIllIf" component="${component}" listIndex="${iterator.index}" entityType="udsdiagnosis3"/>
<tags:listField property="meds" component="${component}" listIndex="${iterator.index}" entityType="udsdiagnosis3"/>
<tags:listField property="medsIf" component="${component}" listIndex="${iterator.index}" entityType="udsdiagnosis3"/>
<tags:listField property="cogOth" component="${component}" listIndex="${iterator.index}" entityType="udsdiagnosis3"/>
<tags:listField property="cogOthIf" component="${component}" listIndex="${iterator.index}" entityType="udsdiagnosis3"/>
<tags:listField property="cogOthx" component="${component}" listIndex="${iterator.index}" entityType="udsdiagnosis3"/>
<tags:listField property="cogOth2" component="${component}" listIndex="${iterator.index}" entityType="udsdiagnosis3"/>
<tags:listField property="cogOth2If" component="${component}" listIndex="${iterator.index}" entityType="udsdiagnosis3"/>
<tags:listField property="cogOth2x" component="${component}" listIndex="${iterator.index}" entityType="udsdiagnosis3"/>
<tags:listField property="cogOth3" component="${component}" listIndex="${iterator.index}" entityType="udsdiagnosis3"/>
<tags:listField property="cogOth3If" component="${component}" listIndex="${iterator.index}" entityType="udsdiagnosis3"/>
<tags:listField property="cogOth3x" component="${component}" listIndex="${iterator.index}" entityType="udsdiagnosis3"/>



<tags:tableForm>
<tags:listRow>
	<tags:listColumnHeader labelKey="" width="10%"/>
	<tags:listColumnHeader labelKey="" width="70%"/>
	<tags:listColumnHeader labelKey="" width="20%"/>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="dxmethod" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="dxmethod" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="dxmethod" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="normCog" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="normCog" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="normCog" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="demented" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="demented" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="demented" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="amndem" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="amndem" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="amndem" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="pca" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="pca" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="pca" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="ppasyn" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="ppasyn" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="ppasyn" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="ppasynt" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="ppasynt" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="ppasynt" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="ftdsyn" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="ftdsyn" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="ftdsyn" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="lbdsyn" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="lbdsyn" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="lbdsyn" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="namndem" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="namndem" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="namndem" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="mciaMem" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="mciaMem" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="mciaMem" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="mciaPlus" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="mciaPlus" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="mciaPlus" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="mciaPLan" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="mciaPLan" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="mciaPLan" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="mciaPAtt" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="mciaPAtt" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="mciaPAtt" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="mciaPEx" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="mciaPEx" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="mciaPEx" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="mciaPVis" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="mciaPVis" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="mciaPVis" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="mciNon1" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="mciNon1" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="mciNon1" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="mciN1Lan" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="mciN1Lan" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="mciN1Lan" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="mciN1Att" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="mciN1Att" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="mciN1Att" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="mciN1Ex" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="mciN1Ex" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="mciN1Ex" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="mciN1Vis" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="mciN1Vis" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="mciN1Vis" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="mciNon2" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="mciNon2" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="mciNon2" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="mciN2Lan" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="mciN2Lan" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="mciN2Lan" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="mciN2Att" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="mciN2Att" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="mciN2Att" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="mciN2Ex" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="mciN2Ex" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="mciN2Ex" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="mciN2Vis" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="mciN2Vis" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="mciN2Vis" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="impNoMci" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="impNoMci" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="impNoMci" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="amylpet" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="amylpet" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="amylpet" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="amylcsf" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="amylcsf" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="amylcsf" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="fdgad" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="fdgad" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="fdgad" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="hippatr" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="hippatr" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="hippatr" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="taupetad" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="taupetad" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="taupetad" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="csftau" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="csftau" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="csftau" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="fdgftld" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="fdgftld" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="fdgftld" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="tpetftld" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="tpetftld" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="tpetftld" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="mrftld" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="mrftld" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="mrftld" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="datscan" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="datscan" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="datscan" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="othbiom" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="othbiom" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="othbiom" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="othbiomx" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="othbiomx" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="othbiomx" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="imaglinf" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="imaglinf" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="imaglinf" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="imaglac" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="imaglac" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="imaglac" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="imagmach" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="imagmach" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="imagmach" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="imagmich" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="imagmich" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="imagmich" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="imagmwmh" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="imagmwmh" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="imagmwmh" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="imagewmh" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="imagewmh" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="imagewmh" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="admut" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="admut" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="admut" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="ftldmut" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="ftldmut" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="ftldmut" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="othmut" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="othmut" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="othmut" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="othmutx" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="othmutx" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="othmutx" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="alzdis" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="alzdis" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="alzdis" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="alzdisif" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="alzdisif" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="alzdisif" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="lbdis" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="lbdis" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="lbdis" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="lbdif" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="lbdif" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="lbdif" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="park" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="park" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="park" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="msa" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="msa" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="msa" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="msaif" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="msaif" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="msaif" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="psp" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="psp" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="psp" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="pspIf" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="pspIf" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="pspIf" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="cort" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="cort" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="cort" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="cortIf" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="cortIf" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="cortIf" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="ftldmo" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="ftldmo" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="ftldmo" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="ftldmoif" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="ftldmoif" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="ftldmoif" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="ftldnos" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="ftldnos" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="ftldnos" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="ftldnoif" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="ftldnoif" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="ftldnoif" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="ftldsubt" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="ftldsubt" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="ftldsubt" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="ftldsubx" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="ftldsubx" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="ftldsubx" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="cvd" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="cvd" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="cvd" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="cvdif" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="cvdif" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="cvdif" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="prevstk" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="prevstk" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="prevstk" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="strokdec" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="strokdec" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="strokdec" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="stkimag" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="stkimag" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="stkimag" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="infnetw" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="infnetw" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="infnetw" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="infwmh" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="infwmh" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="infwmh" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="esstrem" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="esstrem" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="esstrem" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="esstreif" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="esstreif" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="esstreif" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="downs" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="downs" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="downs" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="downsIf" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="downsIf" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="downsIf" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="hunt" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="hunt" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="hunt" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="huntIf" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="huntIf" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="huntIf" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="prion" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="prion" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="prion" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="prionIf" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="prionIf" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="prionIf" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="brnInj" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="brnInj" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="brnInj" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="brnInjIf" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="brnInjIf" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="brnInjIf" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="brnincte" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="brnincte" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="brnincte" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="hyceph" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="hyceph" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="hyceph" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="hycephIf" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="hycephIf" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="hycephIf" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="epilep" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="epilep" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="epilep" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="epilepif" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="epilepif" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="epilepif" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="neop" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="neop" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="neop" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="neopIf" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="neopIf" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="neopIf" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="neopstat" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="neopstat" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="neopstat" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="hiv" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="hiv" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="hiv" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="hivif" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="hivif" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="hivif" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="othcog" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="othcog" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="othcog" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="othcogif" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="othcogif" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="othcogif" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="othcogx" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="othcogx" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="othcogx" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="dep" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="dep" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="dep" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="depIf" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="depIf" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="depIf" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="deptreat" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="deptreat" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="deptreat" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="bipoldx" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="bipoldx" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="bipoldx" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="bipoldif" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="bipoldif" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="bipoldif" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="schizop" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="schizop" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="schizop" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="schizoif" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="schizoif" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="schizoif" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="anxiet" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="anxiet" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="anxiet" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="anxietif" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="anxietif" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="anxietif" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="delir" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="delir" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="delir" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="delirif" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="delirif" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="delirif" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="ptsddx" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="ptsddx" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="ptsddx" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="ptsddxif" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="ptsddxif" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="ptsddxif" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="othPsy" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="othPsy" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="othPsy" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="othPsyIf" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="othPsyIf" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="othPsyIf" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="othpsyx" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="othpsyx" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="othpsyx" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="alcDem" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="alcDem" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="alcDem" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="alcDemIf" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="alcDemIf" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="alcDemIf" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="alcabuse" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="alcabuse" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="alcabuse" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="impsub" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="impsub" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="impsub" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="impsubif" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="impsubif" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="impsubif" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="dysIll" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="dysIll" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="dysIll" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="dysIllIf" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="dysIllIf" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="dysIllIf" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="meds" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="meds" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="meds" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="medsIf" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="medsIf" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="medsIf" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="cogOth" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="cogOth" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="cogOth" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="cogOthIf" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="cogOthIf" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="cogOthIf" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="cogOthx" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="cogOthx" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="cogOthx" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="cogOth2" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="cogOth2" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="cogOth2" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="cogOth2If" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="cogOth2If" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="cogOth2If" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="cogOth2x" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="cogOth2x" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="cogOth2x" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="cogOth3" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="cogOth3" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="cogOth3" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="cogOth3If" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="cogOth3If" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="cogOth3If" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="cogOth3x" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="cogOth3x" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="cogOth3x" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
</tags:tableForm>



<tags:tableForm>
<tags:listRow>
	<tags:listColumnHeader labelKey="" width="10%"/>
	<tags:listColumnHeader labelKey="" width="70%"/>
	<tags:listColumnHeader labelKey="" width="20%"/>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="dxmethod" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="dxmethod" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="dxmethod" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="normCog" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="normCog" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="normCog" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="demented" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="demented" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="demented" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="amndem" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="amndem" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="amndem" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="pca" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="pca" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="pca" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="ppasyn" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="ppasyn" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="ppasyn" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="ppasynt" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="ppasynt" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="ppasynt" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="ftdsyn" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="ftdsyn" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="ftdsyn" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="lbdsyn" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="lbdsyn" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="lbdsyn" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="namndem" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="namndem" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="namndem" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="mciaMem" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="mciaMem" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="mciaMem" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="mciaPlus" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="mciaPlus" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="mciaPlus" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="mciaPLan" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="mciaPLan" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="mciaPLan" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="mciaPAtt" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="mciaPAtt" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="mciaPAtt" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="mciaPEx" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="mciaPEx" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="mciaPEx" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="mciaPVis" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="mciaPVis" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="mciaPVis" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="mciNon1" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="mciNon1" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="mciNon1" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="mciN1Lan" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="mciN1Lan" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="mciN1Lan" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="mciN1Att" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="mciN1Att" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="mciN1Att" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="mciN1Ex" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="mciN1Ex" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="mciN1Ex" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="mciN1Vis" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="mciN1Vis" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="mciN1Vis" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="mciNon2" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="mciNon2" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="mciNon2" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="mciN2Lan" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="mciN2Lan" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="mciN2Lan" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="mciN2Att" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="mciN2Att" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="mciN2Att" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="mciN2Ex" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="mciN2Ex" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="mciN2Ex" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="mciN2Vis" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="mciN2Vis" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="mciN2Vis" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="impNoMci" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="impNoMci" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="impNoMci" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="amylpet" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="amylpet" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="amylpet" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="amylcsf" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="amylcsf" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="amylcsf" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="fdgad" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="fdgad" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="fdgad" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="hippatr" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="hippatr" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="hippatr" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="taupetad" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="taupetad" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="taupetad" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="csftau" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="csftau" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="csftau" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="fdgftld" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="fdgftld" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="fdgftld" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="tpetftld" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="tpetftld" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="tpetftld" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="mrftld" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="mrftld" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="mrftld" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="datscan" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="datscan" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="datscan" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="othbiom" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="othbiom" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="othbiom" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="othbiomx" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="othbiomx" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="othbiomx" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="imaglinf" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="imaglinf" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="imaglinf" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="imaglac" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="imaglac" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="imaglac" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="imagmach" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="imagmach" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="imagmach" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="imagmich" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="imagmich" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="imagmich" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="imagmwmh" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="imagmwmh" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="imagmwmh" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="imagewmh" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="imagewmh" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="imagewmh" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="admut" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="admut" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="admut" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="ftldmut" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="ftldmut" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="ftldmut" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="othmut" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="othmut" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="othmut" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="othmutx" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="othmutx" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="othmutx" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="alzdis" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="alzdis" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="alzdis" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="alzdisif" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="alzdisif" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="alzdisif" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="lbdis" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="lbdis" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="lbdis" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="lbdif" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="lbdif" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="lbdif" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="park" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="park" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="park" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="msa" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="msa" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="msa" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="msaif" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="msaif" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="msaif" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="psp" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="psp" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="psp" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="pspIf" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="pspIf" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="pspIf" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="cort" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="cort" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="cort" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="cortIf" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="cortIf" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="cortIf" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="ftldmo" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="ftldmo" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="ftldmo" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="ftldmoif" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="ftldmoif" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="ftldmoif" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="ftldnos" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="ftldnos" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="ftldnos" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="ftldnoif" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="ftldnoif" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="ftldnoif" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="ftldsubt" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="ftldsubt" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="ftldsubt" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="ftldsubx" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="ftldsubx" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="ftldsubx" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="cvd" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="cvd" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="cvd" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="cvdif" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="cvdif" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="cvdif" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="prevstk" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="prevstk" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="prevstk" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="strokdec" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="strokdec" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="strokdec" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="stkimag" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="stkimag" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="stkimag" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="infnetw" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="infnetw" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="infnetw" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="infwmh" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="infwmh" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="infwmh" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="esstrem" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="esstrem" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="esstrem" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="esstreif" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="esstreif" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="esstreif" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="downs" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="downs" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="downs" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="downsIf" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="downsIf" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="downsIf" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="hunt" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="hunt" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="hunt" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="huntIf" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="huntIf" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="huntIf" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="prion" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="prion" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="prion" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="prionIf" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="prionIf" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="prionIf" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="brnInj" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="brnInj" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="brnInj" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="brnInjIf" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="brnInjIf" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="brnInjIf" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="brnincte" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="brnincte" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="brnincte" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="hyceph" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="hyceph" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="hyceph" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="hycephIf" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="hycephIf" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="hycephIf" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="epilep" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="epilep" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="epilep" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="epilepif" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="epilepif" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="epilepif" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="neop" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="neop" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="neop" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="neopIf" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="neopIf" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="neopIf" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="neopstat" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="neopstat" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="neopstat" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="hiv" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="hiv" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="hiv" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="hivif" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="hivif" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="hivif" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="othcog" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="othcog" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="othcog" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="othcogif" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="othcogif" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="othcogif" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="othcogx" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="othcogx" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="othcogx" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="dep" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="dep" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="dep" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="depIf" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="depIf" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="depIf" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="deptreat" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="deptreat" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="deptreat" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="bipoldx" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="bipoldx" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="bipoldx" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="bipoldif" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="bipoldif" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="bipoldif" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="schizop" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="schizop" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="schizop" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="schizoif" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="schizoif" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="schizoif" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="anxiet" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="anxiet" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="anxiet" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="anxietif" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="anxietif" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="anxietif" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="delir" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="delir" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="delir" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="delirif" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="delirif" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="delirif" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="ptsddx" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="ptsddx" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="ptsddx" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="ptsddxif" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="ptsddxif" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="ptsddxif" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="othPsy" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="othPsy" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="othPsy" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="othPsyIf" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="othPsyIf" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="othPsyIf" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="othpsyx" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="othpsyx" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="othpsyx" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="alcDem" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="alcDem" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="alcDem" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="alcDemIf" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="alcDemIf" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="alcDemIf" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="alcabuse" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="alcabuse" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="alcabuse" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="impsub" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="impsub" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="impsub" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="impsubif" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="impsubif" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="impsubif" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="dysIll" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="dysIll" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="dysIll" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="dysIllIf" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="dysIllIf" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="dysIllIf" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="meds" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="meds" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="meds" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="medsIf" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="medsIf" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="medsIf" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="cogOth" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="cogOth" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="cogOth" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="cogOthIf" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="cogOthIf" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="cogOthIf" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="cogOthx" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="cogOthx" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="cogOthx" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="cogOth2" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="cogOth2" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="cogOth2" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="cogOth2If" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="cogOth2If" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="cogOth2If" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="cogOth2x" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="cogOth2x" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="cogOth2x" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="cogOth3" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="cogOth3" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="cogOth3" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="cogOth3If" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="cogOth3If" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="cogOth3If" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="cogOth3x" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="cogOth3x" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="cogOth3x" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
</tags:tableForm>
buffer.append(UdsUploadUtils.formatField(getDxmethod())).append(",");
buffer.append(UdsUploadUtils.formatField(getNormCog())).append(",");
buffer.append(UdsUploadUtils.formatField(getDemented())).append(",");
buffer.append(UdsUploadUtils.formatField(getAmndem())).append(",");
buffer.append(UdsUploadUtils.formatField(getPca())).append(",");
buffer.append(UdsUploadUtils.formatField(getPpasyn())).append(",");
buffer.append(UdsUploadUtils.formatField(getPpasynt())).append(",");
buffer.append(UdsUploadUtils.formatField(getFtdsyn())).append(",");
buffer.append(UdsUploadUtils.formatField(getLbdsyn())).append(",");
buffer.append(UdsUploadUtils.formatField(getNamndem())).append(",");
buffer.append(UdsUploadUtils.formatField(getMciaMem())).append(",");
buffer.append(UdsUploadUtils.formatField(getMciaPlus())).append(",");
buffer.append(UdsUploadUtils.formatField(getMciaPLan())).append(",");
buffer.append(UdsUploadUtils.formatField(getMciaPAtt())).append(",");
buffer.append(UdsUploadUtils.formatField(getMciaPEx())).append(",");
buffer.append(UdsUploadUtils.formatField(getMciaPVis())).append(",");
buffer.append(UdsUploadUtils.formatField(getMciNon1())).append(",");
buffer.append(UdsUploadUtils.formatField(getMciN1Lan())).append(",");
buffer.append(UdsUploadUtils.formatField(getMciN1Att())).append(",");
buffer.append(UdsUploadUtils.formatField(getMciN1Ex())).append(",");
buffer.append(UdsUploadUtils.formatField(getMciN1Vis())).append(",");
buffer.append(UdsUploadUtils.formatField(getMciNon2())).append(",");
buffer.append(UdsUploadUtils.formatField(getMciN2Lan())).append(",");
buffer.append(UdsUploadUtils.formatField(getMciN2Att())).append(",");
buffer.append(UdsUploadUtils.formatField(getMciN2Ex())).append(",");
buffer.append(UdsUploadUtils.formatField(getMciN2Vis())).append(",");
buffer.append(UdsUploadUtils.formatField(getImpNoMci())).append(",");
buffer.append(UdsUploadUtils.formatField(getAmylpet())).append(",");
buffer.append(UdsUploadUtils.formatField(getAmylcsf())).append(",");
buffer.append(UdsUploadUtils.formatField(getFdgad())).append(",");
buffer.append(UdsUploadUtils.formatField(getHippatr())).append(",");
buffer.append(UdsUploadUtils.formatField(getTaupetad())).append(",");
buffer.append(UdsUploadUtils.formatField(getCsftau())).append(",");
buffer.append(UdsUploadUtils.formatField(getFdgftld())).append(",");
buffer.append(UdsUploadUtils.formatField(getTpetftld())).append(",");
buffer.append(UdsUploadUtils.formatField(getMrftld())).append(",");
buffer.append(UdsUploadUtils.formatField(getDatscan())).append(",");
buffer.append(UdsUploadUtils.formatField(getOthbiom())).append(",");
buffer.append(UdsUploadUtils.formatField(getOthbiomx())).append(",");
buffer.append(UdsUploadUtils.formatField(getImaglinf())).append(",");
buffer.append(UdsUploadUtils.formatField(getImaglac())).append(",");
buffer.append(UdsUploadUtils.formatField(getImagmach())).append(",");
buffer.append(UdsUploadUtils.formatField(getImagmich())).append(",");
buffer.append(UdsUploadUtils.formatField(getImagmwmh())).append(",");
buffer.append(UdsUploadUtils.formatField(getImagewmh())).append(",");
buffer.append(UdsUploadUtils.formatField(getAdmut())).append(",");
buffer.append(UdsUploadUtils.formatField(getFtldmut())).append(",");
buffer.append(UdsUploadUtils.formatField(getOthmut())).append(",");
buffer.append(UdsUploadUtils.formatField(getOthmutx())).append(",");
buffer.append(UdsUploadUtils.formatField(getAlzdis())).append(",");
buffer.append(UdsUploadUtils.formatField(getAlzdisif())).append(",");
buffer.append(UdsUploadUtils.formatField(getLbdis())).append(",");
buffer.append(UdsUploadUtils.formatField(getLbdif())).append(",");
buffer.append(UdsUploadUtils.formatField(getPark())).append(",");
buffer.append(UdsUploadUtils.formatField(getMsa())).append(",");
buffer.append(UdsUploadUtils.formatField(getMsaif())).append(",");
buffer.append(UdsUploadUtils.formatField(getPsp())).append(",");
buffer.append(UdsUploadUtils.formatField(getPspIf())).append(",");
buffer.append(UdsUploadUtils.formatField(getCort())).append(",");
buffer.append(UdsUploadUtils.formatField(getCortIf())).append(",");
buffer.append(UdsUploadUtils.formatField(getFtldmo())).append(",");
buffer.append(UdsUploadUtils.formatField(getFtldmoif())).append(",");
buffer.append(UdsUploadUtils.formatField(getFtldnos())).append(",");
buffer.append(UdsUploadUtils.formatField(getFtldnoif())).append(",");
buffer.append(UdsUploadUtils.formatField(getFtldsubt())).append(",");
buffer.append(UdsUploadUtils.formatField(getFtldsubx())).append(",");
buffer.append(UdsUploadUtils.formatField(getCvd())).append(",");
buffer.append(UdsUploadUtils.formatField(getCvdif())).append(",");
buffer.append(UdsUploadUtils.formatField(getPrevstk())).append(",");
buffer.append(UdsUploadUtils.formatField(getStrokdec())).append(",");
buffer.append(UdsUploadUtils.formatField(getStkimag())).append(",");
buffer.append(UdsUploadUtils.formatField(getInfnetw())).append(",");
buffer.append(UdsUploadUtils.formatField(getInfwmh())).append(",");
buffer.append(UdsUploadUtils.formatField(getEsstrem())).append(",");
buffer.append(UdsUploadUtils.formatField(getEsstreif())).append(",");
buffer.append(UdsUploadUtils.formatField(getDowns())).append(",");
buffer.append(UdsUploadUtils.formatField(getDownsIf())).append(",");
buffer.append(UdsUploadUtils.formatField(getHunt())).append(",");
buffer.append(UdsUploadUtils.formatField(getHuntIf())).append(",");
buffer.append(UdsUploadUtils.formatField(getPrion())).append(",");
buffer.append(UdsUploadUtils.formatField(getPrionIf())).append(",");
buffer.append(UdsUploadUtils.formatField(getBrnInj())).append(",");
buffer.append(UdsUploadUtils.formatField(getBrnInjIf())).append(",");
buffer.append(UdsUploadUtils.formatField(getBrnincte())).append(",");
buffer.append(UdsUploadUtils.formatField(getHyceph())).append(",");
buffer.append(UdsUploadUtils.formatField(getHycephIf())).append(",");
buffer.append(UdsUploadUtils.formatField(getEpilep())).append(",");
buffer.append(UdsUploadUtils.formatField(getEpilepif())).append(",");
buffer.append(UdsUploadUtils.formatField(getNeop())).append(",");
buffer.append(UdsUploadUtils.formatField(getNeopIf())).append(",");
buffer.append(UdsUploadUtils.formatField(getNeopstat())).append(",");
buffer.append(UdsUploadUtils.formatField(getHiv())).append(",");
buffer.append(UdsUploadUtils.formatField(getHivif())).append(",");
buffer.append(UdsUploadUtils.formatField(getOthcog())).append(",");
buffer.append(UdsUploadUtils.formatField(getOthcogif())).append(",");
buffer.append(UdsUploadUtils.formatField(getOthcogx())).append(",");
buffer.append(UdsUploadUtils.formatField(getDep())).append(",");
buffer.append(UdsUploadUtils.formatField(getDepIf())).append(",");
buffer.append(UdsUploadUtils.formatField(getDeptreat())).append(",");
buffer.append(UdsUploadUtils.formatField(getBipoldx())).append(",");
buffer.append(UdsUploadUtils.formatField(getBipoldif())).append(",");
buffer.append(UdsUploadUtils.formatField(getSchizop())).append(",");
buffer.append(UdsUploadUtils.formatField(getSchizoif())).append(",");
buffer.append(UdsUploadUtils.formatField(getAnxiet())).append(",");
buffer.append(UdsUploadUtils.formatField(getAnxietif())).append(",");
buffer.append(UdsUploadUtils.formatField(getDelir())).append(",");
buffer.append(UdsUploadUtils.formatField(getDelirif())).append(",");
buffer.append(UdsUploadUtils.formatField(getPtsddx())).append(",");
buffer.append(UdsUploadUtils.formatField(getPtsddxif())).append(",");
buffer.append(UdsUploadUtils.formatField(getOthPsy())).append(",");
buffer.append(UdsUploadUtils.formatField(getOthPsyIf())).append(",");
buffer.append(UdsUploadUtils.formatField(getOthpsyx())).append(",");
buffer.append(UdsUploadUtils.formatField(getAlcDem())).append(",");
buffer.append(UdsUploadUtils.formatField(getAlcDemIf())).append(",");
buffer.append(UdsUploadUtils.formatField(getAlcabuse())).append(",");
buffer.append(UdsUploadUtils.formatField(getImpsub())).append(",");
buffer.append(UdsUploadUtils.formatField(getImpsubif())).append(",");
buffer.append(UdsUploadUtils.formatField(getDysIll())).append(",");
buffer.append(UdsUploadUtils.formatField(getDysIllIf())).append(",");
buffer.append(UdsUploadUtils.formatField(getMeds())).append(",");
buffer.append(UdsUploadUtils.formatField(getMedsIf())).append(",");
buffer.append(UdsUploadUtils.formatField(getCogOth())).append(",");
buffer.append(UdsUploadUtils.formatField(getCogOthIf())).append(",");
buffer.append(UdsUploadUtils.formatField(getCogOthx())).append(",");
buffer.append(UdsUploadUtils.formatField(getCogOth2())).append(",");
buffer.append(UdsUploadUtils.formatField(getCogOth2If())).append(",");
buffer.append(UdsUploadUtils.formatField(getCogOth2x())).append(",");
buffer.append(UdsUploadUtils.formatField(getCogOth3())).append(",");
buffer.append(UdsUploadUtils.formatField(getCogOth3If())).append(",");
buffer.append(UdsUploadUtils.formatField(getCogOth3x())).append(",");
