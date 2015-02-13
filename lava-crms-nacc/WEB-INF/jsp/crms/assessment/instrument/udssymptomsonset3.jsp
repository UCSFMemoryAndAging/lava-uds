<%@ include file="/WEB-INF/jsp/includes/include.jsp" %>
<c:set var="instrTypeEncoded" value="udssymptomsonset3"/>
<c:import url="/WEB-INF/jsp/crms/assessment/instrument/include.jsp">
	<c:param name="instrTypeEncoded" value="${instrTypeEncoded}"/>
</c:import>
<c:set var="packetType">
	<tags:componentProperty component="instrument" property="packet"/>
</c:set>

<%-- instrument-specific focusField setting (include.jsp has common focusField settings) --%>
<c:choose>
	<c:when test="${componentView == 'doubleEnter' || componentView == 'compare'}">
		<c:set var="focusField" value="decSub"/>
	</c:when>
</c:choose>	

<page:applyDecorator name="component.content">
  <page:param name="isInstrument">true</page:param> 
  <page:param name="component">${instrTypeEncoded}</page:param> 
  <page:param name="focusField">${focusField}</page:param>
  <page:param name="pageHeadingArgs">UDS Symptoms Onset</page:param>
  <page:param name="quicklinks">memory,cogSymp,behSymp,motSymp,overall,eval</page:param>
   
<page:applyDecorator name="component.instrument.content">
  <page:param name="instrTypeEncoded">${instrTypeEncoded}</page:param>
  <page:param name="view">${componentView}</page:param>

<c:import url="/WEB-INF/jsp/crms/assessment/instrument/udsCommon.jsp">
	<c:param name="entity" value="${instrTypeEncoded}"/>
	<c:param name="view" value="${componentView}"/>
	<c:param name="component" value="${component}"/>
</c:import>

<tags:sectionQuicklink requestUrl="${requestUrl}" sectionId="top" sourceSectionId="memory" linkTextKey="top.quicklink"/>
<page:applyDecorator name="component.instrument.section">
  <page:param name="section"><spring:message code="udssymptomsonset3.memory.section"/></page:param>
  <page:param name="view">${componentView}</page:param>
  <page:param name="instructions"><spring:message code="udssymptomsonset2.memComp.instructions"/></page:param>
<tags:createField property="decSub" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="decIn" entity="${instrTypeEncoded}" component="${component}"/>
</page:applyDecorator>

<tags:sectionQuicklink requestUrl="${requestUrl}" sectionId="top" sourceSectionId="cogSymp" linkTextKey="top.quicklink"/>
<page:applyDecorator name="component.instrument.section">
  <page:param name="section"><spring:message code="udssymptomsonset2.cogSymp.section"/></page:param>
  <page:param name="view">${componentView}</page:param>
  <page:param name="instructions"><spring:message code="udssymptomsonset2.cogSymp.instructions"/></page:param>
<tags:createField property="decClCog" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="cogMem" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="cogOri" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="cogJudg" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="cogLang" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="cogVis" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="cogAttn" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="cogFluc" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="cogFlAgO" entity="${packetType == 'F' || packetType == 'T' ? 'followup.' : ''}instrTypeEncoded}" component="${component}"/>
<tags:createField property="cogOther" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="cogOthrx" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="cogFPred" entity="${packetType == 'F' || packetType == 'T' ? 'followup.' : ''}instrTypeEncoded}" component="${component}"/>
<tags:createField property="cogFPrex" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="cogMode" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="cogModex" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="decAge" entity="${packetType == 'F' || packetType == 'T' ? 'followup.' : ''}instrTypeEncoded}" component="${component}"/>
</page:applyDecorator>

<tags:sectionQuicklink requestUrl="${requestUrl}" sectionId="top" sourceSectionId="behSymp" linkTextKey="top.quicklink"/>
<page:applyDecorator name="component.instrument.section">
  <page:param name="section"><spring:message code="udssymptomsonset2.behSymp.section"/></page:param>
  <page:param name="view">${componentView}</page:param>
  <page:param name="instructions"><spring:message code="udssymptomsonset2.behSymp.instructions"/></page:param>
<tags:createField property="decClBe" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="beApathy" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="beDep" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="beVHall" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="beVWell" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="beVHAgO" entity="${packetType == 'F' || packetType == 'T' ? 'followup.' : ''}instrTypeEncoded}" component="${component}"/>
<tags:createField property="beAHall" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="beDel" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="beDisin" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="beIrrit" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="beAgit" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="bePerCh" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="beRem" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="beRemAgO" entity="${packetType == 'F' || packetType == 'T' ? 'followup.' : ''}instrTypeEncoded}" component="${component}"/>
<tags:createField property="beAnx" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="beOthr" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="beOthrx" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="beFPred" entity="${packetType == 'F' || packetType == 'T' ? 'followup.' : ''}instrTypeEncoded}" component="${component}" optionsAlignment="groupTopVertical"/>
<tags:createField property="beFPredx" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="beMode" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="beModex" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="beAge" entity="${packetType == 'F' || packetType == 'T' ? 'followup.' : ''}instrTypeEncoded}" component="${component}"/>
</page:applyDecorator>

<tags:sectionQuicklink requestUrl="${requestUrl}" sectionId="top" sourceSectionId="motSymp" linkTextKey="top.quicklink"/>
<page:applyDecorator name="component.instrument.section">
  <page:param name="section"><spring:message code="udssymptomsonset2.motSymp.section"/></page:param>
  <page:param name="view">${componentView}</page:param>
  <page:param name="instructions"><spring:message code="udssymptomsonset2.motSymp.instructions"/></page:param>
<tags:createField property="decClMot" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="moGait" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="moFalls" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="moTrem" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="moSlow" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="moFrst" entity="${packetType == 'F' || packetType == 'T' ? 'followup.' : ''}instrTypeEncoded}" component="${component}"/>
<tags:createField property="moMode" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="moModex" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="moMoPark" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="parkAge" entity="${packetType == 'F' || packetType == 'T' ? 'followup.' : ''}instrTypeEncoded}" component="${component}"/>
<tags:createField property="moMoAls" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="alsAge" entity="${packetType == 'F' || packetType == 'T' ? 'followup.' : ''}instrTypeEncoded}" component="${component}"/>
<tags:createField property="moAge" entity="${packetType == 'F' || packetType == 'T' ? 'followup.' : ''}instrTypeEncoded}" component="${component}"/>
</page:applyDecorator>

<tags:sectionQuicklink requestUrl="${requestUrl}" sectionId="top" sourceSectionId="overall" linkTextKey="top.quicklink"/>
<page:applyDecorator name="component.instrument.section">
  <page:param name="section"><spring:message code="udssymptomsonset2.overall.section"/></page:param>
  <page:param name="view">${componentView}</page:param>
  <page:param name="instructions"> </page:param>
<tags:createField property="course" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="frstChg" entity="${instrTypeEncoded}" component="${component}"/>
</page:applyDecorator>

<tags:sectionQuicklink requestUrl="${requestUrl}" sectionId="top" sourceSectionId="overall" linkTextKey="top.quicklink"/>
<page:applyDecorator name="component.instrument.section">
  <page:param name="section"><spring:message code="udssymptomsonset3.eval.section"/></page:param>
  <page:param name="view">${componentView}</page:param>
  <page:param name="instructions"> </page:param>
<tags:createField property="lbdEval" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="ftldEval" entity="${instrTypeEncoded}" component="${component}"/>
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


PUT BACK IN TO DEFAULT TO FOLLOWUP PACKET ??
MUST RELOAD ON PACKET TYPE CHANGE B/C DIFF METADATA (dropdown lists for ageOfOnset have 777 code in followup)


<ui:formGuide>
  <ui:observe elementIds="decClin" component="${componentPrefix}" forValue="^1" negate="true" comboRadioSelect="${componentMode == 'dc' ? 'true' : 'false'}"/>
  <ui:skip elementIds="decAge,cogMem,cogJudg,cogLang,cogVis,cogAttn,cogFluc,cogOther,cogFrst,cogMode,
  	beApathy,beDep,beVHall,beVWell,beAHall,beDel,beDisin,beIrrit,beAgit,bePerCh,beRem,beOthr,beFrst,beMode,
  	moGait,moFalls,moTrem,moSlow,moFrst,moMode,moMoPark,course,frstChg" component="${componentPrefix}"
  	comboRadioSelect="${componentMode == 'dc' ? 'true' : 'false'}"/>
</ui:formGuide>          



<ui:formGuide>
  <ui:observe elementIds="beVHall" component="${componentPrefix}" forValue="^1" comboRadioSelect="${componentMode == 'dc' ? 'true' : 'false'}"/>
  <ui:unskip elementIds="beVWell" component="${componentPrefix}" comboRadioSelect="${componentMode == 'dc' ? 'true' : 'false'}"/>
</ui:formGuide>       
  
<ui:formGuide>
  <ui:observe elementIds="cogOther" component="${componentPrefix}" forValue="^1" comboRadioSelect="${componentMode == 'dc' ? 'true' : 'false'}"/>
  <ui:unskip elementIds="cogOthrx" component="${componentPrefix}"/>
</ui:formGuide>           
<ui:formGuide>
  <ui:observe elementIds="cogFrst" component="${componentPrefix}" forValue="^6" comboRadioSelect="${componentMode == 'dc' ? 'true' : 'false'}"/>
  <ui:unskip elementIds="cogFrstx" component="${componentPrefix}"/>
</ui:formGuide>           
<ui:formGuide>
  <ui:observe elementIds="cogMode" component="${componentPrefix}" forValue="^4" comboRadioSelect="${componentMode == 'dc' ? 'true' : 'false'}"/>
  <ui:unskip elementIds="cogModex" component="${componentPrefix}"/>
</ui:formGuide>           
<ui:formGuide>
   <ui:observe elementIds="beOthr" component="${componentPrefix}" forValue="^1" comboRadioSelect="${componentMode == 'dc' ? 'true' : 'false'}"/>
  <ui:unskip elementIds="beOthrx" component="${componentPrefix}"/>
</ui:formGuide>           
<ui:formGuide>
  <ui:observe elementIds="beFrst" component="${componentPrefix}" forValue="^8$" comboRadioSelect="${componentMode == 'dc' ? 'true' : 'false'}"/>
  <ui:unskip elementIds="beFrstx" component="${componentPrefix}"/>
</ui:formGuide>           
<ui:formGuide>
  <ui:observe elementIds="beMode" component="${componentPrefix}" forValue="^4" comboRadioSelect="${componentMode == 'dc' ? 'true' : 'false'}"/>
  <ui:unskip elementIds="beModex" component="${componentPrefix}"/>
</ui:formGuide>           
<ui:formGuide simulateEvents="${(current == 0 && componentView != 'compare') || (current == 1) ? 'true' : ''}">
  <ui:observe elementIds="moMode" component="${componentPrefix}" forValue="^4" comboRadioSelect="${componentMode == 'dc' ? 'true' : 'false'}"/>
  <ui:unskip elementIds="moModex" component="${componentPrefix}"/>
</ui:formGuide>

  </c:if>
</c:forEach>
</c:if>

</page:applyDecorator>    
</page:applyDecorator>    
	    
