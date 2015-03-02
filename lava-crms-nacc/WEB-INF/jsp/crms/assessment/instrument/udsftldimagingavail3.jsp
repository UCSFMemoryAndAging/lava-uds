<%@ include file="/WEB-INF/jsp/includes/include.jsp" %>
<c:set var="instrTypeEncoded" value="udsftldimagingavail3"/>
<c:import url="/WEB-INF/jsp/crms/assessment/instrument/include.jsp">
	<c:param name="instrTypeEncoded" value="${instrTypeEncoded}"/>
</c:import>

<%-- instrument-specific focusField setting (include.jsp has common focusField settings) --%>
<c:choose>
	<c:when test="${componentView == 'doubleEnter' || componentView == 'compare'}">
		<c:set var="focusField" value="ftdsmri"/>
	</c:when>
</c:choose>	

<page:applyDecorator name="component.content">
  <page:param name="isInstrument">true</page:param> 
  <page:param name="component">${instrTypeEncoded}</page:param> 
  <page:param name="focusField">${focusField}</page:param>
  <page:param name="pageHeadingArgs">UDS FTLD Imaging Avail</page:param>
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
	
	<tags:createField property="ftdsmri" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdsmmo" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdsmdy" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdsmyr" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdsmdic" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdsmdis" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdsmadn" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdsmadv" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdsmman" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdsmmao" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdsmmam" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdsmfs" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdsmfso" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdsmqu" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdfdgpt" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdfpmo" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdfpdy" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdfpyr" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdfddic" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdfddid" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdfdadn" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdfdadv" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdfdman" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdfdmao" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdfdmam" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdfdqu" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdamypt" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdammo" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdamdy" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdamyr" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdamdic" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdamdid" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdamlig" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdamlio" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdamadn" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdamadv" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdamman" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdammao" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdammam" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdamqu" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdother" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdotdop" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdotser" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdotcho" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdotano" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdotans" component="${component}" entity="${instrTypeEncoded}"/>
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
  <ui:observe elementIds="ftdsmri" component="${component}" forValue="^0"/>
  <ui:skip elementIds="ftdsmmo,ftdsmdy,ftdsmyr,ftdsmdic,ftdsmdis,ftdsmadn,ftdsmadv,ftdsmman,ftdsmmao,ftdsmmam,ftdsmfs,ftdsmfso,ftdsmqu" component="${component}"/>
</ui:formGuide>

<ui:formGuide>
  <ui:observe elementIds="ftdsmdic" component="${component}" forValue="^1"/>
  <ui:unskip elementIds="ftdsmdis" component="${component}"/>
</ui:formGuide>

<ui:formGuide>
  <ui:observe elementIds="ftdsmadn" component="${component}" forValue="^1"/>
  <ui:unskip elementIds="ftdsmadv" component="${component}"/>
</ui:formGuide>

<ui:formGuide>
  <ui:observe elementIds="ftdsmman" component="${component}" forValue="^4"/>
  <ui:unskip elementIds="ftdsmmao" component="${component}"/>
</ui:formGuide>

<ui:formGuide>
  <ui:observe elementIds="ftdsmfs" component="${component}" forValue="^4"/>
  <ui:unskip elementIds="ftdsmfso" component="${component}"/>
</ui:formGuide>

<ui:formGuide>
  <ui:observe elementIds="ftdfdgpt" component="${component}" forValue="^1"/>
  <ui:unskip elementIds="ftdfpmo,ftdfpdy,ftdfpyr,ftdfddic,ftdfddid,ftdfdadn,ftdfdadv,ftdfdman,ftdfdmao,ftdfdmam,ftdfdqu" component="${component}"/>
</ui:formGuide>

<ui:formGuide>
  <ui:observe elementIds="ftdfddic" component="${component}" forValue="^1"/>
  <ui:unskip elementIds="ftdfddid" component="${component}"/>
</ui:formGuide>

<ui:formGuide>
  <ui:observe elementIds="ftdfdadn" component="${component}" forValue="^1"/>
  <ui:unskip elementIds="ftdfdadv" component="${component}"/>
</ui:formGuide>

<ui:formGuide>
  <ui:observe elementIds="ftdfdman" component="${component}" forValue="^4"/>
  <ui:unskip elementIds="ftdfdmao" component="${component}"/>
</ui:formGuide>

<ui:formGuide>
  <ui:observe elementIds="ftdamypt" component="${component}" forValue="^1"/>
  <ui:unskip elementIds="ftdammo,ftdamdy,ftdamyr,ftdamdic,ftdamdid,ftdamlig,ftdamlio,ftdamadn,ftdamadv,ftdamman,ftdammao,ftdammam,ftdamqu" component="${component}"/>
</ui:formGuide>

<ui:formGuide>
  <ui:observe elementIds="ftdamdic" component="${component}" forValue="^1"/>
  <ui:unskip elementIds="ftdamdid" component="${component}"/>
</ui:formGuide>

<ui:formGuide>
  <ui:observe elementIds="ftdamlig" component="${component}" forValue="^3"/>
  <ui:unskip elementIds="ftdamlio" component="${component}"/>
</ui:formGuide>

<ui:formGuide>
  <ui:observe elementIds="ftdamadn" component="${component}" forValue="^1"/>
  <ui:unskip elementIds="ftdamadv" component="${component}"/>
</ui:formGuide>

<ui:formGuide>
  <ui:observe elementIds="ftdamman" component="${component}" forValue="^4"/>
  <ui:unskip elementIds="ftdammao" component="${component}"/>
</ui:formGuide>

<ui:formGuide>
  <ui:observe elementIds="ftdother" component="${component}" forValue="^1"/>
  <ui:unskip elementIds="ftdotdop,ftdotser,ftdotcho,ftdotano,ftdotans" component="${component}"/>
</ui:formGuide>

<ui:formGuide simulateEvents="${(current == 0 && componentView != 'compare') || (current == 1) ? 'true' : ''}">
  <ui:observe elementIds="ftdotano" component="${component}" forValue="^1"/>
  <ui:unskip elementIds="ftdotans" component="${component}"/>
</ui:formGuide>

  </c:if>
</c:forEach>
</c:if>

</page:applyDecorator>    
</page:applyDecorator>    
	    
