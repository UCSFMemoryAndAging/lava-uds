<%@ include file="/WEB-INF/jsp/includes/include.jsp" %>
<c:set var="instrTypeEncoded" value="udsftldimagingdiag2"/>
<c:import url="/WEB-INF/jsp/crms/assessment/instrument/include.jsp">
	<c:param name="instrTypeEncoded" value="${instrTypeEncoded}"/>
</c:import>

<%-- instrument-specific focusField setting (include.jsp has common focusField settings) --%>
<c:choose>
	<c:when test="${componentView == 'doubleEnter' || componentView == 'compare'}">
		<c:set var="focusField" value="ftdidiag"/>
	</c:when>
</c:choose>	

<page:applyDecorator name="component.content">
  <page:param name="isInstrument">true</page:param> 
  <page:param name="component">${instrTypeEncoded}</page:param> 
  <page:param name="focusField">${focusField}</page:param>
  <page:param name="pageHeadingArgs">UDS FTLD Imaging Diag</page:param>
  <page:param name="quicklinks">structural,fdgpet,amyloidpet,cbfspect,otherimaging</page:param>
   
<page:applyDecorator name="component.instrument.content">
  <page:param name="instrTypeEncoded">${instrTypeEncoded}</page:param>
  <page:param name="view">${componentView}</page:param>

<c:import url="/WEB-INF/jsp/crms/assessment/instrument/udsCommon.jsp">
	<c:param name="entity" value="${instrTypeEncoded}"/>
	<c:param name="view" value="${componentView}"/>
	<c:param name="component" value="${component}"/>
</c:import>

<page:applyDecorator name="component.instrument.section">
  	<page:param name="sectionId">anonymous</page:param> 
  	<page:param name="view">${componentView}</page:param>
  	<page:param name="instructions"> </page:param>
	<tags:createField property="ftdidiag" component="${component}" entity="${instrTypeEncoded}"/>
</page:applyDecorator>

<page:applyDecorator name="component.instrument.section">
  	<page:param name="sectionId">structural</page:param> 
  	<page:param name="sectionNameKey">udsftldimagingdiag2.structural.section</page:param> 
  	<page:param name="view">${componentView}</page:param>
  	<page:param name="instructions"> </page:param>
	<tags:createField property="ftdsmrio" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdmrifa" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdmrirf" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdmrilf" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdmrirt" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdmrilt" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdmrirm" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdmrilm" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdmrirp" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdmrilp" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdmrirb" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdmrilb" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdmriob" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdmrios" component="${component}" entity="${instrTypeEncoded}"/>
</page:applyDecorator>

<page:applyDecorator name="component.instrument.section">
  	<page:param name="sectionId">fdgpet</page:param> 
  	<page:param name="sectionNameKey">udsftldimagingdiag2.fdgpet.section</page:param> 
  	<page:param name="view">${componentView}</page:param>
  	<page:param name="instructions"> </page:param>
	<tags:createField property="ftdfdgpe" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdfdgfh" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdfdgrf" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdfdglf" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdfdgrt" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdfdglt" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdfdgrm" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdfdglm" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdfdgrp" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdfdglp" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdfdgrb" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdfdglb" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdfdgoa" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdfdgos" component="${component}" entity="${instrTypeEncoded}"/>
</page:applyDecorator>
  	
<page:applyDecorator name="component.instrument.section">
  	<page:param name="sectionId">amyloidpet</page:param> 
  	<page:param name="sectionNameKey">udsftldimagingdiag2.amyloidpet.section</page:param> 
  	<page:param name="view">${componentView}</page:param>
  	<page:param name="instructions"> </page:param>
	<tags:createField property="ftdamyp" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdamyvi" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdamyrf" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdamylf" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdamyrt" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdamylt" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdamyrm" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdamylm" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdamyrp" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdamylp" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdamyrb" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdamylb" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdamyoa" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdamyos" component="${component}" entity="${instrTypeEncoded}"/>
</page:applyDecorator>
  	
<page:applyDecorator name="component.instrument.section">
  	<page:param name="sectionId">cbfspect</page:param> 
  	<page:param name="sectionNameKey">udsftldimagingdiag2.cbfspect.section</page:param> 
  	<page:param name="view">${componentView}</page:param>
  	<page:param name="instructions"> </page:param>
	<tags:createField property="ftdcbfsp" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdcbfvi" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdcbfrf" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdcbflf" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdcbfrt" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdcbflt" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdcbfrm" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdcbflm" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdcbfrp" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdcbflp" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdcbfrb" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdcbflb" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdcbfoa" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdcbfos" component="${component}" entity="${instrTypeEncoded}"/>
</page:applyDecorator>
  	
<page:applyDecorator name="component.instrument.section">
  	<page:param name="sectionId">otherimaging</page:param> 
  	<page:param name="sectionNameKey">udsftldimagingdiag2.otherimaging.section</page:param> 
  	<page:param name="view">${componentView}</page:param>
  	<page:param name="instructions"> </page:param>  	  	  	  	
	<tags:createField property="ftdothi" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdothis" component="${component}" entity="${instrTypeEncoded}"/>
</page:applyDecorator>

<page:applyDecorator name="component.instrument.section">
	<page:param name="sectionId">anonymous</page:param>
	<page:param name="view">${componentView}</page:param>
	<page:param name="instructions"> </page:param>
	<tags:createField property="notes['udsftldimagingavail2']" entity="${instrTypeEncoded}" component="${component}" metadataName="instrument.sectionNote" labelAlignment="top" dataStyle="instrNote"/>
</page:applyDecorator>

<c:if test="${componentMode != 'vw'}">
<c:forEach begin="0" end="1" var="current">
  <c:choose>
    <c:when test="${componentView == 'doubleEnter' || (componentView == 'compare' && current == 1)}">
      <c:set var="componentPrefix" value="compareInstrument"/>
    </c:when>
    <c:otherwise>
      <c:set var="componentPrefix" value="instrument"/>
    </c:otherwise>
  </c:choose>
  <c:if test="${current == 0 || (current == 1 && componentView == 'compare')}">


<ui:formGuide>
  <ui:observe elementIds="ftdidiag" component="${componentPrefix}" forValue="^0" comboRadioSelect="${componentMode == 'dc' ? 'true' : 'false'}"/>
  <ui:skip elementIds="ftdsmrio,ftdmrifa,ftdmrirf,ftdmrilf,ftdmrirt,ftdmrilt,ftdmrirm,ftdmrilm,ftdmrirp,ftdmrilp,ftdmrirb,ftdmrilb,ftdmriob,ftdmrios,ftdfdgpe,ftdfdgfh,ftdfdgrf,ftdfdglf,ftdfdgrt,ftdfdglt,ftdfdgrm,ftdfdglm,ftdfdgrp,ftdfdglp,ftdfdgrb,ftdfdglb,ftdfdgoa,ftdfdgos,ftdamyp,ftdamyvi,ftdamyrf,ftdamylf,ftdamyrt,ftdamylt,ftdamyrm,ftdamylm,ftdamyrp,ftdamylp,ftdamyrb,ftdamylb,ftdamyoa,ftdamyos,ftdcbfsp,ftdcbfvi,ftdcbfrf,ftdcbflf,ftdcbfrt,ftdcbflt,ftdcbfrm,ftdcbflm,ftdcbfrp,ftdcbflp,ftdcbfrb,ftdcbflb,ftdcbfoa,ftdcbfos,ftdothi,ftdothis" component="${componentPrefix}"/>
</ui:formGuide>

<ui:formGuide>
  <ui:observe elementIds="ftdsmrio" component="${componentPrefix}" forValue="^0" comboRadioSelect="${componentMode == 'dc' ? 'true' : 'false'}"/>
  <ui:skip elementIds="ftdmrifa,ftdmrirf,ftdmrilf,ftdmrirt,ftdmrilt,ftdmrirm,ftdmrilm,ftdmrirp,ftdmrilp,ftdmrirb,ftdmrilb,ftdmriob,ftdmrios" component="${componentPrefix}"/>
</ui:formGuide>

<ui:formGuide>
  <ui:observe elementIds="ftdmrifa" component="${componentPrefix}" forValue="^1" comboRadioSelect="${componentMode == 'dc' ? 'true' : 'false'}"/>
  <ui:unskip elementIds="ftdmrirf,ftdmrilf,ftdmrirt,ftdmrilt,ftdmrirm,ftdmrilm,ftdmrirp,ftdmrilp,ftdmrirb,ftdmrilb,ftdmriob,ftdmrios" component="${componentPrefix}"/>
</ui:formGuide>

<ui:formGuide>
  <ui:observe elementIds="ftdmriob" component="${componentPrefix}" forValue="^1" comboRadioSelect="${componentMode == 'dc' ? 'true' : 'false'}"/>
  <ui:unskip elementIds="ftdmrios" component="${componentPrefix}"/>
</ui:formGuide>

<ui:formGuide>
  <ui:observe elementIds="ftdfdgpe" component="${componentPrefix}" forValue="^0" comboRadioSelect="${componentMode == 'dc' ? 'true' : 'false'}"/>
  <ui:skip elementIds="ftdfdgfh,ftdfdgrf,ftdfdglf,ftdfdgrt,ftdfdglt,ftdfdgrm,ftdfdglm,ftdfdgrp,ftdfdglp,ftdfdgrb,ftdfdglb,ftdfdgoa,ftdfdgos" component="${componentPrefix}"/>
</ui:formGuide>

<ui:formGuide>
  <ui:observe elementIds="ftdfdgfh" component="${componentPrefix}" forValue="^1" comboRadioSelect="${componentMode == 'dc' ? 'true' : 'false'}"/>
  <ui:unskip elementIds="ftdfdgrf,ftdfdglf,ftdfdgrt,ftdfdglt,ftdfdgrm,ftdfdglm,ftdfdgrp,ftdfdglp,ftdfdgrb,ftdfdglb,ftdfdgoa,ftdfdgos" component="${componentPrefix}"/>
</ui:formGuide>

<ui:formGuide>
  <ui:observe elementIds="ftdfdgoa" component="${componentPrefix}" forValue="^1" comboRadioSelect="${componentMode == 'dc' ? 'true' : 'false'}"/>
  <ui:unskip elementIds="ftdfdgos" component="${componentPrefix}"/>
</ui:formGuide>

<ui:formGuide>
  <ui:observe elementIds="ftdamyp" component="${componentPrefix}" forValue="^0" comboRadioSelect="${componentMode == 'dc' ? 'true' : 'false'}"/>
  <ui:skip elementIds="ftdamyvi,ftdamyrf,ftdamylf,ftdamyrt,ftdamylt,ftdamyrm,ftdamylm,ftdamyrp,ftdamylp,ftdamyrb,ftdamylb,ftdamyoa,ftdamyos" component="${componentPrefix}"/>
</ui:formGuide>

<ui:formGuide>
  <ui:observe elementIds="ftdamyvi" component="${componentPrefix}" forValue="^1" comboRadioSelect="${componentMode == 'dc' ? 'true' : 'false'}"/>
  <ui:unskip elementIds="ftdamyrf,ftdamylf,ftdamyrt,ftdamylt,ftdamyrm,ftdamylm,ftdamyrp,ftdamylp,ftdamyrb,ftdamylb,ftdamyoa,ftdamyos" component="${componentPrefix}"/>
</ui:formGuide>

<ui:formGuide>
  <ui:observe elementIds="ftdamyoa" component="${componentPrefix}" forValue="^1" comboRadioSelect="${componentMode == 'dc' ? 'true' : 'false'}"/>
  <ui:unskip elementIds="ftdamyos" component="${componentPrefix}"/>
</ui:formGuide>

<ui:formGuide>
  <ui:observe elementIds="ftdcbfsp" component="${componentPrefix}" forValue="^0" comboRadioSelect="${componentMode == 'dc' ? 'true' : 'false'}"/>
  <ui:skip elementIds="ftdcbfvi,ftdcbfrf,ftdcbflf,ftdcbfrt,ftdcbflt,ftdcbfrm,ftdcbflm,ftdcbfrp,ftdcbflp,ftdcbfrb,ftdcbflb,ftdcbfoa,ftdcbfos" component="${componentPrefix}"/>
</ui:formGuide>

<ui:formGuide>
  <ui:observe elementIds="ftdcbfvi" component="${componentPrefix}" forValue="^1" comboRadioSelect="${componentMode == 'dc' ? 'true' : 'false'}"/>
  <ui:unskip elementIds="ftdcbfrf,ftdcbflf,ftdcbfrt,ftdcbflt,ftdcbfrm,ftdcbflm,ftdcbfrp,ftdcbflp,ftdcbfrb,ftdcbflb,ftdcbfoa,ftdcbfos" component="${componentPrefix}"/>
</ui:formGuide>

<ui:formGuide>
  <ui:observe elementIds="ftdcbfoa" component="${componentPrefix}" forValue="^1" comboRadioSelect="${componentMode == 'dc' ? 'true' : 'false'}"/>
  <ui:unskip elementIds="ftdcbfos" component="${componentPrefix}"/>
</ui:formGuide>

<ui:formGuide simulateEvents="${(current == 0 && componentView != 'compare') || (current == 1) ? 'true' : ''}">
  <ui:observe elementIds="ftdothi" component="${componentPrefix}" forValue="^1" comboRadioSelect="${componentMode == 'dc' ? 'true' : 'false'}"/>
  <ui:unskip elementIds="ftdothis" component="${componentPrefix}"/>
</ui:formGuide>

  </c:if>
</c:forEach>
</c:if>
</page:applyDecorator>    
</page:applyDecorator>    
	    
