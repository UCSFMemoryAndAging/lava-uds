<%@ include file="/WEB-INF/jsp/includes/include.jsp" %>
<c:set var="instrTypeEncoded" value="udssubjectdemo3"/>

<c:import url="/WEB-INF/jsp/crms/assessment/instrument/include.jsp">
	<c:param name="instrTypeEncoded" value="${instrTypeEncoded}"/>
</c:import>
<c:set var="entity" value="${instrTypeEncoded}"/>
<c:set var="packetType">
	<tags:componentProperty component="instrument" property="packet"/>
</c:set>

<%-- include.jsp sets focus field to visitNum for all UDS instruments, but if the user is 
doing double enter / compare, visitNum is not a double enter property so set the focus for
the first double enter property here --%>
<c:if test="${componentView == 'doubleEnter' || componentView == 'compare'}">
	<c:choose>
		<c:when test="${packetType == 'I' || empty packetType}">
			<c:set  var="focusField" value="reason"/>
		</c:when>
		<c:when test="${packetType == 'F' || packetType == 'T'}">
			<c:set var="focusField" value="birthMo"/>
		</c:when>
	</c:choose>	
</c:if>

<page:applyDecorator name="component.content">
  <page:param name="isInstrument">true</page:param> 
  <page:param name="component">${instrTypeEncoded}</page:param> 
  <page:param name="focusField">${focusField}</page:param>
  <page:param name="pageHeadingArgs">UDS Subject Demographics</page:param>
  <page:param name="quicklinks">udsa1120</page:param>
   
<page:applyDecorator name="component.instrument.content">
  <page:param name="instrTypeEncoded">${instrTypeEncoded}</page:param>
  <page:param name="view">${componentView}</page:param>

<c:import url="/WEB-INF/jsp/crms/assessment/instrument/udsCommon.jsp">
	<c:param name="entity" value="${instrTypeEncoded}"/>
	<c:param name="view" value="${componentView}"/>
	<c:param name="component" value="${component}"/>
</c:import>

<tags:sectionQuicklink requestUrl="${requestUrl}" sectionId="top" sourceSectionId="udsa1120" linkTextKey="top.quicklink"/>
<page:applyDecorator name="component.instrument.section">
  <page:param name="section"><spring:message code="udssubjectdemo2.1-20.section"/></page:param>
  <page:param name="view">${componentView}</page:param>
  <page:param name="instructions"> </page:param>
<c:if test="${packetType == 'I' || empty packetType}">
	<tags:createField property="reason" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="referSc" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="learned" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="preStat" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="presPart" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="sourceNw" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="birthMo,birthYr" separator="/" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="sex" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="hispanic" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="hispOr" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="hispOrx" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="race" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="racex" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="raceSec" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="raceSecx" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="raceTer" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="raceTerx" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="primLang" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="primLanx" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="educ" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="mariStat" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="livSitua" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="independ" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="residenc" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="zip" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="handed" component="${component}" entity="${instrTypeEncoded}"/>
</c:if>

<c:if test="${packetType == 'F' || packetType == 'T'}">
	<tags:createField property="birthMo,birthYr" separator="/" component="${component}" entity="followup.${instrTypeEncoded}"/>
	<tags:createField property="mariStat" component="${component}" entity="followup.${instrTypeEncoded}"/>
	<tags:createField property="sex" component="${component}" entity="followup.${instrTypeEncoded}"/>
	<tags:createField property="livSitua" component="${component}" entity="followup.${instrTypeEncoded}"/>
	<tags:createField property="independ" component="${component}" entity="followup.${instrTypeEncoded}"/>
	<tags:createField property="residenc" component="${component}" entity="followup.${instrTypeEncoded}"/>
	<tags:createField property="zip" component="${component}" entity="followup.${instrTypeEncoded}"/>
</c:if>

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

<ui:formGuide ignoreDoOnLoad="true">
    <ui:observe elementIds="instrument_packet" forValue=".+|^$"/>
    <ui:submitForm form="${instrTypeEncoded}" event="instrument__reRender"/>
</ui:formGuide>

<ui:formGuide>
  <ui:ignore elementIds="packet" component="instrument" forValue="[F|T]"/>
  <ui:observe elementIds="referSc" component="${component}" forValue="^1|^2"/>
  <ui:unskip elementIds="learned" component="${component}"/> 
</ui:formGuide>

<ui:formGuide>
  <ui:ignore elementIds="packet" component="instrument" forValue="[F|T]"/>
  <ui:observe elementIds="hispanic" component="${component}" forValue="^1" />
  <ui:unskip elementIds="hispOr" component="${component}"/> 
</ui:formGuide>

<ui:formGuide>
  <ui:ignore elementIds="packet" component="instrument" forValue="[F|T]"/>
  <ui:observe elementIds="hispOr" component="${component}" forValue="^50" />
  <ui:unskip elementIds="hispOrx" component="${component}"/> 
</ui:formGuide>

<ui:formGuide>
  <ui:ignore elementIds="packet" component="instrument" forValue="[F|T]"/>
  <ui:observe elementIds="race" component="${component}" forValue="^50" />
  <ui:unskip elementIds="racex" component="${component}"/> 
</ui:formGuide>

<ui:formGuide>
  <ui:ignore elementIds="packet" component="instrument" forValue="[F|T]"/>
  <ui:observe elementIds="raceSec" component="${component}" forValue="^50" />
  <ui:unskip elementIds="raceSecx" component="${component}"/> 
</ui:formGuide>

<ui:formGuide>
  <ui:ignore elementIds="packet" component="instrument" forValue="[F|T]"/>
  <ui:observe elementIds="raceTer" component="${component}" forValue="^50" />
  <ui:unskip elementIds="raceTerx" component="${component}"/> 
</ui:formGuide>

<ui:formGuide simulateEvents="${(current == 0 && componentView != 'compare') || (current == 1) ? 'true' : ''}">
  <ui:ignore elementIds="packet" component="instrument" forValue="[F|T]"/>
  <ui:observe elementIds="primLang" component="${component}" forValue="^8" />
  <ui:unskip elementIds="primLanx" component="${component}"/> 
</ui:formGuide>

  </c:if>
</c:forEach>
</c:if>

</page:applyDecorator>    
</page:applyDecorator>    
	    
