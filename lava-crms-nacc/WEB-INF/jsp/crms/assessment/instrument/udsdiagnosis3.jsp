<%@ include file="/WEB-INF/jsp/includes/include.jsp" %>
<c:set var="instrTypeEncoded" value="udsdiagnosis3"/>
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
		<c:set var="focusField" value="dxmethod"/>
	</c:when>
</c:choose>	

<page:applyDecorator name="component.content">
  <page:param name="isInstrument">true</page:param> 
  <page:param name="component">${instrTypeEncoded}</page:param> 
  <page:param name="focusField">${focusField}</page:param>
  <page:param name="pageHeadingArgs">UDS Diagnosis</page:param>
  <page:param name="quicklinks">section1,section2,section3</page:param>
   
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
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="dxmethod" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="dxmethod" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="dxmethod" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
</tags:tableForm>	
</page:applyDecorator>

<tags:sectionQuicklink requestUrl="${requestUrl}" sectionId="top" sourceSectionId="section1" linkTextKey="top.quicklink"/>
<page:applyDecorator name="component.instrument.section">
  <page:param name="section"><spring:message code="udsdiagnosis3.section1.section"/></page:param>
  <page:param name="view">${componentView}</page:param>
  <page:param name="instructions"> </page:param>
	
<tags:tableForm>
<tags:listRow>
	<tags:listColumnHeader styleClass="noRight" labelKey="" width="5%"/>
	<tags:listColumnHeader styleClass="noLeft noRight" labelKey="" width="45%"/>
	<tags:listColumnHeader styleClass="noLeft" labelKey="" width="45%"/>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="normCog" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="normCog" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="normCog" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="demented" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="demented" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="demented" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="amndem" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="amndem" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="amndem" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="pca" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="pca" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="pca" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="ppasyn" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="ppasyn" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="ppasyn" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="ppasynt" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="ppasynt" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="ppasynt" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="ftdsyn" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="ftdsyn" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="ftdsyn" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="lbdsyn" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="lbdsyn" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="lbdsyn" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="namndem" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="namndem" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="namndem" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="mciaMem" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="mciaMem" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="mciaMem" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="mciaPlus" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="mciaPlus" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="mciaPlus" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="mciaPLan" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="mciaPLan" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="mciaPLan" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="mciaPAtt" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="mciaPAtt" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="mciaPAtt" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="mciaPEx" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="mciaPEx" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="mciaPEx" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="mciaPVis" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="mciaPVis" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="mciaPVis" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="mciNon1" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="mciNon1" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="mciNon1" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="mciN1Lan" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="mciN1Lan" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="mciN1Lan" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="mciN1Att" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="mciN1Att" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="mciN1Att" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="mciN1Ex" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="mciN1Ex" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="mciN1Ex" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="mciN1Vis" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="mciN1Vis" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="mciN1Vis" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="mciNon2" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="mciNon2" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="mciNon2" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="mciN2Lan" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="mciN2Lan" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="mciN2Lan" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="mciN2Att" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="mciN2Att" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="mciN2Att" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="mciN2Ex" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="mciN2Ex" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="mciN2Ex" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="mciN2Vis" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="mciN2Vis" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="mciN2Vis" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="impNoMci" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="impNoMci" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="impNoMci" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
</tags:tableForm>
</page:applyDecorator>

<tags:sectionQuicklink requestUrl="${requestUrl}" sectionId="top" sourceSectionId="section2" linkTextKey="top.quicklink"/>
<page:applyDecorator name="component.instrument.section">
  <page:param name="section"><spring:message code="udsdiagnosis3.section2.section"/></page:param>
  <page:param name="view">${componentView}</page:param>
  <page:param name="instructions"> </page:param>
	
<tags:tableForm>
<tags:listRow>
	<tags:listColumnHeader styleClass="noRight" labelKey="" width="5%"/>
	<tags:listColumnHeader styleClass="noLeft noRight" labelKey="" width="45%"/>
	<tags:listColumnHeader styleClass="noLeft" labelKey="" width="45%"/>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="amylpet" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="amylpet" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="amylpet" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="amylcsf" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="amylcsf" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="amylcsf" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="fdgad" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="fdgad" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="fdgad" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="hippatr" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="hippatr" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="hippatr" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="taupetad" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="taupetad" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="taupetad" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="csftau" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="csftau" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="csftau" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="fdgftld" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="fdgftld" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="fdgftld" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="tpetftld" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="tpetftld" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="tpetftld" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="mrftld" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="mrftld" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="mrftld" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="datscan" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="datscan" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="datscan" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="othbiom" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="othbiom" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="othbiom" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="othbiomx" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="othbiomx" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="othbiomx" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="imaglinf" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="imaglinf" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="imaglinf" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="imaglac" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="imaglac" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="imaglac" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="imagmach" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="imagmach" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="imagmach" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="imagmich" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="imagmich" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="imagmich" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="imagmwmh" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="imagmwmh" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="imagmwmh" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="imagewmh" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="imagewmh" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="imagewmh" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="admut" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="admut" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="admut" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="ftldmut" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="ftldmut" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="ftldmut" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="othmut" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="othmut" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="othmut" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="othmutx" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:outputMetadata attribName="label" property="othmutx" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell><tags:createField property="othmutx" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
</tags:tableForm>
</page:applyDecorator>

<tags:sectionQuicklink requestUrl="${requestUrl}" sectionId="top" sourceSectionId="section3" linkTextKey="top.quicklink"/>
<page:applyDecorator name="component.instrument.section">
  <page:param name="section"><spring:message code="udsdiagnosis3.section3.section"/></page:param>
  <page:param name="view">${componentView}</page:param>
  <page:param name="instructions"> </page:param>
	
<tags:tableForm>
<tags:listRow>
	<tags:listColumnHeader styleClass="hidden" width="5%"/>
	<tags:listColumnHeader styleClass="hidden" width="35%"/>
	<tags:listColumnHeader styleClass="hidden" width="25%"/>
	<tags:listColumnHeader styleClass="hidden" width="10%"/>
	<tags:listColumnHeader styleClass="hidden" width="25%"/>
</tags:listRow>
<tags:listRow>
	<tags:listColumnHeader colspan="3" styleClass="" label="Present / Absent"/>
	<tags:listColumnHeader colspan="2" styleClass="" label="Primary / Contributing / Non-contributing"/>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="alzdis" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft noRight"><tags:outputMetadata attribName="label" property="alzdis" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="alzdis" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell styleClass="noLeft noRight"><tags:outputMetadata attribName="label" property="alzdisif" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="alzdisif" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="lbdis" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft noRight"><tags:outputMetadata attribName="label" property="lbdis" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="lbdis" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell styleClass="noLeft noRight"><tags:outputMetadata attribName="label" property="lbdif" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="lbdif" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="park" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft noRight"><tags:outputMetadata attribName="label" property="park" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="park" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell colspan="2"></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="msa" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft noRight"><tags:outputMetadata attribName="label" property="msa" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="msa" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell styleClass="noLeft noRight"><tags:outputMetadata attribName="label" property="msaif" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="msaif" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="psp" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft noRight"><tags:outputMetadata attribName="label" property="psp" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="psp" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell styleClass="noLeft noRight"><tags:outputMetadata attribName="label" property="pspIf" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="pspIf" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="cort" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft noRight"><tags:outputMetadata attribName="label" property="cort" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="cort" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell styleClass="noLeft noRight"><tags:outputMetadata attribName="label" property="cortIf" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="cortIf" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="ftldmo" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft noRight"><tags:outputMetadata attribName="label" property="ftldmo" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="ftldmo" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell styleClass="noLeft noRight"><tags:outputMetadata attribName="label" property="ftldmoif" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="ftldmoif" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="ftldnos" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft noRight"><tags:outputMetadata attribName="label" property="ftldnos" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="ftldnos" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell styleClass="noLeft noRight"><tags:outputMetadata attribName="label" property="ftldnoif" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="ftldnoif" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="ftldsubt" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft noRight"><tags:outputMetadata attribName="label" property="ftldsubt" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="ftldsubt" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell colspan="2"></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="ftldsubx" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft noRight"><tags:outputMetadata attribName="label" property="ftldsubx" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="ftldsubx" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell colspan="2"></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="cvd" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft noRight"><tags:outputMetadata attribName="label" property="cvd" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="cvd" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell styleClass="noLeft noRight"><tags:outputMetadata attribName="label" property="cvdif" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="cvdif" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="prevstk" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft noRight indent1"><tags:outputMetadata attribName="label" property="prevstk" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="prevstk" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell colspan="2"></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="strokdec" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft noRight indent2"><tags:outputMetadata attribName="label" property="strokdec" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="strokdec" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell colspan="2"></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="stkimag" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft noRight indent2"><tags:outputMetadata attribName="label" property="stkimag" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="stkimag" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell colspan="2"></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="infnetw" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft noRight indent1"><tags:outputMetadata attribName="label" property="infnetw" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="infnetw" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell colspan="2"></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="infwmh" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft noRight indent1"><tags:outputMetadata attribName="label" property="infwmh" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="infwmh" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell colspan="2"></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="esstrem" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft noRight"><tags:outputMetadata attribName="label" property="esstrem" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="esstrem" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell styleClass="noLeft noRight"><tags:outputMetadata attribName="label" property="esstreif" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="esstreif" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="downs" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft noRight"><tags:outputMetadata attribName="label" property="downs" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="downs" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell styleClass="noLeft noRight"><tags:outputMetadata attribName="label" property="downsIf" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="downsIf" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="hunt" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft noRight"><tags:outputMetadata attribName="label" property="hunt" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="hunt" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell styleClass="noLeft noRight"><tags:outputMetadata attribName="label" property="huntIf" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="huntIf" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="prion" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft noRight"><tags:outputMetadata attribName="label" property="prion" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="prion" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell styleClass="noLeft noRight"><tags:outputMetadata attribName="label" property="prionIf" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="prionIf" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="brnInj" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft noRight"><tags:outputMetadata attribName="label" property="brnInj" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="brnInj" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell styleClass="noLeft noRight"><tags:outputMetadata attribName="label" property="brnInjIf" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="brnInjIf" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="brnincte" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft noRight"><tags:outputMetadata attribName="label" property="brnincte" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="brnincte" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell colspan="2"></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="hyceph" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft noRight"><tags:outputMetadata attribName="label" property="hyceph" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="hyceph" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell styleClass="noLeft noRight"><tags:outputMetadata attribName="label" property="hycephIf" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="hycephIf" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="epilep" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft noRight"><tags:outputMetadata attribName="label" property="epilep" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="epilep" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell styleClass="noLeft noRight"><tags:outputMetadata attribName="label" property="epilepif" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="epilepif" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="neop" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft noRight"><tags:outputMetadata attribName="label" property="neop" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="neop" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell styleClass="noLeft noRight"><tags:outputMetadata attribName="label" property="neopIf" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="neopIf" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="neopstat" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft noRight"><tags:outputMetadata attribName="label" property="neopstat" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="neopstat" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell colspan="2"></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="hiv" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft noRight"><tags:outputMetadata attribName="label" property="hiv" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="hiv" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell styleClass="noLeft noRight"><tags:outputMetadata attribName="label" property="hivif" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="hivif" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="othcog" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft noRight"><tags:outputMetadata attribName="label" property="othcog" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="othcog" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell styleClass="noLeft noRight"><tags:outputMetadata attribName="label" property="othcogif" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="othcogif" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="othcogx" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft noRight"><tags:outputMetadata attribName="label" property="othcogx" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="othcogx" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell colspan="2"></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="dep" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft noRight"><tags:outputMetadata attribName="label" property="dep" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="dep" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell styleClass="noLeft noRight"><tags:outputMetadata attribName="label" property="depIf" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="depIf" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="deptreat" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft noRight"><tags:outputMetadata attribName="label" property="deptreat" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="deptreat" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell colspan="2"></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="bipoldx" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft noRight"><tags:outputMetadata attribName="label" property="bipoldx" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="bipoldx" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell styleClass="noLeft noRight"><tags:outputMetadata attribName="label" property="bipoldif" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="bipoldif" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="schizop" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft noRight"><tags:outputMetadata attribName="label" property="schizop" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="schizop" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell styleClass="noLeft noRight"><tags:outputMetadata attribName="label" property="schizoif" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="schizoif" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="anxiet" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft noRight"><tags:outputMetadata attribName="label" property="anxiet" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="anxiet" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell styleClass="noLeft noRight"><tags:outputMetadata attribName="label" property="anxietif" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="anxietif" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="delir" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft noRight"><tags:outputMetadata attribName="label" property="delir" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="delir" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell styleClass="noLeft noRight"><tags:outputMetadata attribName="label" property="delirif" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="delirif" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="ptsddx" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft noRight"><tags:outputMetadata attribName="label" property="ptsddx" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="ptsddx" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell styleClass="noLeft noRight"><tags:outputMetadata attribName="label" property="ptsddxif" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="ptsddxif" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="othPsy" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft noRight"><tags:outputMetadata attribName="label" property="othPsy" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="othPsy" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell styleClass="noLeft noRight"><tags:outputMetadata attribName="label" property="othPsyIf" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="othPsyIf" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="othpsyx" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft noRight"><tags:outputMetadata attribName="label" property="othpsyx" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="othpsyx" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell colspan="2"></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="alcDem" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft noRight"><tags:outputMetadata attribName="label" property="alcDem" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="alcDem" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell styleClass="noLeft noRight"><tags:outputMetadata attribName="label" property="alcDemIf" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="alcDemIf" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="alcabuse" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft noRight"><tags:outputMetadata attribName="label" property="alcabuse" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="alcabuse" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell colspan="2"></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="impsub" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft noRight"><tags:outputMetadata attribName="label" property="impsub" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="impsub" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell styleClass="noLeft noRight"><tags:outputMetadata attribName="label" property="impsubif" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="impsubif" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="dysIll" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft noRight"><tags:outputMetadata attribName="label" property="dysIll" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="dysIll" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell styleClass="noLeft noRight"><tags:outputMetadata attribName="label" property="dysIllIf" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="dysIllIf" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="meds" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft noRight"><tags:outputMetadata attribName="label" property="meds" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="meds" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell styleClass="noLeft noRight"><tags:outputMetadata attribName="label" property="medsIf" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="medsIf" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="cogOth" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft noRight"><tags:outputMetadata attribName="label" property="cogOth" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="cogOth" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell styleClass="noLeft noRight"><tags:outputMetadata attribName="label" property="cogOthIf" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="cogOthIf" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="cogOthx" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft noRight"><tags:outputMetadata attribName="label" property="cogOthx" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="cogOthx" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell colspan="2"></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="cogOth2" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft noRight"><tags:outputMetadata attribName="label" property="cogOth2" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="cogOth2" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell styleClass="noLeft noRight"><tags:outputMetadata attribName="label" property="cogOth2If" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="cogOth2If" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="cogOth2x" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft noRight"><tags:outputMetadata attribName="label" property="cogOth2x" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="cogOth2x" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell colspan="2"></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="cogOth3" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft noRight"><tags:outputMetadata attribName="label" property="cogOth3" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="cogOth3" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell styleClass="noLeft noRight"><tags:outputMetadata attribName="label" property="cogOth3If" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="cogOth3If" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
</tags:listRow>
<tags:listRow>
	<tags:listCell styleClass="noRight right"><tags:outputMetadata attribName="label2" property="cogOth3x" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft noRight"><tags:outputMetadata attribName="label" property="cogOth3x" entity="${instrTypeEncoded}"/></tags:listCell>
	<tags:listCell styleClass="noLeft"><tags:createField property="cogOth3x" component="${component}" entity="${instrTypeEncoded}" mode="${controlMode}"/></tags:listCell>
	<tags:listCell colspan="2"></tags:listCell>
</tags:listRow>
</tags:tableForm>
</page:applyDecorator>

<page:applyDecorator name="component.instrument.section">
	<page:param name="sectionId">anonymous</page:param>
	<page:param name="view">${componentView}</page:param>
	<page:param name="instructions"> </page:param>
	<tags:createField property="notes['udsdiagnosis3']" entity="${instrTypeEncoded}" component="${component}" metadataName="instrument.sectionNote" labelAlignment="top" dataStyle="instrNote"/>
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
  <ui:observe elementIds="normCog" forValue="^1" component="${component}" />
  <ui:skip elementIds="demented,amndem,pca,ppasyn,ppasynt,ftdsyn,lbdsyn,namndem,mciaMem,mciaPlus,mciaPLan,mciaPAtt,mciaPEx,mciaPVis,mciNon1,mciN1Lan,mciN1Att,mciN1Ex,mciN1Vis,mciNon2,mciN2Lan,mciN2Att,mciN2Ex,mciN2Vis,impNoMci" component="${component}" />
</ui:formGuide>
<ui:formGuide>
  <%-- ignore if normCog is not 1 or error code, i.e. anything other than No (0) --%>
  <ui:ignore elementIds="normCog" component="${component}" forValue="^0" negate="true" />
  <ui:observe elementIds="demented" forValue="^0" component="${component}" />
  <ui:skip elementIds="amndem,pca,ppasyn,ppasynt,ftdsyn,lbdsyn,namndem" component="${component}" />
</ui:formGuide>    
<ui:formGuide>
  <%-- ignore if demented is anything other than No (0) --%>
  <ui:ignore elementIds="demented" component="${component}" forValue="^0" negate="true" />
  <ui:observe elementIds="mciaPlus" component="${component}" forValue="^1" />
  <ui:unskip elementIds="mciaPLan,mciaPAtt,mciaPEx,mciaPVis" component="${component}" />
</ui:formGuide>      
<ui:formGuide>
  <ui:ignore elementIds="demented" component="${component}" forValue="^0" negate="true" />
  <ui:observe elementIds="mciNon1" component="${component}" forValue="^1" />
  <ui:unskip elementIds="mciN1Lan,mciN1Att,mciN1Ex,mciN1Vis" component="${component}" />
</ui:formGuide>      
<ui:formGuide>
  <ui:ignore elementIds="demented" component="${component}" forValue="^0" negate="true" />
  <ui:observe elementIds="mciNon2" component="${component}" forValue="^1" />
  <ui:unskip elementIds="mciN2Lan,mciN2Att,mciN2Ex,mciN2Vis" component="${component}" />
</ui:formGuide>             
<ui:formGuide>
  <ui:observe elementIds="othbiom" component="${component}" forValue="^1" />
  <ui:unskip elementIds="othbiomx" component="${component}"/>
</ui:formGuide>   
<ui:formGuide>
  <ui:observe elementIds="othmut" component="${component}" forValue="^1" />
  <ui:unskip elementIds="othmutx" component="${component}"/>
</ui:formGuide>

<!-- present/primary, contributing, non-contributing skip logic for section 3 -->
<ui:formGuide>
  <ui:ignore elementIds="normCog" component="${component}" forValue="^1" />
  <ui:observe elementIds="alzdis" component="${component}" forValue="^1" />
  <ui:unskip elementIds="alzdisif" component="${component}" />
</ui:formGuide>
<ui:formGuide>
  <ui:ignore elementIds="normCog" component="${component}" forValue="^1" />
  <ui:observe elementIds="lbdis" component="${component}" forValue="^1" />
  <ui:unskip elementIds="lbdif" component="${component}" />
</ui:formGuide>
<ui:formGuide>
  <ui:ignore elementIds="normCog" component="${component}" forValue="^1" />
  <ui:observe elementIds="msa" component="${component}" forValue="^1" />
  <ui:unskip elementIds="msaif" component="${component}" />
</ui:formGuide>
<ui:formGuide>
  <ui:ignore elementIds="normCog" component="${component}" forValue="^1" />
  <ui:observe elementIds="psp" component="${component}" forValue="^1" />
  <ui:unskip elementIds="pspIf" component="${component}" />
</ui:formGuide>
<ui:formGuide>
  <ui:ignore elementIds="normCog" component="${component}" forValue="^1" />
  <ui:observe elementIds="cort" component="${component}" forValue="^1" />
  <ui:unskip elementIds="cortIf" component="${component}" />
</ui:formGuide>
<ui:formGuide>
  <ui:ignore elementIds="normCog" component="${component}" forValue="^1" />
  <ui:observe elementIds="ftldmo" component="${component}" forValue="^1" />
  <ui:unskip elementIds="ftldmoif" component="${component}" />
</ui:formGuide>
<ui:formGuide>
  <ui:ignore elementIds="normCog" component="${component}" forValue="^1" />
  <ui:observe elementIds="ftldnos" component="${component}" forValue="^1" />
  <ui:unskip elementIds="ftldnoif" component="${component}" />
</ui:formGuide>
<ui:formGuide>
  <ui:ignore elementIds="normCog" component="${component}" forValue="^1" />
  <ui:observe elementIds="cvd" component="${component}" forValue="^1" />
  <ui:unskip elementIds="cvdif" component="${component}" />
</ui:formGuide>
<ui:formGuide>
  <ui:ignore elementIds="normCog" component="${component}" forValue="^1" />
  <ui:observe elementIds="esstrem" component="${component}" forValue="^1" />
  <ui:unskip elementIds="esstreif" component="${component}" />
</ui:formGuide>
<ui:formGuide>
  <ui:ignore elementIds="normCog" component="${component}" forValue="^1" />
  <ui:observe elementIds="downs" component="${component}" forValue="^1" />
  <ui:unskip elementIds="downsIf" component="${component}" />
</ui:formGuide>
<ui:formGuide>
  <ui:ignore elementIds="normCog" component="${component}" forValue="^1" />
  <ui:observe elementIds="hunt" component="${component}" forValue="^1" />
  <ui:unskip elementIds="huntIf" component="${component}" />
</ui:formGuide>
<ui:formGuide>
  <ui:ignore elementIds="normCog" component="${component}" forValue="^1" />
  <ui:observe elementIds="prion" component="${component}" forValue="^1" />
  <ui:unskip elementIds="prionIf" component="${component}" />
</ui:formGuide>
<ui:formGuide>
  <ui:ignore elementIds="normCog" component="${component}" forValue="^1" />
  <ui:observe elementIds="brnInj" component="${component}" forValue="^1" />
  <ui:unskip elementIds="brnInjIf" component="${component}" />
</ui:formGuide>
<ui:formGuide>
  <ui:ignore elementIds="normCog" component="${component}" forValue="^1" />
  <ui:observe elementIds="hyceph" component="${component}" forValue="^1" />
  <ui:unskip elementIds="hycephIf" component="${component}" />
</ui:formGuide>
<ui:formGuide>
  <ui:ignore elementIds="normCog" component="${component}" forValue="^1" />
  <ui:observe elementIds="epilep" component="${component}" forValue="^1" />
  <ui:unskip elementIds="epilepif" component="${component}" />
</ui:formGuide>
<ui:formGuide>
  <ui:ignore elementIds="normCog" component="${component}" forValue="^1" />
  <ui:observe elementIds="neop" component="${component}" forValue="^1" />
  <ui:unskip elementIds="neopIf" component="${component}" />
</ui:formGuide>
<ui:formGuide>
  <ui:ignore elementIds="normCog" component="${component}" forValue="^1" />
  <ui:observe elementIds="hiv" component="${component}" forValue="^1" />
  <ui:unskip elementIds="hivif" component="${component}" />
</ui:formGuide>
<ui:formGuide>
  <ui:ignore elementIds="normCog" component="${component}" forValue="^1" />
  <ui:observe elementIds="othcog" component="${component}" forValue="^1" />
  <ui:unskip elementIds="othcogif" component="${component}" />
</ui:formGuide>
<ui:formGuide>
  <ui:ignore elementIds="normCog" component="${component}" forValue="^1" />
  <ui:observe elementIds="dep" component="${component}" forValue="^1" />
  <ui:unskip elementIds="depIf" component="${component}" />
</ui:formGuide>
<ui:formGuide>
  <ui:ignore elementIds="normCog" component="${component}" forValue="^1" />
  <ui:observe elementIds="bipoldx" component="${component}" forValue="^1" />
  <ui:unskip elementIds="bipoldif" component="${component}" />
</ui:formGuide>
<ui:formGuide>
  <ui:ignore elementIds="normCog" component="${component}" forValue="^1" />
  <ui:observe elementIds="schizop" component="${component}" forValue="^1" />
  <ui:unskip elementIds="schizoif" component="${component}" />
</ui:formGuide>
<ui:formGuide>
  <ui:ignore elementIds="normCog" component="${component}" forValue="^1" />
  <ui:observe elementIds="anxiet" component="${component}" forValue="^1" />
  <ui:unskip elementIds="anxietif" component="${component}" />
</ui:formGuide>
<ui:formGuide>
  <ui:ignore elementIds="normCog" component="${component}" forValue="^1" />
  <ui:observe elementIds="delir" component="${component}" forValue="^1" />
  <ui:unskip elementIds="delirif" component="${component}" />
</ui:formGuide>
<ui:formGuide>
  <ui:ignore elementIds="normCog" component="${component}" forValue="^1" />
  <ui:observe elementIds="ptsddx" component="${component}" forValue="^1" />
  <ui:unskip elementIds="ptsddxif" component="${component}" />
</ui:formGuide>
<ui:formGuide>
  <ui:ignore elementIds="normCog" component="${component}" forValue="^1" />
  <ui:observe elementIds="othPsy" component="${component}" forValue="^1" />
  <ui:unskip elementIds="othPsyIf" component="${component}" />
</ui:formGuide>
<ui:formGuide>
  <ui:ignore elementIds="normCog" component="${component}" forValue="^1" />
  <ui:observe elementIds="alcDem" component="${component}" forValue="^1" />
  <ui:unskip elementIds="alcDemIf" component="${component}" />
</ui:formGuide>
<ui:formGuide>
  <ui:ignore elementIds="normCog" component="${component}" forValue="^1" />
  <ui:observe elementIds="impsub" component="${component}" forValue="^1" />
  <ui:unskip elementIds="impsubif" component="${component}" />
</ui:formGuide>
<ui:formGuide>
  <ui:ignore elementIds="normCog" component="${component}" forValue="^1" />
  <ui:observe elementIds="dysIll" component="${component}" forValue="^1" />
  <ui:unskip elementIds="dysIllIf" component="${component}" />
</ui:formGuide>
<ui:formGuide>
  <ui:ignore elementIds="normCog" component="${component}" forValue="^1" />
  <ui:observe elementIds="meds" component="${component}" forValue="^1" />
  <ui:unskip elementIds="medsIf" component="${component}" />
</ui:formGuide>
<ui:formGuide>
  <ui:ignore elementIds="normCog" component="${component}" forValue="^1" />
  <ui:observe elementIds="cogOth" component="${component}" forValue="^1" />
  <ui:unskip elementIds="cogOthIf" component="${component}" />
</ui:formGuide>
<ui:formGuide>
  <ui:ignore elementIds="normCog" component="${component}" forValue="^1" />
  <ui:observe elementIds="cogOth2" component="${component}" forValue="^1" />
  <ui:unskip elementIds="cogOth2If" component="${component}" />
</ui:formGuide>
<ui:formGuide>
  <ui:ignore elementIds="normCog" component="${component}" forValue="^1" />
  <ui:observe elementIds="cogOth3" component="${component}" forValue="^1" />
  <ui:unskip elementIds="cogOth3If" component="${component}" />
</ui:formGuide>

<!-- rest of skip logic for section 3 -->
<ui:formGuide>
  <ui:observe elementIds="lbdis" component="${component}" forValue="^1" />
  <ui:unskip elementIds="park" component="${component}"/>
</ui:formGuide>
<ui:formGuide observeAndOr="or">
  <ui:observe elementIds="psp,cort,ftldmo,ftldnos" component="${component}" forValue="^1" />
  <ui:unskip elementIds="ftldsubt" component="${component}"/>
</ui:formGuide>
<ui:formGuide>
  <ui:depends elementIds="psp,cort,ftldmo,ftldnos" component="${component}" />
  <ui:observe elementIds="ftldsubt" component="${component}" forValue="^3" />
  <ui:unskip elementIds="ftldsubx" component="${component}"/>
</ui:formGuide>
<ui:formGuide>
  <ui:observe elementIds="cvd" component="${component}" forValue="^1" />
  <ui:unskip elementIds="prevstk,strokdec,stkimag,infnetw,infwmh" component="${component}"/>
</ui:formGuide>
<ui:formGuide>
  <ui:depends elementIds="cvd" component="${component}" />
  <ui:observe elementIds="prevstk" component="${component}" forValue="^1" />
  <ui:unskip elementIds="strokdec,stkimag" component="${component}"/>
</ui:formGuide>
<ui:formGuide>
  <ui:observe elementIds="brnInj" component="${component}" forValue="^1" />
  <ui:unskip elementIds="brnincte" component="${component}"/>
</ui:formGuide>
<ui:formGuide>
  <ui:observe elementIds="neop" component="${component}" forValue="^1" />
  <ui:unskip elementIds="neopstat" component="${component}"/>
</ui:formGuide>
<ui:formGuide>
  <ui:observe elementIds="othcog" component="${component}" forValue="^1" />
  <ui:unskip elementIds="othcogx" component="${component}"/>
</ui:formGuide>
<ui:formGuide>
  <ui:observe elementIds="dep" component="${component}" forValue="^1" />
  <ui:unskip elementIds="deptreat" component="${component}"/>
</ui:formGuide>   
<ui:formGuide>
  <ui:observe elementIds="othPsy" component="${component}" forValue="^1" />
  <ui:unskip elementIds="othpsyx" component="${component}"/>
</ui:formGuide>   
<ui:formGuide>
  <ui:observe elementIds="alcDem" component="${component}" forValue="^1" />
  <ui:unskip elementIds="alcabuse" component="${component}"/>
</ui:formGuide>   
<ui:formGuide>
  <ui:observe elementIds="cogOth" component="${component}" forValue="^1" />
  <ui:unskip elementIds="cogOthx" component="${component}"/>
</ui:formGuide>   
<ui:formGuide>
  <ui:observe elementIds="cogOth2" component="${component}" forValue="^1" />
  <ui:unskip elementIds="cogOth2x" component="${component}"/>
</ui:formGuide>   
<ui:formGuide simulateEvents="${(current == 0 && componentView != 'compare') || (current == 1) ? 'true' : ''}">
  <ui:observe elementIds="cogOth3" component="${component}" forValue="^1" />
  <ui:unskip elementIds="cogOth3x" component="${component}"/>
</ui:formGuide>   

  </c:if>
</c:forEach>
</c:if>

</page:applyDecorator>    
</page:applyDecorator>    
	    