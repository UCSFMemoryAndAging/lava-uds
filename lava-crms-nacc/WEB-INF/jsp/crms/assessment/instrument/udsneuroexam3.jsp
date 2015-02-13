<%@ include file="/WEB-INF/jsp/includes/include.jsp" %>
<c:set var="instrTypeEncoded" value="udsneuroexam3"/>
<c:import url="/WEB-INF/jsp/crms/assessment/instrument/include.jsp">
	<c:param name="instrTypeEncoded" value="${instrTypeEncoded}"/>
</c:import>
<c:set var="entity" value="${instrTypeEncoded}"/>
<c:set var="packetType">
	<tags:componentProperty component="instrument" property="packet"/>
</c:set>

<c:set var="controlMode" value="lv"/>
<%-- edit settings (for 'enterReview' flow, componentView is 'enter', just like for 'enter' flow  --%>
<c:choose>
	<c:when test="${componentView == 'enter' || componentView == 'doubleEnter' || componentView == 'compare'}">
		<c:set var="controlMode" value="le"/>
	</c:when>
</c:choose>	


<%-- instrument-specific focusField setting (include.jsp has common focusField settings) --%>
<c:choose>
	<c:when test="${componentView == 'doubleEnter' || componentView == 'compare'}">
		<c:set var="focusField" value="normexam"/>
	</c:when>
</c:choose>	

<page:applyDecorator name="component.content">
  <page:param name="isInstrument">true</page:param> 
  <page:param name="component">${instrTypeEncoded}</page:param> 
  <page:param name="focusField">${focusField}</page:param>
  <page:param name="pageHeadingArgs">B8: UDS Neurological Examination Findings</page:param>
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
  <page:param name="section"><spring:message code="udsneuroexam3.abnormal.section"/></page:param>
  <page:param name="view">${componentView}</page:param>
  <page:param name="instructions"> </page:param>
<tags:createField property="normexam" entity="${entity}" component="${component}"/>
</page:applyDecorator>

<page:applyDecorator name="component.instrument.section">
  <page:param name="section"><spring:message code="udsneuroexam3.findings.section"/></page:param>
  <page:param name="view">${componentView}</page:param>
  <page:param name="instructions"> </page:param>

still have to do Hibernate mapping
skip logic
put in Git!!!

	<tags:createField property="parksign" component="${component}" entity="${instrTypeEncoded}"/>
	
	<tags:tableForm>  
		<tags:listRow>
			<tags:listColumnHeader label="&nbsp;" width="80%"/>
			<tags:listColumnHeader labelKey="udsneuroexam3.leftHeader" width="10%"/>
			<tags:listColumnHeader labelKey="udsneuroexam3.rightHeader" width="10%"/>
		</tags:listRow>
		<tags:listRow>
			<tags:listCell><tags:outputText textKey="udsneuroexam3.resting" inline="false"/></tags:listCell>
			<tags:listCell><tags:createField property="resttrl" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
			<tags:listCell><tags:createField property="resttrr" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
		</tags:listRow>
		<tags:listRow>
			<tags:listCell><tags:outputText textKey="udsneuroexam3.slowing" inline="false"/></tags:listCell>
			<tags:listCell><tags:createField property="slowingl" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
			<tags:listCell><tags:createField property="slowingr" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
		</tags:listRow>
		<tags:listRow>
			<tags:listCell><tags:outputText textKey="udsneuroexam3.rigidity" inline="false"/></tags:listCell>
			<tags:listCell><tags:createField property="rigidl" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
			<tags:listCell><tags:createField property="rigidr" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
		</tags:listRow>
	</tags:tableForm>	
	
	<tags:tableForm>  
		<tags:listRow>
			<tags:listColumnHeader label="&nbps;" width="80%"/>
			<tags:listColumnHeader label="&nbps;" width="20%"/>
		</tags:listRow>
		<tags:listRow>
			<tags:listCell><tags:outputText textKey="udsneuroexam3.brady" inline="false"/></tags:listCell>
			<tags:listCell><tags:createField property="brady" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
		</tags:listRow>
		<tags:listRow>
			<tags:listCell><tags:outputText textKey="udsneuroexam3.gait" inline="false"/></tags:listCell>
			<tags:listCell><tags:createField property="parkgait" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
		</tags:listRow>
		<tags:listRow>
			<tags:listCell><tags:outputText textKey="udsneuroexam3.postural" inline="false"/></tags:listCell>
			<tags:listCell><tags:createField property="postinst" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
		</tags:listRow>
	</tags:tableForm>	
	
	<tags:createField property="cvdsigns" component="${component}" entity="${instrTypeEncoded}"/>
	
	<tags:tableForm>  
		<tags:listRow>
			<tags:listColumnHeader label="&nbps;" width="80%"/>
			<tags:listColumnHeader labelKey="udsneuroexam3.presentHeader" width="20%"/>
		</tags:listRow>
		<tags:listRow>
			<tags:listCell><tags:outputText textKey="udsneuroexam3.corticaDeficit" inline="false"/></tags:listCell>
			<tags:listCell><tags:createField property="cortdef" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
		</tags:listRow>
		<tags:listRow>
			<tags:listCell><tags:outputText textKey="udsneuroexam3.focal" inline="false"/></tags:listCell>
			<tags:listCell><tags:createField property="sivdfind" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
		</tags:listRow>
	</tags:tableForm>	

	<tags:tableForm>  
		<tags:listRow>
			<tags:listColumnHeader labelKey="udsneuroexam3.parkSignsHeader" width="80%"/>
			<tags:listColumnHeader labelKey="udsneuroexam3.leftHeader" width="10%"/>
			<tags:listColumnHeader labelKey="udsneuroexam3.rightHeader" width="10%"/>
		</tags:listRow>
		<tags:listRow>
			<tags:listCell><tags:outputText textKey="udsneuroexam3.motor" inline="false"/></tags:listCell>
			<tags:listCell><tags:createField property="cvdmotl" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
			<tags:listCell><tags:createField property="cvdmotr" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
		</tags:listRow>
		<tags:listRow>
			<tags:listCell><tags:outputText textKey="udsneuroexam3.corticalLoss" inline="false"/></tags:listCell>
			<tags:listCell><tags:createField property="cortvisl" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
			<tags:listCell><tags:createField property="cortvisr component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
		</tags:listRow>
		<tags:listRow>
			<tags:listCell><tags:outputText textKey="udsneuroexam3.somatosensory" inline="false"/></tags:listCell>
			<tags:listCell><tags:createField property="somatl" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
			<tags:listCell><tags:createField property="somatr" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
		</tags:listRow>
	</tags:tableForm>	

	<tags:createField property="postcort" component="${component}" entity="${instrTypeEncoded}"/>

	<tags:createField property="pspcbs" component="${component}" entity="${instrTypeEncoded}"/>

	<tags:tableForm>  
		<tags:listRow>
			<tags:listColumnHeader label="&nbps;" width="80%"/>
			<tags:listColumnHeader labelKey="udsneuroexam3.presentHeader" width="20%"/>
		</tags:listRow>
		<tags:listRow>
			<tags:listCell><tags:outputText textKey="udsneuroexam3.eyeMovement" inline="false"/></tags:listCell>
			<tags:listCell><tags:createField property="eyepsp" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
		</tags:listRow>
		<tags:listRow>
			<tags:listCell><tags:outputText textKey="udsneuroexam3.dysarthria" inline="false"/></tags:listCell>
			<tags:listCell><tags:createField property="dyspsp" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
		</tags:listRow>
		<tags:listRow>
			<tags:listCell><tags:outputText textKey="udsneuroexam3.axial" inline="false"/></tags:listCell>
			<tags:listCell><tags:createField property="axialpsp" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
		</tags:listRow>
		<tags:listRow>
			<tags:listCell><tags:outputText textKey="udsneuroexam3.gaitPSP" inline="false"/></tags:listCell>
			<tags:listCell><tags:createField property="gaitpsp" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
		</tags:listRow>
		<tags:listRow>
			<tags:listCell><tags:outputText textKey="udsneuroexam3.apraxia" inline="false"/></tags:listCell>
			<tags:listCell><tags:createField property="apraxsp" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
		</tags:listRow>
	</tags:tableForm>	

	<tags:tableForm>  
		<tags:listRow>
			<tags:listColumnHeader label="&nbsp;" width="80%"/>
			<tags:listColumnHeader labelKey="udsneuroexam3.leftHeader" width="10%"/>
			<tags:listColumnHeader labelKey="udsneuroexam3.rightHeader" width="10%"/>
		</tags:listRow>
		<tags:listRow>
			<tags:listCell><tags:outputText textKey="udsneuroexam3.apraxiaCBS" inline="false"/></tags:listCell>
			<tags:listCell><tags:createField property="apraxl" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
			<tags:listCell><tags:createField property="apraxr" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
		</tags:listRow>
		<tags:listRow>
			<tags:listCell><tags:outputText textKey="udsneuroexam3.corticalCBS" inline="false"/></tags:listCell>
			<tags:listCell><tags:createField property="cortsenl" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
			<tags:listCell><tags:createField property="cortsenr" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
		</tags:listRow>
		<tags:listRow>
			<tags:listCell><tags:outputText textKey="udsneuroexam3.ataxia" inline="false"/></tags:listCell>
			<tags:listCell><tags:createField property="ataxl" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
			<tags:listCell><tags:createField property="ataxr" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
		</tags:listRow>
		<tags:listRow>
			<tags:listCell><tags:outputText textKey="udsneuroexam3.alien" inline="false"/></tags:listCell>
			<tags:listCell><tags:createField property="alienlml" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
			<tags:listCell><tags:createField property="alienlmr" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
		</tags:listRow>
		<tags:listRow>
			<tags:listCell><tags:outputText textKey="udsneuroexam3.dystonia" inline="false"/></tags:listCell>
			<tags:listCell><tags:createField property="dystonl" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
			<tags:listCell><tags:createField property="dystonr" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
		</tags:listRow>
		<tags:listRow>
			<tags:listCell><tags:outputText textKey="udsneuroexam3.myoclonus" inline="false"/></tags:listCell>
			<tags:listCell><tags:createField property="myocll" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
			<tags:listCell><tags:createField property="myoclr" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
		</tags:listRow>
	</tags:tableForm>	
	
	<tags:createField property="alsfind" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="gaitnph" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="othneur" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="othneurx" component="${component}" entity="${instrTypeEncoded}"/>

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

<ui:formGuide simulateEvents="${(current == 0 && componentView != 'compare') || (current == 1) ? 'true' : ''}">
</ui:formGuide>
  </c:if>
</c:forEach>
</c:if>

</page:applyDecorator>    
</page:applyDecorator>    
	    
