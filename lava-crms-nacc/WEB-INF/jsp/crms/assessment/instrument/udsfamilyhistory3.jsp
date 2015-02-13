<%@ include file="/WEB-INF/jsp/includes/include.jsp" %>
<c:set var="instrTypeEncoded" value="udsfamilyhistory3"/>

<c:import url="/WEB-INF/jsp/crms/assessment/instrument/include.jsp">
	<c:param name="instrTypeEncoded" value="${instrTypeEncoded}"/>
</c:import>

<%-- include.jsp sets focus field to visitNum for all UDS instruments, but if the user is 
doing double enter / compare, visitNum is not a double enter property so set the focus for
the first double enter property here --%>
<c:if test="${componentView == 'doubleEnter' || componentView == 'compare'}">
	<c:choose>
		<c:when test="${packetType == 'I'}">
			<c:set  var="focusField" value="afffamm"/>
		</c:when>
		<c:when test="${packetType == 'F' || packetType == 'T'}">
			<c:set var="focusField" value="nwinfmut"/>
		</c:when>
	</c:choose>	
</c:if>



<%-- OT: TODO: in java markUnusedFields initial vs. followup --%>
<%-- in subject demographics jsp the skip logic should only be for initial, not followup  --%>



<page:applyDecorator name="component.content">
  <page:param name="isInstrument">true</page:param> 
  <page:param name="component">${instrTypeEncoded}</page:param> 
  <page:param name="focusField">${focusField}</page:param>
  <page:param name="pageHeadingArgs">UDS Family History</page:param>
  <page:param name="quicklinks">mutation,parents,siblings,children</page:param>
   
<page:applyDecorator name="component.instrument.content">
  <page:param name="instrTypeEncoded">${instrTypeEncoded}</page:param>
  <page:param name="view">${componentView}</page:param>

<c:import url="/WEB-INF/jsp/crms/assessment/instrument/udsCommon.jsp">
	<c:param name="entity" value="${instrTypeEncoded}"/>
	<c:param name="view" value="${componentView}"/>
	<c:param name="component" value="${component}"/>
</c:import>


<page:applyDecorator name="component.instrument.section">
  	<page:param name="sectionId">mutation</page:param> 
  	<page:param name="sectionNameKey">udsfamilyhistory3.mutation.section</page:param> 
  	<page:param name="view">${componentView}</page:param>
  	<page:param name="instructions"> </page:param>
  	
		<c:if test="${packetType == 'I'}">
			<tags:createField property="afffamm" component="${component}" entity="${instrTypeEncoded}"/>
			<%-- this is a hidden newinfmut field required for skip logic --%>
			<tags:createField property="nwinfmut" component="${component}" entity="initial.${instrTypeEncoded}"/>
		</c:if>   
		<c:if test="${packetType == 'F' || packetType == 'T'}">
			<tags:createField property="nwinfmut" component="${component}" entity="${instrTypeEncoded}"/>
		</c:if>  
		<tags:createField property="fadmut" component="${component}" entity="${instrTypeEncoded}"/>
		<tags:createField property="fadmutx" component="${component}" entity="${instrTypeEncoded}"/>
		<tags:createField property="fadmuso" component="${component}" entity="${instrTypeEncoded}"/>
		<tags:createField property="fadmusox" component="${component}" entity="${instrTypeEncoded}"/>
		<tags:createField property="fftdmut" component="${component}" entity="${instrTypeEncoded}"/>
		<tags:createField property="fftdmutx" component="${component}" entity="${instrTypeEncoded}"/>
		<tags:createField property="fftdmuso" component="${component}" entity="${instrTypeEncoded}"/>
		<tags:createField property="fftdmusx" component="${component}" entity="${instrTypeEncoded}"/>
		<tags:createField property="fothmut" component="${component}" entity="${instrTypeEncoded}"/>
		<tags:createField property="fothmutx" component="${component}" entity="${instrTypeEncoded}"/>
		<tags:createField property="fothmuso" component="${component}" entity="${instrTypeEncoded}"/>
		<tags:createField property="fothmusx" component="${component}" entity="${instrTypeEncoded}"/>
</page:applyDecorator>

<c:if test="${packetType == 'I'}">
	<tags:createField property="nwinfpar" component="${component}" entity="initial.${instrTypeEncoded}"/>
</c:if>   
<c:if test="${packetType == 'F' || packetType == 'T'}">
<page:applyDecorator name="component.instrument.section">
  	<page:param name="sectionId">parents</page:param> 
  	<page:param name="sectionNameKey">udsfamilyhistory2.parents.section</page:param> 
  	<page:param name="view">${componentView}</page:param>
  	<page:param name="instructions"> </page:param>
	<tags:createField property="nwinfpar" entity="${instrTypeEncoded}" component="${component}" labelAlignment="left"/>
</page:applyDecorator>
</c:if>  

<page:applyDecorator name="component.instrument.section">
  	<page:param name="sectionId">anonymous</page:param> 
  	<page:param name="view">${componentView}</page:param>
  	<page:param name="instructions"></page:param>
	<tags:tableForm>  
		<tags:listRow>
			<tags:listColumnHeader labelKey="&nbps;" width="10%"/>
			<tags:listColumnHeader labelKey="udsfamilyhistory3.birthHeader" width="15%"/>
			<tags:listColumnHeader labelKey="udsfamilyhistory3.dageHeader" width="15%"/>
			<tags:listColumnHeader labelKey="udsfamilyhistory3.neurHeader" width="15%"/>
			<tags:listColumnHeader labelKey="udsfamilyhistory3.prdxHeader" width="15%"/>
			<tags:listColumnHeader labelKey="udsfamilyhistory3.moeHeader" width="15%"/>
			<tags:listColumnHeader labelKey="udsfamilyhistory3.ageoHeader" width="15%"/>
		</tags:listRow>
		<tags:listRow>
			<tags:listCell><tags:outputText textKey="udsfamilyhistory2.parents.mother" inline="false"/></tags:listCell>
			<tags:listCell><tags:createField property="mommob,momyob" separator="/" entity="${instrTypeEncoded}" component="${component}"/></tags:listCell>
			<tags:listCell><tags:createField property="momdage" entity="${instrTypeEncoded}" component="${component}"/></tags:listCell>
			<tags:listCell><tags:createField property="momneur" entity="${instrTypeEncoded}" component="${component}"/></tags:listCell>
			<tags:listCell><tags:createField property="momprdx" entity="${instrTypeEncoded}" component="${component}"/></tags:listCell>
			<tags:listCell><tags:createField property="mommoe" entity="${instrTypeEncoded}" component="${component}"/></tags:listCell>
			<tags:listCell><tags:createField property="momageo" entity="${instrTypeEncoded}" component="${component}"/></tags:listCell>
		</tags:listRow>
		<tags:listRow>
			<tags:listCell><tags:outputText textKey="udsfamilyhistory2.parents.father" inline="false"/></tags:listCell>
			<tags:listCell><tags:createField property="dadmob,dadyob" entity="${instrTypeEncoded}" component="${component}"/></tags:listCell>
			<tags:listCell><tags:createField property="daddage" entity="${instrTypeEncoded}" component="${component}"/></tags:listCell>
			<tags:listCell><tags:createField property="dadneur" entity="${instrTypeEncoded}" component="${component}"/></tags:listCell>
			<tags:listCell><tags:createField property="dadprdx" entity="${instrTypeEncoded}" component="${component}"/></tags:listCell>
			<tags:listCell><tags:createField property="dadmoe" entity="${instrTypeEncoded}" component="${component}"/></tags:listCell>
			<tags:listCell><tags:createField property="dadageo" entity="${instrTypeEncoded}" component="${component}"/></tags:listCell>
		</tags:listRow>
	</tags:tableForm>
</page:applyDecorator>

<page:applyDecorator name="component.instrument.section">
  	<page:param name="sectionId">siblings</page:param> 
  	<page:param name="sectionNameKey">udsfamilyhistory2.siblings.section</page:param> 
  	<page:param name="view">${componentView}</page:param>
  	<page:param name="instructions"> </page:param>
		<tags:createField property="sibs" entity="${instrTypeEncoded}" component="${component}" labelAlignment="left"/>
		<c:if test="${packetType == 'I'}">
			<tags:createField property="nwinfsib" component="${component}" entity="initial.${instrTypeEncoded}"/>
		</c:if>   
		<c:if test="${packetType == 'F' || packetType == 'T'}">
			<tags:createField property="nwinfsib" entity="${instrTypeEncoded}" component="${component}" labelAlignment="left"/>
		</c:if>  
</page:applyDecorator>

<page:applyDecorator name="component.instrument.section">
  	<page:param name="sectionId">anonymous</page:param> 
  	<page:param name="view">${componentView}</page:param>
  	<page:param name="instructions"> </page:param>  	
  	<tags:tableForm>  
		<tags:listRow>
			<tags:listColumnHeader labelKey="&nbsp;" width="10%"/>
			<tags:listColumnHeader labelKey="udsfamilyhistory3.birthHeader" width="15%"/>
			<tags:listColumnHeader labelKey="udsfamilyhistory3.dageHeader" width="15%"/>
			<tags:listColumnHeader labelKey="udsfamilyhistory3.neurHeader" width="15%"/>
			<tags:listColumnHeader labelKey="udsfamilyhistory3.prdxHeader" width="15%"/>
			<tags:listColumnHeader labelKey="udsfamilyhistory3.moeHeader" width="15%"/>
			<tags:listColumnHeader labelKey="udsfamilyhistory3.ageoHeader" width="15%"/>
		</tags:listRow>

		<c:forEach begin="1" end="20" var="item">
		<tags:listRow>
			<tags:listCell><tags:outputText textKey="udsfamilyhistory2.siblings.sibling${item}" inline="false"/></tags:listCell>
			<tags:listCell><tags:createField property="sib${item}mob,sib${item}yob" separator="/" entity="${instrTypeEncoded}" component="${component}"/></tags:listCell>
			<tags:listCell><tags:createField property="sib${item}agd" entity="${instrTypeEncoded}" component="${component}"/></tags:listCell>
			<tags:listCell><tags:createField property="sib${item}neu" entity="${instrTypeEncoded}" component="${component}"/></tags:listCell>
			<tags:listCell><tags:createField property="sib${item}pdx" entity="${instrTypeEncoded}" component="${component}"/></tags:listCell>
			<tags:listCell><tags:createField property="sib${item}moe" entity="${instrTypeEncoded}" component="${component}"/></tags:listCell>
			<tags:listCell><tags:createField property="sib${item}ago" entity="${instrTypeEncoded}" component="${component}"/></tags:listCell>
		</tags:listRow>
		</c:forEach>
	</tags:tableForm>
</page:applyDecorator>


<page:applyDecorator name="component.instrument.section">
  	<page:param name="sectionId">children</page:param> 
  	<page:param name="sectionNameKey">udsfamilyhistory2.children.section</page:param> 
  	<page:param name="view">${componentView}</page:param>
  	<page:param name="instructions"> </page:param>
		<tags:createField property="kids" entity="${instrTypeEncoded}" component="${component}" labelAlignment="left"/>
		<c:if test="${packetType == 'I'}">
			<tags:createField property="nwinfkid" component="${component}" entity="initial.${instrTypeEncoded}"/>
		</c:if>   
		<c:if test="${packetType == 'F' || packetType == 'T'}">
			<tags:createField property="nwinfkid" entity="${instrTypeEncoded}" component="${component}" labelAlignment="left"/>
		</c:if>  
</page:applyDecorator>

<page:applyDecorator name="component.instrument.section">
  	<page:param name="sectionId">anonymous</page:param> 
  	<page:param name="view">${componentView}</page:param>
  	<page:param name="instructions"> </page:param>  	
  	<tags:tableForm>  
  	
		<tags:listRow>
			<tags:listColumnHeader labelKey="&nbsp;" width="10%"/>
			<tags:listColumnHeader labelKey="udsfamilyhistory3.birthHeader" width="15%"/>
			<tags:listColumnHeader labelKey="udsfamilyhistory3.dageHeader" width="15%"/>
			<tags:listColumnHeader labelKey="udsfamilyhistory3.neurHeader" width="15%"/>
			<tags:listColumnHeader labelKey="udsfamilyhistory3.prdxHeader" width="15%"/>
			<tags:listColumnHeader labelKey="udsfamilyhistory3.moeHeader" width="15%"/>
			<tags:listColumnHeader labelKey="udsfamilyhistory3.ageoHeader" width="15%"/>
		</tags:listRow>

		<c:forEach begin="1" end="15" var="item">
		<tags:listRow>
			<tags:listCell><tags:outputText textKey="udsfamilyhistory2.children.child${item}" inline="false"/></tags:listCell>
			<tags:listCell><tags:createField property="kid${item}mob,kid${item}yob" separator="/" entity="${instrTypeEncoded}" component="${component}"/></tags:listCell>
			<tags:listCell><tags:createField property="kid${item}agd" entity="${instrTypeEncoded}" component="${component}"/></tags:listCell>
			<tags:listCell><tags:createField property="kid${item}neu" entity="${instrTypeEncoded}" component="${component}"/></tags:listCell>
			<tags:listCell><tags:createField property="kid${item}pdx" entity="${instrTypeEncoded}" component="${component}"/></tags:listCell>
			<tags:listCell><tags:createField property="kid${item}moe" entity="${instrTypeEncoded}" component="${component}"/></tags:listCell>
			<tags:listCell><tags:createField property="kid${item}ago" entity="${instrTypeEncoded}" component="${component}"/></tags:listCell>
		</tags:listRow>
		</c:forEach>
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
  
    <%-- note that last formGuide tag submits when packet is changed --%>
  
	<%-- if initial packet automatically set changes properties (hidden via metadata if initial packet) to 0 = no change --%>
	<ui:formGuide>
	  <ui:observe elementIds="packet" component="instrument" forValue="[I|^$]"/>
	  <ui:setValue elementIds="nwinfmut,nwinfpar,nwinfsib,nwinfkid" component="${component}" value="0" />
	</ui:formGuide>           

	<ui:formGuide >
	  <ui:ignore elementIds="packet" component="instrument" forValue="[I|^$]"/>
	  <ui:observe elementIds="nwinfmut" component="${component}" forValue="0|9"/>
	  <ui:skip elementIds="fadmut,fadmutx,fadmuso,fadmusox,fftdmut,fftdmutx,fftdmuso,fftdmusx,fothmut,fothmutx,fothmuso,fothmusx" component="${component}"/>	
	</ui:formGuide>      
	
	<ui:formGuide>
		<ui:depends elementIds="nwinfmut" component="instrument"/>
		<ui:observe elementIds="fadmut" component="${component}" forValue="^8"/>
		<ui:unskip elementIds="fadmutx" component="${component}"/> 
	</ui:formGuide>
	     
	<ui:formGuide>
		<ui:depends elementIds="nwinfmut" component="instrument"/>
		<ui:observe elementIds="fadmuso" component="${component}" forValue="^8"/>
		<ui:unskip elementIds="fadmusox" component="${component}"/> 
	</ui:formGuide>

	<ui:formGuide>
		<ui:depends elementIds="nwinfmut" component="instrument"/>
		<ui:observe elementIds="fftdmuso" component="${component}" forValue="^8"/>
		<ui:unskip elementIds="fftdmusx" component="${component}"/> 
	</ui:formGuide>

	<ui:formGuide>
		<ui:depends elementIds="nwinfmut" component="instrument"/>
		<ui:observe elementIds="fftdmuso" component="${component}" forValue="^8"/>
		<ui:unskip elementIds="fftdmusx" component="${component}"/> 
	</ui:formGuide>

	<ui:formGuide>
		<ui:depends elementIds="nwinfmut" component="instrument"/>
		<ui:observe elementIds="fothmut" component="${component}" forValue="^1"/>
		<ui:unskip elementIds="fothmutx" component="${component}"/> 
	</ui:formGuide>

	<ui:formGuide>
		<ui:depends elementIds="nwinfmut" component="instrument"/>
		<ui:observe elementIds="fothmuso" component="${component}" forValue="^8"/>
		<ui:unskip elementIds="fothmusx" component="${component}"/> 
	</ui:formGuide>


	<ui:formGuide >
	  <ui:ignore elementIds="packet" component="instrument" forValue="[I|^$]"/>
	  <ui:observe elementIds="nwinfpar" component="${component}" forValue="0"/>
	  <ui:skip elementIds="mommob,dadmob" component="${component}"/>	
	</ui:formGuide>           
	
	<ui:formGuide>
		<ui:depends elementIds="nwinfpar" component="instrument"/>
		<ui:observe elementIds="mommob" component="${component}" forValue="^$|-[0-9]" negate="true"/>
		<ui:skip elementIds="momyob,momdage,momneur" component="${component}"/> 
	</ui:formGuide>
	
	<ui:formGuide>
		<ui:depends elementIds="nwinfpar,mommob" component="instrument"/>
		<ui:observe elementIds="momneur" component="${component}" forValue="^8|^9"/>
		<ui:skip elementIds="momprdx,mommoe,momageo" component="${component}"/> 
	</ui:formGuide>
	
	<ui:formGuide>
		<ui:depends elementIds="nwinfpar" component="instrument"/>
		<ui:observe elementIds="dadmob" component="${component}" forValue="^$|-[0-9]" negate="true"/>
		<ui:skip elementIds="dadyob,daddage,dadneur" component="${component}"/> 
	</ui:formGuide>
	
	<ui:formGuide>
		<ui:depends elementIds="nwinfpar,dadmob" component="instrument"/>
		<ui:observe elementIds="dadneur" component="${component}" forValue="^8|^9"/>
		<ui:skip elementIds="dadprdx,dadmoe,dadageo" component="${component}"/> 
	</ui:formGuide>
	
	<c:forEach begin="1" end="20" var="item">
		<%-- skip all sibling fields if nohting has changed at followup visit, i.e. nwinfsib = 0 (ignore on initial packets). because
			sibNmob determines whether subsequent sib properties are skipped, just skip sibNmob here --%>
		<ui:formGuide >
		  <ui:ignore elementIds="packet" component="instrument" forValue="[I|^$]"/>
		  <ui:observe elementIds="nwinfsib" component="${component}" forValue="0" />
		  <ui:skip elementIds="sib${item}mob" component="${component}"/>	
		</ui:formGuide>           
	</c:forEach>
	
	<c:forEach begin="1" end="20" var="item">
		<%-- if sibling mob completed then unskip living and demented --%>
		<ui:formGuide>
		  <ui:depends elementIds="nwinfsib" component="${component}"/>
		  <ui:observe elementIds="sib${item}mob" component="${component}" forValue="^$|-[0-9]" negate="true"/>
		  <ui:unskip elementIds="sib${item}yob,sib${item}agd,sib${item}neu" component="${component}"/>	
		</ui:formGuide>   
			
		<%-- if sibling is demented then unskip rest of row --%>
		<ui:formGuide>
			<ui:depends elementIds="nwinfsib,sib${item}mob" component="${component}"/>
			<ui:observe elementIds="sib${item}neu" component="${component}" forValue="^8|^9"/>
			<ui:skip elementIds="sib${item}pdx,sib${item}moe,sib${item}ago" component="${component}"/>	
		</ui:formGuide>           
	</c:forEach>
	
	
	<c:forEach begin="1" end="15" var="item">
		<%-- skip all kid fields if nohting has changed at followup visit, i.e. nwinfkid = 0 (ignore on initial packets). because
			kidNmob determines whether subsequent kid properties are skipped, just skip kidNmob here --%>
		<ui:formGuide >
		  <ui:ignore elementIds="packet" component="instrument" forValue="[I|^$]"/>
		  <ui:observe elementIds="nwinfkid" component="${component}" forValue="0" />
		  <ui:skip elementIds="kid${item}mob" component="${component}"/>	
		</ui:formGuide>           
	</c:forEach>
	
	<c:forEach begin="1" end="15" var="item">
		<%-- if kid mob completed then unskip living and demented --%>
		<ui:formGuide>
		  <ui:depends elementIds="nwinfkid" component="${component}"/>
		  <ui:observe elementIds="kid${item}mob" component="${component}" forValue="^$|-[0-9]" negate="true"/>
		  <ui:unskip elementIds="kid${item}yob,kid${item}agd,kid${item}neu" component="${component}"/>	
		</ui:formGuide>   
			
		<%-- if child is demented then unskip rest of row --%>
		<ui:formGuide>
			<ui:depends elementIds="nwinfkid,kid${item}mob" component="${component}"/>
			<ui:observe elementIds="kid${item}neu" component="${component}" forValue="^8|^9"/>
			<ui:skip elementIds="kid${item}pdx,kid${item}moe,kid${item}ago" component="${component}"/>	
		</ui:formGuide>           
	</c:forEach>
	
	<%-- the nwinf* properties indicate if something changed at followup, and are hidden when packet = 'I', so need to submit on packet change
		so new metadata will be obtained to either hide or not hide these change properties --%>
	<ui:formGuide ignoreDoOnLoad="true" simulateEvents="true">
    	<ui:observe elementIds="instrument_packet" forValue=".+|^$"/>
    	<ui:submitForm form="${instrTypeEncoded}" event="instrument__reRender"/>
	</ui:formGuide>
		
	
</c:if>
</c:forEach>
</c:if>


</page:applyDecorator>    
</page:applyDecorator>    
	    
