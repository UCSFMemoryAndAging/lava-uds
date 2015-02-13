<%@ include file="/WEB-INF/jsp/includes/include.jsp" %>
<c:set var="instrTypeEncoded" value="udssubjectdemo3"/>
<c:set var="uds2MetadataEntity" value="udssubjectdemo2"/>

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
		<c:when test="${packetType == 'I'}">
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
<c:if test="${packetType == 'I'}">
	<tags:createField property="reason" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="referSc" component="${component}" optionsAlignment="groupTopVertical"/>
	<tags:createField property="learned" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="preStat" component="${component}" entity="${uds2MetadataEntity}"/>
	<tags:createField property="presPart" component="${component}" entity="${uds2MetadataEntity}"/>
	<tags:createField property="sourceNw" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="birthMo,birthYr" separator="/" component="${component}" entity="${uds2MetadataEntity}"/>
	<tags:createField property="sex" component="${component}" entity="${uds2MetadataEntity}"/>
	<tags:createField property="hispanic" component="${component}" entity="${uds2MetadataEntity}"/>
	<tags:createField property="hispOr" component="${component}" optionsAlignment="groupTopVertical" entity="${uds2MetadataEntity}"/>
	<tags:createField property="hispOrx" component="${component}" entity="${uds2MetadataEntity}"/>
	<tags:createField property="race" component="${component}" optionsAlignment="groupTopVertical" entity="${uds2MetadataEntity}"/>
	<tags:createField property="racex" component="${component}" entity="${uds2MetadataEntity}"/>
	<tags:createField property="raceSec" component="${component}" optionsAlignment="groupTopVertical" entity="${uds2MetadataEntity}"/>
	<tags:createField property="raceSecx" component="${component}" entity="${uds2MetadataEntity}"/>
	<tags:createField property="raceTer" component="${component}" optionsAlignment="groupTopVertical" entity="${uds2MetadataEntity}"/>
	<tags:createField property="raceTerx" component="${component}" entity="${uds2MetadataEntity}"/>
	<tags:createField property="primLang" component="${component}" entity="${uds2MetadataEntity}"/>
	<tags:createField property="primLanx" component="${component}" entity="${uds2MetadataEntity}"/>
	<tags:createField property="educ" component="${component}" entity="${uds2MetadataEntity}"/>
	<tags:createField property="mariStat" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="livSitua" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="independ" component="${component}" optionsAlignment="groupTopVertical" entity="${uds2MetadataEntity}"/>
	<tags:createField property="residenc" component="${component}" optionsAlignment="groupTopVertical" entity="${instrTypeEncoded}"/>
	<tags:createField property="zip" component="${component}" entity="${uds2MetadataEntity}"/>
	<tags:createField property="handed" component="${component}" entity="${uds2MetadataEntity}"/>
</c:if>

<c:if test="${packetType == 'F' || packetType == 'T'}">
	<tags:createField property="birthMo,birthYr" separator="/" component="${component}" entity="${uds2MetadataEntity}"/>
	<tags:createField property="mariStat" component="${component}"" entity="${instrTypeEncoded}"/>
	<tags:createField property="sex" component="${component}" entity="${uds2MetadataEntity}"/>
	<tags:createField property="livSitua" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="independ" component="${component}" optionsAlignment="groupTopVertical" entity="${uds2MetadataEntity}"/>
	<tags:createField property="residenc" component="${component}" optionsAlignment="groupTopVertical" entity="${instrTypeEncoded}"/>
	<tags:createField property="zip" component="${component}" entity="${uds2MetadataEntity}"/>
</c:if>

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

<ui:formGuide ignoreDoOnLoad="true">
    <ui:observe elementIds="instrument_packet" forValue=".+|^$"/>
    <ui:submitForm form="${instrTypeEncoded}" event="instrument__reRender"/>
</ui:formGuide>

<ui:formGuide>
  <ui:ignore elementIds="packet" component="instrument" forValue="[F|T]"/>
  <ui:observe elementIds="hispanic" component="${componentPrefix}" forValue="^1" comboRadioSelect="${componentMode == 'dc' ? 'true' : 'false'}"/>
  <ui:unskip elementIds="hispOr" component="${componentPrefix}"/> 
</ui:formGuide>

<ui:formGuide>
  <ui:ignore elementIds="packet" component="instrument" forValue="[F|T]"/>
  <ui:observe elementIds="hispOr" component="${componentPrefix}" forValue="^50" comboRadioSelect="${componentMode == 'dc' ? 'true' : 'false'}"/>
  <ui:unskip elementIds="hispOrx" component="${componentPrefix}"/> 
</ui:formGuide>

<ui:formGuide>
  <ui:ignore elementIds="packet" component="instrument" forValue="[F|T]"/>
  <ui:observe elementIds="race" component="${componentPrefix}" forValue="^50" comboRadioSelect="${componentMode == 'dc' ? 'true' : 'false'}"/>
  <ui:unskip elementIds="racex" component="${componentPrefix}"/> 
</ui:formGuide>

<ui:formGuide>
  <ui:ignore elementIds="packet" component="instrument" forValue="[F|T]"/>
  <ui:observe elementIds="raceSec" component="${componentPrefix}" forValue="^50" comboRadioSelect="${componentMode == 'dc' ? 'true' : 'false'}"/>
  <ui:unskip elementIds="raceSecx" component="${componentPrefix}"/> 
</ui:formGuide>

<ui:formGuide>
  <ui:ignore elementIds="packet" component="instrument" forValue="[F|T]"/>
  <ui:observe elementIds="raceTer" component="${componentPrefix}" forValue="^50" comboRadioSelect="${componentMode == 'dc' ? 'true' : 'false'}"/>
  <ui:unskip elementIds="raceTerx" component="${componentPrefix}"/> 
</ui:formGuide>

<ui:formGuide simulateEvents="${(current == 0 && componentView != 'compare') || (current == 1) ? 'true' : ''}">
  <ui:ignore elementIds="packet" component="instrument" forValue="[F|T]"/>
  <ui:observe elementIds="primLang" component="${componentPrefix}" forValue="^8" comboRadioSelect="${componentMode == 'dc' ? 'true' : 'false'}"/>
  <ui:unskip elementIds="primLanx" component="${componentPrefix}"/> 
</ui:formGuide>

  </c:if>
</c:forEach>
</c:if>

</page:applyDecorator>    
</page:applyDecorator>    
	    
