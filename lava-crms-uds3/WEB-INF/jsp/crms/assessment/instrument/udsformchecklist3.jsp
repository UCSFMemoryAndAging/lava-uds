<%@ include file="/WEB-INF/jsp/includes/include.jsp" %>

<c:set var="instrTypeEncoded" value="udsformchecklist3"/>

<c:import url="/WEB-INF/jsp/crms/assessment/instrument/include.jsp">
  <c:param name="instrTypeEncoded" value="${instrTypeEncoded}"/>
</c:import>

<page:applyDecorator name="component.content">
  <page:param name="isInstrument">true</page:param>
  <page:param name="component">${instrTypeEncoded}</page:param>
  <page:param name="focusField">${focusField}</page:param>

  <page:param name="pageHeadingArgs">UDS Form Checklist 3 Form</page:param>
  <page:param name="quicklinks">info</page:param>

  <page:applyDecorator name="component.instrument.content">
    <page:param name="instrTypeEncoded">${instrTypeEncoded}</page:param>
    <page:param name="view">${componentView}</page:param>

    <page:applyDecorator name="component.instrument.section">

      <page:param name="view">${componentView}</page:param>
      <page:param name="instructions"> </page:param> 

      <tags:createField property="a2sub" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="a2not" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="a2comm" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="a3sub" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="a3not" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="a3comm" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="a4sub" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="a4not" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="a4comm" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="b1sub" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="b1not" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="b1comm" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="b5sub" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="b5not" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="b5comm" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="b6sub" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="b6not" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="b6comm" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="b7sub" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="b7not" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="b7comm" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

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
