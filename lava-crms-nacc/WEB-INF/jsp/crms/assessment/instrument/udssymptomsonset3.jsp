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
  <page:param name="instructions"></page:param>
<tags:createField property="decSub" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="decIn" entity="${instrTypeEncoded}" component="${component}"/>
</page:applyDecorator>

<tags:sectionQuicklink requestUrl="${requestUrl}" sectionId="top" sourceSectionId="cogSymp" linkTextKey="top.quicklink"/>
<page:applyDecorator name="component.instrument.section">
  <page:param name="section"><spring:message code="udssymptomsonset3.cogSymp.section"/></page:param>
  <page:param name="view">${componentView}</page:param>
  <page:param name="instructions"></page:param>
<tags:createField property="decClCog" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="cogMem" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="cogOri" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="cogJudg" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="cogLang" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="cogVis" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="cogAttn" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="cogFluc" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="cogFlAgO" entity="${packetType == 'F' || packetType == 'T' ? 'followup.' : ''}${instrTypeEncoded}" component="${component}"/>
<tags:createField property="cogOther" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="cogOthrx" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="cogFPred" entity="${packetType == 'F' || packetType == 'T' ? 'followup.' : ''}${instrTypeEncoded}" component="${component}"/>
<tags:createField property="cogFPrex" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="cogMode" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="cogModex" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="decAge" entity="${packetType == 'F' || packetType == 'T' ? 'followup.' : ''}${instrTypeEncoded}" component="${component}"/>
</page:applyDecorator>

<tags:sectionQuicklink requestUrl="${requestUrl}" sectionId="top" sourceSectionId="behSymp" linkTextKey="top.quicklink"/>
<page:applyDecorator name="component.instrument.section">
  <page:param name="section"><spring:message code="udssymptomsonset3.behSymp.section"/></page:param>
  <page:param name="view">${componentView}</page:param>
  <page:param name="instructions"></page:param>
<tags:createField property="decClBe" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="beApathy" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="beDep" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="beVHall" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="beVWell" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="beVHAgO" entity="${packetType == 'F' || packetType == 'T' ? 'followup.' : ''}${instrTypeEncoded}" component="${component}"/>
<tags:createField property="beAHall" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="beDel" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="beDisin" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="beIrrit" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="beAgit" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="bePerCh" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="beRem" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="beRemAgO" entity="${packetType == 'F' || packetType == 'T' ? 'followup.' : ''}${instrTypeEncoded}" component="${component}"/>
<tags:createField property="beAnx" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="beOthr" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="beOthrx" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="beFPred" entity="${packetType == 'F' || packetType == 'T' ? 'followup.' : ''}${instrTypeEncoded}" component="${component}" optionsAlignment="groupTopVertical"/>
<tags:createField property="beFPredx" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="beMode" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="beModex" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="beAge" entity="${packetType == 'F' || packetType == 'T' ? 'followup.' : ''}${instrTypeEncoded}" component="${component}"/>
</page:applyDecorator>

<tags:sectionQuicklink requestUrl="${requestUrl}" sectionId="top" sourceSectionId="motSymp" linkTextKey="top.quicklink"/>
<page:applyDecorator name="component.instrument.section">
  <page:param name="section"><spring:message code="udssymptomsonset3.motSymp.section"/></page:param>
  <page:param name="view">${componentView}</page:param>
  <page:param name="instructions"></page:param>
<tags:createField property="decClMot" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="moGait" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="moFalls" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="moTrem" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="moSlow" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="moFrst" entity="${packetType == 'F' || packetType == 'T' ? 'followup.' : ''}${instrTypeEncoded}" component="${component}"/>
<tags:createField property="moMode" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="moModex" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="moMoPark" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="parkAge" entity="${packetType == 'F' || packetType == 'T' ? 'followup.' : ''}${instrTypeEncoded}" component="${component}"/>
<tags:createField property="moMoAls" entity="${instrTypeEncoded}" component="${component}"/>
<tags:createField property="alsAge" entity="${packetType == 'F' || packetType == 'T' ? 'followup.' : ''}${instrTypeEncoded}" component="${component}"/>
<tags:createField property="moAge" entity="${packetType == 'F' || packetType == 'T' ? 'followup.' : ''}${instrTypeEncoded}" component="${component}"/>
</page:applyDecorator>

<tags:sectionQuicklink requestUrl="${requestUrl}" sectionId="top" sourceSectionId="overall" linkTextKey="top.quicklink"/>
<page:applyDecorator name="component.instrument.section">
  <page:param name="section"><spring:message code="udssymptomsonset3.overall.section"/></page:param>
  <page:param name="view">${componentView}</page:param>
  <page:param name="instructions"></page:param>
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
      <c:set var="component" value="compareInstrument"/>
    </c:when>
    <c:otherwise>
      <c:set var="component" value="instrument"/>
    </c:otherwise>
  </c:choose>
  <c:if test="${current == 0 || (current == 1 && componentView == 'compare')}">


<%-- must reload on packet type change b/c different metadata (e.g. dropdown lists for age of onset have 777 code
in followup. --%>
<ui:formGuide ignoreDoOnLoad="true">
   	<ui:observe elementIds="instrument_packet" forValue=".+|^$"/>
   	<ui:submitForm form="${instrTypeEncoded}" event="instrument__reRender"/>
</ui:formGuide>

<ui:formGuide>
  <ui:observe elementIds="decClCog" component="${component}" forValue="^1"/>
  <ui:unskip elementIds="cogMem,cogOri,cogJudg,cogLang,cogVis,cogAttn,cogFluc,cogOther,cogFPred,cogMode,decAge" component="${component}"/>
</ui:formGuide>        

<ui:formGuide>
  <ui:depends elementIds="decClCog" component="${component}"/>
  <ui:observe elementIds="cogFluc" component="${component}" forValue="^1"/>
  <ui:unskip elementIds="cogFlAgO" component="${component}"/>
</ui:formGuide>        

<ui:formGuide>
  <ui:observe elementIds="cogOther" component="${component}" forValue="^1"/>
  <ui:unskip elementIds="cogOthrx" component="${component}"/>
</ui:formGuide>           

<ui:formGuide>
  <ui:depends elementIds="decClCog" component="${component}"/>
  <ui:observe elementIds="cogFPred" component="${component}" forValue="^8"/>
  <ui:unskip elementIds="cogFPrex" component="${component}"/>
</ui:formGuide>        

<ui:formGuide>
  <ui:depends elementIds="decClCog" component="${component}"/>
  <ui:observe elementIds="cogMode" component="${component}" forValue="^4"/>
  <ui:unskip elementIds="cogModex" component="${component}"/>
</ui:formGuide>        


<ui:formGuide>
  <ui:observe elementIds="decClBe" component="${component}" forValue="^1"/>
  <ui:unskip elementIds="beApathy,beDep,beVHall,beAHall,beDel,beDisin,beIrrit,beAgit,bePerCh,beRem,beAnx,beOthr,beFPred,beMode,beAge" component="${component}"/>
</ui:formGuide>        

<ui:formGuide>
  <ui:depends elementIds="decClBe" component="${component}"/>
  <ui:observe elementIds="beVHall" component="${component}" forValue="^1"/>
  <ui:unskip elementIds="beVWell" component="${component}"/>
</ui:formGuide>       

<%-- 3 scenarios for setting beVHAgO so just have 3 tag sets which do the 3 scenarios on do and ignore undo --%>  
<ui:formGuide ignoreUndoOnLoad="true" ignoreUndo="true">
  <ui:depends elementIds="decClBe,beVHall" component="${component}"/>
  <ui:observe elementIds="beVWell" component="${component}" forValue="^1"/>
  <ui:enable elementIds="beVHAgO" component="${component}"/>
  <ui:setValue elementIds="beVHAgO" component="${component}" value=""/>
</ui:formGuide>        
<ui:formGuide ignoreUndoOnLoad="true" ignoreUndo="true">
  <ui:depends elementIds="decClBe,beVHall" component="${component}"/>
  <ui:observe elementIds="beVWell" component="${component}" forValue="^0|^9"/>
  <ui:disable elementIds="beVHAgO" component="${component}"/>
  <ui:setValue elementIds="beVHAgO" component="${component}" value="888"/>
</ui:formGuide>       
<ui:formGuide ignoreUndoOnLoad="true" ignoreUndo="true">
  <ui:depends elementIds="decClBe,beVHall" component="${component}"/>
  <ui:observe elementIds="beVWell" component="${component}" forValue="-[0-9]"/>
  <ui:skip elementIds="beVHAgO" component="${component}"/>
</ui:formGuide>   

<ui:formGuide>
  <ui:depends elementIds="decClBe" component="${component}"/>
  <ui:observe elementIds="beRem" component="${component}" forValue="^1"/>
  <ui:unskip elementIds="beRemAgO" component="${component}"/>
</ui:formGuide>        

<ui:formGuide>
  <ui:depends elementIds="decClBe" component="${component}"/>
  <ui:observe elementIds="beOthr" component="${component}" forValue="^1"/>
  <ui:unskip elementIds="beOthrx" component="${component}"/>
</ui:formGuide>
           
<ui:formGuide>
  <ui:depends elementIds="decClBe" component="${component}"/>
  <ui:observe elementIds="beFPred" component="${component}" forValue="^10$"/>
  <ui:unskip elementIds="beFPredx" component="${component}"/>
</ui:formGuide>
           
<ui:formGuide>
  <ui:depends elementIds="decClBe" component="${component}"/>
  <ui:observe elementIds="beMode" component="${component}" forValue="^4"/>
  <ui:unskip elementIds="beModex" component="${component}"/>
</ui:formGuide>
           
<ui:formGuide>
  <ui:observe elementIds="decClMot" component="${component}" forValue="^1"/>
  <ui:unskip elementIds="moGait,moFalls,moTrem,moSlow,moFrst,moMode,moMoPark,moMoAls,moAge" component="${component}"/>
</ui:formGuide>        

<ui:formGuide>
  <ui:depends elementIds="decClMot" component="${component}"/>
  <ui:observe elementIds="moMode" component="${component}" forValue="^4"/>
  <ui:unskip elementIds="moModex" component="${component}"/>
</ui:formGuide>

<ui:formGuide>
  <ui:depends elementIds="decClMot" component="${component}"/>
  <ui:observe elementIds="moMoPark" component="${component}" forValue="^1"/>
  <ui:unskip elementIds="parkAge" component="${component}"/>
</ui:formGuide>

<ui:formGuide simulateEvents="${(current == 0 && componentView != 'compare') || (current == 1) ? 'true' : ''}">
  <ui:depends elementIds="decClMot" component="${component}"/>
  <ui:observe elementIds="moMoAls" component="${component}" forValue="^1"/>
  <ui:unskip elementIds="alsAge" component="${component}"/>
</ui:formGuide>

  </c:if>
</c:forEach>
</c:if>

</page:applyDecorator>    
</page:applyDecorator>    
	    
