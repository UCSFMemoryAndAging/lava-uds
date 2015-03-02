<%@ include file="/WEB-INF/jsp/includes/include.jsp" %>
<c:set var="instrTypeEncoded" value="udsftldformchecklist3"/>
<c:import url="/WEB-INF/jsp/crms/assessment/instrument/include.jsp">
	<c:param name="instrTypeEncoded" value="${instrTypeEncoded}"/>
</c:import>

<%-- instrument-specific focusField setting (include.jsp has common focusField settings) --%>
<c:choose>
	<c:when test="${componentView == 'doubleEnter' || componentView == 'compare'}">
		<c:set var="focusField" value="ftda3afs"/>
	</c:when>
</c:choose>	

<page:applyDecorator name="component.content">
  <page:param name="isInstrument">true</page:param> 
  <page:param name="component">${instrTypeEncoded}</page:param> 
  <page:param name="focusField">${focusField}</page:param>
  <page:param name="pageHeadingArgs">UDS FTLD Form Checklist</page:param>
  <page:param name="quicklinks"> </page:param>
   
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
	<tags:listColumnHeader labelKey="udsftldformchecklist2.FormColHeader" width="5%"/>
	<tags:listColumnHeader labelKey="udsftldformchecklist2.DescColHeader" width="30%"/>
	<tags:listColumnHeader labelKey="udsftldformchecklist2.SubColHeader" width="17%"/>
	<tags:listColumnHeader labelKey="udsftldformchecklist2.IfNotSubColHeader" width="25%"/>
	<tags:listColumnHeader labelKey="udsftldformchecklist2.CommColHeader" width="23%"/>
</tags:listRow>
<tags:listRow>
	<tags:listCell><tags:outputText textKey="udsftldformchecklist2.A3aFForm"/></tags:listCell>
	<tags:listCell><tags:outputText textKey="udsftldformchecklist2.A3aFDesc"/></tags:listCell>
	<tags:listCell><tags:createField property="ftda3afs" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="ftda3afr" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="ftda3afc" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell><tags:outputText textKey="udsftldformchecklist2.B3FForm"/></tags:listCell>
	<tags:listCell><tags:outputText textKey="udsftldformchecklist2.B3FDesc"/></tags:listCell>
	<tags:listCell><b><tags:outputText textKey="udsftldformchecklist2.Required"/></b></tags:listCell>
	<tags:listCell><tags:outputText textKey="udsftldformchecklist2.NA"/></tags:listCell>
	<tags:listCell><tags:outputText textKey="udsftldformchecklist2.NA"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell><tags:outputText textKey="udsftldformchecklist2.B9FForm"/></tags:listCell>
	<tags:listCell><tags:outputText textKey="udsftldformchecklist2.B9FDesc"/></tags:listCell>
	<tags:listCell><b><tags:outputText textKey="udsftldformchecklist2.Required"/></b></tags:listCell>
	<tags:listCell><tags:outputText textKey="udsftldformchecklist2.NA"/></tags:listCell>
	<tags:listCell><tags:outputText textKey="udsftldformchecklist2.NA"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell><tags:outputText textKey="udsftldformchecklist2.C1FForm"/></tags:listCell>
	<tags:listCell><tags:outputText textKey="udsftldformchecklist2.C1FDesc"/></tags:listCell>
	<tags:listCell><b><tags:outputText textKey="udsftldformchecklist2.Required"/></b></tags:listCell>
	<tags:listCell><tags:outputText textKey="udsftldformchecklist2.NA"/></tags:listCell>
	<tags:listCell><tags:outputText textKey="udsftldformchecklist2.NA"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell><tags:outputText textKey="udsftldformchecklist2.C2FForm"/></tags:listCell>
	<tags:listCell><tags:outputText textKey="udsftldformchecklist2.C2FDesc"/></tags:listCell>
	<tags:listCell><b><tags:outputText textKey="udsftldformchecklist2.Required"/></b></tags:listCell>
	<tags:listCell><tags:outputText textKey="udsftldformchecklist2.NA"/></tags:listCell>
	<tags:listCell><tags:outputText textKey="udsftldformchecklist2.NA"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell><tags:outputText textKey="udsftldformchecklist2.C3FForm"/></tags:listCell>
	<tags:listCell><tags:outputText textKey="udsftldformchecklist2.C3FDesc"/></tags:listCell>
	<tags:listCell><b><tags:outputText textKey="udsftldformchecklist2.Required"/></b></tags:listCell>
	<tags:listCell><tags:outputText textKey="udsftldformchecklist2.NA"/></tags:listCell>
	<tags:listCell><tags:outputText textKey="udsftldformchecklist2.NA"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell><tags:outputText textKey="udsftldformchecklist2.C4FForm"/></tags:listCell>
	<tags:listCell><tags:outputText textKey="udsftldformchecklist2.C4FDesc"/></tags:listCell>
	<tags:listCell><tags:createField property="ftdc4fs" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="ftdc4fr" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="ftdc4fc" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell><tags:outputText textKey="udsftldformchecklist2.C5FForm"/></tags:listCell>
	<tags:listCell><tags:outputText textKey="udsftldformchecklist2.C5FDesc"/></tags:listCell>
	<tags:listCell><tags:createField property="ftdc5fs" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="ftdc5fr" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="ftdc5fc" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell><tags:outputText textKey="udsftldformchecklist2.C6FForm"/></tags:listCell>
	<tags:listCell><tags:outputText textKey="udsftldformchecklist2.C6FDesc"/></tags:listCell>
	<tags:listCell><tags:createField property="ftdc6fs" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="ftdc6fr" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="ftdc6fc" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell><tags:outputText textKey="udsftldformchecklist2.E2FForm"/></tags:listCell>
	<tags:listCell><tags:outputText textKey="udsftldformchecklist2.E2FDesc"/></tags:listCell>
	<tags:listCell><b><tags:outputText textKey="udsftldformchecklist2.Required"/></b></tags:listCell>
	<tags:listCell><tags:outputText textKey="udsftldformchecklist2.NA"/></tags:listCell>
	<tags:listCell><tags:outputText textKey="udsftldformchecklist2.NA"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell><tags:outputText textKey="udsftldformchecklist2.E3FForm"/></tags:listCell>
	<tags:listCell><tags:outputText textKey="udsftldformchecklist2.E3FDesc"/></tags:listCell>
	<tags:listCell><b><tags:outputText textKey="udsftldformchecklist2.Required"/></b></tags:listCell>
	<tags:listCell><tags:outputText textKey="udsftldformchecklist2.NA"/></tags:listCell>
	<tags:listCell><tags:outputText textKey="udsftldformchecklist2.NA"/></tags:listCell>
</tags:listRow>
</tags:tableForm>

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


<ui:formGuide>
  <ui:observe elementIds="ftda3afs" component="${component}" forValue="^0"/>
  <ui:unskip elementIds="ftda3afr,ftda3afc" component="${component}"/>
</ui:formGuide>
<ui:formGuide>
  <ui:observe elementIds="ftdc4fs" component="${component}" forValue="^0"/>
  <ui:unskip elementIds="ftdc4fr,ftdc4fc" component="${component}"/>
</ui:formGuide>
<ui:formGuide>
  <ui:observe elementIds="ftdc5fs" component="${component}" forValue="^0"/>
  <ui:unskip elementIds="ftdc5fr,ftdc5fc" component="${component}"/>
</ui:formGuide>
<ui:formGuide simulateEvents="${(current == 0 && componentView != 'compare') || (current == 1) ? 'true' : ''}">
  <ui:observe elementIds="ftdc6fs" component="${component}" forValue="^0"/>
  <ui:unskip elementIds="ftdc6fr,ftdc6fc" component="${component}"/>
</ui:formGuide>

  </c:if>
</c:forEach>
</c:if>

</page:applyDecorator>    
</page:applyDecorator>