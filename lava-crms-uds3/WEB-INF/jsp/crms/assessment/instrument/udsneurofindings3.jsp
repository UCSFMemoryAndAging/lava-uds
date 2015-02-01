<%@ include file="/WEB-INF/jsp/includes/include.jsp" %>

<c:set var="instrTypeEncoded" value="udsneurofindings3"/>

<c:import url="/WEB-INF/jsp/crms/assessment/instrument/include.jsp">
  <c:param name="instrTypeEncoded" value="${instrTypeEncoded}"/>
</c:import>

<page:applyDecorator name="component.content">
  <page:param name="isInstrument">true</page:param>
  <page:param name="component">${instrTypeEncoded}</page:param>
  <page:param name="focusField">${focusField}</page:param>

  <page:param name="pageHeadingArgs">UDS Neuro Findings 3 Form</page:param>
  <page:param name="quicklinks">info</page:param>

  <page:applyDecorator name="component.instrument.content">
    <page:param name="instrTypeEncoded">${instrTypeEncoded}</page:param>
    <page:param name="view">${componentView}</page:param>

    <page:applyDecorator name="component.instrument.section">

      <page:param name="view">${componentView}</page:param>
      <page:param name="instructions"> </page:param> 

      <tags:createField property="normexam" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="parksign" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="resttrl" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="resttrr" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="slowingl" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="slowingr" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="rigidl" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="rigidr" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="brady" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="parkgait" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="postinst" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="cvdsigns" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="cortdef" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="sivdfind" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="cvdmotl" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="cvdmotr" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="cortvisl" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="cortvisr" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="somatl" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="somatr" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="postcort" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="pspcbs" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="eyepsp" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="dyspsp" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="axialpsp" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="gaitpsp" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="apraxsp" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="apraxl" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="apraxr" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="cortsenl" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="cortsenr" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="ataxl" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="ataxr" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="alienlml" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="alienlmr" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="dystonl" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="dystonr" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="myocllt" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="myoclrt" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="alsfind" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="gaitnph" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="othneur" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="othneurx" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

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
