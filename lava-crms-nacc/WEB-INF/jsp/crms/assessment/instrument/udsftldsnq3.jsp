<%@ include file="/WEB-INF/jsp/includes/include.jsp" %>
<c:set var="instrTypeEncoded" value="udsftldsnq3"/>
<c:import url="/WEB-INF/jsp/crms/assessment/instrument/include.jsp">
	<c:param name="instrTypeEncoded" value="${instrTypeEncoded}"/>
</c:import>

<%-- instrument-specific focusField setting (include.jsp has common focusField settings) --%>
<c:choose>
	<c:when test="${componentView == 'doubleEnter' || componentView == 'compare'}">
		<c:set var="focusField" value="ftdcpc2f"/>
	</c:when>
</c:choose>	

<page:applyDecorator name="component.content">
  <page:param name="isInstrument">true</page:param> 
  <page:param name="component">${instrTypeEncoded}</page:param> 
  <page:param name="focusField">${focusField}</page:param>
  <page:param name="pageHeadingArgs">UDS FTLD SNQ</page:param>
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
	<page:param name="section"><spring:message code="udsftldsnq3.main.section"/></page:param>
	<page:param name="view">${componentView}</page:param>
	<page:param name="instructions"> </page:param>

	<tags:createField property="ftdcpc2f" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdhaird" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdspit" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdnose" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdcoage" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdcry" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdcut" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdytrip" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdeatp" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdtella" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdopin" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdlaugh" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdshirt" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdkeepm" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdpickn" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdover" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdeatr" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdhairl" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdshirw" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdmove" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdhugs" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdloud" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdlost" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdsntot" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdsntbs" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdsntos" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdsnrat" component="${component}" entity="${instrTypeEncoded}"/>
</page:applyDecorator>

</page:applyDecorator>    
</page:applyDecorator>    
	    
