<?xml version="1.0"?>

<!DOCTYPE hibernate-mapping PUBLIC
    "-//Hibernate/Hibernate Mapping DTD 3.0//EN"
    "http://hibernate.sourceforge.net/hibernate-mapping-3.0.dtd">

<hibernate-mapping>

<class name="edu.ucsf.memory.[scope].[module].model.udsmilestone3" table="udsmilestone3" select-before-update="true">

		<id name="id" type="long">
			<column name="[KEY COLUMN]" not-null="true"/>
			<generator class="identity"/>
		</id>


		<property name="deceased" column="DECEASED" type="short"/>
		<property name="deathmo" column="DEATHMO" type="short"/>
		<property name="deathdy" column="DEATHDY" type="short"/>
		<property name="deathyr" column="DEATHYR" type="short"/>
		<property name="autopsy" column="AUTOPSY" type="short"/>
		<property name="discont" column="DISCONT" type="short"/>
		<property name="discmo" column="DISCMO" type="short"/>
		<property name="discdy" column="DISCDY" type="short"/>
		<property name="nursemo" column="NURSEMO" type="short"/>
		<property name="nursedy" column="NURSEDY" type="short"/>
		<property name="nurseyr" column="NURSEYR" type="short"/>
		<property name="protocol" column="PROTOCOL" type="short"/>
		<property name="changemo" column="CHANGEMO" type="short"/>
		<property name="changedy" column="CHANGEDY" type="short"/>
		<property name="changeyr" column="CHANGEYR" type="short"/>
		<property name="aconsent" column="ACONSENT" type="short"/>
		<property name="recogim" column="RECOGIM" type="short"/>
		<property name="rephyill" column="REPHYILL" type="short"/>
		<property name="rerefuse" column="REREFUSE" type="short"/>
		<property name="renavail" column="RENAVAIL" type="short"/>
		<property name="renurse" column="RENURSE" type="short"/>
		<property name="rejoin" column="REJOIN" type="short"/>
		<property name="ftlddisc" column="FTLDDISC" type="short"/>
		<property name="ftldreas" column="FTLDREAS" type="short"/>
		<property name="ftldreax" column="FTLDREAX" type="string" length="60"/>
		<property name="discr" column="DISCR" type="short"/>
		<property name="dropreas" column="DROPREAS" type="short"/>


	<!-- associations -->



	<!-- filters -->
               <!--define or remove these standard filters-->
               <filter name="projectContext" condition=":projectContext)=[define]"/>
               <filter name="patient" condition=":patientId=[define]"/>


</class>


         <!-- queries  -->



</hibernate-mapping>
protected Short deceased;
protected Short deathmo;
protected Short deathdy;
protected Short deathyr;
protected Short autopsy;
protected Short discont;
protected Short discmo;
protected Short discdy;
protected Short nursemo;
protected Short nursedy;
protected Short nurseyr;
protected Short protocol;
protected Short changemo;
protected Short changedy;
protected Short changeyr;
protected Short aconsent;
protected Short recogim;
protected Short rephyill;
protected Short rerefuse;
protected Short renavail;
protected Short renurse;
protected Short rejoin;
protected Short ftlddisc;
protected Short ftldreas;
protected String ftldreax;
protected Short discr;
protected Short dropreas;
"changemo",
"changedy",
"changeyr",
"protocol",
"aconsent",
"recogim",
"rephyill",
"rerefuse",
"renavail",
"renurse",
"nurseMo",
"nurseDy",
"nurseYr",
"rejoin",
"ftlddisc",
"ftldreas",
"ftldreax",
"deceased",
"discont",
"deathMo",
"deathDy",
"deathYr",
"autopsy",
"discMo",
"discDy",
"discr",
"dropreas",
<tags:createField property="changemo" component="${component}"/>
<tags:createField property="changedy" component="${component}"/>
<tags:createField property="changeyr" component="${component}"/>
<tags:createField property="protocol" component="${component}"/>
<tags:createField property="aconsent" component="${component}"/>
<tags:createField property="recogim" component="${component}"/>
<tags:createField property="rephyill" component="${component}"/>
<tags:createField property="rerefuse" component="${component}"/>
<tags:createField property="renavail" component="${component}"/>
<tags:createField property="renurse" component="${component}"/>
<tags:createField property="nurseMo" component="${component}"/>
<tags:createField property="nurseDy" component="${component}"/>
<tags:createField property="nurseYr" component="${component}"/>
<tags:createField property="rejoin" component="${component}"/>
<tags:createField property="ftlddisc" component="${component}"/>
<tags:createField property="ftldreas" component="${component}"/>
<tags:createField property="ftldreax" component="${component}"/>
<tags:createField property="deceased" component="${component}"/>
<tags:createField property="discont" component="${component}"/>
<tags:createField property="deathMo" component="${component}"/>
<tags:createField property="deathDy" component="${component}"/>
<tags:createField property="deathYr" component="${component}"/>
<tags:createField property="autopsy" component="${component}"/>
<tags:createField property="discMo" component="${component}"/>
<tags:createField property="discDy" component="${component}"/>
<tags:createField property="discr" component="${component}"/>
<tags:createField property="dropreas" component="${component}"/>



<tags:createField property="changemo" component="${component}" entity="udsmilestone3"/>
<tags:createField property="changedy" component="${component}" entity="udsmilestone3"/>
<tags:createField property="changeyr" component="${component}" entity="udsmilestone3"/>
<tags:createField property="protocol" component="${component}" entity="udsmilestone3"/>
<tags:createField property="aconsent" component="${component}" entity="udsmilestone3"/>
<tags:createField property="recogim" component="${component}" entity="udsmilestone3"/>
<tags:createField property="rephyill" component="${component}" entity="udsmilestone3"/>
<tags:createField property="rerefuse" component="${component}" entity="udsmilestone3"/>
<tags:createField property="renavail" component="${component}" entity="udsmilestone3"/>
<tags:createField property="renurse" component="${component}" entity="udsmilestone3"/>
<tags:createField property="nurseMo" component="${component}" entity="udsmilestone3"/>
<tags:createField property="nurseDy" component="${component}" entity="udsmilestone3"/>
<tags:createField property="nurseYr" component="${component}" entity="udsmilestone3"/>
<tags:createField property="rejoin" component="${component}" entity="udsmilestone3"/>
<tags:createField property="ftlddisc" component="${component}" entity="udsmilestone3"/>
<tags:createField property="ftldreas" component="${component}" entity="udsmilestone3"/>
<tags:createField property="ftldreax" component="${component}" entity="udsmilestone3"/>
<tags:createField property="deceased" component="${component}" entity="udsmilestone3"/>
<tags:createField property="discont" component="${component}" entity="udsmilestone3"/>
<tags:createField property="deathMo" component="${component}" entity="udsmilestone3"/>
<tags:createField property="deathDy" component="${component}" entity="udsmilestone3"/>
<tags:createField property="deathYr" component="${component}" entity="udsmilestone3"/>
<tags:createField property="autopsy" component="${component}" entity="udsmilestone3"/>
<tags:createField property="discMo" component="${component}" entity="udsmilestone3"/>
<tags:createField property="discDy" component="${component}" entity="udsmilestone3"/>
<tags:createField property="discr" component="${component}" entity="udsmilestone3"/>
<tags:createField property="dropreas" component="${component}" entity="udsmilestone3"/>



<tags:createField property="changemo" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="changedy" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="changeyr" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="protocol" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="aconsent" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="recogim" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="rephyill" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="rerefuse" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="renavail" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="renurse" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="nurseMo" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="nurseDy" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="nurseYr" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="rejoin" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="ftlddisc" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="ftldreas" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="ftldreax" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="deceased" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="discont" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="deathMo" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="deathDy" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="deathYr" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="autopsy" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="discMo" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="discDy" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="discr" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="dropreas" component="${component}" entity="${instrTypeEncoded}"/>



<tags:createField property="changemo" component="udsmilestone3"/>
<tags:createField property="changedy" component="udsmilestone3"/>
<tags:createField property="changeyr" component="udsmilestone3"/>
<tags:createField property="protocol" component="udsmilestone3"/>
<tags:createField property="aconsent" component="udsmilestone3"/>
<tags:createField property="recogim" component="udsmilestone3"/>
<tags:createField property="rephyill" component="udsmilestone3"/>
<tags:createField property="rerefuse" component="udsmilestone3"/>
<tags:createField property="renavail" component="udsmilestone3"/>
<tags:createField property="renurse" component="udsmilestone3"/>
<tags:createField property="nurseMo" component="udsmilestone3"/>
<tags:createField property="nurseDy" component="udsmilestone3"/>
<tags:createField property="nurseYr" component="udsmilestone3"/>
<tags:createField property="rejoin" component="udsmilestone3"/>
<tags:createField property="ftlddisc" component="udsmilestone3"/>
<tags:createField property="ftldreas" component="udsmilestone3"/>
<tags:createField property="ftldreax" component="udsmilestone3"/>
<tags:createField property="deceased" component="udsmilestone3"/>
<tags:createField property="discont" component="udsmilestone3"/>
<tags:createField property="deathMo" component="udsmilestone3"/>
<tags:createField property="deathDy" component="udsmilestone3"/>
<tags:createField property="deathYr" component="udsmilestone3"/>
<tags:createField property="autopsy" component="udsmilestone3"/>
<tags:createField property="discMo" component="udsmilestone3"/>
<tags:createField property="discDy" component="udsmilestone3"/>
<tags:createField property="discr" component="udsmilestone3"/>
<tags:createField property="dropreas" component="udsmilestone3"/>



<tags:listField property="changemo" component="${component}" listIndex="${iterator.index}" entityType="udsmilestone3"/>
<tags:listField property="changedy" component="${component}" listIndex="${iterator.index}" entityType="udsmilestone3"/>
<tags:listField property="changeyr" component="${component}" listIndex="${iterator.index}" entityType="udsmilestone3"/>
<tags:listField property="protocol" component="${component}" listIndex="${iterator.index}" entityType="udsmilestone3"/>
<tags:listField property="aconsent" component="${component}" listIndex="${iterator.index}" entityType="udsmilestone3"/>
<tags:listField property="recogim" component="${component}" listIndex="${iterator.index}" entityType="udsmilestone3"/>
<tags:listField property="rephyill" component="${component}" listIndex="${iterator.index}" entityType="udsmilestone3"/>
<tags:listField property="rerefuse" component="${component}" listIndex="${iterator.index}" entityType="udsmilestone3"/>
<tags:listField property="renavail" component="${component}" listIndex="${iterator.index}" entityType="udsmilestone3"/>
<tags:listField property="renurse" component="${component}" listIndex="${iterator.index}" entityType="udsmilestone3"/>
<tags:listField property="nurseMo" component="${component}" listIndex="${iterator.index}" entityType="udsmilestone3"/>
<tags:listField property="nurseDy" component="${component}" listIndex="${iterator.index}" entityType="udsmilestone3"/>
<tags:listField property="nurseYr" component="${component}" listIndex="${iterator.index}" entityType="udsmilestone3"/>
<tags:listField property="rejoin" component="${component}" listIndex="${iterator.index}" entityType="udsmilestone3"/>
<tags:listField property="ftlddisc" component="${component}" listIndex="${iterator.index}" entityType="udsmilestone3"/>
<tags:listField property="ftldreas" component="${component}" listIndex="${iterator.index}" entityType="udsmilestone3"/>
<tags:listField property="ftldreax" component="${component}" listIndex="${iterator.index}" entityType="udsmilestone3"/>
<tags:listField property="deceased" component="${component}" listIndex="${iterator.index}" entityType="udsmilestone3"/>
<tags:listField property="discont" component="${component}" listIndex="${iterator.index}" entityType="udsmilestone3"/>
<tags:listField property="deathMo" component="${component}" listIndex="${iterator.index}" entityType="udsmilestone3"/>
<tags:listField property="deathDy" component="${component}" listIndex="${iterator.index}" entityType="udsmilestone3"/>
<tags:listField property="deathYr" component="${component}" listIndex="${iterator.index}" entityType="udsmilestone3"/>
<tags:listField property="autopsy" component="${component}" listIndex="${iterator.index}" entityType="udsmilestone3"/>
<tags:listField property="discMo" component="${component}" listIndex="${iterator.index}" entityType="udsmilestone3"/>
<tags:listField property="discDy" component="${component}" listIndex="${iterator.index}" entityType="udsmilestone3"/>
<tags:listField property="discr" component="${component}" listIndex="${iterator.index}" entityType="udsmilestone3"/>
<tags:listField property="dropreas" component="${component}" listIndex="${iterator.index}" entityType="udsmilestone3"/>



<tags:tableForm>
<tags:listRow>
	<tags:listColumnHeader labelKey="" width="10%"/>
	<tags:listColumnHeader labelKey="" width="70%"/>
	<tags:listColumnHeader labelKey="" width="20%"/>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="changemo" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="changemo" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="changemo" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="changedy" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="changedy" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="changedy" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="changeyr" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="changeyr" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="changeyr" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="protocol" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="protocol" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="protocol" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="aconsent" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="aconsent" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="aconsent" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="recogim" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="recogim" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="recogim" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="rephyill" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="rephyill" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="rephyill" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="rerefuse" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="rerefuse" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="rerefuse" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="renavail" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="renavail" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="renavail" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="renurse" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="renurse" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="renurse" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="nurseMo" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="nurseMo" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="nurseMo" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="nurseDy" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="nurseDy" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="nurseDy" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="nurseYr" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="nurseYr" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="nurseYr" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="rejoin" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="rejoin" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="rejoin" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="ftlddisc" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="ftlddisc" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="ftlddisc" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="ftldreas" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="ftldreas" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="ftldreas" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="ftldreax" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="ftldreax" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="ftldreax" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="deceased" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="deceased" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="deceased" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="discont" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="discont" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="discont" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="deathMo" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="deathMo" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="deathMo" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="deathDy" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="deathDy" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="deathDy" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="deathYr" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="deathYr" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="deathYr" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="autopsy" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="autopsy" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="autopsy" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="discMo" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="discMo" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="discMo" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="discDy" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="discDy" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="discDy" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="discr" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="discr" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="discr" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="dropreas" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="dropreas" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="dropreas" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
</tags:tableForm>



<tags:tableForm>
<tags:listRow>
	<tags:listColumnHeader labelKey="" width="10%"/>
	<tags:listColumnHeader labelKey="" width="70%"/>
	<tags:listColumnHeader labelKey="" width="20%"/>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="changemo" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="changemo" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="changemo" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="changedy" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="changedy" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="changedy" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="changeyr" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="changeyr" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="changeyr" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="protocol" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="protocol" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="protocol" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="aconsent" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="aconsent" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="aconsent" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="recogim" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="recogim" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="recogim" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="rephyill" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="rephyill" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="rephyill" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="rerefuse" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="rerefuse" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="rerefuse" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="renavail" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="renavail" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="renavail" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="renurse" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="renurse" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="renurse" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="nurseMo" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="nurseMo" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="nurseMo" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="nurseDy" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="nurseDy" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="nurseDy" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="nurseYr" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="nurseYr" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="nurseYr" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="rejoin" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="rejoin" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="rejoin" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="ftlddisc" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="ftlddisc" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="ftlddisc" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="ftldreas" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="ftldreas" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="ftldreas" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="ftldreax" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="ftldreax" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="ftldreax" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="deceased" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="deceased" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="deceased" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="discont" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="discont" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="discont" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="deathMo" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="deathMo" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="deathMo" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="deathDy" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="deathDy" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="deathDy" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="deathYr" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="deathYr" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="deathYr" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="autopsy" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="autopsy" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="autopsy" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="discMo" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="discMo" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="discMo" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="discDy" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="discDy" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="discDy" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="discr" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="discr" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="discr" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="dropreas" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="dropreas" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell><tags:outputMetadata attribName="label" property="dropreas" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
</tags:tableForm>
buffer.append(UdsUploadUtils.formatField(getChangemo())).append(",");
buffer.append(UdsUploadUtils.formatField(getChangedy())).append(",");
buffer.append(UdsUploadUtils.formatField(getChangeyr())).append(",");
buffer.append(UdsUploadUtils.formatField(getProtocol())).append(",");
buffer.append(UdsUploadUtils.formatField(getAconsent())).append(",");
buffer.append(UdsUploadUtils.formatField(getRecogim())).append(",");
buffer.append(UdsUploadUtils.formatField(getRephyill())).append(",");
buffer.append(UdsUploadUtils.formatField(getRerefuse())).append(",");
buffer.append(UdsUploadUtils.formatField(getRenavail())).append(",");
buffer.append(UdsUploadUtils.formatField(getRenurse())).append(",");
buffer.append(UdsUploadUtils.formatField(getNurseMo())).append(",");
buffer.append(UdsUploadUtils.formatField(getNurseDy())).append(",");
buffer.append(UdsUploadUtils.formatField(getNurseYr())).append(",");
buffer.append(UdsUploadUtils.formatField(getRejoin())).append(",");
buffer.append(UdsUploadUtils.formatField(getFtlddisc())).append(",");
buffer.append(UdsUploadUtils.formatField(getFtldreas())).append(",");
buffer.append(UdsUploadUtils.formatField(getFtldreax())).append(",");
buffer.append(UdsUploadUtils.formatField(getDeceased())).append(",");
buffer.append(UdsUploadUtils.formatField(getDiscont())).append(",");
buffer.append(UdsUploadUtils.formatField(getDeathMo())).append(",");
buffer.append(UdsUploadUtils.formatField(getDeathDy())).append(",");
buffer.append(UdsUploadUtils.formatField(getDeathYr())).append(",");
buffer.append(UdsUploadUtils.formatField(getAutopsy())).append(",");
buffer.append(UdsUploadUtils.formatField(getDiscMo())).append(",");
buffer.append(UdsUploadUtils.formatField(getDiscDy())).append(",");
buffer.append(UdsUploadUtils.formatField(getDiscr())).append(",");
buffer.append(UdsUploadUtils.formatField(getDropreas())).append(",");
