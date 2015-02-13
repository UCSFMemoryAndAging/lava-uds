<%@ include file="/WEB-INF/jsp/includes/include.jsp" %>

<c:set var="instrTypeEncoded" value="udsclinicianassessment3"/>

<c:import url="/WEB-INF/jsp/crms/assessment/instrument/include.jsp">
  <c:param name="instrTypeEncoded" value="${instrTypeEncoded}"/>
</c:import>

<page:applyDecorator name="component.content">
  <page:param name="isInstrument">true</page:param>
  <page:param name="component">${instrTypeEncoded}</page:param>
  <page:param name="focusField">${focusField}</page:param>

  <page:param name="pageHeadingArgs">UDS Clinician Assessment 3 Form</page:param>
  <page:param name="quicklinks">info</page:param>

  <page:applyDecorator name="component.instrument.content">
    <page:param name="instrTypeEncoded">${instrTypeEncoded}</page:param>
    <page:param name="view">${componentView}</page:param>

    <page:applyDecorator name="component.instrument.section">

      <page:param name="view">${componentView}</page:param>
      <page:param name="instructions"> </page:param> 

      <tags:createField property="cancer" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="cancsite" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="diabet" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="myoinf" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="conghrt" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="afibrill" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="hypert" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="angina" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="hypchol" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="vb12def" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="thydis" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="arth" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="artype" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="artypex" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="artupex" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="artloex" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="artspin" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="artunkn" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="urineinc" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="bowlinc" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="sleepap" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="remdis" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="hyposom" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="sleepoth" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="sleepotx" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="angiocp" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="angiopci" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="pacemake" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="hvalve" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="antienc" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="antiencx" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="othcond" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="othcondx" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

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
