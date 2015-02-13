<%@ include file="/WEB-INF/jsp/includes/include.jsp" %>

<c:set var="instrTypeEncoded" value="udsnpi3"/>

<c:import url="/WEB-INF/jsp/crms/assessment/instrument/include.jsp">
  <c:param name="instrTypeEncoded" value="${instrTypeEncoded}"/>
</c:import>

<page:applyDecorator name="component.content">
  <page:param name="isInstrument">true</page:param>
  <page:param name="component">${instrTypeEncoded}</page:param>
  <page:param name="focusField">${focusField}</page:param>

  <page:param name="pageHeadingArgs">UDS NPI 3 Form</page:param>
  <page:param name="quicklinks">info</page:param>

  <page:applyDecorator name="component.instrument.content">
    <page:param name="instrTypeEncoded">${instrTypeEncoded}</page:param>
    <page:param name="view">${componentView}</page:param>

    <page:applyDecorator name="component.instrument.section">

      <page:param name="view">${componentView}</page:param>
      <page:param name="instructions"> </page:param> 

      <tags:createField property="npiqinf" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="npiqinfx" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="del" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="delsev" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="hall" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="hallsev" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="agit" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="agitsev" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="depd" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="depdsev" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="anx" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="anxsev" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="elat" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="elatsev" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="apa" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="apasev" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="disn" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="disnsev" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="irr" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="irrsev" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="mot" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="motsev" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="nite" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="nitesev" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="app" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="appsev" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

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
