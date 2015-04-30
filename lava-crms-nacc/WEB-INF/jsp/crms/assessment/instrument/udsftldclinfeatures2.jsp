<%@ include file="/WEB-INF/jsp/includes/include.jsp" %>
<c:set var="instrTypeEncoded" value="udsftldclinfeatures2"/>
<c:import url="/WEB-INF/jsp/crms/assessment/instrument/include.jsp">
	<c:param name="instrTypeEncoded" value="${instrTypeEncoded}"/>
</c:import>

<%-- instrument-specific focusField setting (include.jsp has common focusField settings) --%>
<c:choose>
	<c:when test="${componentView == 'doubleEnter' || componentView == 'compare'}">
		<c:set var="focusField" value="ftdppasl"/>
	</c:when>
</c:choose>	

<page:applyDecorator name="component.content">
  <page:param name="isInstrument">true</page:param> 
  <page:param name="component">${instrTypeEncoded}</page:param> 
  <page:param name="focusField">${focusField}</page:param>
  <page:param name="pageHeadingArgs">UDS FTLD Clinical Features</page:param>
  <page:param name="quicklinks">ppa,bvftd</page:param>
   
<page:applyDecorator name="component.instrument.content">
  <page:param name="instrTypeEncoded">${instrTypeEncoded}</page:param>
  <page:param name="view">${componentView}</page:param>

<c:import url="/WEB-INF/jsp/crms/assessment/instrument/udsCommon.jsp">
	<c:param name="entity" value="${instrTypeEncoded}"/>
	<c:param name="view" value="${componentView}"/>
	<c:param name="component" value="${component}"/>
</c:import>

<tags:sectionQuicklink requestUrl="${requestUrl}" sectionId="top" sourceSectionId="ppa" linkTextKey="top.quicklink"/>
<page:applyDecorator name="component.instrument.section">
  <page:param name="section"><spring:message code="udsftldclinfeatures2.ppa.section"/></page:param>
  <page:param name="view">${componentView}</page:param>
  <page:param name="instructions"> </page:param>
<tags:createField property="ftdppasl" component="${component}" entity="${instrTypeEncoded}"/>
<tags:outputText textKey="udsftldclinfeatures2.ftdppasl.instructions" inline="false" associated="true"/>
<tags:createField property="ftdppapo" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="ftdppaiw" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="ftdppasw" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="ftdppapk" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="ftdppags" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="ftdppaeh" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="ftdppacs" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="ftdppass" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="ftdppasr" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="ftdppasd" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="ftdcppa" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="ftdcppas" component="${component}" entity="${instrTypeEncoded}"/>
</page:applyDecorator>

<tags:sectionQuicklink requestUrl="${requestUrl}" sectionId="top" sourceSectionId="bvftd" linkTextKey="top.quicklink"/>
<page:applyDecorator name="component.instrument.section">
  <page:param name="section"><spring:message code="udsftldclinfeatures2.bvftd.section"/></page:param>
  <page:param name="view">${componentView}</page:param>
  <page:param name="instructions"> </page:param>
  
<tags:createField property="ftdbvcln" component="${component}" entity="${instrTypeEncoded}"/>
<tags:outputText textKey="udsftldclinfeatures2.ftdbvcln.instructions" inline="false" associated="true"/>
<tags:createField property="ftdbvdis" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="ftdbvapa" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="ftdbvlos" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="ftdbvrit" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="ftdbvhyp" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="ftdbvneu" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="ftdbvidl" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="ftdbvft" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="ftdemgpv" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="ftdemgpy" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="ftdemgmn" component="${component}" entity="${instrTypeEncoded}"/>
<tags:createField property="ftdpabvf" component="${component}" entity="${instrTypeEncoded}"/>
</page:applyDecorator>

<page:applyDecorator name="component.instrument.section">
	<page:param name="sectionId">anonymous</page:param>
	<page:param name="view">${componentView}</page:param>
	<page:param name="instructions"> </page:param>
	<tags:createField property="notes['udsftldclinfeatures2']" entity="${instrTypeEncoded}" component="${component}" metadataName="instrument.sectionNote" labelAlignment="top" dataStyle="instrNote"/>
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
  <ui:observe elementIds="ftdppasl" component="${componentPrefix}" forValue="^0" comboRadioSelect="${componentMode == 'dc' ? 'true' : 'false'}"/>
  <ui:disable elementIds="ftdppapo,ftdppaiw,ftdppasw,ftdppapk,ftdppags,ftdppaeh,ftdppacs,ftdppass,ftdppasr,ftdppasd,ftdcppa" component="${componentPrefix}"/>
  <ui:setValue elementIds="ftdppapo,ftdppaiw,ftdppasw,ftdppapk,ftdppags,ftdppaeh,ftdppacs,ftdppass,ftdppasr,ftdppasd,ftdcppa" value="0" component="${componentPrefix}"/>
  <ui:disable elementIds="ftdcppas" component="${componentPrefix}"/>
  <ui:setValue elementIds="ftdcppas" value="-6" component="${componentPrefix}"/>
</ui:formGuide>

<ui:formGuide>
  <ui:observe elementIds="ftdcppa" component="${componentPrefix}" forValue="^0" comboRadioSelect="${componentMode == 'dc' ? 'true' : 'false'}"/>
  <ui:skip elementIds="ftdcppas" component="${componentPrefix}"/>
</ui:formGuide>

<ui:formGuide>
  <ui:observe elementIds="ftdbvcln" component="${componentPrefix}" forValue="^0" comboRadioSelect="${componentMode == 'dc' ? 'true' : 'false'}"/>
  <ui:disable elementIds="ftdbvdis,ftdbvapa,ftdbvlos,ftdbvrit,ftdbvhyp,ftdbvneu,ftdbvidl,ftdbvft" component="${componentPrefix}"/>
  <ui:setValue elementIds="ftdbvdis,ftdbvapa,ftdbvlos,ftdbvrit,ftdbvhyp,ftdbvneu,ftdbvidl,ftdbvft" value="0" component="${componentPrefix}"/>
</ui:formGuide>

<ui:formGuide>
  <ui:observe elementIds="ftdemgpv" component="${componentPrefix}" forValue="^1" comboRadioSelect="${componentMode == 'dc' ? 'true' : 'false'}"/>
  <ui:skip elementIds="ftdemgpy" component="${componentPrefix}"/>
</ui:formGuide>

<ui:formGuide simulateEvents="${(current == 0 && componentView != 'compare') || (current == 1) ? 'true' : ''}">
  <ui:depends elementIds="ftdemgpv" component="${componentPrefix}"/>
  <ui:observe elementIds="ftdemgpy" component="${componentPrefix}" forValue="^0" comboRadioSelect="${componentMode == 'dc' ? 'true' : 'false'}"/>
  <ui:skip elementIds="ftdemgmn" component="${componentPrefix}"/>
</ui:formGuide>


  </c:if>
</c:forEach>
</c:if>

</page:applyDecorator>    
</page:applyDecorator>    
	    
