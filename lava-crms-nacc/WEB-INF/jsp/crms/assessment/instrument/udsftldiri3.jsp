<%@ include file="/WEB-INF/jsp/includes/include.jsp" %>
<c:set var="instrTypeEncoded" value="udsftldiri3"/>
<c:import url="/WEB-INF/jsp/crms/assessment/instrument/include.jsp">
	<c:param name="instrTypeEncoded" value="${instrTypeEncoded}"/>
</c:import>

<%-- instrument-specific focusField setting (include.jsp has common focusField settings) --%>
<c:choose>
	<c:when test="${componentView == 'doubleEnter' || componentView == 'compare'}">
		<c:set var="focusField" value="ftdcpc5f"/>
	</c:when>
</c:choose>	

<page:applyDecorator name="component.content">
  <page:param name="isInstrument">true</page:param> 
  <page:param name="component">${instrTypeEncoded}</page:param> 
  <page:param name="focusField">${focusField}</page:param>
  <page:param name="pageHeadingArgs">UDS FTLD IRI</page:param>
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
	<page:param name="section"><spring:message code="udsftldiri3.main.section"/></page:param>
	<page:param name="view">${componentView}</page:param>
	<page:param name="instructions"> </page:param>

	<tags:createField property="ftdcpc5f" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdinsex" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdinfmo" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdinfyr" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdinfre" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdfeel" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftddiff" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdsorr" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdside" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdadvan" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdimag" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdmisf" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdwaste" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdpity" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdqtouc" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdsides" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdsofth" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdupset" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdcriti" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdiriec" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdiript" component="${component}" entity="${instrTypeEncoded}"/>
</page:applyDecorator>

</page:applyDecorator>    
</page:applyDecorator>    
	    
