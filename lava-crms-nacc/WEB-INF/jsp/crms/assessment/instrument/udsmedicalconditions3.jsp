<%@ include file="/WEB-INF/jsp/includes/include.jsp" %>
<c:set var="instrTypeEncoded" value="udsmedicalconditions3"/>
<c:import url="/WEB-INF/jsp/crms/assessment/instrument/include.jsp">
	<c:param name="instrTypeEncoded" value="${instrTypeEncoded}"/>
</c:import>

<c:set var="controlMode" value="lv"/>

<c:choose>
	<c:when test="${componentView == 'enter' || componentView == 'doubleEnter' || componentView == 'compare'}">
		<c:set var="controlMode" value="le"/>
	</c:when>
</c:choose>

<%-- instrument-specific focusField setting (include.jsp has common focusField settings) --%>
<c:choose>
	<c:when test="${componentView == 'doubleEnter' || componentView == 'compare'}">
		<c:set var="focusField" value="cancer"/>
	</c:when>
</c:choose>	

<page:applyDecorator name="component.content">
  <page:param name="isInstrument">true</page:param> 
  <page:param name="component">${instrTypeEncoded}</page:param> 
  <page:param name="focusField">${focusField}</page:param>
  <page:param name="pageHeadingArgs">UDS Medical Conditions</page:param>
  <page:param name="quicklinks"></page:param>
   
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
	
<tags:tableForm>
<tags:listRow>
	<tags:listColumnHeader styleClass="noRight" labelKey="" width="5%"/>
	<tags:listColumnHeader styleClass="noLeft noRight" labelKey="" width="45%"/>
	<tags:listColumnHeader styleClass="noLeft" labelKey="" width="45%"/>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="cancer" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="cancer" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="cancer" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="cancsite" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft indent1"><tags:outputMetadata attribName="label" property="cancsite" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="cancsite" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="diabet" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="diabet" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="diabet" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="myoinf" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="myoinf" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="myoinf" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="conghrt" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="conghrt" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="conghrt" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="afibrill" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="afibrill" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="afibrill" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="hypert" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="hypert" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="hypert" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="angina" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="angina" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="angina" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="hypchol" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="hypchol" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="hypchol" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="vb12def" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="vb12def" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="vb12def" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="thydis" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="thydis" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="thydis" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="arth" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="arth" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="arth" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="artype" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft indent1"><tags:outputMetadata attribName="label" property="artype" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="artype" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="artypex" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft indent2"><tags:outputMetadata attribName="label" property="artypex" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="artypex" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="artupex" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft indent1"><tags:outputMetadata attribName="label" property="artupex" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="artupex" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="artloex" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft indent1"><tags:outputMetadata attribName="label" property="artloex" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="artloex" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="artspin" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft indent1"><tags:outputMetadata attribName="label" property="artspin" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="artspin" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="artunkn" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft indent1"><tags:outputMetadata attribName="label" property="artunkn" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="artunkn" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="urineinc" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="urineinc" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="urineinc" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="bowlinc" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="bowlinc" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="bowlinc" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="sleepap" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="sleepap" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="sleepap" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="remdis" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="remdis" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="remdis" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="hyposom" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="hyposom" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="hyposom" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="sleepoth" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="sleepoth" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="sleepoth" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="sleepotx" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft indent1"><tags:outputMetadata attribName="label" property="sleepotx" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="sleepotx" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="angiocp" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="angiocp" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="angiocp" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="angiopci" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="angiopci" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="angiopci" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="pacemake" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="pacemake" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="pacemake" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="hvalve" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="hvalve" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="hvalve" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="antienc" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="antienc" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="antienc" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="antiencx" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft indent1"><tags:outputMetadata attribName="label" property="antiencx" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="antiencx" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="othcond" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="othcond" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="othcond" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="othcondx" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft indent1"><tags:outputMetadata attribName="label" property="othcondx" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="othcondx" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
</tags:tableForm>

</page:applyDecorator>

<page:applyDecorator name="component.instrument.section">
	<page:param name="sectionId">anonymous</page:param>
	<page:param name="view">${componentView}</page:param>
	<page:param name="instructions"> </page:param>
	<tags:createField property="notes['udsmedicalconditions3']" entity="${instrTypeEncoded}" component="${component}" metadataName="instrument.sectionNote" labelAlignment="top" dataStyle="instrNote"/>
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
	<ui:observe elementIds="cancer" component="${component}" forValue="1|2" />
    <ui:unskip elementIds="cancsite" component="${component}"/>
</ui:formGuide>
<ui:formGuide>
	<ui:observe elementIds="arth" component="${component}" forValue="1" />
    <ui:unskip elementIds="artype,artupex,artloex,artspin,artunkn" component="${component}"/>
</ui:formGuide>
<ui:formGuide>
	<ui:depends elementIds="arth" component="${component}" />
	<ui:observe elementIds="artype" component="${component}" forValue="3" />
    <ui:unskip elementIds="artypex" component="${component}"/>
</ui:formGuide>
<ui:formGuide>
	<ui:observe elementIds="sleepoth" component="${component}" forValue="1" />
    <ui:unskip elementIds="sleepotx" component="${component}"/>
</ui:formGuide>
<ui:formGuide>
	<ui:observe elementIds="antienc" component="${component}" forValue="1" />
    <ui:unskip elementIds="antiencx" component="${component}"/>
</ui:formGuide>
<ui:formGuide simulateEvents="${(current == 0 && componentView != 'compare') || (current == 1) ? 'true' : ''}">
	<ui:observe elementIds="othcond" component="${component}" forValue="1" />
    <ui:unskip elementIds="othcondx" component="${component}"/>
</ui:formGuide>

  </c:if>
</c:forEach>
</c:if>

</page:applyDecorator>    
</page:applyDecorator>    
	    