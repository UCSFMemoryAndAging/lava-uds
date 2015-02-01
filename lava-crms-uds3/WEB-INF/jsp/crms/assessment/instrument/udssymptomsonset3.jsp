<%@ include file="/WEB-INF/jsp/includes/include.jsp" %>

<c:set var="instrTypeEncoded" value="udssymptomsonset3"/>

<c:import url="/WEB-INF/jsp/crms/assessment/instrument/include.jsp">
  <c:param name="instrTypeEncoded" value="${instrTypeEncoded}"/>
</c:import>

<page:applyDecorator name="component.content">
  <page:param name="isInstrument">true</page:param>
  <page:param name="component">${instrTypeEncoded}</page:param>
  <page:param name="focusField">${focusField}</page:param>

  <page:param name="pageHeadingArgs">UDS Symptoms Onset 3 Form</page:param>
  <page:param name="quicklinks">info</page:param>

  <page:applyDecorator name="component.instrument.content">
    <page:param name="instrTypeEncoded">${instrTypeEncoded}</page:param>
    <page:param name="view">${componentView}</page:param>

    <page:applyDecorator name="component.instrument.section">

      <page:param name="view">${componentView}</page:param>
      <page:param name="instructions"> </page:param> 

      <tags:createField property="decsub" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="decin" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="decclcog" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="cogmem" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="cogori" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="cogjudg" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="coglang" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="cogvis" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="cogattn" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="cogfluc" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="cogflago" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="cogothr" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="cogothrx" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="cogfpred" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="cogfprex" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="cogmode" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="cogmodex" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="decage" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="decclbe" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="beapathy" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="bedep" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="bevhall" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="bevwell" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="bevhago" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="beahall" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="bedel" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="bedisin" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="beirrit" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="beagit" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="beperch" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="berem" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="beremago" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="beanx" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="beothr" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="beothrx" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="befpred" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="befpredx" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="bemode" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="bemodex" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="beage" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="decclmot" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="mogait" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="mofalls" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="motrem" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="moslow" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="mofrst" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="momode" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="momodex" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="momopark" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="parkage" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="momoals" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="alsage" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="moage" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="course" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="frstchg" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="lbdeval" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="ftldeval" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

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
