<%@ include file="/WEB-INF/jsp/includes/include.jsp" %>
<c:set var="instrTypeEncoded" value="udshachinski2"/>
<c:import url="/WEB-INF/jsp/crms/assessment/instrument/include.jsp">
	<c:param name="instrTypeEncoded" value="${instrTypeEncoded}"/>
</c:import>

<%-- instrument-specific focusField setting (include.jsp has common focusField settings) --%>
<c:choose>
	<c:when test="${componentView == 'doubleEnter' || componentView == 'compare'}">
		<c:set var="focusField" value="abrupt"/>
	</c:when>
</c:choose>	

<page:applyDecorator name="component.content">
  <page:param name="isInstrument">true</page:param> 
  <page:param name="component">${instrTypeEncoded}</page:param> 
  <page:param name="focusField">${focusField}</page:param>
  <page:param name="pageHeadingArgs">UDS Hachinski</page:param>
  <page:param name="quicklinks"> </page:param>
   
<page:applyDecorator name="component.instrument.content">
  <page:param name="instrTypeEncoded">${instrTypeEncoded}</page:param>
  <page:param name="view">${componentView}</page:param>

<c:import url="/WEB-INF/jsp/crms/assessment/instrument/udsCommon.jsp">
	<c:param name="entity" value="${instrTypeEncoded}"/>
	<c:param name="view" value="${componentView}"/>
	<c:param name="component" value="${component}"/>
</c:import>

<page:applyDecorator name="component.instrument.section">
  <page:param name="section"><spring:message code="udshachinski2.hachinski.section"/></page:param>
  <page:param name="view">${componentView}</page:param>
  <page:param name="instructions"> </page:param>
<tags:createField property="abrupt" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="stepwise" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="somatic" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="emot" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="hxHyper" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="hxStroke" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="foclSym" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="foclSign" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="hachin" entity="${instrTypeEncoded}" component="${component}"/>
</page:applyDecorator>

<page:applyDecorator name="component.instrument.section">
  <page:param name="section"><spring:message code="udshachinski2.cvd.section"/></page:param>
  <page:param name="view">${componentView}</page:param>
  <page:param name="instructions"> </page:param>
<tags:createField property="cvdCog" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="strokCog" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="cvdImag" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="cvdImagSingle" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="cvdImagMultiple" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="cvdImagExtensive" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="cvdImagOther" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="cvdImagOtherX" entity="${instrTypeEncoded}" component="${component}"/>
</page:applyDecorator>

<page:applyDecorator name="component.instrument.section">
	<page:param name="sectionId">anonymous</page:param>
	<page:param name="view">${componentView}</page:param>
	<page:param name="instructions"> </page:param>
	<tags:createField property="notes['udshachinski']" entity="${instrTypeEncoded}" component="${component}" metadataName="instrument.sectionNote" labelAlignment="top" dataStyle="instrNote"/>
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

<ui:formGuide>
  <ui:observe elementIds="cvdImag" component="${componentPrefix}" forValue="^1" comboRadioSelect="${componentMode == 'dc' ? 'true' : 'false'}"/>
  <ui:unskip elementIds="cvdImagSingle,cvdImagMultiple,cvdImagExtensive,cvdImagOther" component="${componentPrefix}" comboRadioSelect="${componentMode == 'dc' ? 'true' : 'false'}"/>
</ui:formGuide>
<ui:formGuide simulateEvents="${(current == 0 && componentView != 'compare') || (current == 1) ? 'true' : ''}">
  <ui:depends elementIds="cvdImag" component="${componentPrefix}" comboRadioSelect="${componentMode == 'dc' ? 'true' : 'false'}"/> 
  <ui:observe elementIds="cvdImagOther" component="${componentPrefix}" forValue="^1" comboRadioSelect="${componentMode == 'dc' ? 'true' : 'false'}"/>
  <ui:unskip elementIds="cvdImagOtherX" component="${componentPrefix}"/>
</ui:formGuide>

  </c:if>
</c:forEach>
</c:if>


</page:applyDecorator>    
</page:applyDecorator>