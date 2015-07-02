<%@ include file="/WEB-INF/jsp/includes/include.jsp" %>
<c:set var="instrTypeEncoded" value="udsneuropsychmoca3"/>
<c:import url="/WEB-INF/jsp/crms/assessment/instrument/include.jsp">
	<c:param name="instrTypeEncoded" value="${instrTypeEncoded}"/>
</c:import>

<%-- instrument-specific focusField setting (include.jsp has common focusField settings) --%>
<c:choose>
	<c:when test="${componentView == 'doubleEnter' || componentView == 'compare'}">
		<c:set var="focusField" value="mocacomp"/>
	</c:when>
</c:choose>	

<page:applyDecorator name="component.content">
  <page:param name="isInstrument">true</page:param> 
  <page:param name="component">${instrTypeEncoded}</page:param> 
  <page:param name="focusField">${focusField}</page:param>
  <page:param name="pageHeadingArgs">UDS Neuropsych Moca</page:param>
  <page:param name="quicklinks">moca,remain,craft,<br/>,bensoncopy,spanfwd,spanbck,catfluency,trails,<br/>,craftdelayed,bensonrecall,mint,verbfluency,<br/>,overall</page:param>
   
<page:applyDecorator name="component.instrument.content">
  <page:param name="instrTypeEncoded">${instrTypeEncoded}</page:param>
  <page:param name="view">${componentView}</page:param>

<c:import url="/WEB-INF/jsp/crms/assessment/instrument/udsCommon.jsp">
	<c:param name="entity" value="${instrTypeEncoded}"/>
	<c:param name="view" value="${componentView}"/>
	<c:param name="component" value="${component}"/>
</c:import>

<tags:sectionQuicklink requestUrl="${requestUrl}" sectionId="top" sourceSectionId="moca" linkTextKey="top.quicklink"/>
<page:applyDecorator name="component.instrument.section">
	<page:param name="section"><spring:message code="udsneuropsychmoca3.moca.section"/></page:param>
	<page:param name="view">${componentView}</page:param>
	<page:param name="instructions"></page:param>
	<tags:createField property="mocacomp" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="mocareas" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="mocaloc" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="mocalan" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="mocalanx" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="mocavis" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="mocahear" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="mocatots" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="mocatrai" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="mocacube" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="mocacloc" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="mocaclon" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="mocacloh" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="mocanami" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="mocaregi" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="mocadigi" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="mocalett" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="mocaser7" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="mocarepe" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="mocaflue" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="mocaabst" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="mocarecn" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="mocarecc" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="mocarecr" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="mocaordt" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="mocaormo" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="mocaoryr" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="mocaordy" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="mocaorpl" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="mocaorct" component="${component}" entity="${instrTypeEncoded}"/>
</page:applyDecorator>

<tags:sectionQuicklink requestUrl="${requestUrl}" sectionId="top" sourceSectionId="remain" linkTextKey="top.quicklink"/>
<page:applyDecorator name="component.instrument.section">
	<page:param name="section"><spring:message code="udsneuropsychmoca3.remain.section"/></page:param>
	<page:param name="view">${componentView}</page:param>
	<page:param name="instructions"></page:param>
	<tags:createField property="npsycloc" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="npsylan" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="npsylanx" component="${component}" entity="${instrTypeEncoded}"/>
</page:applyDecorator>

<tags:sectionQuicklink requestUrl="${requestUrl}" sectionId="top" sourceSectionId="craft" linkTextKey="top.quicklink"/>
<page:applyDecorator name="component.instrument.section">
	<page:param name="section"><spring:message code="udsneuropsychmoca3.craft.section"/></page:param>
	<page:param name="view">${componentView}</page:param>
	<page:param name="instructions"></page:param>
	<tags:createField property="craftvrs" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="crafturs" component="${component}" entity="${instrTypeEncoded}"/>
</page:applyDecorator>

<tags:sectionQuicklink requestUrl="${requestUrl}" sectionId="top" sourceSectionId="bensoncopy" linkTextKey="top.quicklink"/>
<page:applyDecorator name="component.instrument.section">
	<page:param name="section"><spring:message code="udsneuropsychmoca3.bensoncopy.section"/></page:param>
	<page:param name="view">${componentView}</page:param>
	<page:param name="instructions"></page:param>
	<tags:createField property="udsbentc" component="${component}" entity="${instrTypeEncoded}"/>
</page:applyDecorator>

<tags:sectionQuicklink requestUrl="${requestUrl}" sectionId="top" sourceSectionId="spanfwd" linkTextKey="top.quicklink"/>
<page:applyDecorator name="component.instrument.section">
	<page:param name="section"><spring:message code="udsneuropsychmoca3.spanfwd.section"/></page:param>
	<page:param name="view">${componentView}</page:param>
	<page:param name="instructions"></page:param>
	<tags:createField property="digforct" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="digforsl" component="${component}" entity="${instrTypeEncoded}"/>
</page:applyDecorator>

<tags:sectionQuicklink requestUrl="${requestUrl}" sectionId="top" sourceSectionId="spanbck" linkTextKey="top.quicklink"/>
<page:applyDecorator name="component.instrument.section">
	<page:param name="section"><spring:message code="udsneuropsychmoca3.spanbck.section"/></page:param>
	<page:param name="view">${componentView}</page:param>
	<page:param name="instructions"></page:param>
	<tags:createField property="digbacct" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="digbacls" component="${component}" entity="${instrTypeEncoded}"/>
</page:applyDecorator>

<tags:sectionQuicklink requestUrl="${requestUrl}" sectionId="top" sourceSectionId="catfluency" linkTextKey="top.quicklink"/>
<page:applyDecorator name="component.instrument.section">
	<page:param name="section"><spring:message code="udsneuropsychmoca3.catfluency.section"/></page:param>
	<page:param name="view">${componentView}</page:param>
	<page:param name="instructions"></page:param>
	<tags:createField property="animals" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="veg" component="${component}" entity="${instrTypeEncoded}"/>
</page:applyDecorator>

<tags:sectionQuicklink requestUrl="${requestUrl}" sectionId="top" sourceSectionId="trails" linkTextKey="top.quicklink"/>
<page:applyDecorator name="component.instrument.section">
	<page:param name="section"><spring:message code="udsneuropsychmoca3.trails.section"/></page:param>
	<page:param name="view">${componentView}</page:param>
	<page:param name="instructions"></page:param>
	<tags:createField property="traila" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="trailarr" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="trailali" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="trailb" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="trailbrr" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="trailbli" component="${component}" entity="${instrTypeEncoded}"/>
</page:applyDecorator>

<tags:sectionQuicklink requestUrl="${requestUrl}" sectionId="top" sourceSectionId="craftdelayed" linkTextKey="top.quicklink"/>
<page:applyDecorator name="component.instrument.section">
	<page:param name="section"><spring:message code="udsneuropsychmoca3.craftdelayed.section"/></page:param>
	<page:param name="view">${componentView}</page:param>
	<page:param name="instructions"></page:param>
	<tags:createField property="craftdvr" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="craftdre" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="craftdti" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="craftcue" component="${component}" entity="${instrTypeEncoded}"/>
</page:applyDecorator>

<tags:sectionQuicklink requestUrl="${requestUrl}" sectionId="top" sourceSectionId="bensonrecall" linkTextKey="top.quicklink"/>
<page:applyDecorator name="component.instrument.section">
	<page:param name="section"><spring:message code="udsneuropsychmoca3.bensonrecall.section"/></page:param>
	<page:param name="view">${componentView}</page:param>
	<page:param name="instructions"></page:param>
	<tags:createField property="udsbentd" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="udsbenrs" component="${component}" entity="${instrTypeEncoded}"/>
</page:applyDecorator>

<tags:sectionQuicklink requestUrl="${requestUrl}" sectionId="top" sourceSectionId="mint" linkTextKey="top.quicklink"/>
<page:applyDecorator name="component.instrument.section">
	<page:param name="section"><spring:message code="udsneuropsychmoca3.mint.section"/></page:param>
	<page:param name="view">${componentView}</page:param>
	<page:param name="instructions"></page:param>
	<tags:createField property="minttots" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="minttotw" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="mintscng" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="mintscnc" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="mintpcng" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="mintpcnc" component="${component}" entity="${instrTypeEncoded}"/>
</page:applyDecorator>

<tags:sectionQuicklink requestUrl="${requestUrl}" sectionId="top" sourceSectionId="verbfluency" linkTextKey="top.quicklink"/>
<page:applyDecorator name="component.instrument.section">
	<page:param name="section"><spring:message code="udsneuropsychmoca3.verbfluency.section"/></page:param>
	<page:param name="view">${componentView}</page:param>
	<page:param name="instructions"></page:param>
	<tags:createField property="udsverfc" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="udsverfn" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="udsvernf" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="udsverlc" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="udsverlr" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="udsverln" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="udsvertn" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="udsverte" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="udsverti" component="${component}" entity="${instrTypeEncoded}"/>
</page:applyDecorator>

<tags:sectionQuicklink requestUrl="${requestUrl}" sectionId="top" sourceSectionId="overall" linkTextKey="top.quicklink"/>
<page:applyDecorator name="component.instrument.section">
	<page:param name="section"><spring:message code="udsneuropsychmoca3.overall.section"/></page:param>
	<page:param name="view">${componentView}</page:param>
	<page:param name="instructions"></page:param>
	<tags:createField property="cogstat" component="${component}" entity="${instrTypeEncoded}"/>
</page:applyDecorator>

<page:applyDecorator name="component.instrument.section">
	<page:param name="sectionId">anonymous</page:param>
	<page:param name="view">${componentView}</page:param>
	<page:param name="instructions"> </page:param>
	<tags:createField property="notes['udsneuropsychmoca3']" entity="${instrTypeEncoded}" component="${component}" metadataName="instrument.sectionNote" labelAlignment="top" dataStyle="instrNote"/>
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
	<ui:observe elementIds="mocacomp" component="${component}" forValue="0" />
    <ui:unskip elementIds="mocareas" component="${component}"/>
</ui:formGuide>
<ui:formGuide>
	<ui:observe elementIds="mocacomp" component="${component}" forValue="1" />
    <ui:unskip elementIds="mocaloc,mocalan,mocalanx,mocavis,mocahear,mocatots,mocatrai,mocacube,mocacloc,mocaclon,mocacloh,mocanami,mocaregi,mocadigi,mocalett,mocaser7,mocarepe,mocaflue,mocaabst,mocarecn,mocarecc,mocarecr,mocaordt,mocaormo,mocaoryr,mocaordy,mocaorpl,mocaorct" component="${component}"/>
</ui:formGuide>
<ui:formGuide>
	<ui:depends elementIds="mocacomp" component="${component}" />
	<ui:observe elementIds="mocalan" component="${component}" forValue="3" />
    <ui:unskip elementIds="mocalanx" component="${component}"/>
</ui:formGuide>
<ui:formGuide>
	<ui:observe elementIds="npsylan" component="${component}" forValue="3" />
    <ui:unskip elementIds="npsylanx" component="${component}"/>
</ui:formGuide>
<ui:formGuide>
	<ui:observe elementIds="craftvrs" component="${component}" forValue="95|96|97|98" />
    <ui:skip elementIds="crafturs" component="${component}"/>
</ui:formGuide>
<ui:formGuide>
	<ui:observe elementIds="digforct" component="${component}" forValue="95|96|97|98" />
    <ui:skip elementIds="digforsl" component="${component}"/>
</ui:formGuide>
<ui:formGuide>
	<ui:observe elementIds="digbacct" component="${component}" forValue="95|96|97|98" />
    <ui:skip elementIds="digbacls" component="${component}"/>
</ui:formGuide>
<ui:formGuide>
	<ui:observe elementIds="traila" component="${component}" forValue="995|996|997|998" />
    <ui:skip elementIds="trailarr,trailali" component="${component}"/>
</ui:formGuide>
<ui:formGuide>
	<ui:observe elementIds="trailb" component="${component}" forValue="995|996|997|998" />
    <ui:skip elementIds="trailbrr,trailbli" component="${component}"/>
</ui:formGuide>
<ui:formGuide>
	<ui:observe elementIds="craftdvr" component="${component}" forValue="95|96|97|98" />
    <ui:skip elementIds="craftdre,craftdti,craftcue" component="${component}"/>
</ui:formGuide>
<ui:formGuide>
	<ui:observe elementIds="udsbentd" component="${component}" forValue="95|96|97|98" />
    <ui:skip elementIds="udsbenrs" component="${component}"/>
</ui:formGuide>
<ui:formGuide>
	<ui:observe elementIds="minttots" component="${component}" forValue="95|96|97|98" />
    <ui:skip elementIds="minttotw,mintscng,mintscnc,mintpcng,mintpcnc" component="${component}"/>
</ui:formGuide>
<ui:formGuide>
	<ui:observe elementIds="udsverfc" component="${component}" forValue="95|96|97|98" />
    <ui:skip elementIds="udsverfn,udsvernf" component="${component}"/>
</ui:formGuide>
<ui:formGuide simulateEvents="${(current == 0 && componentView != 'compare') || (current == 1) ? 'true' : ''}">
	<ui:observe elementIds="udsverlc" component="${component}" forValue="95|96|97|98" />
    <ui:skip elementIds="udsverlr,udsverln,udsvertn,udsverte,udsverti" component="${component}"/>
</ui:formGuide>

  </c:if>
</c:forEach>
</c:if>

</page:applyDecorator>    
</page:applyDecorator>    
	    