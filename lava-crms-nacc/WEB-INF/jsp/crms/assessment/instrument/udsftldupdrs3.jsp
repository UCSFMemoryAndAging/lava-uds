<%@ include file="/WEB-INF/jsp/includes/include.jsp" %>
<c:set var="instrTypeEncoded" value="udsftldupdrs3"/>
<c:import url="/WEB-INF/jsp/crms/assessment/instrument/include.jsp">
	<c:param name="instrTypeEncoded" value="${instrTypeEncoded}"/>
</c:import>

<%-- instrument-specific focusField setting (include.jsp has common focusField settings) --%>
<c:choose>
	<c:when test="${componentView == 'doubleEnter' || componentView == 'compare'}">
		<c:set var="focusField" value="ftdltfas"/>
	</c:when>
</c:choose>	

<page:applyDecorator name="component.content">
  <page:param name="isInstrument">true</page:param> 
  <page:param name="component">${instrTypeEncoded}</page:param> 
  <page:param name="focusField">${focusField}</page:param>
  <page:param name="pageHeadingArgs">UDS FTLD UPDRS</page:param>
  <page:param name="quicklinks">sectiona,sectionb</page:param>
   
<page:applyDecorator name="component.instrument.content">
  <page:param name="instrTypeEncoded">${instrTypeEncoded}</page:param>
  <page:param name="view">${componentView}</page:param>

<c:import url="/WEB-INF/jsp/crms/assessment/instrument/udsCommon.jsp">
	<c:param name="entity" value="${instrTypeEncoded}"/>
	<c:param name="view" value="${componentView}"/>
	<c:param name="component" value="${component}"/>
</c:import>

<page:applyDecorator name="component.instrument.section">
  <page:param name="section"><spring:message code="udsftldupdrs3.sectiona.section"/></page:param>
  <page:param name="view">${componentView}</page:param>
  <page:param name="instructions"> </page:param>
<tags:createField property="ftdltfas" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="ftdlimb" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="ftdbulb" component="${component}" entity="${instrTypeEncoded}"/>
</page:applyDecorator>

<page:applyDecorator name="component.instrument.section">
  <page:param name="section"><spring:message code="udsftldupdrs3.sectionb.section"/></page:param>
  <page:param name="view">${componentView}</page:param>
  <page:param name="instructions"> </page:param>
<tags:createField property="ftdgsev" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="ftdgsevx" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="ftdgtyp" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="ftdgtypg" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="ftdgtypx" component="${component}" entity="${instrTypeEncoded}"/>
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
  <ui:observe elementIds="ftdgsev" component="${component}" forValue="^8"/>
  <ui:unskip elementIds="ftdgsevx" component="${component}"/>
</ui:formGuide>
<ui:formGuide>
  <ui:observe elementIds="ftdgtyp" component="${component}" forValue="^7"/>
  <ui:unskip elementIds="ftdgtypg" component="${component}"/>
</ui:formGuide>
<ui:formGuide simulateEvents="${(current == 0 && componentView != 'compare') || (current == 1) ? 'true' : ''}">
  <ui:observe elementIds="ftdgtyp" component="${component}" forValue="^8"/>
  <ui:unskip elementIds="ftdgtypx" component="${component}"/>
</ui:formGuide>

  </c:if>
</c:forEach>
</c:if>

</page:applyDecorator>    
</page:applyDecorator>    
	    
