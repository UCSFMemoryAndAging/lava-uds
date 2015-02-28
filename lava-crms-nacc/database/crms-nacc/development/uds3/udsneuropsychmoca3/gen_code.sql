<?xml version="1.0"?>

<!DOCTYPE hibernate-mapping PUBLIC
    "-//Hibernate/Hibernate Mapping DTD 3.0//EN"
    "http://hibernate.sourceforge.net/hibernate-mapping-3.0.dtd">

<hibernate-mapping>

<class name="edu.ucsf.memory.[scope].[module].model.udsneuropsychmoca3" table="udsneuropsychmoca3" select-before-update="true">

		<id name="id" type="long">
			<column name="[KEY COLUMN]" not-null="true"/>
			<generator class="identity"/>
		</id>


		<property name="mocacomp" column="MOCACOMP" type="short"/>
		<property name="mocareas" column="MOCAREAS" type="short"/>
		<property name="mocaloc" column="MOCALOC" type="short"/>
		<property name="mocalan" column="MOCALAN" type="short"/>
		<property name="mocalanx" column="MOCALANX" type="string" length="60"/>
		<property name="mocavis" column="MOCAVIS" type="short"/>
		<property name="mocahear" column="MOCAHEAR" type="short"/>
		<property name="mocatots" column="MOCATOTS" type="short"/>
		<property name="mocatrai" column="MOCATRAI" type="short"/>
		<property name="mocacube" column="MOCACUBE" type="short"/>
		<property name="mocacloc" column="MOCACLOC" type="short"/>
		<property name="mocaclon" column="MOCACLON" type="short"/>
		<property name="mocacloh" column="MOCACLOH" type="short"/>
		<property name="mocanami" column="MOCANAMI" type="short"/>
		<property name="mocaregi" column="MOCAREGI" type="short"/>
		<property name="mocadigi" column="MOCADIGI" type="short"/>
		<property name="mocalett" column="MOCALETT" type="short"/>
		<property name="mocaser7" column="MOCASER7" type="short"/>
		<property name="mocarepe" column="MOCAREPE" type="short"/>
		<property name="mocaflue" column="MOCAFLUE" type="short"/>
		<property name="mocaabst" column="MOCAABST" type="short"/>
		<property name="mocarecn" column="MOCARECN" type="short"/>
		<property name="mocarecc" column="MOCARECC" type="short"/>
		<property name="mocarecr" column="MOCARECR" type="short"/>
		<property name="mocaordt" column="MOCAORDT" type="short"/>
		<property name="mocaormo" column="MOCAORMO" type="short"/>
		<property name="mocaoryr" column="MOCAORYR" type="short"/>
		<property name="mocaordy" column="MOCAORDY" type="short"/>
		<property name="mocaorpl" column="MOCAORPL" type="short"/>
		<property name="mocaorct" column="MOCAORCT" type="short"/>
		<property name="npsycloc" column="NPSYCLOC" type="short"/>
		<property name="npsylan" column="NPSYLAN" type="short"/>
		<property name="npsylanx" column="NPSYLANX" type="string" length="60"/>
		<property name="craftvrs" column="CRAFTVRS" type="short"/>
		<property name="crafturs" column="CRAFTURS" type="short"/>
		<property name="udsbentc" column="UDSBENTC" type="short"/>
		<property name="digforct" column="DIGFORCT" type="short"/>
		<property name="digforsl" column="DIGFORSL" type="short"/>
		<property name="digbacct" column="DIGBACCT" type="short"/>
		<property name="digbacls" column="DIGBACLS" type="short"/>
		<property name="animals" column="ANIMALS" type="short"/>
		<property name="veg" column="VEG" type="short"/>
		<property name="traila" column="TRAILA" type="short"/>
		<property name="trailarr" column="TRAILARR" type="short"/>
		<property name="trailali" column="TRAILALI" type="short"/>
		<property name="trailb" column="TRAILB" type="short"/>
		<property name="trailbrr" column="TRAILBRR" type="short"/>
		<property name="trailbli" column="TRAILBLI" type="short"/>
		<property name="craftdvr" column="CRAFTDVR" type="short"/>
		<property name="craftdre" column="CRAFTDRE" type="short"/>
		<property name="craftdti" column="CRAFTDTI" type="short"/>
		<property name="craftcue" column="CRAFTCUE" type="short"/>
		<property name="udsbentd" column="UDSBENTD" type="short"/>
		<property name="udsbenrs" column="UDSBENRS" type="short"/>
		<property name="minttots" column="MINTTOTS" type="short"/>
		<property name="minttotw" column="MINTTOTW" type="short"/>
		<property name="mintscng" column="MINTSCNG" type="short"/>
		<property name="mintscnc" column="MINTSCNC" type="short"/>
		<property name="mintpcng" column="MINTPCNG" type="short"/>
		<property name="mintpcnc" column="MINTPCNC" type="short"/>
		<property name="udsverfc" column="UDSVERFC" type="short"/>
		<property name="udsverfn" column="UDSVERFN" type="short"/>
		<property name="udsvernf" column="UDSVERNF" type="short"/>
		<property name="udsverlc" column="UDSVERLC" type="short"/>
		<property name="udsverlr" column="UDSVERLR" type="short"/>
		<property name="udsverln" column="UDSVERLN" type="short"/>
		<property name="udsvertn" column="UDSVERTN" type="short"/>
		<property name="udsverte" column="UDSVERTE" type="short"/>
		<property name="udsverti" column="UDSVERTI" type="short"/>
		<property name="cogstat" column="COGSTAT" type="short"/>


	<!-- associations -->



	<!-- filters -->
               <!--define or remove these standard filters-->
               <filter name="projectContext" condition=":projectContext)=[define]"/>
               <filter name="patient" condition=":patientId=[define]"/>


</class>


         <!-- queries  -->



</hibernate-mapping>
protected Short mocacomp;
protected Short mocareas;
protected Short mocaloc;
protected Short mocalan;
protected String mocalanx;
protected Short mocavis;
protected Short mocahear;
protected Short mocatots;
protected Short mocatrai;
protected Short mocacube;
protected Short mocacloc;
protected Short mocaclon;
protected Short mocacloh;
protected Short mocanami;
protected Short mocaregi;
protected Short mocadigi;
protected Short mocalett;
protected Short mocaser7;
protected Short mocarepe;
protected Short mocaflue;
protected Short mocaabst;
protected Short mocarecn;
protected Short mocarecc;
protected Short mocarecr;
protected Short mocaordt;
protected Short mocaormo;
protected Short mocaoryr;
protected Short mocaordy;
protected Short mocaorpl;
protected Short mocaorct;
protected Short npsycloc;
protected Short npsylan;
protected String npsylanx;
protected Short craftvrs;
protected Short crafturs;
protected Short udsbentc;
protected Short digforct;
protected Short digforsl;
protected Short digbacct;
protected Short digbacls;
protected Short animals;
protected Short veg;
protected Short traila;
protected Short trailarr;
protected Short trailali;
protected Short trailb;
protected Short trailbrr;
protected Short trailbli;
protected Short craftdvr;
protected Short craftdre;
protected Short craftdti;
protected Short craftcue;
protected Short udsbentd;
protected Short udsbenrs;
protected Short minttots;
protected Short minttotw;
protected Short mintscng;
protected Short mintscnc;
protected Short mintpcng;
protected Short mintpcnc;
protected Short udsverfc;
protected Short udsverfn;
protected Short udsvernf;
protected Short udsverlc;
protected Short udsverlr;
protected Short udsverln;
protected Short udsvertn;
protected Short udsverte;
protected Short udsverti;
protected Short cogstat;
"mocacomp",
"mocareas",
"mocaloc",
"mocalan",
"mocalanx",
"mocavis",
"mocahear",
"mocatots",
"mocatrai",
"mocacube",
"mocacloc",
"mocaclon",
"mocacloh",
"mocanami",
"mocaregi",
"mocadigi",
"mocalett",
"mocaser7",
"mocarepe",
"mocaflue",
"mocaabst",
"mocarecn",
"mocarecc",
"mocarecr",
"mocaordt",
"mocaormo",
"mocaoryr",
"mocaordy",
"mocaorpl",
"mocaorct",
"npsycloc",
"npsylan",
"npsylanx",
"craftvrs",
"crafturs",
"udsbentc",
"digforct",
"digforsl",
"digbacct",
"digbacls",
"animals",
"veg",
"traila",
"trailarr",
"trailali",
"trailb",
"trailbrr",
"trailbli",
"craftdvr",
"craftdre",
"craftdti",
"craftcue",
"udsbentd",
"udsbenrs",
"minttots",
"minttotw",
"mintscng",
"mintscnc",
"mintpcng",
"mintpcnc",
"udsverfc",
"udsverfn",
"udsvernf",
"udsverlc",
"udsverlr",
"udsverln",
"udsvertn",
"udsverte",
"udsverti",
"cogstat",
<tags:createField property="mocacomp" component="${component}"/>
<tags:createField property="mocareas" component="${component}"/>
<tags:createField property="mocaloc" component="${component}"/>
<tags:createField property="mocalan" component="${component}"/>
<tags:createField property="mocalanx" component="${component}"/>
<tags:createField property="mocavis" component="${component}"/>
<tags:createField property="mocahear" component="${component}"/>
<tags:createField property="mocatots" component="${component}"/>
<tags:createField property="mocatrai" component="${component}"/>
<tags:createField property="mocacube" component="${component}"/>
<tags:createField property="mocacloc" component="${component}"/>
<tags:createField property="mocaclon" component="${component}"/>
<tags:createField property="mocacloh" component="${component}"/>
<tags:createField property="mocanami" component="${component}"/>
<tags:createField property="mocaregi" component="${component}"/>
<tags:createField property="mocadigi" component="${component}"/>
<tags:createField property="mocalett" component="${component}"/>
<tags:createField property="mocaser7" component="${component}"/>
<tags:createField property="mocarepe" component="${component}"/>
<tags:createField property="mocaflue" component="${component}"/>
<tags:createField property="mocaabst" component="${component}"/>
<tags:createField property="mocarecn" component="${component}"/>
<tags:createField property="mocarecc" component="${component}"/>
<tags:createField property="mocarecr" component="${component}"/>
<tags:createField property="mocaordt" component="${component}"/>
<tags:createField property="mocaormo" component="${component}"/>
<tags:createField property="mocaoryr" component="${component}"/>
<tags:createField property="mocaordy" component="${component}"/>
<tags:createField property="mocaorpl" component="${component}"/>
<tags:createField property="mocaorct" component="${component}"/>
<tags:createField property="npsycloc" component="${component}"/>
<tags:createField property="npsylan" component="${component}"/>
<tags:createField property="npsylanx" component="${component}"/>
<tags:createField property="craftvrs" component="${component}"/>
<tags:createField property="crafturs" component="${component}"/>
<tags:createField property="udsbentc" component="${component}"/>
<tags:createField property="digforct" component="${component}"/>
<tags:createField property="digforsl" component="${component}"/>
<tags:createField property="digbacct" component="${component}"/>
<tags:createField property="digbacls" component="${component}"/>
<tags:createField property="animals" component="${component}"/>
<tags:createField property="veg" component="${component}"/>
<tags:createField property="traila" component="${component}"/>
<tags:createField property="trailarr" component="${component}"/>
<tags:createField property="trailali" component="${component}"/>
<tags:createField property="trailb" component="${component}"/>
<tags:createField property="trailbrr" component="${component}"/>
<tags:createField property="trailbli" component="${component}"/>
<tags:createField property="craftdvr" component="${component}"/>
<tags:createField property="craftdre" component="${component}"/>
<tags:createField property="craftdti" component="${component}"/>
<tags:createField property="craftcue" component="${component}"/>
<tags:createField property="udsbentd" component="${component}"/>
<tags:createField property="udsbenrs" component="${component}"/>
<tags:createField property="minttots" component="${component}"/>
<tags:createField property="minttotw" component="${component}"/>
<tags:createField property="mintscng" component="${component}"/>
<tags:createField property="mintscnc" component="${component}"/>
<tags:createField property="mintpcng" component="${component}"/>
<tags:createField property="mintpcnc" component="${component}"/>
<tags:createField property="udsverfc" component="${component}"/>
<tags:createField property="udsverfn" component="${component}"/>
<tags:createField property="udsvernf" component="${component}"/>
<tags:createField property="udsverlc" component="${component}"/>
<tags:createField property="udsverlr" component="${component}"/>
<tags:createField property="udsverln" component="${component}"/>
<tags:createField property="udsvertn" component="${component}"/>
<tags:createField property="udsverte" component="${component}"/>
<tags:createField property="udsverti" component="${component}"/>
<tags:createField property="cogstat" component="${component}"/>



<tags:createField property="mocacomp" component="${component}" entity="udsneuropsychmoca3"/>
<tags:createField property="mocareas" component="${component}" entity="udsneuropsychmoca3"/>
<tags:createField property="mocaloc" component="${component}" entity="udsneuropsychmoca3"/>
<tags:createField property="mocalan" component="${component}" entity="udsneuropsychmoca3"/>
<tags:createField property="mocalanx" component="${component}" entity="udsneuropsychmoca3"/>
<tags:createField property="mocavis" component="${component}" entity="udsneuropsychmoca3"/>
<tags:createField property="mocahear" component="${component}" entity="udsneuropsychmoca3"/>
<tags:createField property="mocatots" component="${component}" entity="udsneuropsychmoca3"/>
<tags:createField property="mocatrai" component="${component}" entity="udsneuropsychmoca3"/>
<tags:createField property="mocacube" component="${component}" entity="udsneuropsychmoca3"/>
<tags:createField property="mocacloc" component="${component}" entity="udsneuropsychmoca3"/>
<tags:createField property="mocaclon" component="${component}" entity="udsneuropsychmoca3"/>
<tags:createField property="mocacloh" component="${component}" entity="udsneuropsychmoca3"/>
<tags:createField property="mocanami" component="${component}" entity="udsneuropsychmoca3"/>
<tags:createField property="mocaregi" component="${component}" entity="udsneuropsychmoca3"/>
<tags:createField property="mocadigi" component="${component}" entity="udsneuropsychmoca3"/>
<tags:createField property="mocalett" component="${component}" entity="udsneuropsychmoca3"/>
<tags:createField property="mocaser7" component="${component}" entity="udsneuropsychmoca3"/>
<tags:createField property="mocarepe" component="${component}" entity="udsneuropsychmoca3"/>
<tags:createField property="mocaflue" component="${component}" entity="udsneuropsychmoca3"/>
<tags:createField property="mocaabst" component="${component}" entity="udsneuropsychmoca3"/>
<tags:createField property="mocarecn" component="${component}" entity="udsneuropsychmoca3"/>
<tags:createField property="mocarecc" component="${component}" entity="udsneuropsychmoca3"/>
<tags:createField property="mocarecr" component="${component}" entity="udsneuropsychmoca3"/>
<tags:createField property="mocaordt" component="${component}" entity="udsneuropsychmoca3"/>
<tags:createField property="mocaormo" component="${component}" entity="udsneuropsychmoca3"/>
<tags:createField property="mocaoryr" component="${component}" entity="udsneuropsychmoca3"/>
<tags:createField property="mocaordy" component="${component}" entity="udsneuropsychmoca3"/>
<tags:createField property="mocaorpl" component="${component}" entity="udsneuropsychmoca3"/>
<tags:createField property="mocaorct" component="${component}" entity="udsneuropsychmoca3"/>
<tags:createField property="npsycloc" component="${component}" entity="udsneuropsychmoca3"/>
<tags:createField property="npsylan" component="${component}" entity="udsneuropsychmoca3"/>
<tags:createField property="npsylanx" component="${component}" entity="udsneuropsychmoca3"/>
<tags:createField property="craftvrs" component="${component}" entity="udsneuropsychmoca3"/>
<tags:createField property="crafturs" component="${component}" entity="udsneuropsychmoca3"/>
<tags:createField property="udsbentc" component="${component}" entity="udsneuropsychmoca3"/>
<tags:createField property="digforct" component="${component}" entity="udsneuropsychmoca3"/>
<tags:createField property="digforsl" component="${component}" entity="udsneuropsychmoca3"/>
<tags:createField property="digbacct" component="${component}" entity="udsneuropsychmoca3"/>
<tags:createField property="digbacls" component="${component}" entity="udsneuropsychmoca3"/>
<tags:createField property="animals" component="${component}" entity="udsneuropsychmoca3"/>
<tags:createField property="veg" component="${component}" entity="udsneuropsychmoca3"/>
<tags:createField property="traila" component="${component}" entity="udsneuropsychmoca3"/>
<tags:createField property="trailarr" component="${component}" entity="udsneuropsychmoca3"/>
<tags:createField property="trailali" component="${component}" entity="udsneuropsychmoca3"/>
<tags:createField property="trailb" component="${component}" entity="udsneuropsychmoca3"/>
<tags:createField property="trailbrr" component="${component}" entity="udsneuropsychmoca3"/>
<tags:createField property="trailbli" component="${component}" entity="udsneuropsychmoca3"/>
<tags:createField property="craftdvr" component="${component}" entity="udsneuropsychmoca3"/>
<tags:createField property="craftdre" component="${component}" entity="udsneuropsychmoca3"/>
<tags:createField property="craftdti" component="${component}" entity="udsneuropsychmoca3"/>
<tags:createField property="craftcue" component="${component}" entity="udsneuropsychmoca3"/>
<tags:createField property="udsbentd" component="${component}" entity="udsneuropsychmoca3"/>
<tags:createField property="udsbenrs" component="${component}" entity="udsneuropsychmoca3"/>
<tags:createField property="minttots" component="${component}" entity="udsneuropsychmoca3"/>
<tags:createField property="minttotw" component="${component}" entity="udsneuropsychmoca3"/>
<tags:createField property="mintscng" component="${component}" entity="udsneuropsychmoca3"/>
<tags:createField property="mintscnc" component="${component}" entity="udsneuropsychmoca3"/>
<tags:createField property="mintpcng" component="${component}" entity="udsneuropsychmoca3"/>
<tags:createField property="mintpcnc" component="${component}" entity="udsneuropsychmoca3"/>
<tags:createField property="udsverfc" component="${component}" entity="udsneuropsychmoca3"/>
<tags:createField property="udsverfn" component="${component}" entity="udsneuropsychmoca3"/>
<tags:createField property="udsvernf" component="${component}" entity="udsneuropsychmoca3"/>
<tags:createField property="udsverlc" component="${component}" entity="udsneuropsychmoca3"/>
<tags:createField property="udsverlr" component="${component}" entity="udsneuropsychmoca3"/>
<tags:createField property="udsverln" component="${component}" entity="udsneuropsychmoca3"/>
<tags:createField property="udsvertn" component="${component}" entity="udsneuropsychmoca3"/>
<tags:createField property="udsverte" component="${component}" entity="udsneuropsychmoca3"/>
<tags:createField property="udsverti" component="${component}" entity="udsneuropsychmoca3"/>
<tags:createField property="cogstat" component="${component}" entity="udsneuropsychmoca3"/>



<tags:createField property="mocacomp" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="mocareas" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="mocaloc" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="mocalan" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="mocalanx" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="mocavis" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="mocahear" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="mocatots" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="mocatrai" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="mocacube" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="mocacloc" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="mocaclon" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="mocacloh" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="mocanami" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="mocaregi" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="mocadigi" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="mocalett" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="mocaser7" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="mocarepe" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="mocaflue" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="mocaabst" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="mocarecn" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="mocarecc" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="mocarecr" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="mocaordt" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="mocaormo" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="mocaoryr" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="mocaordy" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="mocaorpl" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="mocaorct" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="npsycloc" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="npsylan" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="npsylanx" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="craftvrs" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="crafturs" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="udsbentc" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="digforct" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="digforsl" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="digbacct" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="digbacls" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="animals" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="veg" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="traila" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="trailarr" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="trailali" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="trailb" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="trailbrr" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="trailbli" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="craftdvr" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="craftdre" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="craftdti" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="craftcue" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="udsbentd" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="udsbenrs" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="minttots" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="minttotw" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="mintscng" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="mintscnc" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="mintpcng" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="mintpcnc" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="udsverfc" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="udsverfn" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="udsvernf" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="udsverlc" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="udsverlr" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="udsverln" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="udsvertn" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="udsverte" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="udsverti" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="cogstat" component="${component}" entity="${instrTypeEncoded}"/>



<tags:createField property="mocacomp" component="udsneuropsychmoca3"/>
<tags:createField property="mocareas" component="udsneuropsychmoca3"/>
<tags:createField property="mocaloc" component="udsneuropsychmoca3"/>
<tags:createField property="mocalan" component="udsneuropsychmoca3"/>
<tags:createField property="mocalanx" component="udsneuropsychmoca3"/>
<tags:createField property="mocavis" component="udsneuropsychmoca3"/>
<tags:createField property="mocahear" component="udsneuropsychmoca3"/>
<tags:createField property="mocatots" component="udsneuropsychmoca3"/>
<tags:createField property="mocatrai" component="udsneuropsychmoca3"/>
<tags:createField property="mocacube" component="udsneuropsychmoca3"/>
<tags:createField property="mocacloc" component="udsneuropsychmoca3"/>
<tags:createField property="mocaclon" component="udsneuropsychmoca3"/>
<tags:createField property="mocacloh" component="udsneuropsychmoca3"/>
<tags:createField property="mocanami" component="udsneuropsychmoca3"/>
<tags:createField property="mocaregi" component="udsneuropsychmoca3"/>
<tags:createField property="mocadigi" component="udsneuropsychmoca3"/>
<tags:createField property="mocalett" component="udsneuropsychmoca3"/>
<tags:createField property="mocaser7" component="udsneuropsychmoca3"/>
<tags:createField property="mocarepe" component="udsneuropsychmoca3"/>
<tags:createField property="mocaflue" component="udsneuropsychmoca3"/>
<tags:createField property="mocaabst" component="udsneuropsychmoca3"/>
<tags:createField property="mocarecn" component="udsneuropsychmoca3"/>
<tags:createField property="mocarecc" component="udsneuropsychmoca3"/>
<tags:createField property="mocarecr" component="udsneuropsychmoca3"/>
<tags:createField property="mocaordt" component="udsneuropsychmoca3"/>
<tags:createField property="mocaormo" component="udsneuropsychmoca3"/>
<tags:createField property="mocaoryr" component="udsneuropsychmoca3"/>
<tags:createField property="mocaordy" component="udsneuropsychmoca3"/>
<tags:createField property="mocaorpl" component="udsneuropsychmoca3"/>
<tags:createField property="mocaorct" component="udsneuropsychmoca3"/>
<tags:createField property="npsycloc" component="udsneuropsychmoca3"/>
<tags:createField property="npsylan" component="udsneuropsychmoca3"/>
<tags:createField property="npsylanx" component="udsneuropsychmoca3"/>
<tags:createField property="craftvrs" component="udsneuropsychmoca3"/>
<tags:createField property="crafturs" component="udsneuropsychmoca3"/>
<tags:createField property="udsbentc" component="udsneuropsychmoca3"/>
<tags:createField property="digforct" component="udsneuropsychmoca3"/>
<tags:createField property="digforsl" component="udsneuropsychmoca3"/>
<tags:createField property="digbacct" component="udsneuropsychmoca3"/>
<tags:createField property="digbacls" component="udsneuropsychmoca3"/>
<tags:createField property="animals" component="udsneuropsychmoca3"/>
<tags:createField property="veg" component="udsneuropsychmoca3"/>
<tags:createField property="traila" component="udsneuropsychmoca3"/>
<tags:createField property="trailarr" component="udsneuropsychmoca3"/>
<tags:createField property="trailali" component="udsneuropsychmoca3"/>
<tags:createField property="trailb" component="udsneuropsychmoca3"/>
<tags:createField property="trailbrr" component="udsneuropsychmoca3"/>
<tags:createField property="trailbli" component="udsneuropsychmoca3"/>
<tags:createField property="craftdvr" component="udsneuropsychmoca3"/>
<tags:createField property="craftdre" component="udsneuropsychmoca3"/>
<tags:createField property="craftdti" component="udsneuropsychmoca3"/>
<tags:createField property="craftcue" component="udsneuropsychmoca3"/>
<tags:createField property="udsbentd" component="udsneuropsychmoca3"/>
<tags:createField property="udsbenrs" component="udsneuropsychmoca3"/>
<tags:createField property="minttots" component="udsneuropsychmoca3"/>
<tags:createField property="minttotw" component="udsneuropsychmoca3"/>
<tags:createField property="mintscng" component="udsneuropsychmoca3"/>
<tags:createField property="mintscnc" component="udsneuropsychmoca3"/>
<tags:createField property="mintpcng" component="udsneuropsychmoca3"/>
<tags:createField property="mintpcnc" component="udsneuropsychmoca3"/>
<tags:createField property="udsverfc" component="udsneuropsychmoca3"/>
<tags:createField property="udsverfn" component="udsneuropsychmoca3"/>
<tags:createField property="udsvernf" component="udsneuropsychmoca3"/>
<tags:createField property="udsverlc" component="udsneuropsychmoca3"/>
<tags:createField property="udsverlr" component="udsneuropsychmoca3"/>
<tags:createField property="udsverln" component="udsneuropsychmoca3"/>
<tags:createField property="udsvertn" component="udsneuropsychmoca3"/>
<tags:createField property="udsverte" component="udsneuropsychmoca3"/>
<tags:createField property="udsverti" component="udsneuropsychmoca3"/>
<tags:createField property="cogstat" component="udsneuropsychmoca3"/>



<tags:listField property="mocacomp" component="${component}" listIndex="${iterator.index}" entityType="udsneuropsychmoca3"/>
<tags:listField property="mocareas" component="${component}" listIndex="${iterator.index}" entityType="udsneuropsychmoca3"/>
<tags:listField property="mocaloc" component="${component}" listIndex="${iterator.index}" entityType="udsneuropsychmoca3"/>
<tags:listField property="mocalan" component="${component}" listIndex="${iterator.index}" entityType="udsneuropsychmoca3"/>
<tags:listField property="mocalanx" component="${component}" listIndex="${iterator.index}" entityType="udsneuropsychmoca3"/>
<tags:listField property="mocavis" component="${component}" listIndex="${iterator.index}" entityType="udsneuropsychmoca3"/>
<tags:listField property="mocahear" component="${component}" listIndex="${iterator.index}" entityType="udsneuropsychmoca3"/>
<tags:listField property="mocatots" component="${component}" listIndex="${iterator.index}" entityType="udsneuropsychmoca3"/>
<tags:listField property="mocatrai" component="${component}" listIndex="${iterator.index}" entityType="udsneuropsychmoca3"/>
<tags:listField property="mocacube" component="${component}" listIndex="${iterator.index}" entityType="udsneuropsychmoca3"/>
<tags:listField property="mocacloc" component="${component}" listIndex="${iterator.index}" entityType="udsneuropsychmoca3"/>
<tags:listField property="mocaclon" component="${component}" listIndex="${iterator.index}" entityType="udsneuropsychmoca3"/>
<tags:listField property="mocacloh" component="${component}" listIndex="${iterator.index}" entityType="udsneuropsychmoca3"/>
<tags:listField property="mocanami" component="${component}" listIndex="${iterator.index}" entityType="udsneuropsychmoca3"/>
<tags:listField property="mocaregi" component="${component}" listIndex="${iterator.index}" entityType="udsneuropsychmoca3"/>
<tags:listField property="mocadigi" component="${component}" listIndex="${iterator.index}" entityType="udsneuropsychmoca3"/>
<tags:listField property="mocalett" component="${component}" listIndex="${iterator.index}" entityType="udsneuropsychmoca3"/>
<tags:listField property="mocaser7" component="${component}" listIndex="${iterator.index}" entityType="udsneuropsychmoca3"/>
<tags:listField property="mocarepe" component="${component}" listIndex="${iterator.index}" entityType="udsneuropsychmoca3"/>
<tags:listField property="mocaflue" component="${component}" listIndex="${iterator.index}" entityType="udsneuropsychmoca3"/>
<tags:listField property="mocaabst" component="${component}" listIndex="${iterator.index}" entityType="udsneuropsychmoca3"/>
<tags:listField property="mocarecn" component="${component}" listIndex="${iterator.index}" entityType="udsneuropsychmoca3"/>
<tags:listField property="mocarecc" component="${component}" listIndex="${iterator.index}" entityType="udsneuropsychmoca3"/>
<tags:listField property="mocarecr" component="${component}" listIndex="${iterator.index}" entityType="udsneuropsychmoca3"/>
<tags:listField property="mocaordt" component="${component}" listIndex="${iterator.index}" entityType="udsneuropsychmoca3"/>
<tags:listField property="mocaormo" component="${component}" listIndex="${iterator.index}" entityType="udsneuropsychmoca3"/>
<tags:listField property="mocaoryr" component="${component}" listIndex="${iterator.index}" entityType="udsneuropsychmoca3"/>
<tags:listField property="mocaordy" component="${component}" listIndex="${iterator.index}" entityType="udsneuropsychmoca3"/>
<tags:listField property="mocaorpl" component="${component}" listIndex="${iterator.index}" entityType="udsneuropsychmoca3"/>
<tags:listField property="mocaorct" component="${component}" listIndex="${iterator.index}" entityType="udsneuropsychmoca3"/>
<tags:listField property="npsycloc" component="${component}" listIndex="${iterator.index}" entityType="udsneuropsychmoca3"/>
<tags:listField property="npsylan" component="${component}" listIndex="${iterator.index}" entityType="udsneuropsychmoca3"/>
<tags:listField property="npsylanx" component="${component}" listIndex="${iterator.index}" entityType="udsneuropsychmoca3"/>
<tags:listField property="craftvrs" component="${component}" listIndex="${iterator.index}" entityType="udsneuropsychmoca3"/>
<tags:listField property="crafturs" component="${component}" listIndex="${iterator.index}" entityType="udsneuropsychmoca3"/>
<tags:listField property="udsbentc" component="${component}" listIndex="${iterator.index}" entityType="udsneuropsychmoca3"/>
<tags:listField property="digforct" component="${component}" listIndex="${iterator.index}" entityType="udsneuropsychmoca3"/>
<tags:listField property="digforsl" component="${component}" listIndex="${iterator.index}" entityType="udsneuropsychmoca3"/>
<tags:listField property="digbacct" component="${component}" listIndex="${iterator.index}" entityType="udsneuropsychmoca3"/>
<tags:listField property="digbacls" component="${component}" listIndex="${iterator.index}" entityType="udsneuropsychmoca3"/>
<tags:listField property="animals" component="${component}" listIndex="${iterator.index}" entityType="udsneuropsychmoca3"/>
<tags:listField property="veg" component="${component}" listIndex="${iterator.index}" entityType="udsneuropsychmoca3"/>
<tags:listField property="traila" component="${component}" listIndex="${iterator.index}" entityType="udsneuropsychmoca3"/>
<tags:listField property="trailarr" component="${component}" listIndex="${iterator.index}" entityType="udsneuropsychmoca3"/>
<tags:listField property="trailali" component="${component}" listIndex="${iterator.index}" entityType="udsneuropsychmoca3"/>
<tags:listField property="trailb" component="${component}" listIndex="${iterator.index}" entityType="udsneuropsychmoca3"/>
<tags:listField property="trailbrr" component="${component}" listIndex="${iterator.index}" entityType="udsneuropsychmoca3"/>
<tags:listField property="trailbli" component="${component}" listIndex="${iterator.index}" entityType="udsneuropsychmoca3"/>
<tags:listField property="craftdvr" component="${component}" listIndex="${iterator.index}" entityType="udsneuropsychmoca3"/>
<tags:listField property="craftdre" component="${component}" listIndex="${iterator.index}" entityType="udsneuropsychmoca3"/>
<tags:listField property="craftdti" component="${component}" listIndex="${iterator.index}" entityType="udsneuropsychmoca3"/>
<tags:listField property="craftcue" component="${component}" listIndex="${iterator.index}" entityType="udsneuropsychmoca3"/>
<tags:listField property="udsbentd" component="${component}" listIndex="${iterator.index}" entityType="udsneuropsychmoca3"/>
<tags:listField property="udsbenrs" component="${component}" listIndex="${iterator.index}" entityType="udsneuropsychmoca3"/>
<tags:listField property="minttots" component="${component}" listIndex="${iterator.index}" entityType="udsneuropsychmoca3"/>
<tags:listField property="minttotw" component="${component}" listIndex="${iterator.index}" entityType="udsneuropsychmoca3"/>
<tags:listField property="mintscng" component="${component}" listIndex="${iterator.index}" entityType="udsneuropsychmoca3"/>
<tags:listField property="mintscnc" component="${component}" listIndex="${iterator.index}" entityType="udsneuropsychmoca3"/>
<tags:listField property="mintpcng" component="${component}" listIndex="${iterator.index}" entityType="udsneuropsychmoca3"/>
<tags:listField property="mintpcnc" component="${component}" listIndex="${iterator.index}" entityType="udsneuropsychmoca3"/>
<tags:listField property="udsverfc" component="${component}" listIndex="${iterator.index}" entityType="udsneuropsychmoca3"/>
<tags:listField property="udsverfn" component="${component}" listIndex="${iterator.index}" entityType="udsneuropsychmoca3"/>
<tags:listField property="udsvernf" component="${component}" listIndex="${iterator.index}" entityType="udsneuropsychmoca3"/>
<tags:listField property="udsverlc" component="${component}" listIndex="${iterator.index}" entityType="udsneuropsychmoca3"/>
<tags:listField property="udsverlr" component="${component}" listIndex="${iterator.index}" entityType="udsneuropsychmoca3"/>
<tags:listField property="udsverln" component="${component}" listIndex="${iterator.index}" entityType="udsneuropsychmoca3"/>
<tags:listField property="udsvertn" component="${component}" listIndex="${iterator.index}" entityType="udsneuropsychmoca3"/>
<tags:listField property="udsverte" component="${component}" listIndex="${iterator.index}" entityType="udsneuropsychmoca3"/>
<tags:listField property="udsverti" component="${component}" listIndex="${iterator.index}" entityType="udsneuropsychmoca3"/>
<tags:listField property="cogstat" component="${component}" listIndex="${iterator.index}" entityType="udsneuropsychmoca3"/>



<tags:tableForm>
<tags:listRow>
	<tags:listColumnHeader labelKey="" width="10%"/>
	<tags:listColumnHeader labelKey="" width="70%"/>
	<tags:listColumnHeader labelKey="" width="20%"/>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="mocacomp" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="mocacomp" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="mocacomp" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="mocareas" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="mocareas" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="mocareas" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="mocaloc" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="mocaloc" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="mocaloc" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="mocalan" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="mocalan" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="mocalan" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="mocalanx" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="mocalanx" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="mocalanx" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="mocavis" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="mocavis" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="mocavis" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="mocahear" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="mocahear" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="mocahear" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="mocatots" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="mocatots" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="mocatots" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="mocatrai" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="mocatrai" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="mocatrai" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="mocacube" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="mocacube" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="mocacube" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="mocacloc" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="mocacloc" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="mocacloc" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="mocaclon" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="mocaclon" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="mocaclon" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="mocacloh" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="mocacloh" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="mocacloh" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="mocanami" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="mocanami" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="mocanami" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="mocaregi" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="mocaregi" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="mocaregi" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="mocadigi" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="mocadigi" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="mocadigi" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="mocalett" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="mocalett" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="mocalett" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="mocaser7" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="mocaser7" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="mocaser7" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="mocarepe" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="mocarepe" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="mocarepe" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="mocaflue" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="mocaflue" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="mocaflue" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="mocaabst" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="mocaabst" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="mocaabst" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="mocarecn" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="mocarecn" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="mocarecn" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="mocarecc" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="mocarecc" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="mocarecc" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="mocarecr" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="mocarecr" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="mocarecr" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="mocaordt" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="mocaordt" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="mocaordt" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="mocaormo" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="mocaormo" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="mocaormo" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="mocaoryr" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="mocaoryr" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="mocaoryr" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="mocaordy" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="mocaordy" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="mocaordy" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="mocaorpl" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="mocaorpl" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="mocaorpl" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="mocaorct" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="mocaorct" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="mocaorct" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="npsycloc" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="npsycloc" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="npsycloc" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="npsylan" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="npsylan" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="npsylan" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="npsylanx" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="npsylanx" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="npsylanx" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="craftvrs" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="craftvrs" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="craftvrs" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="crafturs" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="crafturs" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="crafturs" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="udsbentc" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="udsbentc" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="udsbentc" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="digforct" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="digforct" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="digforct" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="digforsl" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="digforsl" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="digforsl" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="digbacct" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="digbacct" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="digbacct" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="digbacls" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="digbacls" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="digbacls" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="animals" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="animals" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="animals" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="veg" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="veg" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="veg" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="traila" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="traila" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="traila" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="trailarr" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="trailarr" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="trailarr" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="trailali" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="trailali" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="trailali" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="trailb" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="trailb" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="trailb" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="trailbrr" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="trailbrr" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="trailbrr" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="trailbli" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="trailbli" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="trailbli" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="craftdvr" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="craftdvr" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="craftdvr" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="craftdre" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="craftdre" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="craftdre" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="craftdti" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="craftdti" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="craftdti" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="craftcue" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="craftcue" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="craftcue" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="udsbentd" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="udsbentd" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="udsbentd" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="udsbenrs" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="udsbenrs" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="udsbenrs" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="minttots" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="minttots" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="minttots" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="minttotw" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="minttotw" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="minttotw" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="mintscng" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="mintscng" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="mintscng" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="mintscnc" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="mintscnc" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="mintscnc" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="mintpcng" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="mintpcng" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="mintpcng" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="mintpcnc" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="mintpcnc" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="mintpcnc" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="udsverfc" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="udsverfc" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="udsverfc" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="udsverfn" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="udsverfn" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="udsverfn" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="udsvernf" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="udsvernf" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="udsvernf" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="udsverlc" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="udsverlc" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="udsverlc" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="udsverlr" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="udsverlr" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="udsverlr" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="udsverln" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="udsverln" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="udsverln" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="udsvertn" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="udsvertn" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="udsvertn" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="udsverte" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="udsverte" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="udsverte" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="udsverti" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="udsverti" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="udsverti" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="cogstat" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="cogstat" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="cogstat" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
</tags:tableForm>



<tags:tableForm>
<tags:listRow>
	<tags:listColumnHeader labelKey="" width="10%"/>
	<tags:listColumnHeader labelKey="" width="70%"/>
	<tags:listColumnHeader labelKey="" width="20%"/>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="mocacomp" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="mocacomp" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="mocacomp" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="mocareas" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="mocareas" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="mocareas" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="mocaloc" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="mocaloc" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="mocaloc" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="mocalan" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="mocalan" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="mocalan" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="mocalanx" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="mocalanx" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="mocalanx" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="mocavis" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="mocavis" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="mocavis" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="mocahear" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="mocahear" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="mocahear" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="mocatots" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="mocatots" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="mocatots" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="mocatrai" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="mocatrai" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="mocatrai" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="mocacube" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="mocacube" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="mocacube" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="mocacloc" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="mocacloc" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="mocacloc" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="mocaclon" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="mocaclon" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="mocaclon" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="mocacloh" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="mocacloh" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="mocacloh" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="mocanami" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="mocanami" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="mocanami" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="mocaregi" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="mocaregi" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="mocaregi" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="mocadigi" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="mocadigi" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="mocadigi" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="mocalett" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="mocalett" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="mocalett" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="mocaser7" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="mocaser7" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="mocaser7" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="mocarepe" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="mocarepe" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="mocarepe" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="mocaflue" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="mocaflue" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="mocaflue" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="mocaabst" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="mocaabst" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="mocaabst" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="mocarecn" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="mocarecn" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="mocarecn" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="mocarecc" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="mocarecc" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="mocarecc" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="mocarecr" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="mocarecr" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="mocarecr" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="mocaordt" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="mocaordt" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="mocaordt" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="mocaormo" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="mocaormo" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="mocaormo" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="mocaoryr" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="mocaoryr" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="mocaoryr" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="mocaordy" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="mocaordy" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="mocaordy" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="mocaorpl" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="mocaorpl" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="mocaorpl" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="mocaorct" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="mocaorct" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="mocaorct" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="npsycloc" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="npsycloc" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="npsycloc" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="npsylan" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="npsylan" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="npsylan" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="npsylanx" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="npsylanx" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="npsylanx" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="craftvrs" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="craftvrs" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="craftvrs" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="crafturs" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="crafturs" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="crafturs" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="udsbentc" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="udsbentc" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="udsbentc" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="digforct" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="digforct" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="digforct" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="digforsl" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="digforsl" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="digforsl" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="digbacct" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="digbacct" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="digbacct" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="digbacls" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="digbacls" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="digbacls" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="animals" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="animals" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="animals" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="veg" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="veg" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="veg" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="traila" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="traila" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="traila" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="trailarr" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="trailarr" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="trailarr" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="trailali" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="trailali" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="trailali" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="trailb" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="trailb" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="trailb" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="trailbrr" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="trailbrr" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="trailbrr" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="trailbli" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="trailbli" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="trailbli" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="craftdvr" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="craftdvr" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="craftdvr" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="craftdre" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="craftdre" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="craftdre" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="craftdti" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="craftdti" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="craftdti" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="craftcue" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="craftcue" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="craftcue" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="udsbentd" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="udsbentd" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="udsbentd" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="udsbenrs" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="udsbenrs" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="udsbenrs" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="minttots" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="minttots" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="minttots" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="minttotw" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="minttotw" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="minttotw" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="mintscng" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="mintscng" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="mintscng" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="mintscnc" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="mintscnc" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="mintscnc" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="mintpcng" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="mintpcng" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="mintpcng" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="mintpcnc" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="mintpcnc" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="mintpcnc" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="udsverfc" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="udsverfc" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="udsverfc" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="udsverfn" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="udsverfn" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="udsverfn" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="udsvernf" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="udsvernf" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="udsvernf" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="udsverlc" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="udsverlc" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="udsverlc" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="udsverlr" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="udsverlr" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="udsverlr" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="udsverln" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="udsverln" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="udsverln" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="udsvertn" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="udsvertn" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="udsvertn" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="udsverte" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="udsverte" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="udsverte" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="udsverti" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="udsverti" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="udsverti" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="cogstat" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="cogstat" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="cogstat" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
</tags:tableForm>
buffer.append(UdsUploadUtils.formatField(getMocacomp())).append(",");
buffer.append(UdsUploadUtils.formatField(getMocareas())).append(",");
buffer.append(UdsUploadUtils.formatField(getMocaloc())).append(",");
buffer.append(UdsUploadUtils.formatField(getMocalan())).append(",");
buffer.append(UdsUploadUtils.formatField(getMocalanx())).append(",");
buffer.append(UdsUploadUtils.formatField(getMocavis())).append(",");
buffer.append(UdsUploadUtils.formatField(getMocahear())).append(",");
buffer.append(UdsUploadUtils.formatField(getMocatots())).append(",");
buffer.append(UdsUploadUtils.formatField(getMocatrai())).append(",");
buffer.append(UdsUploadUtils.formatField(getMocacube())).append(",");
buffer.append(UdsUploadUtils.formatField(getMocacloc())).append(",");
buffer.append(UdsUploadUtils.formatField(getMocaclon())).append(",");
buffer.append(UdsUploadUtils.formatField(getMocacloh())).append(",");
buffer.append(UdsUploadUtils.formatField(getMocanami())).append(",");
buffer.append(UdsUploadUtils.formatField(getMocaregi())).append(",");
buffer.append(UdsUploadUtils.formatField(getMocadigi())).append(",");
buffer.append(UdsUploadUtils.formatField(getMocalett())).append(",");
buffer.append(UdsUploadUtils.formatField(getMocaser7())).append(",");
buffer.append(UdsUploadUtils.formatField(getMocarepe())).append(",");
buffer.append(UdsUploadUtils.formatField(getMocaflue())).append(",");
buffer.append(UdsUploadUtils.formatField(getMocaabst())).append(",");
buffer.append(UdsUploadUtils.formatField(getMocarecn())).append(",");
buffer.append(UdsUploadUtils.formatField(getMocarecc())).append(",");
buffer.append(UdsUploadUtils.formatField(getMocarecr())).append(",");
buffer.append(UdsUploadUtils.formatField(getMocaordt())).append(",");
buffer.append(UdsUploadUtils.formatField(getMocaormo())).append(",");
buffer.append(UdsUploadUtils.formatField(getMocaoryr())).append(",");
buffer.append(UdsUploadUtils.formatField(getMocaordy())).append(",");
buffer.append(UdsUploadUtils.formatField(getMocaorpl())).append(",");
buffer.append(UdsUploadUtils.formatField(getMocaorct())).append(",");
buffer.append(UdsUploadUtils.formatField(getNpsycloc())).append(",");
buffer.append(UdsUploadUtils.formatField(getNpsylan())).append(",");
buffer.append(UdsUploadUtils.formatField(getNpsylanx())).append(",");
buffer.append(UdsUploadUtils.formatField(getCraftvrs())).append(",");
buffer.append(UdsUploadUtils.formatField(getCrafturs())).append(",");
buffer.append(UdsUploadUtils.formatField(getUdsbentc())).append(",");
buffer.append(UdsUploadUtils.formatField(getDigforct())).append(",");
buffer.append(UdsUploadUtils.formatField(getDigforsl())).append(",");
buffer.append(UdsUploadUtils.formatField(getDigbacct())).append(",");
buffer.append(UdsUploadUtils.formatField(getDigbacls())).append(",");
buffer.append(UdsUploadUtils.formatField(getAnimals())).append(",");
buffer.append(UdsUploadUtils.formatField(getVeg())).append(",");
buffer.append(UdsUploadUtils.formatField(getTraila())).append(",");
buffer.append(UdsUploadUtils.formatField(getTrailarr())).append(",");
buffer.append(UdsUploadUtils.formatField(getTrailali())).append(",");
buffer.append(UdsUploadUtils.formatField(getTrailb())).append(",");
buffer.append(UdsUploadUtils.formatField(getTrailbrr())).append(",");
buffer.append(UdsUploadUtils.formatField(getTrailbli())).append(",");
buffer.append(UdsUploadUtils.formatField(getCraftdvr())).append(",");
buffer.append(UdsUploadUtils.formatField(getCraftdre())).append(",");
buffer.append(UdsUploadUtils.formatField(getCraftdti())).append(",");
buffer.append(UdsUploadUtils.formatField(getCraftcue())).append(",");
buffer.append(UdsUploadUtils.formatField(getUdsbentd())).append(",");
buffer.append(UdsUploadUtils.formatField(getUdsbenrs())).append(",");
buffer.append(UdsUploadUtils.formatField(getMinttots())).append(",");
buffer.append(UdsUploadUtils.formatField(getMinttotw())).append(",");
buffer.append(UdsUploadUtils.formatField(getMintscng())).append(",");
buffer.append(UdsUploadUtils.formatField(getMintscnc())).append(",");
buffer.append(UdsUploadUtils.formatField(getMintpcng())).append(",");
buffer.append(UdsUploadUtils.formatField(getMintpcnc())).append(",");
buffer.append(UdsUploadUtils.formatField(getUdsverfc())).append(",");
buffer.append(UdsUploadUtils.formatField(getUdsverfn())).append(",");
buffer.append(UdsUploadUtils.formatField(getUdsvernf())).append(",");
buffer.append(UdsUploadUtils.formatField(getUdsverlc())).append(",");
buffer.append(UdsUploadUtils.formatField(getUdsverlr())).append(",");
buffer.append(UdsUploadUtils.formatField(getUdsverln())).append(",");
buffer.append(UdsUploadUtils.formatField(getUdsvertn())).append(",");
buffer.append(UdsUploadUtils.formatField(getUdsverte())).append(",");
buffer.append(UdsUploadUtils.formatField(getUdsverti())).append(",");
buffer.append(UdsUploadUtils.formatField(getCogstat())).append(",");
