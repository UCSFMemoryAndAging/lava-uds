<%@ include file="/WEB-INF/jsp/includes/include.jsp" %>

<c:set var="instrTypeEncoded" value="udsneuropsychbattery3"/>

<c:import url="/WEB-INF/jsp/crms/assessment/instrument/include.jsp">
  <c:param name="instrTypeEncoded" value="${instrTypeEncoded}"/>
</c:import>

<page:applyDecorator name="component.content">
  <page:param name="isInstrument">true</page:param>
  <page:param name="component">${instrTypeEncoded}</page:param>
  <page:param name="focusField">${focusField}</page:param>

  <page:param name="pageHeadingArgs">UDS Neuropsych Battery 3 Form</page:param>
  <page:param name="quicklinks">info</page:param>

  <page:applyDecorator name="component.instrument.content">
    <page:param name="instrTypeEncoded">${instrTypeEncoded}</page:param>
    <page:param name="view">${componentView}</page:param>

    <page:applyDecorator name="component.instrument.section">

      <page:param name="view">${componentView}</page:param>
      <page:param name="instructions"> </page:param> 

      <tags:createField property="mocacomp" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="mocareas" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="mocaloc" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="mocalan" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="mocalanx" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="mocavis" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="mocahear" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="mocatots" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="mocatrai" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="mocacube" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="mocacloc" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="mocaclon" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="mocacloh" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="mocanami" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="mocaregi" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="mocadigi" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="mocalett" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="mocaser7" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="mocarepe" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="mocaflue" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="mocaabst" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="mocarecn" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="mocarecc" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="mocarecr" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="mocaordt" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="mocaormo" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="mocaoryr" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="mocaordy" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="mocaorpl" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="mocaorct" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="npsycloc" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="npsylan" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="npsylanx" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="craftvrs" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="crafturs" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="udsbentc" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="digforct" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="digforsl" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="digbacct" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="digbacls" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="animals" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="veg" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="traila" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="trailarr" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="trailali" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="trailb" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="trailbrr" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="trailbli" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="craftdvr" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="craftdre" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="craftdti" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="craftcue" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="udsbentd" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="udsbenrs" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="minttots" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="minttotw" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="mintscng" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="mintscnc" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="mintpcng" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="mintpcnc" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="udsverfc" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="udsverfn" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="udsvernf" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="udsverlc" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="udsverlr" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="udsverln" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="udsvertn" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="udsverte" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="udsverti" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="cogstat" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

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
