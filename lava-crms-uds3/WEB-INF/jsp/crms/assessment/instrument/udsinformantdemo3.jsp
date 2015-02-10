<%@ include file="/WEB-INF/jsp/includes/include.jsp" %>

<c:set var="instrTypeEncoded" value="udsinformantdemo3"/>

<c:import url="/WEB-INF/jsp/crms/assessment/instrument/include.jsp">
  <c:param name="instrTypeEncoded" value="${instrTypeEncoded}"/>
</c:import>

<page:applyDecorator name="component.content">
  <page:param name="isInstrument">true</page:param>
  <page:param name="component">${instrTypeEncoded}</page:param>
  <page:param name="focusField">${focusField}</page:param>

  <page:param name="pageHeadingArgs">UDS Informant Demo 3 Form</page:param>
  <page:param name="quicklinks">info</page:param>

  <page:applyDecorator name="component.instrument.content">
    <page:param name="instrTypeEncoded">${instrTypeEncoded}</page:param>
    <page:param name="view">${componentView}</page:param>

    <page:applyDecorator name="component.instrument.section">

      <page:param name="view">${componentView}</page:param>
      <page:param name="instructions"> </page:param> 

      <tags:createField property="inbirmo" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="inbiryr" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="insex" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="newinf" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="inhisp" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="inhispor" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="inhispox" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="inrace" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="inracex" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="inrasec" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="inrasecx" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="inrater" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="inraterx" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="ineduc" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="inrelto" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="inknown" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="inlivwth" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="invisits" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="incalls" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="inrely" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

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
