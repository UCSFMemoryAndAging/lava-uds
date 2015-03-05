<%@ include file="/WEB-INF/jsp/includes/include.jsp" %>
<c:set var="instrTypeEncoded" value="udsftldneuropsych3"/>
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
  <page:param name="quicklinks">test1,test2,test3,test4,test5,test6,test7</page:param>
   
<page:applyDecorator name="component.instrument.content">
  <page:param name="instrTypeEncoded">${instrTypeEncoded}</page:param>
  <page:param name="view">${componentView}</page:param>

<c:import url="/WEB-INF/jsp/crms/assessment/instrument/udsCommon.jsp">
	<c:param name="entity" value="${instrTypeEncoded}"/>
	<c:param name="view" value="${componentView}"/>
	<c:param name="component" value="${component}"/>
</c:import>

<page:applyDecorator name="component.instrument.section">
	<page:param name="section"><spring:message code="udsftldneuropsych3.test1.section"/></page:param>
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
	<page:param name="section"><spring:message code="udsftldneuropsych3.test2.section"/></page:param>
	<page:param name="view">${componentView}</page:param>
	<page:param name="instructions"> </page:param>		
	<tags:createField property="ftdsemmt" component="${component}" entity="${instrTypeEncoded}"/>
</page:applyDecorator>
	
<page:applyDecorator name="component.instrument.section">
	<page:param name="section"><spring:message code="udsftldneuropsych3.test3.section"/></page:param>
	<page:param name="view">${componentView}</page:param>
	<page:param name="instructions"> </page:param>		
	<tags:createField property="ftdsemaa" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdsemta" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdsemsu" component="${component}" entity="${instrTypeEncoded}"/>
</page:applyDecorator>
	
<page:applyDecorator name="component.instrument.section">
	<page:param name="section"><spring:message code="udsftldneuropsych3.test4.section"/></page:param>
	<page:param name="view">${componentView}</page:param>
	<page:param name="instructions"> </page:param>		
	<tags:createField property="ftdanasw" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdanaow" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdanats" component="${component}" entity="${instrTypeEncoded}"/>
</page:applyDecorator>
	
<page:applyDecorator name="component.instrument.section">
	<page:param name="section"><spring:message code="udsftldneuropsych3.test5.section"/></page:param>
	<page:param name="view">${componentView}</page:param>
	<page:param name="instructions"> </page:param>		
	<tags:createField property="ftdsenas" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdsenos" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdsensr" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdsenpr" component="${component}" entity="${instrTypeEncoded}"/>
</page:applyDecorator>
	
<page:applyDecorator name="component.instrument.section">
	<page:param name="section"><spring:message code="udsftldneuropsych3.test6.section"/></page:param>
	<page:param name="view">${componentView}</page:param>
	<page:param name="instructions"> </page:param>		
	<tags:createField property="ftdnounc" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdverbc" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdratio" component="${component}" entity="${instrTypeEncoded}"/>
</page:applyDecorator>
	
<page:applyDecorator name="component.instrument.section">
	<page:param name="section"><spring:message code="udsftldneuropsych3.test7.section"/></page:param>
	<page:param name="view">${componentView}</page:param>
	<page:param name="instructions"> </page:param>		
	<tags:createField property="ftdreaas" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdreaos" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdreasr" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdreapr" component="${component}" entity="${instrTypeEncoded}"/>
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
  <ui:observe elementIds="ftdworrc" component="${component}" forValue="^-[1-9]|^9[5-8]"/>
  <ui:skip elementIds="ftdworrs,ftdworrr,ftdworic,ftdworis,ftdworir,ftdworip" component="${component}"/>
</ui:formGuide>

<ui:formGuide>
  <ui:observe elementIds="ftdsemaa" component="${component}" forValue="^-[1-9]|^9[5-8]"/>
  <ui:skip elementIds="ftdsemta" component="${component}"/>
</ui:formGuide>

<ui:formGuide>
  <ui:observe elementIds="ftdanasw" component="${component}" forValue="^-[1-9]|^9[5-8]"/>
  <ui:skip elementIds="ftdanaow" component="${component}"/>
</ui:formGuide>

<ui:formGuide>
  <ui:observe elementIds="ftdsenas" component="${component}" forValue="^-[1-9]|^9[5-8]"/>
  <ui:skip elementIds="ftdsenos,ftdsensr,ftdsenpr" component="${component}"/>
</ui:formGuide>

<%-- cannot set ftdratio to 88.88 if cannot calculate because it is disabled --%>

<ui:formGuide simulateEvents="${(current == 0 && componentView != 'compare') || (current == 1) ? 'true' : ''}">
  <ui:observe elementIds="ftdreaas" component="${component}" forValue="^-[1-9]|^9[5-8]"/>
  <ui:skip elementIds="ftdreaos,ftdreasr,ftdreapr" component="${component}"/>
</ui:formGuide>


  </c:if>
</c:forEach>
</c:if>


</page:applyDecorator>    
</page:applyDecorator>    
	    
