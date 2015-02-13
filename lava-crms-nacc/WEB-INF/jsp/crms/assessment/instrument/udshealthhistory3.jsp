<%@ include file="/WEB-INF/jsp/includes/include.jsp" %>
<c:set var="instrTypeEncoded" value="udshealthhistory3"/>
<c:set var="uds2MetadataEntity" value="udshealthhistory2"/>

<c:import url="/WEB-INF/jsp/crms/assessment/instrument/include.jsp">
	<c:param name="instrTypeEncoded" value="${instrTypeEncoded}"/>
</c:import>

<%-- instrument-specific focusField setting (include.jsp has common focusField settings) --%>
<c:choose>
	<c:when test="${componentView == 'doubleEnter' || componentView == 'compare'}">
		<c:set var="focusField" value="tobac30"/>
	</c:when>
</c:choose>	

<page:applyDecorator name="component.content">
  <page:param name="isInstrument">true</page:param> 
  <page:param name="component">${instrTypeEncoded}</page:param> 
  <page:param name="focusField">${focusField}</page:param>
  <page:param name="pageHeadingArgs">UDS Health History</page:param>
  <page:param name="quicklinks">cardio,cerebro,parkinson,otherNeuro,mediMeta,<br/>,depression,subAbuPsych</page:param>
   
<page:applyDecorator name="component.instrument.content">
  <page:param name="instrTypeEncoded">${instrTypeEncoded}</page:param>
  <page:param name="view">${componentView}</page:param>

<c:import url="/WEB-INF/jsp/crms/assessment/instrument/udsCommon.jsp">
	<c:param name="entity" value="${instrTypeEncoded}"/>
	<c:param name="view" value="${componentView}"/>
	<c:param name="component" value="${component}"/>
</c:import>

<tags:sectionQuicklink requestUrl="${requestUrl}" sectionId="top" sourceSectionId="smoking" linkTextKey="top.quicklink"/>
<page:applyDecorator name="component.instrument.section">
  <page:param name="section"><spring:message code="udshealthhistory3.smoking.section"/></page:param>
  <page:param name="view">${componentView}</page:param>
  <page:param name="instructions"> </page:param>
<tags:createField property="tobac30" entity="${uds2MetadataEntity}" component="${component}"/>
<tags:createField property="tobac100" entity="${uds2MetadataEntity}" component="${component}"/>
<tags:createField property="smokYrs" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="packsPer" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="quitSmok" entity="${uds2MetadataEntity}" component="${component}"/>
<tags:createField property="alcoCcas" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="alcFreq" entity="${instrTypeEncoded}" component="${component}"/>
</page:applyDecorator>

<tags:sectionQuicklink requestUrl="${requestUrl}" sectionId="top" sourceSectionId="cardio" linkTextKey="top.quicklink"/>
<page:applyDecorator name="component.instrument.section">
  <page:param name="section"><spring:message code="udshealthhistory2.cardio.section"/></page:param>
  <page:param name="view">${componentView}</page:param>
  <page:param name="instructions"> </page:param>
<tags:createField property="cvHAtt" entity="${uds2MetadataEntity}" component="${component}"/>
<tags:createField property="hattMult" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="hattYear" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="cvAFib" entity="${uds2MetadataEntity}" component="${component}"/>
<tags:createField property="cvAngio" entity="${uds2MetadataEntity}" component="${component}"/>
<tags:createField property="cvBypass" entity="${uds2MetadataEntity}" component="${component}"/>
<tags:createField property="cvPacDef" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="cvChf" entity="${uds2MetadataEntity}" component="${component}"/>
<tags:createField property="cvAngina" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="cvHValve" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="cvOthr" entity="${uds2MetadataEntity}" component="${component}"/>
<tags:createField property="cvOthrx" entity="${uds2MetadataEntity}" component="${component}"/>
</page:applyDecorator>

<tags:sectionQuicklink requestUrl="${requestUrl}" sectionId="top" sourceSectionId="cerebro" linkTextKey="top.quicklink"/>
<page:applyDecorator name="component.instrument.section">
  <page:param name="section"><spring:message code="udshealthhistory2.cerebro.section"/></page:param>
  <page:param name="view">${componentView}</page:param>
  <page:param name="instructions"> </page:param>
<tags:createField property="cbStroke" entity="${uds2MetadataEntity}" component="${component}"/>
<tags:createField property="strokMul" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="strokYr" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="cbTia" entity="${uds2MetadataEntity}" component="${component}"/>
<tags:createField property="cbOthr" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="tiaMult" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="tiaYear" entity="${instrTypeEncoded}" component="${component}"/>
</page:applyDecorator>

<tags:sectionQuicklink requestUrl="${requestUrl}" sectionId="top" sourceSectionId="neurologic" linkTextKey="top.quicklink"/>
<page:applyDecorator name="component.instrument.section">
  <page:param name="section"><spring:message code="udshealthhistory3.neurologic.section"/></page:param>
  <page:param name="view">${componentView}</page:param>
  <page:param name="instructions"> </page:param>
<tags:createField property="pd" entity="${uds2MetadataEntity}" component="${component}"/>
<tags:createField property="pdYr" entity="${uds2MetadataEntity}" component="${component}"/>
<tags:createField property="pdOthr" entity="${uds2MetadataEntity}" component="${component}"/>
<tags:createField property="pdOthrYr" entity="${uds2MetadataEntity}" component="${component}"/>
<tags:createField property="seizures" entity="${uds2MetadataEntity}" component="${component}"/>
<tags:createField property="tbi" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="tbiBrief" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="tbiExten" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="tbiWolos" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="tbiYear" entity="${instrTypeEncoded}" component="${component}"/>
</page:applyDecorator>

<tags:sectionQuicklink requestUrl="${requestUrl}" sectionId="top" sourceSectionId="otherneuro" linkTextKey="top.quicklink"/>
<page:applyDecorator name="component.instrument.section">
  <page:param name="section"><spring:message code="udshealthhistory2.otherNeuro.section"/></page:param>
  <page:param name="view">${componentView}</page:param>
  <page:param name="instructions"> </page:param>

</page:applyDecorator>

<tags:sectionQuicklink requestUrl="${requestUrl}" sectionId="top" sourceSectionId="medical" linkTextKey="top.quicklink"/>
<page:applyDecorator name="component.instrument.section">
  <page:param name="section"><spring:message code="udshealthhistory3.medical.section"/></page:param>
  <page:param name="view">${componentView}</page:param>
  <page:param name="instructions"> </page:param>
<tags:createField property="diabetes" entity="${uds2MetadataEntity}" component="${component}"/>
<tags:createField property="diabType" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="hyperten" entity="${uds2MetadataEntity}" component="${component}"/>
<tags:createField property="hyperCho" entity="${uds2MetadataEntity}" component="${component}"/>
<tags:createField property="b12Def" entity="${uds2MetadataEntity}" component="${component}"/>
<tags:createField property="thyroid" entity="${uds2MetadataEntity}" component="${component}"/>
<tags:createField property="arthrit" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="arthType" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="arthTypx" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="arthUpEx" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="arthLoEx" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="arthSpin" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="arthUnk" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="incontU" entity="${uds2MetadataEntity}" component="${component}"/>
<tags:createField property="incontF" entity="${uds2MetadataEntity}" component="${component}"/>
<tags:createField property="apnea" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="rbd" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="insomn" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="othSleep" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="othSleex" entity="${instrTypeEncoded}" component="${component}"/>
</page:applyDecorator>

<tags:sectionQuicklink requestUrl="${requestUrl}" sectionId="top" sourceSectionId="subAbuse" linkTextKey="top.quicklink"/>
<page:applyDecorator name="component.instrument.section">
  <page:param name="section"><spring:message code="udshealthhistory3.subAbuse.section"/></page:param>
  <page:param name="view">${componentView}</page:param>
  <page:param name="instructions"> </page:param>
<tags:createField property="alcohol" entity="${uds2MetadataEntity}" component="${component}"/>
<tags:createField property="abusOthr" entity="${uds2MetadataEntity}" component="${component}"/>
<tags:createField property="abusx" entity="${uds2MetadataEntity}" component="${component}"/>
</page:applyDecorator>

<tags:sectionQuicklink requestUrl="${requestUrl}" sectionId="top" sourceSectionId="psychiatric" linkTextKey="top.quicklink"/>
<page:applyDecorator name="component.instrument.section">
  <page:param name="section"><spring:message code="udshealthhistory3.psychiatric.section"/></page:param>
  <page:param name="view">${componentView}</page:param>
  <page:param name="instructions"> </page:param>
<tags:createField property="ptsd" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="bipolar" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="schiz" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="dep2Yrs" entity="${uds2MetadataEntity}" component="${component}"/>
<tags:createField property="depOthr" entity="${uds2MetadataEntity}" component="${component}"/>
<tags:createField property="anxiety" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="ocd" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="npsyDev" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="psycDis" entity="${uds2MetadataEntity}" component="${component}"/>
<tags:createField property="psycDisx" entity="${uds2MetadataEntity}" component="${component}"/>
</page:applyDecorator>

<page:applyDecorator name="component.instrument.section">
	<page:param name="sectionId">anonymous</page:param>
	<page:param name="view">${componentView}</page:param>
	<page:param name="instructions"> </page:param>
	<tags:createField property="notes['udshealthhistory']" entity="${instrTypeEncoded}" component="${component}" metadataName="instrument.sectionNote" labelAlignment="top" dataStyle="instrNote"/>
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
  <ui:observe elementIds="cvOthr" component="${componentPrefix}" forValue="^1|^2" comboRadioSelect="${componentMode == 'dc' ? 'true' : 'false'}"/>
  <ui:unskip elementIds="cvOthrx" component="${componentPrefix}"/> 
</ui:formGuide>
<ui:formGuide>
  <ui:observe elementIds="cbStroke" component="${componentPrefix}" forValue="^1|^2" comboRadioSelect="${componentMode == 'dc' ? 'true' : 'false'}"/>
  <ui:unskip elementIds="strok1Yr,strok2Yr,strok3Yr,strok4Yr,strok5Yr,strok6Yr" component="${componentPrefix}"/> 
</ui:formGuide>
<ui:formGuide>
  <ui:observe elementIds="cbTia" component="${componentPrefix}" forValue="^1|^2" comboRadioSelect="${componentMode == 'dc' ? 'true' : 'false'}"/>
  <ui:unskip elementIds="tia1Yr,tia2Yr,tia3Yr,tia4Yr,tia5Yr,tia6Yr" component="${componentPrefix}"/> 
</ui:formGuide>
<ui:formGuide>
  <ui:observe elementIds="cbOthr" component="${componentPrefix}" forValue="^1|^2" comboRadioSelect="${componentMode == 'dc' ? 'true' : 'false'}"/>
  <ui:unskip elementIds="cbOthrx" component="${componentPrefix}"/> 
</ui:formGuide>
<ui:formGuide>
  <ui:observe elementIds="pd" component="${componentPrefix}" forValue="^1" comboRadioSelect="${componentMode == 'dc' ? 'true' : 'false'}"/>
  <ui:unskip elementIds="pdYr" component="${componentPrefix}"/> 
</ui:formGuide>
<ui:formGuide>
  <ui:observe elementIds="pdOthr" component="${componentPrefix}" forValue="^1" comboRadioSelect="${componentMode == 'dc' ? 'true' : 'false'}"/>
  <ui:unskip elementIds="pdOthrYr" component="${componentPrefix}"/> 
</ui:formGuide>
<ui:formGuide>
  <ui:observe elementIds="ncOthr" component="${componentPrefix}" forValue="^1|^2" comboRadioSelect="${componentMode == 'dc' ? 'true' : 'false'}"/>
  <ui:unskip elementIds="ncOthrx" component="${componentPrefix}"/> 
</ui:formGuide>
<ui:formGuide>
  <ui:observe elementIds="abusOthr" component="${componentPrefix}" forValue="^1|^2" comboRadioSelect="${componentMode == 'dc' ? 'true' : 'false'}"/>
  <ui:unskip elementIds="abusx" component="${componentPrefix}"/> 
</ui:formGuide>
<ui:formGuide simulateEvents="${(current == 0 && componentView != 'compare') || (current == 1) ? 'true' : ''}">
  <ui:observe elementIds="psycDis" component="${componentPrefix}" forValue="^1|^2" comboRadioSelect="${componentMode == 'dc' ? 'true' : 'false'}"/>
  <ui:unskip elementIds="psycDisx" component="${componentPrefix}"/> 
</ui:formGuide>

  </c:if>
</c:forEach>
</c:if>

</page:applyDecorator>
</page:applyDecorator>