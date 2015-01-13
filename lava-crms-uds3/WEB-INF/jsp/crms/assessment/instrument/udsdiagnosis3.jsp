<%@ include file="/WEB-INF/jsp/includes/include.jsp" %>

<c:set var="instrTypeEncoded" value="udsdiagnosis3"/>

<c:import url="/WEB-INF/jsp/crms/assessment/instrument/include.jsp">
  <c:param name="instrTypeEncoded" value="${instrTypeEncoded}"/>
</c:import>

<page:applyDecorator name="component.content">
  <page:param name="isInstrument">true</page:param>
  <page:param name="component">${instrTypeEncoded}</page:param>
  <page:param name="focusField">${focusField}</page:param>

  <page:param name="pageHeadingArgs">UDS Diagnosis 3 Form</page:param>
  <page:param name="quicklinks">info</page:param>

  <page:applyDecorator name="component.instrument.content">
    <page:param name="instrTypeEncoded">${instrTypeEncoded}</page:param>
    <page:param name="view">${componentView}</page:param>

    <page:applyDecorator name="component.instrument.section">

      <page:param name="view">${componentView}</page:param>
      <page:param name="instructions"> </page:param> 

      <tags:createField property="dxmethod" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="normcog" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="demented" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="amndem" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="pca" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="ppasyn" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="ppasynt" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="ftdsyn" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="lbdsyn" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="namndem" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="mciamem" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="mciaplus" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="mciaplan" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="mciapatt" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="mciapex" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="mciapvis" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="mcinon1" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="mcin1lan" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="mcin1att" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="mcin1ex" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="mcin1vis" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="mcinon2" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="mcin2lan" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="mcin2att" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="mcin2ex" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="mcin2vis" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="impnomci" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="amylpet" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="amylcsf" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="fdgad" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="hippatr" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="taupetad" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="csftau" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="fdgftld" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="tpetftld" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="mrftld" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="datscan" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="othbiom" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="othbiomx" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="imaglinf" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="imaglac" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="imagmach" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="imagmich" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="imagmwmh" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="imagewmh" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="admut" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="ftldmut" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="othmut" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="othmutx" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="alzdis" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="alzdisif" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="lbdis" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="lbdif" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="park" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="msa" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="msaif" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="psp" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="pspif" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="cort" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="cortif" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="ftldmo" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="ftldmoif" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="ftldnos" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="ftldnoif" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="ftldsubt" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="ftldsubx" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="cvd" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="cvdif" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="prevstk" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="strokcog" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="prevtia" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="esstrem" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="esstreif" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="downs" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="downsif" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="hunt" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="huntif" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="prion" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="prionif" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="brninj" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="brninjif" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="brnincte" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="hyceph" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="hycephif" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="epilep" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="epilepif" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="neop" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="neopif" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="neopstat" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="hiv" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="hivif" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="othcog" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="othcogif" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="othcogx" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="dep" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="depif" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="deptreat" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="bipoldx" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="bipoldif" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="schizop" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="schizoif" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="anxiet" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="anxietif" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="delir" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="delirif" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="ptsddx" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="ptsddxif" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="othpsy" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="othpsyif" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="othpsyx" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="alcdem" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="alcdemif" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="alcabuse" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="impsub" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="impsubif" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="dysill" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="dysillif" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="meds" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="medsif" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="cogoth" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="cogoth1f" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="cogothx" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="cogoth2" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="cogoth2f" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="cogoth2x" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="cogoth3" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="cogoth3f" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

      <tags:createField property="cogoth3x" component="${component}" entity="${instrTypeEncoded}" labelAlignment="top"/>

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
