<%@ include file="/WEB-INF/jsp/includes/include.jsp" %>
<c:set var="instrTypeEncoded" value="udsfamilyhistory3"/>

<c:import url="/WEB-INF/jsp/crms/assessment/instrument/include.jsp">
	<c:param name="instrTypeEncoded" value="${instrTypeEncoded}"/>
</c:import>

<c:set var="packetType">
	<tags:componentProperty component="instrument" property="packet"/>
</c:set>

<%-- include.jsp sets focus field to visitNum for all UDS instruments, but if the user is 
doing double enter / compare, visitNum is not a double enter property so set the focus for
the first double enter property here --%>
<c:if test="${componentView == 'doubleEnter' || componentView == 'compare'}">
	<c:choose>
		<c:when test="${packetType == 'I' || empty packetType}">
			<c:set  var="focusField" value="afffamm"/>
		</c:when>
		<c:when test="${packetType == 'F' || packetType == 'T'}">
			<c:set var="focusField" value="nwinfmut"/>
		</c:when>
	</c:choose>	
</c:if>

<c:set var="controlMode" value="lv"/>
<c:if test="${componentView == 'enter' || componentView == 'doubleEnter' || componentView == 'compare'}">
	<c:set var="controlMode" value="le"/>
</c:if>	

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
  	
		<c:if test="${packetType == 'I' || empty packetType}">
			<tags:createField property="afffamm" component="${component}" entity="${instrTypeEncoded}"/>
			<%-- this is a hidden newinfmut field required for skip logic --%>
			<tags:createField property="nwinfmut" component="${component}" entity="initial.${instrTypeEncoded}"/>
		</c:if>   
		<c:if test="${packetType == 'F' || packetType == 'T'}">
			<tags:outputText textKey="udsfamilyhistory3.q1.followUpInstrucs" indent="true" styleClass="italic"/>
			<tags:createField property="nwinfmut" component="${component}" entity="${instrTypeEncoded}" labelStyle="longLeft"/>
		</c:if>  
		<%-- need the following div for layout problem where inline form table following createField shifts to right --%>
		<div>&nbsp;</div>
		<tags:tableForm>
			<tags:listRowGroup>    
				<tags:listRow>
					<tags:listCell><tags:outputText textKey="${instrTypeEncoded}.fadmut.label" inline="true"/></tags:listCell>
					<tags:listCell><tags:createField property="fadmut" entity="${instrTypeEncoded}" component="${component}" mode="${controlMode}"/></tags:listCell>
				</tags:listRow>
				<tags:listRow>
					<tags:listCell><tags:outputText textKey="${instrTypeEncoded}.fadmutx.label" inline="true" indent="true"/></tags:listCell>
					<tags:listCell><tags:createField property="fadmutx" entity="${instrTypeEncoded}" component="${component}" mode="${controlMode}"/></tags:listCell>
				</tags:listRow>
			</tags:listRowGroup>	
			<tags:listRowGroup>    
				<tags:listRow>
					<tags:listCell><tags:outputText textKey="${instrTypeEncoded}.fadmuso.label" inline="true"/></tags:listCell>
					<tags:listCell><tags:createField property="fadmuso" entity="${instrTypeEncoded}" component="${component}" mode="${controlMode}"/></tags:listCell>
				</tags:listRow>
				<tags:listRow>
					<tags:listCell><tags:outputText textKey="${instrTypeEncoded}.fadmusox.label" inline="true" indent="true"/></tags:listCell>
					<tags:listCell><tags:createField property="fadmusox" entity="${instrTypeEncoded}" component="${component}" mode="${controlMode}"/></tags:listCell>
				</tags:listRow>
			</tags:listRowGroup>	
			<tags:listRowGroup>    
				<tags:listRow>
					<tags:listCell><tags:outputText textKey="${instrTypeEncoded}.fftdmut.label" inline="true"/></tags:listCell>
					<tags:listCell><tags:createField property="fftdmut" entity="${instrTypeEncoded}" component="${component}" mode="${controlMode}"/></tags:listCell>
				</tags:listRow>
				<tags:listRow>
					<tags:listCell><tags:outputText textKey="${instrTypeEncoded}.fftdmutx.label" inline="true" indent="true"/></tags:listCell>
					<tags:listCell><tags:createField property="fftdmutx" entity="${instrTypeEncoded}" component="${component}" mode="${controlMode}"/></tags:listCell>
				</tags:listRow>
			</tags:listRowGroup>	
			<tags:listRowGroup>    
				<tags:listRow>
					<tags:listCell><tags:outputText textKey="${instrTypeEncoded}.fftdmuso.label" inline="true"/></tags:listCell>
					<tags:listCell><tags:createField property="fftdmuso" entity="${instrTypeEncoded}" component="${component}" mode="${controlMode}"/></tags:listCell>
				</tags:listRow>
				<tags:listRow>
					<tags:listCell><tags:outputText textKey="${instrTypeEncoded}.fftdmusx.label" inline="true" indent="true"/></tags:listCell>
					<tags:listCell><tags:createField property="fftdmusx" entity="${instrTypeEncoded}" component="${component}" mode="${controlMode}"/></tags:listCell>
				</tags:listRow>
			</tags:listRowGroup>	
			<tags:listRowGroup>    
				<tags:listRow>
					<tags:listCell><tags:outputText textKey="${instrTypeEncoded}.fothmut.label" inline="true"/></tags:listCell>
					<tags:listCell><tags:createField property="fothmut" entity="${instrTypeEncoded}" component="${component}" mode="${controlMode}"/></tags:listCell>
				</tags:listRow>
				<tags:listRow>
					<tags:listCell><tags:outputText textKey="${instrTypeEncoded}.fothmutx.label" inline="true" indent="true"/></tags:listCell>
					<tags:listCell><tags:createField property="fothmutx" entity="${instrTypeEncoded}" component="${component}" mode="${controlMode}"/></tags:listCell>
				</tags:listRow>
			</tags:listRowGroup>	
			<tags:listRowGroup>    
				<tags:listRow>
					<tags:listCell><tags:outputText textKey="${instrTypeEncoded}.fothmuso.label" inline="true"/></tags:listCell>
					<tags:listCell><tags:createField property="fothmuso" entity="${instrTypeEncoded}" component="${component}" mode="${controlMode}"/></tags:listCell>
				</tags:listRow>
				<tags:listRow>
					<tags:listCell><tags:outputText textKey="${instrTypeEncoded}.fothmusx.label" inline="true" indent="true"/></tags:listCell>
					<tags:listCell><tags:createField property="fothmusx" entity="${instrTypeEncoded}" component="${component}" mode="${controlMode}"/></tags:listCell>
				</tags:listRow>
			</tags:listRowGroup>	
		</tags:tableForm>
		
</page:applyDecorator>

<c:if test="${packetType == 'I' || empty packetType}">
	<tags:createField property="nwinfpar" component="${component}" entity="initial.${instrTypeEncoded}"/>
</c:if>   
<c:if test="${packetType == 'F' || packetType == 'T'}">
<page:applyDecorator name="component.instrument.section">
  	<page:param name="sectionId">parents</page:param> 
  	<page:param name="sectionNameKey">udsfamilyhistory2.parents.section</page:param> 
  	<page:param name="view">${componentView}</page:param>
  	<page:param name="instructions"> </page:param>
  	<%-- note that metadata context is 'r' for result field so it part of double entry, but passing 'longLeft' labelStyle 
  		takes precedence over the 'right' labelStyle for result fields becasue it appears later in the css --%>
	<tags:outputText textKey="udsfamilyhistory3.q5.followUpInstrucs" indent="true" styleClass="italic"/>
	<tags:createField property="nwinfpar" entity="${instrTypeEncoded}" component="${component}" labelStyle="longLeft"/>
</page:applyDecorator>
</c:if>  

<page:applyDecorator name="component.instrument.section">
  	<page:param name="sectionId">anonymous</page:param> 
  	<page:param name="view">${componentView}</page:param>
  	<page:param name="instructions"></page:param>
	<tags:tableForm>  
		<tags:listRow>
			<tags:listColumnHeader label="&nbsp;" width="8%"/>
			<tags:listColumnHeader labelKey="udsfamilyhistory3.birthHeader" width="18%"/>
			<tags:listColumnHeader labelKey="udsfamilyhistory3.dageHeader" width="10%"/>
			<tags:listColumnHeader labelKey="udsfamilyhistory3.neurHeader" width="18%"/>
			<tags:listColumnHeader labelKey="udsfamilyhistory3.prdxHeader" width="18%"/>
			<tags:listColumnHeader labelKey="udsfamilyhistory3.moeHeader" width="18%"/>
			<tags:listColumnHeader labelKey="udsfamilyhistory3.ageoHeader" width="10%"/>
		</tags:listRow>
		<tags:listRow>
			<tags:listCell><tags:outputText textKey="udsfamilyhistory2.parents.mother" inline="false"/></tags:listCell>
			<tags:listCell><tags:createField property="mommob,momyob" separator="/" entity="${instrTypeEncoded}" component="${component}" mode="${controlMode}"/></tags:listCell>
			<tags:listCell><tags:createField property="momdage" entity="${instrTypeEncoded}" component="${component}" mode="${controlMode}"/></tags:listCell>
			<tags:listCell><tags:createField property="momneur" entity="${instrTypeEncoded}" component="${component}" mode="${controlMode}"/></tags:listCell>
			<tags:listCell><tags:createField property="momprdx" entity="${instrTypeEncoded}" component="${component}" mode="${controlMode}"/></tags:listCell>
			<tags:listCell><tags:createField property="mommoe" entity="${instrTypeEncoded}" component="${component}" mode="${controlMode}"/></tags:listCell>
			<tags:listCell><tags:createField property="momageo" entity="${instrTypeEncoded}" component="${component}" mode="${controlMode}"/></tags:listCell>
		</tags:listRow>
		<tags:listRow>
			<tags:listCell><tags:outputText textKey="udsfamilyhistory2.parents.father" inline="false"/></tags:listCell>
			<tags:listCell><tags:createField property="dadmob,dadyob" separator="/" entity="${instrTypeEncoded}" component="${component}" mode="${controlMode}"/></tags:listCell>
			<tags:listCell><tags:createField property="daddage" entity="${instrTypeEncoded}" component="${component}" mode="${controlMode}"/></tags:listCell>
			<tags:listCell><tags:createField property="dadneur" entity="${instrTypeEncoded}" component="${component}" mode="${controlMode}"/></tags:listCell>
			<tags:listCell><tags:createField property="dadprdx" entity="${instrTypeEncoded}" component="${component}" mode="${controlMode}"/></tags:listCell>
			<tags:listCell><tags:createField property="dadmoe" entity="${instrTypeEncoded}" component="${component}" mode="${controlMode}"/></tags:listCell>
			<tags:listCell><tags:createField property="dadageo" entity="${instrTypeEncoded}" component="${component}" mode="${controlMode}"/></tags:listCell>
		</tags:listRow>
	</tags:tableForm>
</page:applyDecorator>

<page:applyDecorator name="component.instrument.section">
  	<page:param name="sectionId">siblings</page:param> 
  	<page:param name="sectionNameKey">udsfamilyhistory2.siblings.section</page:param> 
  	<page:param name="view">${componentView}</page:param>
  	<page:param name="instructions"> </page:param>
		<tags:createField property="sibs" entity="${instrTypeEncoded}" component="${component}" labelStyle="longLeft"/>
		<c:if test="${packetType == 'I' || empty packetType}">
			<tags:createField property="nwinfsib" component="${component}" entity="initial.${instrTypeEncoded}"/>
		</c:if>   
		<c:if test="${packetType == 'F' || packetType == 'T'}">
			<tags:outputText textKey="udsfamilyhistory3.q6a.followUpInstrucs" indent="true" styleClass="italic"/>
			<tags:createField property="nwinfsib" entity="${instrTypeEncoded}" component="${component}" labelStyle="longLeft"/>
		</c:if>  
</page:applyDecorator>

<page:applyDecorator name="component.instrument.section">
  	<page:param name="sectionId">anonymous</page:param> 
  	<page:param name="view">${componentView}</page:param>
  	<page:param name="instructions"> </page:param>  	
  	<tags:tableForm> 
		<tags:listRow>
			<tags:listColumnHeader label="&nbsp;" width="8%"/>
			<tags:listColumnHeader labelKey="udsfamilyhistory3.birthHeader" width="18%"/>
			<tags:listColumnHeader labelKey="udsfamilyhistory3.dageHeader" width="10%"/>
			<tags:listColumnHeader labelKey="udsfamilyhistory3.neurHeader" width="18%"/>
			<tags:listColumnHeader labelKey="udsfamilyhistory3.prdxHeader" width="18%"/>
			<tags:listColumnHeader labelKey="udsfamilyhistory3.moeHeader" width="18%"/>
			<tags:listColumnHeader labelKey="udsfamilyhistory3.ageoHeader" width="10%"/>
		</tags:listRow>

		<c:forEach begin="1" end="20" var="item">
		<tags:listRow>
			<tags:listCell><tags:outputText textKey="udsfamilyhistory2.siblings.sibling${item}" inline="false"/></tags:listCell>
			<tags:listCell><tags:createField property="sib${item}mob,sib${item}yob" separator="/" entity="${instrTypeEncoded}" component="${component}" mode="${controlMode}"/></tags:listCell>
			<tags:listCell><tags:createField property="sib${item}agd" entity="${instrTypeEncoded}" component="${component}" mode="${controlMode}"/></tags:listCell>
			<tags:listCell><tags:createField property="sib${item}neu" entity="${instrTypeEncoded}" component="${component}" mode="${controlMode}"/></tags:listCell>
			<tags:listCell><tags:createField property="sib${item}pdx" entity="${instrTypeEncoded}" component="${component}" mode="${controlMode}"/></tags:listCell>
			<tags:listCell><tags:createField property="sib${item}moe" entity="${instrTypeEncoded}" component="${component}" mode="${controlMode}"/></tags:listCell>
			<tags:listCell><tags:createField property="sib${item}ago" entity="${instrTypeEncoded}" component="${component}" mode="${controlMode}"/></tags:listCell>
		</tags:listRow>
		</c:forEach>
	</tags:tableForm>
</page:applyDecorator>


<page:applyDecorator name="component.instrument.section">
  	<page:param name="sectionId">children</page:param> 
  	<page:param name="sectionNameKey">udsfamilyhistory2.children.section</page:param> 
  	<page:param name="view">${componentView}</page:param>
  	<page:param name="instructions"> </page:param>
		<tags:createField property="kids" entity="${instrTypeEncoded}" component="${component}"  labelStyle="longLeft"/>
		<c:if test="${packetType == 'I' || empty packetType}">
			<tags:createField property="nwinfkid" component="${component}" entity="initial.${instrTypeEncoded}"/>
		</c:if>   
		<c:if test="${packetType == 'F' || packetType == 'T'}">
			<tags:outputText textKey="udsfamilyhistory3.q7a.followUpInstrucs" indent="true" styleClass="italic"/>
			<tags:createField property="nwinfkid" entity="${instrTypeEncoded}" component="${component}" labelStyle="longLeft"/>
		</c:if>  
</page:applyDecorator>

<page:applyDecorator name="component.instrument.section">
  	<page:param name="sectionId">anonymous</page:param> 
  	<page:param name="view">${componentView}</page:param>
  	<page:param name="instructions"> </page:param>  	
  	<tags:tableForm>  
  	
		<tags:listRow>
			<tags:listColumnHeader label="&nbsp;" width="8%"/>
			<tags:listColumnHeader labelKey="udsfamilyhistory3.birthHeader" width="18%"/>
			<tags:listColumnHeader labelKey="udsfamilyhistory3.dageHeader" width="10%"/>
			<tags:listColumnHeader labelKey="udsfamilyhistory3.neurHeader" width="18%"/>
			<tags:listColumnHeader labelKey="udsfamilyhistory3.prdxHeader" width="18%"/>
			<tags:listColumnHeader labelKey="udsfamilyhistory3.moeHeader" width="18%"/>
			<tags:listColumnHeader labelKey="udsfamilyhistory3.ageoHeader" width="10%"/>
		</tags:listRow>

		<c:forEach begin="1" end="15" var="item">
		<tags:listRow>
			<tags:listCell><tags:outputText textKey="udsfamilyhistory2.children.child${item}" inline="false"/></tags:listCell>
			<tags:listCell><tags:createField property="kid${item}mob,kid${item}yob" separator="/" entity="${instrTypeEncoded}" component="${component}" mode="${controlMode}"/></tags:listCell>
			<tags:listCell><tags:createField property="kid${item}agd" entity="${instrTypeEncoded}" component="${component}" mode="${controlMode}"/></tags:listCell>
			<tags:listCell><tags:createField property="kid${item}neu" entity="${instrTypeEncoded}" component="${component}" mode="${controlMode}"/></tags:listCell>
			<tags:listCell><tags:createField property="kid${item}pdx" entity="${instrTypeEncoded}" component="${component}" mode="${controlMode}"/></tags:listCell>
			<tags:listCell><tags:createField property="kid${item}moe" entity="${instrTypeEncoded}" component="${component}" mode="${controlMode}"/></tags:listCell>
			<tags:listCell><tags:createField property="kid${item}ago" entity="${instrTypeEncoded}" component="${component}" mode="${controlMode}"/></tags:listCell>
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
  
	<ui:formGuide >
	  <ui:ignore elementIds="packet" component="${component}" forValue="[F|T]"/>
	  <ui:observe elementIds="packet" component="${component}" forValue="[I|^$]"/>
	  <ui:unskip elementIds="fadmut,fftdmut,fothmut" component="${component}"/>	
	</ui:formGuide>      

	<ui:formGuide >
	  <ui:ignore elementIds="packet" component="${component}" forValue="[I|^$]"/>
	  <ui:observe elementIds="nwinfmut" component="${component}" forValue="1"/>
	  <ui:unskip elementIds="fadmut,fftdmut,fothmut" component="${component}"/>	
	</ui:formGuide>      
	
	<ui:formGuide>
		<ui:depends elementIds="nwinfmut" component="${component}"/>
		<ui:observe elementIds="fadmut" component="${component}" forValue="1|2|3|8"/>
		<ui:unskip elementIds="fadmuso" component="${component}"/> 
	</ui:formGuide>
	     
	<ui:formGuide>
		<ui:depends elementIds="nwinfmut" component="${component}"/>
		<ui:observe elementIds="fadmut" component="${component}" forValue="8"/>
		<ui:unskip elementIds="fadmutx" component="${component}"/> 
	</ui:formGuide>
	     
	<ui:formGuide>
		<ui:depends elementIds="nwinfmut,fadmut" component="${component}"/>
		<ui:observe elementIds="fadmuso" component="${component}" forValue="8"/>
		<ui:unskip elementIds="fadmusox" component="${component}"/> 
	</ui:formGuide>
	
	<ui:formGuide>
		<ui:depends elementIds="nwinfmut" component="${component}"/>
		<ui:observe elementIds="fftdmut" component="${component}" forValue="1|2|3|8"/>
		<ui:unskip elementIds="fftdmuso" component="${component}"/> 
	</ui:formGuide>
	
	<ui:formGuide>
		<ui:depends elementIds="nwinfmut" component="${component}"/>
		<ui:observe elementIds="fftdmut" component="${component}" forValue="8"/>
		<ui:unskip elementIds="fftdmutx" component="${component}"/> 
	</ui:formGuide>

	<ui:formGuide>
		<ui:depends elementIds="nwinfmut,fftdmut" component="${component}"/>
		<ui:observe elementIds="fftdmuso" component="${component}" forValue="8"/>
		<ui:unskip elementIds="fftdmusx" component="${component}"/> 
	</ui:formGuide>

	<ui:formGuide>
		<ui:depends elementIds="nwinfmut" component="${component}"/>
		<ui:observe elementIds="fothmut" component="${component}" forValue="1|2|3|8"/>
		<ui:unskip elementIds="fothmuso" component="${component}"/> 
	</ui:formGuide>

	<ui:formGuide>
		<ui:depends elementIds="nwinfmut" component="${component}"/>
		<ui:observe elementIds="fothmut" component="${component}" forValue="1"/>
		<ui:unskip elementIds="fothmutx" component="${component}"/> 
	</ui:formGuide>

	<ui:formGuide>
		<ui:depends elementIds="nwinfmut,fothmut" component="${component}"/>
		<ui:observe elementIds="fothmuso" component="${component}" forValue="8"/>
		<ui:unskip elementIds="fothmusx" component="${component}"/> 
	</ui:formGuide>
	
	<ui:formGuide >
	  <ui:ignore elementIds="packet" component="${component}" forValue="[I|^$]"/>
	  <ui:observe elementIds="nwinfpar" component="${component}" forValue="1"/>
	  <ui:unskip elementIds="mommob,dadmob" component="${component}"/>	
	</ui:formGuide>           
	
	<ui:formGuide>
		<ui:depends elementIds="nwinfpar" component="${component}"/>
		<ui:observe elementIds="mommob" component="${component}" forValue="^$|-[0-9]" negate="true"/>
		<ui:unskip elementIds="momyob,momdage,momneur" component="${component}"/> 
	</ui:formGuide>
	
	<ui:formGuide>
		<ui:depends elementIds="nwinfpar,mommob" component="${component}"/>
		<ui:observe elementIds="momneur" component="${component}" forValue="[1-5]"/>
		<ui:unskip elementIds="momprdx,mommoe,momageo" component="${component}"/> 
	</ui:formGuide>
	
	<ui:formGuide>
		<ui:depends elementIds="nwinfpar" component="${component}"/>
		<ui:observe elementIds="dadmob" component="${component}" forValue="^$|-[0-9]" negate="true"/>
		<ui:unskip elementIds="dadyob,daddage,dadneur" component="${component}"/> 
	</ui:formGuide>
	
	<ui:formGuide>
		<ui:depends elementIds="nwinfpar,dadmob" component="${component}"/>
		<ui:observe elementIds="dadneur" component="${component}" forValue="[1-5]"/>
		<ui:unskip elementIds="dadprdx,dadmoe,dadageo" component="${component}"/> 
	</ui:formGuide>
	
	<c:forEach begin="1" end="20" var="item">
		<%-- skip all sibling fields if nohting has changed at followup visit, i.e. nwinfsib = 0 (ignore on initial packets). because
			sibNmob determines whether subsequent sib properties are skipped, just skip sibNmob here --%>
		<ui:formGuide >
		  <ui:ignore elementIds="packet" component="${component}" forValue="[I|^$]"/>
		  <ui:observe elementIds="nwinfsib" component="${component}" forValue="0" />
		  <ui:skip elementIds="sib${item}mob" component="${component}"/>	
		</ui:formGuide>           
	</c:forEach>
	
	<c:forEach begin="1" end="20" var="item">
		<%-- if sibling mob completed then unskip you, agd, neu. basically, skip the row until something has been entered in it --%>
		<ui:formGuide>
		  <ui:depends elementIds="nwinfsib" component="${component}"/>
		  <ui:observe elementIds="sib${item}mob" component="${component}" forValue="^$|-[0-9]" negate="true"/>
		  <ui:unskip elementIds="sib${item}yob,sib${item}agd,sib${item}neu" component="${component}"/>	
		</ui:formGuide>   

		<%-- if sibling is demented then unskip rest of row --%>
		<ui:formGuide>
			<ui:depends elementIds="nwinfsib,sib${item}mob" component="${component}"/>
			<ui:observe elementIds="sib${item}neu" component="${component}" forValue="[1-5]"/>
			<ui:unskip elementIds="sib${item}pdx,sib${item}moe,sib${item}ago" component="${component}"/>	
		</ui:formGuide>           
	</c:forEach>
	
	
	<c:forEach begin="1" end="15" var="item">
		<%-- skip all kid fields if nohting has changed at followup visit, i.e. nwinfkid = 0 (ignore on initial packets). because
			kidNmob determines whether subsequent kid properties are skipped, just skip kidNmob here --%>
		<ui:formGuide >
		  <ui:ignore elementIds="packet" component="${component}" forValue="[I|^$]"/>
		  <ui:observe elementIds="nwinfkid" component="${component}" forValue="0" />
		  <ui:skip elementIds="kid${item}mob" component="${component}"/>	
		</ui:formGuide>           
	</c:forEach>
	
	<c:forEach begin="1" end="15" var="item">
		<%-- if kid mob completed then unskip yob, agd, neu. basically skip row until something has be entered --%>
		<ui:formGuide>
		  <ui:depends elementIds="nwinfkid" component="${component}"/>
		  <ui:observe elementIds="kid${item}mob" component="${component}" forValue="^$|-[0-9]" negate="true"/>
		  <ui:unskip elementIds="kid${item}yob,kid${item}agd,kid${item}neu" component="${component}"/>	
		</ui:formGuide>   
			
		<%-- if child is demented then unskip rest of row --%>
		<ui:formGuide>
			<ui:depends elementIds="nwinfkid,kid${item}mob" component="${component}"/>
			<ui:observe elementIds="kid${item}neu" component="${component}" forValue="[1-5]"/>
			<ui:unskip elementIds="kid${item}pdx,kid${item}moe,kid${item}ago" component="${component}"/>	
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
	    
