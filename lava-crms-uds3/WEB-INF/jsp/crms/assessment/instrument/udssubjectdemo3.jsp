<%@ include file="/WEB-INF/jsp/includes/include.jsp" %>

<c:set var="instrTypeEncoded" value="udssubjectdemo3"/>

<c:import url="/WEB-INF/jsp/crms/assessment/instrument/include.jsp">
  <c:param name="instrTypeEncoded" value="${instrTypeEncoded}"/>
</c:import>

<page:applyDecorator name="component.content">
  <page:param name="isInstrument">true</page:param>
  <page:param name="component">${instrTypeEncoded}</page:param>
  <page:param name="focusField">${focusField}</page:param>

  <page:param name="pageHeadingArgs">UDS Subject Demo 3 Form</page:param>
  <page:param name="quicklinks">info</page:param>

  <page:applyDecorator name="component.instrument.content">
    <page:param name="instrTypeEncoded">${instrTypeEncoded}</page:param>
    <page:param name="view">${componentView}</page:param>

    <page:applyDecorator name="component.instrument.section">

      <page:param name="view">${componentView}</page:param>
      <page:param name="instructions"> </page:param> 

      <tags:createField property="reason" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="refersc" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="learned" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="prestat" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="prespart" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="sourcenw" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="birthmo" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="birthyr" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="sex" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="hispanic" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="hispor" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="hisporx" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="race" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="racex" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="racesec" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="racesecx" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="raceter" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="raceterx" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="primlang" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="primlanx" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="educ" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="maristat" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="livsitua" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="independ" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="residenc" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="zip" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="handed" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

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
