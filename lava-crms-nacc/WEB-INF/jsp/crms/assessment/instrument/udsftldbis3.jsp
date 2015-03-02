<%@ include file="/WEB-INF/jsp/includes/include.jsp" %>
<c:set var="instrTypeEncoded" value="udsftldbis3"/>
<c:import url="/WEB-INF/jsp/crms/assessment/instrument/include.jsp">
	<c:param name="instrTypeEncoded" value="${instrTypeEncoded}"/>
</c:import>

<%-- instrument-specific focusField setting (include.jsp has common focusField settings) --%>
<c:choose>
	<c:when test="${componentView == 'doubleEnter' || componentView == 'compare'}">
		<c:set var="focusField" value="ftdcpc4f"/>
	</c:when>
</c:choose>	

<page:applyDecorator name="component.content">
  <page:param name="isInstrument">true</page:param> 
  <page:param name="component">${instrTypeEncoded}</page:param> 
  <page:param name="focusField">${focusField}</page:param>
  <page:param name="pageHeadingArgs">UDS FTLD BIS</page:param>
  <page:param name="quicklinks"></page:param>
   
<page:applyDecorator name="component.instrument.content">
  <page:param name="instrTypeEncoded">${instrTypeEncoded}</page:param>
  <page:param name="view">${componentView}</page:param>

<c:import url="/WEB-INF/jsp/crms/assessment/instrument/udsCommon.jsp">
	<c:param name="entity" value="${instrTypeEncoded}"/>
	<c:param name="view" value="${componentView}"/>
	<c:param name="component" value="${component}"/>
</c:import>

<page:applyDecorator name="component.instrument.section">
	<page:param name="section"><spring:message code="udsftldbis3.main.section"/></page:param>
	<page:param name="view">${componentView}</page:param>
	<page:param name="instructions"> </page:param>

	<tags:createField property="ftdcpc4f" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdworku" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdmist" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdcrit" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdworr" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdbad" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdpoor" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdffear" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdbist" component="${component}" entity="${instrTypeEncoded}"/>
</page:applyDecorator>

</page:applyDecorator>    
</page:applyDecorator>    
	    
