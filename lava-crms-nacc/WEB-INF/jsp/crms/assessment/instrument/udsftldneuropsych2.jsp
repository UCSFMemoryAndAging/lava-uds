<%@ include file="/WEB-INF/jsp/includes/include.jsp" %>
<c:set var="instrTypeEncoded" value="udsftldneuropsych2"/>
<c:import url="/WEB-INF/jsp/crms/assessment/instrument/include.jsp">
	<c:param name="instrTypeEncoded" value="${instrTypeEncoded}"/>
</c:import>

<%-- instrument-specific focusField setting (include.jsp has common focusField settings) --%>
<c:choose>
	<c:when test="${componentView == 'doubleEnter' || componentView == 'compare'}">
		<c:set var="focusField" value="ftdbentc"/>
	</c:when>
</c:choose>	

<page:applyDecorator name="component.content">
  <page:param name="isInstrument">true</page:param> 
  <page:param name="component">${instrTypeEncoded}</page:param> 
  <page:param name="focusField">${focusField}</page:param>
  <page:param name="pageHeadingArgs">UDS FTLD Neuropsych</page:param>
  <page:param name="quicklinks">test1,test2,test3,test4,test5,test6,test7,test8,test9,test10</page:param>
   
<page:applyDecorator name="component.instrument.content">
  <page:param name="instrTypeEncoded">${instrTypeEncoded}</page:param>
  <page:param name="view">${componentView}</page:param>

<c:import url="/WEB-INF/jsp/crms/assessment/instrument/udsCommon.jsp">
	<c:param name="entity" value="${instrTypeEncoded}"/>
	<c:param name="view" value="${componentView}"/>
	<c:param name="component" value="${component}"/>
</c:import>

<page:applyDecorator name="component.instrument.section">
	<page:param name="section"><spring:message code="udsftldneuropsych2.test1.section"/></page:param>
	<page:param name="view">${componentView}</page:param>
	<page:param name="instructions"> </page:param>
	
	<tags:createField property="ftdbentc" component="${component}" entity="${instrTypeEncoded}"/>
</page:applyDecorator>
	
<page:applyDecorator name="component.instrument.section">
	<page:param name="section"><spring:message code="udsftldneuropsych2.test2.section"/></page:param>
	<page:param name="view">${componentView}</page:param>
	<page:param name="instructions"> </page:param>
	<tags:createField property="ftdverfc" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdverfn" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdvernf" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdverlc" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdverlr" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdverln" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdvertn" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdverte" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdverti" component="${component}" entity="${instrTypeEncoded}"/>
</page:applyDecorator>
	
<page:applyDecorator name="component.instrument.section">
	<page:param name="section"><spring:message code="udsftldneuropsych2.test3.section"/></page:param>
	<page:param name="view">${componentView}</page:param>
	<page:param name="instructions"> </page:param>		
	<tags:createField property="ftdworrc" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdworrs" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdworrr" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdworic" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdworis" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdworir" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdworip" component="${component}" entity="${instrTypeEncoded}"/>
</page:applyDecorator>
	
<page:applyDecorator name="component.instrument.section">
	<page:param name="section"><spring:message code="udsftldneuropsych2.test4.section"/></page:param>
	<page:param name="view">${componentView}</page:param>
	<page:param name="instructions"> </page:param>		
	<tags:createField property="ftdbentd" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdbenrs" component="${component}" entity="${instrTypeEncoded}"/>
</page:applyDecorator>
	
<page:applyDecorator name="component.instrument.section">
	<page:param name="section"><spring:message code="udsftldneuropsych2.test5.section"/></page:param>
	<page:param name="view">${componentView}</page:param>
	<page:param name="instructions"> </page:param>		
	<tags:createField property="ftdsemmt" component="${component}" entity="${instrTypeEncoded}"/>
</page:applyDecorator>
	
<page:applyDecorator name="component.instrument.section">
	<page:param name="section"><spring:message code="udsftldneuropsych2.test6.section"/></page:param>
	<page:param name="view">${componentView}</page:param>
	<page:param name="instructions"> </page:param>		
	<tags:createField property="ftdsemaa" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdsemta" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdsemsu" component="${component}" entity="${instrTypeEncoded}"/>
</page:applyDecorator>
	
<page:applyDecorator name="component.instrument.section">
	<page:param name="section"><spring:message code="udsftldneuropsych2.test7.section"/></page:param>
	<page:param name="view">${componentView}</page:param>
	<page:param name="instructions"> </page:param>		
	<tags:createField property="ftdanasw" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdanaow" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdanats" component="${component}" entity="${instrTypeEncoded}"/>
</page:applyDecorator>
	
<page:applyDecorator name="component.instrument.section">
	<page:param name="section"><spring:message code="udsftldneuropsych2.test8.section"/></page:param>
	<page:param name="view">${componentView}</page:param>
	<page:param name="instructions"> </page:param>		
	<tags:createField property="ftdsenas" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdsenos" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdsensr" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdsenpr" component="${component}" entity="${instrTypeEncoded}"/>
</page:applyDecorator>
	
<page:applyDecorator name="component.instrument.section">
	<page:param name="section"><spring:message code="udsftldneuropsych2.test9.section"/></page:param>
	<page:param name="view">${componentView}</page:param>
	<page:param name="instructions"> </page:param>		
	<tags:createField property="ftdnounc" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdverbc" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdratio" component="${component}" entity="${instrTypeEncoded}"/>
</page:applyDecorator>
	
<page:applyDecorator name="component.instrument.section">
	<page:param name="section"><spring:message code="udsftldneuropsych2.test10.section"/></page:param>
	<page:param name="view">${componentView}</page:param>
	<page:param name="instructions"> </page:param>		
	<tags:createField property="ftdreaas" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdreaos" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdreasr" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdreapr" component="${component}" entity="${instrTypeEncoded}"/>
</page:applyDecorator>

<page:applyDecorator name="component.instrument.section">
	<page:param name="sectionId">anonymous</page:param>
	<page:param name="view">${componentView}</page:param>
	<page:param name="instructions"> </page:param>
	<tags:createField property="notes['udsftldneuropsych2']" entity="${instrTypeEncoded}" component="${component}" metadataName="instrument.sectionNote" labelAlignment="top" dataStyle="instrNote"/>
</page:applyDecorator>

</page:applyDecorator>    
</page:applyDecorator>    
	    
