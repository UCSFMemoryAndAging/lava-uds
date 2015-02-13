<%@ include file="/WEB-INF/jsp/includes/include.jsp" %>

<c:set var="instrTypeEncoded" value="udsphysical3"/>

<c:import url="/WEB-INF/jsp/crms/assessment/instrument/include.jsp">
  <c:param name="instrTypeEncoded" value="${instrTypeEncoded}"/>
</c:import>

<page:applyDecorator name="component.content">
  <page:param name="isInstrument">true</page:param>
  <page:param name="component">${instrTypeEncoded}</page:param>
  <page:param name="focusField">${focusField}</page:param>

  <page:param name="pageHeadingArgs">UDS Physical 3 Form</page:param>
  <page:param name="quicklinks">info</page:param>

  <page:applyDecorator name="component.instrument.content">
    <page:param name="instrTypeEncoded">${instrTypeEncoded}</page:param>
    <page:param name="view">${componentView}</page:param>

    <page:applyDecorator name="component.instrument.section">

      <page:param name="view">${componentView}</page:param>
      <page:param name="instructions"> </page:param> 

      <tags:createField property="height" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="weight" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="bpsys" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="bpdias" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="hrate" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="vision" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="viscorr" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="viswcorr" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="hearing" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="hearaid" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="hearwaid" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

    </page:applyDecorator>

    <page:applyDecorator name="component.instrument.section">
      <page:param name="sectionId">anonymous</page:param>
      <page:param name="view">${componentView}</page:param>
      <page:param name="instructions"> </page:param>
      <tags:createField property="notes['']" component="${component}" entity="${instrTypeEncoded}" metadataName="instrument.sectionNote" labelAlignment="top" dataStyle="instrNote"/>

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
          <!-- Custom skip logic within ui:formGuide tags -->
          <ui:formGuide simulateEvents="${(current == 0 && componentView != 'compare') || (current == 1) ? 'true' : ''}">
          </ui:formGuide>
        </c:if>
      </c:forEach>
    </c:if>
  </page:applyDecorator>
</page:applyDecorator>
