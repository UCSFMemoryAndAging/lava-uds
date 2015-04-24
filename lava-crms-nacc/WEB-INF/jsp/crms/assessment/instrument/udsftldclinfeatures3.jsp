<%@ include file="/WEB-INF/jsp/includes/include.jsp" %>
<c:set var="instrTypeEncoded" value="udsftldclinfeatures3"/>
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
  <page:param name="section"><spring:message code="udsftldclinfeatures3.ppa.section"/></page:param>
  <page:param name="view">${componentView}</page:param>
  <page:param name="instructions"> </page:param>
<tags:createField property="ftdppasl" component="${component}" entity="${instrTypeEncoded}"/>
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
  <page:param name="section"><spring:message code="udsftldclinfeatures3.bvftd.section"/></page:param>
  <page:param name="view">${componentView}</page:param>
  <page:param name="instructions"> </page:param>
  
<tags:createField property="ftdbvcln" component="${component}" entity="${instrTypeEncoded}"/>
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
  <ui:observe elementIds="ftdppasl" component="${component}" forValue="^0"/>
  <ui:skip elementIds="ftdppapo,ftdppaiw,ftdppasw,ftdppapk,ftdppags,ftdppaeh,ftdppacs,ftdppass,ftdppasr,ftdppasd" component="${component}"/>
  <ui:disable elementIds="ftdcppa" component="${component}"/>
  <ui:setValue elementIds="ftdcppa" value="0" component="${component}"/>
</ui:formGuide>

<ui:formGuide>
  <ui:depends elementIds="ftdppasl" component="${component}"/>
  <ui:observe elementIds="ftdcppa" component="${component}" forValue="^0"/>
  <ui:skip elementIds="ftdcppas" component="${component}"/>
</ui:formGuide>

<ui:formGuide>
  <ui:observe elementIds="ftdbvcln" component="${component}" forValue="^0"/>
  <ui:skip elementIds="ftdbvdis,ftdbvapa,ftdbvlos,ftdbvrit,ftdbvhyp,ftdbvneu,ftdbvidl,ftdbvft" component="${component}"/>
</ui:formGuide>

<ui:formGuide>
  <ui:observe elementIds="ftdemgpv" component="${component}" forValue="^1"/>
  <ui:skip elementIds="ftdemgpy" component="${component}"/>
</ui:formGuide>

<ui:formGuide simulateEvents="${(current == 0 && componentView != 'compare') || (current == 1) ? 'true' : ''}">
  <ui:depends elementIds="ftdemgpv" component="${component}"/>
  <ui:observe elementIds="ftdemgpy" component="${component}" forValue="^0"/>
  <ui:skip elementIds="ftdemgmn" component="${component}"/>
</ui:formGuide>


  </c:if>
</c:forEach>
</c:if>

</page:applyDecorator>    
</page:applyDecorator>    
	    
