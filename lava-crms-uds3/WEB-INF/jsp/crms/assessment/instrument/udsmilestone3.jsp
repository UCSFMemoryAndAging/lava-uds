<%@ include file="/WEB-INF/jsp/includes/include.jsp" %>

<c:set var="instrTypeEncoded" value="udsmilestone3"/>

<c:import url="/WEB-INF/jsp/crms/assessment/instrument/include.jsp">
  <c:param name="instrTypeEncoded" value="${instrTypeEncoded}"/>
</c:import>

<page:applyDecorator name="component.content">
  <page:param name="isInstrument">true</page:param>
  <page:param name="component">${instrTypeEncoded}</page:param>
  <page:param name="focusField">${focusField}</page:param>

  <page:param name="pageHeadingArgs">UDS Milestone 3 Form</page:param>
  <page:param name="quicklinks">info</page:param>

  <page:applyDecorator name="component.instrument.content">
    <page:param name="instrTypeEncoded">${instrTypeEncoded}</page:param>
    <page:param name="view">${componentView}</page:param>

    <page:applyDecorator name="component.instrument.section">

      <page:param name="view">${componentView}</page:param>
      <page:param name="instructions"> </page:param> 

      <tags:createField property="changemo" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="changedy" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="changeyr" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="protocol" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="aconsent" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="recogim" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="rephyill" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="rerefuse" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="renavail" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="renurse" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="nursemo" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="nursedy" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="nurseyr" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="rejoin" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="ftlddisc" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="ftldreas" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="ftldreax" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="deceased" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="discont" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="deathmo" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="deathdy" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="deathyr" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="autopsy" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="discmo" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="discdy" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="discr" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="dropreas" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

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
