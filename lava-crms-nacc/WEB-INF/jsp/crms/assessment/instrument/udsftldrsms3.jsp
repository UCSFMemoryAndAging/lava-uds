<%@ include file="/WEB-INF/jsp/includes/include.jsp" %>
<c:set var="instrTypeEncoded" value="udsftldrsms3"/>
<c:import url="/WEB-INF/jsp/crms/assessment/instrument/include.jsp">
	<c:param name="instrTypeEncoded" value="${instrTypeEncoded}"/>
</c:import>

<%-- instrument-specific focusField setting (include.jsp has common focusField settings) --%>
<c:choose>
	<c:when test="${componentView == 'doubleEnter' || componentView == 'compare'}">
		<c:set var="focusField" value="ftdcpc6f"/>
	</c:when>
</c:choose>	

<page:applyDecorator name="component.content">
  <page:param name="isInstrument">true</page:param> 
  <page:param name="component">${instrTypeEncoded}</page:param> 
  <page:param name="focusField">${focusField}</page:param>
  <page:param name="pageHeadingArgs">UDS FTLD RSMS</page:param>
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
	<page:param name="section"><spring:message code="udsftldrsms3.main.section"/></page:param>
	<page:param name="view">${componentView}</page:param>
	<page:param name="instructions"> </page:param>

	<tags:createField property="ftdcpc6f" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdalter" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdemot" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdacros" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdconv" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdintui" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdjoke" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdimagp" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdinapp" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdchbeh" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdadbeh" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdlying" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdgoodf" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdregul" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdsmscr" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdspscr" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdrsmst" component="${component}" entity="${instrTypeEncoded}"/>
</page:applyDecorator>

</page:applyDecorator>    
</page:applyDecorator>    
	    
