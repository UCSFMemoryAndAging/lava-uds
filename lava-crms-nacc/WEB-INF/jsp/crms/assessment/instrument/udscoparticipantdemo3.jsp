<%@ include file="/WEB-INF/jsp/includes/include.jsp" %>
<c:set var="instrTypeEncoded" value="udscoparticipantdemo3"/>
<c:import url="/WEB-INF/jsp/crms/assessment/instrument/include.jsp">
	<c:param name="instrTypeEncoded" value="${instrTypeEncoded}"/>
</c:import>
<c:set var="entity" value="${instrTypeEncoded}"/>
<c:set var="packetType">
	<tags:componentProperty component="instrument" property="packet"/>
</c:set>
<c:if test="${packetType == 'F' || packetType == 'T'}">
	<c:set var="entity" value="followup.${instrTypeEncoded}"/>
</c:if>

<%-- instrument-specific focusField setting (include.jsp has common focusField settings) --%>
<c:choose>
	<c:when test="${componentView == 'doubleEnter' || componentView == 'compare'}">
		<c:set var="focusField" value="inBirMo"/>
	</c:when>
</c:choose>	

<page:applyDecorator name="component.content">
  <page:param name="isInstrument">true</page:param> 
  <page:param name="component">${instrTypeEncoded}</page:param> 
  <page:param name="focusField">${focusField}</page:param>
  <page:param name="pageHeadingArgs">UDS Co-Participant Demographics</page:param>
  <page:param name="quicklinks"> </page:param>
   
<page:applyDecorator name="component.instrument.content">
  <page:param name="instrTypeEncoded">${instrTypeEncoded}</page:param>
  <page:param name="view">${componentView}</page:param>

<c:import url="/WEB-INF/jsp/crms/assessment/instrument/udsCommon.jsp">
	<c:param name="entity" value="${instrTypeEncoded}"/>
	<c:param name="view" value="${componentView}"/>
	<c:param name="component" value="${component}"/>
	<c:param name="followUpCheckbox" value="true"/>
</c:import>

<page:applyDecorator name="component.instrument.section">
  <page:param name="section"><spring:message code="udsinformantdemo2.informantDemo.section"/></page:param>
  <page:param name="view">${componentView}</page:param>
  <page:param name="instructions"> </page:param>

<tags:createField property="inBirMo,inBirYr" separator="/" entity="${entity}" component="${component}"/>
<tags:createField property="inSex" entity="${entity}" component="${component}"/>
<%-- the metadata hides the following on the initial visit form since it is only for follow up visits --%>
<tags:createField property="newInf" entity="${entity}" component="${component}"/>
<tags:createField property="inHisp" entity="${entity}" component="${component}"/>
<tags:createField property="inHispOr" entity="${entity}" component="${component}" optionsAlignment="groupTopVertical"/>
<tags:createField property="inHispOx" entity="${entity}" component="${component}"/>
<tags:createField property="inRace" entity="${entity}" component="${component}" optionsAlignment="groupTopVertical"/>
<tags:createField property="inRacex" entity="${entity}" component="${component}"/>
<tags:createField property="inRaSec" entity="${entity}" component="${component}" optionsAlignment="groupTopVertical"/>
<tags:createField property="inRaSecx" entity="${entity}" component="${component}"/>
<tags:createField property="inRaTer" entity="${entity}" component="${component}" optionsAlignment="groupTopVertical"/>
<tags:createField property="inRaTerx" entity="${entity}" component="${component}"/>
<tags:createField property="inEduc" entity="${entity}" component="${component}" labelAlignment="${componentMode == 'dc' ? 'top' :''}"/>
<tags:createField property="inRelTo" entity="${entity}" component="${component}"/>
<tags:createField property="inKnown" entity="${entity}" component="${component}"/>
<tags:createField property="inLivWth" entity="${entity}" component="${component}"/>
<tags:createField property="inVisits" entity="${entity}" component="${component}"/>
<tags:createField property="inCalls" entity="${entity}" component="${component}"/>
<tags:createField property="inRely" entity="${entity}" component="${component}"/>
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

<%-- different metadata for initial and follow up visits so have to reload page when change packet. e.g. item
numbers are different and follow up has an additional variable (so the initial visit metadata for this variable
gives it style hidden) --%>
<ui:formGuide ignoreDoOnLoad="true">
    <ui:observe elementIds="instrument_packet" forValue=".+|^$"/>
    <ui:submitForm form="${instrTypeEncoded}" event="instrument__reRender"/>
</ui:formGuide>

<ui:formGuide>
  <ui:observe elementIds="packet" component="instrument" forValue="[F|T]"/>
  <ui:unskip elementIds="newInf" component="${component}" 
</ui:formGuide>
<ui:formGuide>
  <ui:ignore elementIds="packet" component="instrument" forValue="[F|T]"/>
  <%-- when followUp unchecked --%>
  <ui:unskip elementIds="inHisp,inHispOr,inRace,inRaSec,inRaTer,inEduc" component="${component}" 
</ui:formGuide>
<ui:formGuide>
  <ui:ignore elementIds="packet" component="instrument" forValue="I"/>
  <ui:observe elementIds="newInf" component="${component}" forValue="^1"
  <%-- when followUp checked and newInf Yes --%>
  <ui:unskip elementIds="inHisp,inHispOr,inRace,inRaSec,inRaTer,inEduc" component="${component}" 
</ui:formGuide>
<ui:formGuide>
  <ui:depends elementIds="packet" component="instrument"/>
  <ui:depends elementIds="newInf" component="${component}"
  <ui:observe elementIds="inHisp" component="${component}" forValue="^1"
  <ui:unskip elementIds="inHispOr" component="${component}" 
</ui:formGuide>
<ui:formGuide>
  <ui:depends elementIds="packet" component="instrument"/>
  <ui:depends elementIds="newInf" component="${component}"
  <ui:observe elementIds="inHispOr" component="${component}" forValue="^50"
  <ui:unskip elementIds="inHispOx" component="${component}"/> 
</ui:formGuide>
<ui:formGuide>
  <ui:depends elementIds="packet" component="instrument"/>
  <ui:depends elementIds="newInf" component="${component}"
  <ui:observe elementIds="inRace" component="${component}" forValue="^50"
  <ui:unskip elementIds="inRacex" component="${component}"/> 
</ui:formGuide>
<ui:formGuide>
  <ui:depends elementIds="packet" component="instrument"/>
  <ui:depends elementIds="newInf" component="${component}"
  <ui:observe elementIds="inRaSec" component="${component}" forValue="^50"
  <ui:unskip elementIds="inRaSecx" component="${component}"/> 
</ui:formGuide>
<ui:formGuide>
  <ui:depends elementIds="packet" component="instrument"/>
  <ui:depends elementIds="newInf" component="${component}"
  <ui:observe elementIds="inRaTer" component="${component}" forValue="^50"
  <ui:unskip elementIds="inRaTerx" component="${component}"/> 
</ui:formGuide>
<ui:formGuide simulateEvents="${(current == 0 && componentView != 'compare') || (current == 1) ? 'true' : ''}">
  <ui:depends elementIds="packet" component="instrument"/>
  <ui:observe elementIds="inLivWth" component="${component}" forValue="^0"
  <ui:unskip elementIds="inVisits,inCalls" component="${component}"/> 
</ui:formGuide>
  </c:if>
</c:forEach>
</c:if>

</page:applyDecorator>    
</page:applyDecorator>    
	    
