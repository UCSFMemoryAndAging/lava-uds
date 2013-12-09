<%@ include file="/WEB-INF/jsp/includes/include.jsp" %>

<c:set var="component">${param.component}</c:set>
<c:set var="componentView">${param.view}</c:set>
<c:set var="instrTypeEncoded">${param.entity}</c:set>
<c:set var="instrMode">${param.instrMode}</c:set>

component=${component}
cview=${componentView}
ite=${instrTypeEncoded}
modeA=${instrMode}

<page:applyDecorator name="component.instrument.section">
  <page:param name="section"><spring:message code="${instrTypeEncoded}${param.alternateLanguage}.pageTitle"/></page:param>
  <page:param name="view">${componentView}</page:param>
  <page:param name="instructions"> </page:param>
<tags:contentColumn columnClass="colLeft2Col5050">
<tags:createField property="packet" component="${component}" entity="udsinstrument" mode="${instrMode}"/>
<tags:createField property="formId" component="${component}" entity="udsinstrument" mode="${instrMode}"/>
<tags:createField property="formVer" component="${component}" entity="udsinstrument" mode="${instrMode}"/>
</tags:contentColumn>
<tags:contentColumn columnClass="colRight2Col5050">
<tags:createField property="visitNum" component="${component}" entity="udsinstrument" mode="${instrMode}"/>
<tags:createField property="initials" component="${component}" entity="udsinstrument" mode="${instrMode}"/>
</tags:contentColumn>
</page:applyDecorator>


<%-- TODO: NEED TO RERENDER BASED ON A CHANGE TO FORMID.  NO RERENDER ON INSTUMENT FLOW --%>


<c:if test="${componentMode != 'vw'}">
<c:forEach begin="0" end="1" var="current">
  <c:choose>
    <c:when test="${componentView == 'doubleEnter' || (componentView == 'compare' && current == 1)}">
      <c:set var="component" value="compareInstrument"/>
    </c:when>
    <c:otherwise>
      <%-- note component could be a DTO, e.g. in udsMedications2, so do not hard code it to 'instrument'
      	(and udsMedications2 uses enterReview flow so no doubleEnter --%>
      <c:set var="component" value="${component}"/>
    </c:otherwise>
  </c:choose>
  <c:if test="${current == 0 || (current == 1 && componentView == 'compare')}">

	<c:if test="${fn:startsWith(instrTypeEncoded, 'udsmilestone')}">
		<ui:formGuide >
		  <ui:disable elementIds="packet" component="${component}"/>
		  <ui:setValue elementIds="packet" component="${component}" value="M"/>
		</ui:formGuide>
		<ui:formGuide >
		  <ui:disable elementIds="visitNum" component="${component}"/>
		  <ui:setValue elementIds="visitNum" component="${component}" value="-8"/>
		</ui:formGuide>
	</c:if>
	
	
</c:if>
</c:forEach>
</c:if>
