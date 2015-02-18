<%@ include file="/WEB-INF/jsp/includes/include.jsp" %>
<c:set var="instrTypeEncoded" value="udshealthhistory3"/>

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
  <page:param name="quicklinks">smoking,cardio,cerebro,neurologic,medical,subAbuse,psychiatric</page:param>
   
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
<tags:createField property="tobac30" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="tobac100" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="smokYrs" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="packsPer" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="quitSmok" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="alcoCcas" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="alcFreq" entity="${instrTypeEncoded}" component="${component}"/>
</page:applyDecorator>

<tags:sectionQuicklink requestUrl="${requestUrl}" sectionId="top" sourceSectionId="cardio" linkTextKey="top.quicklink"/>
<page:applyDecorator name="component.instrument.section">
  <page:param name="section"><spring:message code="udshealthhistory3.cardio.section"/></page:param>
  <page:param name="view">${componentView}</page:param>
  <page:param name="instructions"> </page:param>
<tags:createField property="cvHAtt" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="hattMult" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="hattYear" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="cvAFib" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="cvAngio" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="cvBypass" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="cvPacDef" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="cvChf" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="cvAngina" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="cvHValve" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="cvOthr" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="cvOthrx" entity="${instrTypeEncoded}" component="${component}"/>
</page:applyDecorator>

<tags:sectionQuicklink requestUrl="${requestUrl}" sectionId="top" sourceSectionId="cerebro" linkTextKey="top.quicklink"/>
<page:applyDecorator name="component.instrument.section">
  <page:param name="section"><spring:message code="udshealthhistory3.cerebro.section"/></page:param>
  <page:param name="view">${componentView}</page:param>
  <page:param name="instructions"> </page:param>
<tags:createField property="cbStroke" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="strokMul" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="strokYr" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="cbTia" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="tiaMult" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="tiaYear" entity="${instrTypeEncoded}" component="${component}"/>
</page:applyDecorator>

<tags:sectionQuicklink requestUrl="${requestUrl}" sectionId="top" sourceSectionId="neurologic" linkTextKey="top.quicklink"/>
<page:applyDecorator name="component.instrument.section">
  <page:param name="section"><spring:message code="udshealthhistory3.neurologic.section"/></page:param>
  <page:param name="view">${componentView}</page:param>
  <page:param name="instructions"> </page:param>
<tags:createField property="pd" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="pdYr" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="pdOthr" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="pdOthrYr" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="seizures" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="tbi" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="tbiBrief" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="tbiExten" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="tbiWolos" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="tbiYear" entity="${instrTypeEncoded}" component="${component}"/>
</page:applyDecorator>

<tags:sectionQuicklink requestUrl="${requestUrl}" sectionId="top" sourceSectionId="medical" linkTextKey="top.quicklink"/>
<page:applyDecorator name="component.instrument.section">
  <page:param name="section"><spring:message code="udshealthhistory3.medical.section"/></page:param>
  <page:param name="view">${componentView}</page:param>
  <page:param name="instructions"> </page:param>
<tags:createField property="diabetes" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="diabType" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="hyperten" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="hyperCho" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="b12Def" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="thyroid" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="arthrit" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="arthType" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="arthTypx" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="arthUpEx" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="arthLoEx" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="arthSpin" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="arthUnk" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="incontU" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="incontF" entity="${instrTypeEncoded}" component="${component}"/>
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
<tags:createField property="alcohol" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="abusOthr" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="abusx" entity="${instrTypeEncoded}" component="${component}" labelStyle="longLeft"/>
</page:applyDecorator>

<tags:sectionQuicklink requestUrl="${requestUrl}" sectionId="top" sourceSectionId="psychiatric" linkTextKey="top.quicklink"/>
<page:applyDecorator name="component.instrument.section">
  <page:param name="section"><spring:message code="udshealthhistory3.psychiatric.section"/></page:param>
  <page:param name="view">${componentView}</page:param>
  <page:param name="instructions"> </page:param>
<tags:createField property="ptsd" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="bipolar" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="schiz" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="dep2Yrs" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="depOthr" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="anxiety" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="ocd" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="npsyDev" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="psycDis" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="psycDisx" entity="${instrTypeEncoded}" component="${component}" labelStyle="longLeft"/>
</page:applyDecorator>

<c:if test="${componentMode != 'vw'}">
<c:forEach begin="0" end="1" var="current">
  <c:choose>
    <c:when test="${componentView == 'doubleEnter' || (componentView == 'compare' && current == 1)}">
      <c:set var="component" value="compareInstrument"/>
    </c:when>
    <c:otherwise>
      <c:set var="component" value="instrument"/>
    </c:otherwise>
  </c:choose>
  <c:if test="${current == 0 || (current == 1 && componentView == 'compare')}">

<ui:formGuide>
  <ui:observe elementIds="tobac100" component="${component}" forValue="1"/>
  <ui:unskip elementIds="smokYrs,packsPer,quitSmok" component="${component}"/> 
</ui:formGuide>
<ui:formGuide>
  <ui:observe elementIds="alcoCcas" component="${component}" forValue="1"/>
  <ui:unskip elementIds="alcFreq" component="${component}"/> 
</ui:formGuide>
<ui:formGuide>
  <ui:observe elementIds="cvHAtt" component="${component}" forValue="1|2"/>
  <ui:unskip elementIds="hattMult,hattYear" component="${component}"/> 
</ui:formGuide>
<ui:formGuide>
  <ui:observe elementIds="cvOthr" component="${component}" forValue="^1|^2"/>
  <ui:unskip elementIds="cvOthrx" component="${component}"/> 
</ui:formGuide>
<ui:formGuide>
  <ui:observe elementIds="cbStroke" component="${component}" forValue="1|2"/>
  <ui:unskip elementIds="strokMul,strokYr" component="${component}"/> 
</ui:formGuide>
<ui:formGuide>
  <ui:observe elementIds="cbTia" component="${component}" forValue="1|2"/>
  <ui:unskip elementIds="tiaMult,tiaYear" component="${component}"/> 
</ui:formGuide>
<ui:formGuide>
  <ui:observe elementIds="pd" component="${component}" forValue="^1"/>
  <ui:unskip elementIds="pdYr" component="${component}"/> 
</ui:formGuide>
<ui:formGuide>
  <ui:observe elementIds="pdOthr" component="${component}" forValue="^1"/>
  <ui:unskip elementIds="pdOthrYr" component="${component}"/> 
</ui:formGuide>
<ui:formGuide>
  <ui:observe elementIds="tbi" component="${component}" forValue="1|2"/>
  <ui:unskip elementIds="tbiBrief,tbiExten,tbiWolos,tbiYear" component="${component}"/> 
</ui:formGuide>
<ui:formGuide>
  <ui:observe elementIds="diabetes" component="${component}" forValue="1|2"/>
  <ui:unskip elementIds="diabType" component="${component}"/> 
</ui:formGuide>
<ui:formGuide>
  <ui:observe elementIds="arthrit" component="${component}" forValue="1|2"/>
  <ui:unskip elementIds="arthType,arthUpEx,arthLoEx,arthSpin,arthUnk" component="${component}"/> 
</ui:formGuide>
<ui:formGuide>
	<ui:depends elementIds="arthrit" component="${component}"/>
  <ui:observe elementIds="arthType" component="${component}" forValue="3"/>
  <ui:unskip elementIds="arthTypx" component="${component}"/> 
</ui:formGuide>
<ui:formGuide>
  <ui:observe elementIds="othSleep" component="${component}" forValue="^1|^2"/>
  <ui:unskip elementIds="othSleex" component="${component}"/> 
</ui:formGuide>
<ui:formGuide>
  <ui:observe elementIds="abusOthr" component="${component}" forValue="1|2"/>
  <ui:unskip elementIds="abusx" component="${component}"/> 
</ui:formGuide>
<ui:formGuide simulateEvents="${(current == 0 && componentView != 'compare') || (current == 1) ? 'true' : ''}">
  <ui:observe elementIds="psycDis" component="${component}" forValue="^1|^2"/>
  <ui:unskip elementIds="psycDisx" component="${component}"/> 
</ui:formGuide>

  </c:if>
</c:forEach>
</c:if>

</page:applyDecorator>
</page:applyDecorator>