<?xml version="1.0"?>

<!DOCTYPE hibernate-mapping PUBLIC
    "-//Hibernate/Hibernate Mapping DTD 3.0//EN"
    "http://hibernate.sourceforge.net/hibernate-mapping-3.0.dtd">

<hibernate-mapping>

<class name="edu.ucsf.memory.[scope].[module].model.udsmedicalconditions3" table="udsmedicalconditions3" select-before-update="true">

		<id name="id" type="long">
			<column name="[KEY COLUMN]" not-null="true"/>
			<generator class="identity"/>
		</id>


		<property name="cancer" column="CANCER" type="short"/>
		<property name="cancsite" column="CANCSITE" type="string" length="60"/>
		<property name="diabet" column="DIABET" type="short"/>
		<property name="myoinf" column="MYOINF" type="short"/>
		<property name="conghrt" column="CONGHRT" type="short"/>
		<property name="afibrill" column="AFIBRILL" type="short"/>
		<property name="hypert" column="HYPERT" type="short"/>
		<property name="angina" column="ANGINA" type="short"/>
		<property name="hypchol" column="HYPCHOL" type="short"/>
		<property name="vb12def" column="VB12DEF" type="short"/>
		<property name="thydis" column="THYDIS" type="short"/>
		<property name="arth" column="ARTH" type="short"/>
		<property name="artype" column="ARTYPE" type="short"/>
		<property name="artypex" column="ARTYPEX" type="string" length="60"/>
		<property name="artupex" column="ARTUPEX" type="short"/>
		<property name="artloex" column="ARTLOEX" type="short"/>
		<property name="artspin" column="ARTSPIN" type="short"/>
		<property name="artunkn" column="ARTUNKN" type="short"/>
		<property name="urineinc" column="URINEINC" type="short"/>
		<property name="bowlinc" column="BOWLINC" type="short"/>
		<property name="sleepap" column="SLEEPAP" type="short"/>
		<property name="remdis" column="REMDIS" type="short"/>
		<property name="hyposom" column="HYPOSOM" type="short"/>
		<property name="sleepoth" column="SLEEPOTH" type="short"/>
		<property name="sleepotx" column="SLEEPOTX" type="string" length="60"/>
		<property name="angiocp" column="ANGIOCP" type="short"/>
		<property name="angiopci" column="ANGIOPCI" type="short"/>
		<property name="pacemake" column="PACEMAKE" type="short"/>
		<property name="hvalve" column="HVALVE" type="short"/>
		<property name="antienc" column="ANTIENC" type="short"/>
		<property name="antiencx" column="ANTIENCX" type="string" length="60"/>
		<property name="othcond" column="OTHCOND" type="short"/>
		<property name="othcondx" column="OTHCONDX" type="string" length="60"/>


	<!-- associations -->



	<!-- filters -->
               <!--define or remove these standard filters-->
               <filter name="projectContext" condition=":projectContext)=[define]"/>
               <filter name="patient" condition=":patientId=[define]"/>


</class>


         <!-- queries  -->



</hibernate-mapping>
protected Short cancer;
protected String cancsite;
protected Short diabet;
protected Short myoinf;
protected Short conghrt;
protected Short afibrill;
protected Short hypert;
protected Short angina;
protected Short hypchol;
protected Short vb12def;
protected Short thydis;
protected Short arth;
protected Short artype;
protected String artypex;
protected Short artupex;
protected Short artloex;
protected Short artspin;
protected Short artunkn;
protected Short urineinc;
protected Short bowlinc;
protected Short sleepap;
protected Short remdis;
protected Short hyposom;
protected Short sleepoth;
protected String sleepotx;
protected Short angiocp;
protected Short angiopci;
protected Short pacemake;
protected Short hvalve;
protected Short antienc;
protected String antiencx;
protected Short othcond;
protected String othcondx;
"cancer",
"cancsite",
"diabet",
"myoinf",
"conghrt",
"afibrill",
"hypert",
"angina",
"hypchol",
"vb12def",
"thydis",
"arth",
"artype",
"artypex",
"artupex",
"artloex",
"artspin",
"artunkn",
"urineinc",
"bowlinc",
"sleepap",
"remdis",
"hyposom",
"sleepoth",
"sleepotx",
"angiocp",
"angiopci",
"pacemake",
"hvalve",
"antienc",
"antiencx",
"othcond",
"othcondx",
<tags:createField property="cancer" component="${component}"/>
<tags:createField property="cancsite" component="${component}"/>
<tags:createField property="diabet" component="${component}"/>
<tags:createField property="myoinf" component="${component}"/>
<tags:createField property="conghrt" component="${component}"/>
<tags:createField property="afibrill" component="${component}"/>
<tags:createField property="hypert" component="${component}"/>
<tags:createField property="angina" component="${component}"/>
<tags:createField property="hypchol" component="${component}"/>
<tags:createField property="vb12def" component="${component}"/>
<tags:createField property="thydis" component="${component}"/>
<tags:createField property="arth" component="${component}"/>
<tags:createField property="artype" component="${component}"/>
<tags:createField property="artypex" component="${component}"/>
<tags:createField property="artupex" component="${component}"/>
<tags:createField property="artloex" component="${component}"/>
<tags:createField property="artspin" component="${component}"/>
<tags:createField property="artunkn" component="${component}"/>
<tags:createField property="urineinc" component="${component}"/>
<tags:createField property="bowlinc" component="${component}"/>
<tags:createField property="sleepap" component="${component}"/>
<tags:createField property="remdis" component="${component}"/>
<tags:createField property="hyposom" component="${component}"/>
<tags:createField property="sleepoth" component="${component}"/>
<tags:createField property="sleepotx" component="${component}"/>
<tags:createField property="angiocp" component="${component}"/>
<tags:createField property="angiopci" component="${component}"/>
<tags:createField property="pacemake" component="${component}"/>
<tags:createField property="hvalve" component="${component}"/>
<tags:createField property="antienc" component="${component}"/>
<tags:createField property="antiencx" component="${component}"/>
<tags:createField property="othcond" component="${component}"/>
<tags:createField property="othcondx" component="${component}"/>



<tags:createField property="cancer" component="${component}" entity="udsmedicalconditions3"/>
<tags:createField property="cancsite" component="${component}" entity="udsmedicalconditions3"/>
<tags:createField property="diabet" component="${component}" entity="udsmedicalconditions3"/>
<tags:createField property="myoinf" component="${component}" entity="udsmedicalconditions3"/>
<tags:createField property="conghrt" component="${component}" entity="udsmedicalconditions3"/>
<tags:createField property="afibrill" component="${component}" entity="udsmedicalconditions3"/>
<tags:createField property="hypert" component="${component}" entity="udsmedicalconditions3"/>
<tags:createField property="angina" component="${component}" entity="udsmedicalconditions3"/>
<tags:createField property="hypchol" component="${component}" entity="udsmedicalconditions3"/>
<tags:createField property="vb12def" component="${component}" entity="udsmedicalconditions3"/>
<tags:createField property="thydis" component="${component}" entity="udsmedicalconditions3"/>
<tags:createField property="arth" component="${component}" entity="udsmedicalconditions3"/>
<tags:createField property="artype" component="${component}" entity="udsmedicalconditions3"/>
<tags:createField property="artypex" component="${component}" entity="udsmedicalconditions3"/>
<tags:createField property="artupex" component="${component}" entity="udsmedicalconditions3"/>
<tags:createField property="artloex" component="${component}" entity="udsmedicalconditions3"/>
<tags:createField property="artspin" component="${component}" entity="udsmedicalconditions3"/>
<tags:createField property="artunkn" component="${component}" entity="udsmedicalconditions3"/>
<tags:createField property="urineinc" component="${component}" entity="udsmedicalconditions3"/>
<tags:createField property="bowlinc" component="${component}" entity="udsmedicalconditions3"/>
<tags:createField property="sleepap" component="${component}" entity="udsmedicalconditions3"/>
<tags:createField property="remdis" component="${component}" entity="udsmedicalconditions3"/>
<tags:createField property="hyposom" component="${component}" entity="udsmedicalconditions3"/>
<tags:createField property="sleepoth" component="${component}" entity="udsmedicalconditions3"/>
<tags:createField property="sleepotx" component="${component}" entity="udsmedicalconditions3"/>
<tags:createField property="angiocp" component="${component}" entity="udsmedicalconditions3"/>
<tags:createField property="angiopci" component="${component}" entity="udsmedicalconditions3"/>
<tags:createField property="pacemake" component="${component}" entity="udsmedicalconditions3"/>
<tags:createField property="hvalve" component="${component}" entity="udsmedicalconditions3"/>
<tags:createField property="antienc" component="${component}" entity="udsmedicalconditions3"/>
<tags:createField property="antiencx" component="${component}" entity="udsmedicalconditions3"/>
<tags:createField property="othcond" component="${component}" entity="udsmedicalconditions3"/>
<tags:createField property="othcondx" component="${component}" entity="udsmedicalconditions3"/>



<tags:createField property="cancer" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="cancsite" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="diabet" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="myoinf" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="conghrt" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="afibrill" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="hypert" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="angina" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="hypchol" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="vb12def" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="thydis" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="arth" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="artype" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="artypex" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="artupex" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="artloex" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="artspin" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="artunkn" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="urineinc" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="bowlinc" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="sleepap" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="remdis" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="hyposom" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="sleepoth" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="sleepotx" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="angiocp" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="angiopci" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="pacemake" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="hvalve" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="antienc" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="antiencx" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="othcond" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="othcondx" component="${component}" entity="${instrTypeEncoded}"/>



<tags:createField property="cancer" component="udsmedicalconditions3"/>
<tags:createField property="cancsite" component="udsmedicalconditions3"/>
<tags:createField property="diabet" component="udsmedicalconditions3"/>
<tags:createField property="myoinf" component="udsmedicalconditions3"/>
<tags:createField property="conghrt" component="udsmedicalconditions3"/>
<tags:createField property="afibrill" component="udsmedicalconditions3"/>
<tags:createField property="hypert" component="udsmedicalconditions3"/>
<tags:createField property="angina" component="udsmedicalconditions3"/>
<tags:createField property="hypchol" component="udsmedicalconditions3"/>
<tags:createField property="vb12def" component="udsmedicalconditions3"/>
<tags:createField property="thydis" component="udsmedicalconditions3"/>
<tags:createField property="arth" component="udsmedicalconditions3"/>
<tags:createField property="artype" component="udsmedicalconditions3"/>
<tags:createField property="artypex" component="udsmedicalconditions3"/>
<tags:createField property="artupex" component="udsmedicalconditions3"/>
<tags:createField property="artloex" component="udsmedicalconditions3"/>
<tags:createField property="artspin" component="udsmedicalconditions3"/>
<tags:createField property="artunkn" component="udsmedicalconditions3"/>
<tags:createField property="urineinc" component="udsmedicalconditions3"/>
<tags:createField property="bowlinc" component="udsmedicalconditions3"/>
<tags:createField property="sleepap" component="udsmedicalconditions3"/>
<tags:createField property="remdis" component="udsmedicalconditions3"/>
<tags:createField property="hyposom" component="udsmedicalconditions3"/>
<tags:createField property="sleepoth" component="udsmedicalconditions3"/>
<tags:createField property="sleepotx" component="udsmedicalconditions3"/>
<tags:createField property="angiocp" component="udsmedicalconditions3"/>
<tags:createField property="angiopci" component="udsmedicalconditions3"/>
<tags:createField property="pacemake" component="udsmedicalconditions3"/>
<tags:createField property="hvalve" component="udsmedicalconditions3"/>
<tags:createField property="antienc" component="udsmedicalconditions3"/>
<tags:createField property="antiencx" component="udsmedicalconditions3"/>
<tags:createField property="othcond" component="udsmedicalconditions3"/>
<tags:createField property="othcondx" component="udsmedicalconditions3"/>



<tags:listField property="cancer" component="${component}" listIndex="${iterator.index}" entityType="udsmedicalconditions3"/>
<tags:listField property="cancsite" component="${component}" listIndex="${iterator.index}" entityType="udsmedicalconditions3"/>
<tags:listField property="diabet" component="${component}" listIndex="${iterator.index}" entityType="udsmedicalconditions3"/>
<tags:listField property="myoinf" component="${component}" listIndex="${iterator.index}" entityType="udsmedicalconditions3"/>
<tags:listField property="conghrt" component="${component}" listIndex="${iterator.index}" entityType="udsmedicalconditions3"/>
<tags:listField property="afibrill" component="${component}" listIndex="${iterator.index}" entityType="udsmedicalconditions3"/>
<tags:listField property="hypert" component="${component}" listIndex="${iterator.index}" entityType="udsmedicalconditions3"/>
<tags:listField property="angina" component="${component}" listIndex="${iterator.index}" entityType="udsmedicalconditions3"/>
<tags:listField property="hypchol" component="${component}" listIndex="${iterator.index}" entityType="udsmedicalconditions3"/>
<tags:listField property="vb12def" component="${component}" listIndex="${iterator.index}" entityType="udsmedicalconditions3"/>
<tags:listField property="thydis" component="${component}" listIndex="${iterator.index}" entityType="udsmedicalconditions3"/>
<tags:listField property="arth" component="${component}" listIndex="${iterator.index}" entityType="udsmedicalconditions3"/>
<tags:listField property="artype" component="${component}" listIndex="${iterator.index}" entityType="udsmedicalconditions3"/>
<tags:listField property="artypex" component="${component}" listIndex="${iterator.index}" entityType="udsmedicalconditions3"/>
<tags:listField property="artupex" component="${component}" listIndex="${iterator.index}" entityType="udsmedicalconditions3"/>
<tags:listField property="artloex" component="${component}" listIndex="${iterator.index}" entityType="udsmedicalconditions3"/>
<tags:listField property="artspin" component="${component}" listIndex="${iterator.index}" entityType="udsmedicalconditions3"/>
<tags:listField property="artunkn" component="${component}" listIndex="${iterator.index}" entityType="udsmedicalconditions3"/>
<tags:listField property="urineinc" component="${component}" listIndex="${iterator.index}" entityType="udsmedicalconditions3"/>
<tags:listField property="bowlinc" component="${component}" listIndex="${iterator.index}" entityType="udsmedicalconditions3"/>
<tags:listField property="sleepap" component="${component}" listIndex="${iterator.index}" entityType="udsmedicalconditions3"/>
<tags:listField property="remdis" component="${component}" listIndex="${iterator.index}" entityType="udsmedicalconditions3"/>
<tags:listField property="hyposom" component="${component}" listIndex="${iterator.index}" entityType="udsmedicalconditions3"/>
<tags:listField property="sleepoth" component="${component}" listIndex="${iterator.index}" entityType="udsmedicalconditions3"/>
<tags:listField property="sleepotx" component="${component}" listIndex="${iterator.index}" entityType="udsmedicalconditions3"/>
<tags:listField property="angiocp" component="${component}" listIndex="${iterator.index}" entityType="udsmedicalconditions3"/>
<tags:listField property="angiopci" component="${component}" listIndex="${iterator.index}" entityType="udsmedicalconditions3"/>
<tags:listField property="pacemake" component="${component}" listIndex="${iterator.index}" entityType="udsmedicalconditions3"/>
<tags:listField property="hvalve" component="${component}" listIndex="${iterator.index}" entityType="udsmedicalconditions3"/>
<tags:listField property="antienc" component="${component}" listIndex="${iterator.index}" entityType="udsmedicalconditions3"/>
<tags:listField property="antiencx" component="${component}" listIndex="${iterator.index}" entityType="udsmedicalconditions3"/>
<tags:listField property="othcond" component="${component}" listIndex="${iterator.index}" entityType="udsmedicalconditions3"/>
<tags:listField property="othcondx" component="${component}" listIndex="${iterator.index}" entityType="udsmedicalconditions3"/>



<tags:tableForm>
<tags:listRow>
	<tags:listColumnHeader labelKey="" width="10%"/>
	<tags:listColumnHeader labelKey="" width="70%"/>
	<tags:listColumnHeader labelKey="" width="20%"/>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="cancer" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="cancer" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="cancer" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="cancsite" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="cancsite" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="cancsite" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="diabet" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="diabet" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="diabet" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="myoinf" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="myoinf" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="myoinf" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="conghrt" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="conghrt" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="conghrt" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="afibrill" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="afibrill" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="afibrill" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="hypert" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="hypert" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="hypert" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="angina" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="angina" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="angina" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="hypchol" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="hypchol" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="hypchol" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="vb12def" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="vb12def" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="vb12def" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="thydis" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="thydis" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="thydis" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="arth" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="arth" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="arth" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="artype" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="artype" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="artype" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="artypex" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="artypex" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="artypex" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="artupex" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="artupex" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="artupex" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="artloex" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="artloex" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="artloex" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="artspin" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="artspin" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="artspin" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="artunkn" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="artunkn" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="artunkn" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="urineinc" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="urineinc" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="urineinc" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="bowlinc" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="bowlinc" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="bowlinc" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="sleepap" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="sleepap" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="sleepap" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="remdis" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="remdis" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="remdis" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="hyposom" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="hyposom" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="hyposom" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="sleepoth" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="sleepoth" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="sleepoth" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="sleepotx" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="sleepotx" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="sleepotx" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="angiocp" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="angiocp" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="angiocp" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="angiopci" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="angiopci" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="angiopci" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="pacemake" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="pacemake" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="pacemake" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="hvalve" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="hvalve" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="hvalve" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="antienc" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="antienc" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="antienc" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="antiencx" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="antiencx" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="antiencx" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="othcond" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="othcond" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="othcond" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="othcondx" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="othcondx" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="othcondx" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
</tags:tableForm>



<tags:tableForm>
<tags:listRow>
	<tags:listColumnHeader labelKey="" width="10%"/>
	<tags:listColumnHeader labelKey="" width="70%"/>
	<tags:listColumnHeader labelKey="" width="20%"/>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="cancer" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="cancer" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="cancer" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="cancsite" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="cancsite" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="cancsite" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="diabet" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="diabet" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="diabet" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="myoinf" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="myoinf" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="myoinf" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="conghrt" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="conghrt" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="conghrt" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="afibrill" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="afibrill" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="afibrill" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="hypert" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="hypert" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="hypert" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="angina" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="angina" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="angina" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="hypchol" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="hypchol" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="hypchol" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="vb12def" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="vb12def" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="vb12def" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="thydis" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="thydis" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="thydis" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="arth" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="arth" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="arth" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="artype" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="artype" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="artype" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="artypex" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="artypex" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="artypex" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="artupex" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="artupex" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="artupex" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="artloex" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="artloex" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="artloex" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="artspin" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="artspin" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="artspin" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="artunkn" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="artunkn" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="artunkn" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="urineinc" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="urineinc" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="urineinc" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="bowlinc" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="bowlinc" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="bowlinc" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="sleepap" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="sleepap" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="sleepap" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="remdis" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="remdis" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="remdis" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="hyposom" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="hyposom" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="hyposom" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="sleepoth" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="sleepoth" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="sleepoth" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="sleepotx" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="sleepotx" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="sleepotx" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="angiocp" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="angiocp" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="angiocp" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="angiopci" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="angiopci" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="angiopci" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="pacemake" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="pacemake" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="pacemake" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="hvalve" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="hvalve" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="hvalve" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="antienc" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="antienc" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="antienc" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="antiencx" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="antiencx" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="antiencx" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="othcond" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="othcond" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="othcond" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="othcondx" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="othcondx" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="othcondx" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
</tags:tableForm>
buffer.append(UdsUploadUtils.formatField(getCancer())).append(",");
buffer.append(UdsUploadUtils.formatField(getCancsite())).append(",");
buffer.append(UdsUploadUtils.formatField(getDiabet())).append(",");
buffer.append(UdsUploadUtils.formatField(getMyoinf())).append(",");
buffer.append(UdsUploadUtils.formatField(getConghrt())).append(",");
buffer.append(UdsUploadUtils.formatField(getAfibrill())).append(",");
buffer.append(UdsUploadUtils.formatField(getHypert())).append(",");
buffer.append(UdsUploadUtils.formatField(getAngina())).append(",");
buffer.append(UdsUploadUtils.formatField(getHypchol())).append(",");
buffer.append(UdsUploadUtils.formatField(getVb12def())).append(",");
buffer.append(UdsUploadUtils.formatField(getThydis())).append(",");
buffer.append(UdsUploadUtils.formatField(getArth())).append(",");
buffer.append(UdsUploadUtils.formatField(getArtype())).append(",");
buffer.append(UdsUploadUtils.formatField(getArtypex())).append(",");
buffer.append(UdsUploadUtils.formatField(getArtupex())).append(",");
buffer.append(UdsUploadUtils.formatField(getArtloex())).append(",");
buffer.append(UdsUploadUtils.formatField(getArtspin())).append(",");
buffer.append(UdsUploadUtils.formatField(getArtunkn())).append(",");
buffer.append(UdsUploadUtils.formatField(getUrineinc())).append(",");
buffer.append(UdsUploadUtils.formatField(getBowlinc())).append(",");
buffer.append(UdsUploadUtils.formatField(getSleepap())).append(",");
buffer.append(UdsUploadUtils.formatField(getRemdis())).append(",");
buffer.append(UdsUploadUtils.formatField(getHyposom())).append(",");
buffer.append(UdsUploadUtils.formatField(getSleepoth())).append(",");
buffer.append(UdsUploadUtils.formatField(getSleepotx())).append(",");
buffer.append(UdsUploadUtils.formatField(getAngiocp())).append(",");
buffer.append(UdsUploadUtils.formatField(getAngiopci())).append(",");
buffer.append(UdsUploadUtils.formatField(getPacemake())).append(",");
buffer.append(UdsUploadUtils.formatField(getHvalve())).append(",");
buffer.append(UdsUploadUtils.formatField(getAntienc())).append(",");
buffer.append(UdsUploadUtils.formatField(getAntiencx())).append(",");
buffer.append(UdsUploadUtils.formatField(getOthcond())).append(",");
buffer.append(UdsUploadUtils.formatField(getOthcondx())).append(",");
