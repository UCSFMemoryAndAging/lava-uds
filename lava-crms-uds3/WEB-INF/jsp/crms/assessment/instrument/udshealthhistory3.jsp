<%@ include file="/WEB-INF/jsp/includes/include.jsp" %>

<c:set var="instrTypeEncoded" value="udshealthhistory3"/>

<c:import url="/WEB-INF/jsp/crms/assessment/instrument/include.jsp">
  <c:param name="instrTypeEncoded" value="${instrTypeEncoded}"/>
</c:import>

<page:applyDecorator name="component.content">
  <page:param name="isInstrument">true</page:param>
  <page:param name="component">${instrTypeEncoded}</page:param>
  <page:param name="focusField">${focusField}</page:param>

  <page:param name="pageHeadingArgs">UDS Health History 3 Form</page:param>
  <page:param name="quicklinks">info</page:param>

  <page:applyDecorator name="component.instrument.content">
    <page:param name="instrTypeEncoded">${instrTypeEncoded}</page:param>
    <page:param name="view">${componentView}</page:param>

    <page:applyDecorator name="component.instrument.section">

      <page:param name="view">${componentView}</page:param>
      <page:param name="instructions"> </page:param> 

      <tags:createField property="tobac30" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="tobac100" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="smokyrs" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="packsper" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="quitsmok" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="alcoccas" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="alcfreq" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="cvhatt" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="hattmult" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="hattyear" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="cvafib" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="cvangio" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="cvbypass" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="cvpacdef" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="cvchf" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="cvangina" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="cvhvalve" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="cvothr" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="cvothrx" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="cbstroke" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="strokmul" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="strokyr" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="cbtia" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="tiamult" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="tiayear" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="pd" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="pdyr" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="pdothr" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="pdothryr" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="seizures" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="tbi" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="tbibrief" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="tbiexten" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="tbiwolos" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="tbiyear" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="diabetes" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="diabtype" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="hyperten" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="hypercho" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="b12def" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="thyroid" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="arthrit" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="arthtype" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="arthtypx" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="arthupex" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="arthloex" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="arthspin" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="arthunk" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="incontu" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="incontf" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="apnea" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="rbd" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="insomn" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="othsleep" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="othsleex" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="alcohol" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="abusothr" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="abusx" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="ptsd" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="bipolar" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="schiz" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="dep2yrs" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="depothr" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="anxiety" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="ocd" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="npsydev" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="psycdis" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

      <tags:createField property="psycdisx" component="${component}" entity="${instrTypeEncoded}" labelAlignment="left"/>

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
