<%@ include file="/WEB-INF/jsp/includes/include.jsp" %>
<c:set var="instrTypeEncoded" value="udsmilestone3"/>
<c:import url="/WEB-INF/jsp/crms/assessment/instrument/include.jsp">
	<c:param name="instrTypeEncoded" value="${instrTypeEncoded}"/>
</c:import>

<c:set var="controlMode" value="lv"/>

<c:choose>
	<c:when test="${componentView == 'enter' || componentView == 'doubleEnter' || componentView == 'compare'}">
		<c:set var="controlMode" value="le"/>
	</c:when>
</c:choose>

<%-- instrument-specific focusField setting (include.jsp has common focusField settings) --%>
<c:choose>
	<c:when test="${componentView == 'doubleEnter' || componentView == 'compare'}">
		<c:set var="focusField" value="changemo"/>
	</c:when>
</c:choose>	

<page:applyDecorator name="component.content">
  <page:param name="isInstrument">true</page:param> 
  <page:param name="component">${instrTypeEncoded}</page:param> 
  <page:param name="focusField">${focusField}</page:param>
  <page:param name="pageHeadingArgs">UDS Milestone</page:param>
  <page:param name="quicklinks">boxa,boxb</page:param>
   
<page:applyDecorator name="component.instrument.content">
  <page:param name="instrTypeEncoded">${instrTypeEncoded}</page:param>
  <page:param name="view">${componentView}</page:param>

<c:import url="/WEB-INF/jsp/crms/assessment/instrument/udsCommon.jsp">
	<c:param name="entity" value="${instrTypeEncoded}"/>
	<c:param name="view" value="${componentView}"/>
	<c:param name="component" value="${component}"/>
</c:import>

<tags:sectionQuicklink requestUrl="${requestUrl}" sectionId="top" sourceSectionId="boxa" linkTextKey="top.quicklink"/>
<page:applyDecorator name="component.instrument.section">
  <page:param name="section"><spring:message code="udsmilestone3.boxa.section"/></page:param>
  <page:param name="view">${componentView}</page:param>
  <page:param name="instructions"><spring:message code="udsmilestone3.boxa.instructions"/></page:param>
	
<tags:tableForm>
<tags:listRow>
	<tags:listColumnHeader styleClass="noRight" labelKey="" width="5%"/>
	<tags:listColumnHeader styleClass="noLeft noRight" labelKey="" width="55%"/>
	<tags:listColumnHeader styleClass="noLeft" labelKey="" width="40%"/>
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
	<tags:listCell styleClass="noRight right"><tags:outputText text="2b."/></tags:listCell>
	<tags:listCell styleClass="noLeft" colspan="2"><tags:outputText text="Reason(s) for change indicated in Question 2a"/></tags:listCell>
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
	<tags:listCell styleClass="noLeft indent1"><tags:outputMetadata attribName="label" property="nurseMo" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="nurseMo" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="nurseDy" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft indent1"><tags:outputMetadata attribName="label" property="nurseDy" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="nurseDy" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="nurseYr" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft indent1"><tags:outputMetadata attribName="label" property="nurseYr" entity="${instrTypeEncoded}"/></tags:listCell>
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
	<tags:listCell styleClass="noLeft indent1"><tags:outputMetadata attribName="label" property="ftldreax" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="ftldreax" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
</tags:tableForm>
</page:applyDecorator>

<tags:sectionQuicklink requestUrl="${requestUrl}" sectionId="top" sourceSectionId="boxb" linkTextKey="top.quicklink"/>
<page:applyDecorator name="component.instrument.section">
  <page:param name="section"><spring:message code="udsmilestone3.boxb.section"/></page:param>
  <page:param name="view">${componentView}</page:param>
  <page:param name="instructions"><spring:message code="udsmilestone3.boxb.instructions"/></page:param>
	
<tags:tableForm>
<tags:listRow>
	<tags:listColumnHeader styleClass="noRight" labelKey="" width="5%"/>
	<tags:listColumnHeader styleClass="noLeft noRight" labelKey="" width="55%"/>
	<tags:listColumnHeader styleClass="noLeft" labelKey="" width="40%"/>
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
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="discYr" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="discYr" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="discYr" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="dropreas" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="dropreas" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="dropreas" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
</tags:tableForm>
</page:applyDecorator>

<page:applyDecorator name="component.instrument.section">
	<page:param name="sectionId">anonymous</page:param>
	<page:param name="view">${componentView}</page:param>
	<page:param name="instructions"> </page:param>
	<tags:createField property="notes['udsmilestone3']" entity="${instrTypeEncoded}" component="${component}" metadataName="instrument.sectionNote" labelAlignment="top" dataStyle="instrNote"/>
</page:applyDecorator>

<c:if test="${componentMode != 'vw'}">
<c:forEach begin="0" end="1" var="current">
  <c:choose>
    <c:when test="${componentView == 'doubleEnter' || (componentView == 'compare' && current == 1)}">
      <c:set var="componentPrefix" value="compareInstrument"/>
    </c:when>
    <c:otherwise>
      <c:set var="componentPrefix" value="instrument"/>
    </c:otherwise>
  </c:choose>
  <c:if test="${current == 0 || (current == 1 && componentView == 'compare')}">

<ui:formGuide>
	<ui:observe elementIds="protocol" component="${component}" forValue="1|2" />
    <ui:unskip elementIds="aconsent" component="${component}"/>
</ui:formGuide>
<ui:formGuide>
	<ui:observe elementIds="renurse" component="${component}" forValue="^1" />
    <ui:unskip elementIds="nurseMo,nurseDy,nurseYr" component="${component}"/>
</ui:formGuide>
<ui:formGuide>
	<ui:observe elementIds="ftlddisc" component="${component}" forValue="^1" />
    <ui:unskip elementIds="ftldreas" component="${component}"/>
</ui:formGuide>
<ui:formGuide>
	<ui:depends elementIds="ftlddisc" component="${component}" />
	<ui:observe elementIds="ftldreas" component="${component}" forValue="^4" />
    <ui:unskip elementIds="ftldreax" component="${component}"/>
</ui:formGuide>
<ui:formGuide>
	<ui:observe elementIds="deceased" component="${component}" forValue="^1" />
	<ui:depends elementIds="discont" component="${component}" />
    <ui:unskip elementIds="deathMo,deathDy,deathYr,autopsy" component="${component}"/>
</ui:formGuide>
<ui:formGuide simulateEvents="${(current == 0 && componentView != 'compare') || (current == 1) ? 'true' : ''}">
	<ui:observe elementIds="discont" component="${component}" forValue="^1" />
    <ui:unskip elementIds="discMo,discDy,discYr,dropreas" component="${component}"/>
    <ui:skip elementIds="deceased" component="${component}"/>
</ui:formGuide>

  </c:if>
</c:forEach>
</c:if>

</page:applyDecorator>    
</page:applyDecorator>
