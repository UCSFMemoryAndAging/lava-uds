<%@ include file="/WEB-INF/jsp/includes/include.jsp" %>
<c:set var="instrTypeEncoded" value="udsftldfamilyhistory2"/>

<c:import url="/WEB-INF/jsp/crms/assessment/instrument/include.jsp">
	<c:param name="instrTypeEncoded" value="${instrTypeEncoded}"/>
</c:import>

<%-- instrument-specific focusField setting (include.jsp has common focusField settings) --%>
<c:choose>
	<c:when test="${componentView == 'doubleEnter' || componentView == 'compare'}">
		<c:set var="focusField" value="ftdaff"/>
	</c:when>
</c:choose>	

<page:applyDecorator name="component.content">
  <page:param name="isInstrument">true</page:param> 
  <page:param name="component">${instrTypeEncoded}</page:param> 
  <page:param name="focusField">${focusField}</page:param>
  <page:param name="pageHeadingArgs">UDS FTLD Family History</page:param>
  <page:param name="quicklinks">family,parents,siblings,children</page:param>
   
<page:applyDecorator name="component.instrument.content">
  <page:param name="instrTypeEncoded">${instrTypeEncoded}</page:param>
  <page:param name="view">${componentView}</page:param>

<c:import url="/WEB-INF/jsp/crms/assessment/instrument/udsCommon.jsp">
	<c:param name="entity" value="${instrTypeEncoded}"/>
	<c:param name="view" value="${componentView}"/>
	<c:param name="component" value="${component}"/>
</c:import>


<page:applyDecorator name="component.instrument.section">
  	<page:param name="sectionId">family</page:param> 
  	<page:param name="sectionNameKey">udsftldfamilyhistory2.family.section</page:param> 
  	<page:param name="view">${componentView}</page:param>
  	<page:param name="instructions"> </page:param>

	<tags:createField property="ftdaff" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdmutat" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdpmut" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdpmutx" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdmclab" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdmrlab" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdmfamr" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdmoth" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdmothx" component="${component}" entity="${instrTypeEncoded}"/>
</page:applyDecorator>


<page:applyDecorator name="component.instrument.section">
  	<page:param name="sectionId">parents</page:param> 
  	<page:param name="sectionNameKey">udsftldfamilyhistory2.parents.section</page:param> 
  	<page:param name="view">${componentView}</page:param>
  	<page:param name="instructions"> </page:param>

  	<tags:tableForm>  
		<tags:listRow>
			<tags:listColumnHeader labelKey="udsftldfamilyhistory2.parents.labelHeader" width="12%"/>
			<tags:listColumnHeader labelKey="udsftldfamilyhistory2.parents.npHeader" width="22%"/>
			<tags:listColumnHeader labelKey="udsftldfamilyhistory2.parents.pdHeader" width="22%"/>
			<tags:listColumnHeader labelKey="udsftldfamilyhistory2.parents.moeHeader" width="22%"/>
			<tags:listColumnHeader labelKey="udsftldfamilyhistory2.parents.aooHeader" width="22%"/>
		</tags:listRow>
		<tags:listRow>
			<tags:listCell><tags:outputText textKey="udsftldfamilyhistory2.parents.mother" inline="false"/></tags:listCell>
			<tags:listCell><tags:createField property="ftdmomn" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
			<tags:listCell><tags:createField property="ftdmomp" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
			<tags:listCell><tags:createField property="ftdmome" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
			<tags:listCell><tags:createField property="ftdmoma" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
		</tags:listRow>
		<tags:listRow>
			<tags:listCell><tags:outputText textKey="udsftldfamilyhistory2.parents.father" inline="false"/></tags:listCell>
			<tags:listCell><tags:createField property="ftddadn" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
			<tags:listCell><tags:createField property="ftddadp" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
			<tags:listCell><tags:createField property="ftddade" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
			<tags:listCell><tags:createField property="ftddada" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
		</tags:listRow>
	</tags:tableForm>
</page:applyDecorator>


<page:applyDecorator name="component.instrument.section">
  	<page:param name="sectionId">siblings</page:param> 
  	<page:param name="sectionNameKey">udsftldfamilyhistory2.siblings.section</page:param> 
  	<page:param name="view">${componentView}</page:param>
  	<page:param name="instructions"> </page:param>

  	<tags:tableForm>  
		<tags:listRow>
			<tags:listColumnHeader labelKey="udsftldfamilyhistory2.siblings.labelHeader" width="5%"/>
			<tags:listColumnHeader labelKey="udsftldfamilyhistory2.siblings.bmyHeader" width="23%"/>
			<tags:listColumnHeader labelKey="udsftldfamilyhistory2.siblings.npHeader" width="18%"/>
			<tags:listColumnHeader labelKey="udsftldfamilyhistory2.siblings.pdHeader" width="18%"/>
			<tags:listColumnHeader labelKey="udsftldfamilyhistory2.siblings.moeHeader" width="18%"/>
			<tags:listColumnHeader labelKey="udsftldfamilyhistory2.siblings.aooHeader" width="18%"/>
		</tags:listRow>
		<tags:listRow>
			<tags:listCell><tags:outputText textKey="udsftldfamilyhistory2.siblings.sibling3a" inline="false"/></tags:listCell>
			<tags:listCell><tags:createField property="ftdbsam" component="${component}" entity="${instrTypeEncoded}"/>/<tags:createField property="ftdbsa" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
			<tags:listCell><tags:createField property="ftdnsa" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
			<tags:listCell><tags:createField property="ftdpsa" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
			<tags:listCell><tags:createField property="ftdmsa" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
			<tags:listCell><tags:createField property="ftdasa" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>			
			
		</tags:listRow>
		<tags:listRow>
			<tags:listCell><tags:outputText textKey="udsftldfamilyhistory2.siblings.sibling3b" inline="false"/></tags:listCell>
			<tags:listCell><tags:createField property="ftdbsbm" component="${component}" entity="${instrTypeEncoded}"/>/<tags:createField property="ftdbsb" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
			<tags:listCell><tags:createField property="ftdnsb" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
			<tags:listCell><tags:createField property="ftdpsb" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
			<tags:listCell><tags:createField property="ftdmsb" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
			<tags:listCell><tags:createField property="ftdasb" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
		</tags:listRow>
		<tags:listRow>
			<tags:listCell><tags:outputText textKey="udsftldfamilyhistory2.siblings.sibling3c" inline="false"/></tags:listCell>
			<tags:listCell><tags:createField property="ftdbscm" component="${component}" entity="${instrTypeEncoded}"/>/<tags:createField property="ftdbsc" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
			<tags:listCell><tags:createField property="ftdnsc" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
			<tags:listCell><tags:createField property="ftdpsc" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
			<tags:listCell><tags:createField property="ftdmsc" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
			<tags:listCell><tags:createField property="ftdasc" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
		</tags:listRow>
		<tags:listRow>
			<tags:listCell><tags:outputText textKey="udsftldfamilyhistory2.siblings.sibling3d" inline="false"/></tags:listCell>
			<tags:listCell><tags:createField property="ftdbsdm" component="${component}" entity="${instrTypeEncoded}"/>/<tags:createField property="ftdbsd" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
			<tags:listCell><tags:createField property="ftdnsd" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
			<tags:listCell><tags:createField property="ftdpsd" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
			<tags:listCell><tags:createField property="ftdmsd" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
			<tags:listCell><tags:createField property="ftdasd" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
		</tags:listRow>
		<tags:listRow>
			<tags:listCell><tags:outputText textKey="udsftldfamilyhistory2.siblings.sibling3e" inline="false"/></tags:listCell>
			<tags:listCell><tags:createField property="ftdbsem" component="${component}" entity="${instrTypeEncoded}"/>/<tags:createField property="ftdbse" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
			<tags:listCell><tags:createField property="ftdnse" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
			<tags:listCell><tags:createField property="ftdpse" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
			<tags:listCell><tags:createField property="ftdmse" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
			<tags:listCell><tags:createField property="ftdase" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
		</tags:listRow>
		<tags:listRow>
			<tags:listCell><tags:outputText textKey="udsftldfamilyhistory2.siblings.sibling3f" inline="false"/></tags:listCell>
			<tags:listCell><tags:createField property="ftdbsfm" component="${component}" entity="${instrTypeEncoded}"/>/<tags:createField property="ftdbsf" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
			<tags:listCell><tags:createField property="ftdnsf" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
			<tags:listCell><tags:createField property="ftdpsf" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
			<tags:listCell><tags:createField property="ftdmsf" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
			<tags:listCell><tags:createField property="ftdasf" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
		</tags:listRow>
		<tags:listRow>
			<tags:listCell><tags:outputText textKey="udsftldfamilyhistory2.siblings.sibling3g" inline="false"/></tags:listCell>
			<tags:listCell><tags:createField property="ftdbsgm" component="${component}" entity="${instrTypeEncoded}"/>/<tags:createField property="ftdbsg" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
			<tags:listCell><tags:createField property="ftdnsg" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
			<tags:listCell><tags:createField property="ftdpsg" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
			<tags:listCell><tags:createField property="ftdmsg" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
			<tags:listCell><tags:createField property="ftdasg" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
		</tags:listRow>
		<tags:listRow>
			<tags:listCell><tags:outputText textKey="udsftldfamilyhistory2.siblings.sibling3h" inline="false"/></tags:listCell>
			<tags:listCell><tags:createField property="ftdbshm" component="${component}" entity="${instrTypeEncoded}"/>/<tags:createField property="ftdbsh" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
			<tags:listCell><tags:createField property="ftdnsh" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
			<tags:listCell><tags:createField property="ftdpsh" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
			<tags:listCell><tags:createField property="ftdmsh" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
			<tags:listCell><tags:createField property="ftdash" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
		</tags:listRow>
		<tags:listRow>
			<tags:listCell><tags:outputText textKey="udsftldfamilyhistory2.siblings.sibling3i" inline="false"/></tags:listCell>
			<tags:listCell><tags:createField property="ftdbsim" component="${component}" entity="${instrTypeEncoded}"/>/<tags:createField property="ftdbsi" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
			<tags:listCell><tags:createField property="ftdnsi" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
			<tags:listCell><tags:createField property="ftdpsi" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
			<tags:listCell><tags:createField property="ftdmsi" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
			<tags:listCell><tags:createField property="ftdasi" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
		</tags:listRow>
		<tags:listRow>
			<tags:listCell><tags:outputText textKey="udsftldfamilyhistory2.siblings.sibling3j" inline="false"/></tags:listCell>
			<tags:listCell><tags:createField property="ftdbsjm" component="${component}" entity="${instrTypeEncoded}"/>/<tags:createField property="ftdbsj" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
			<tags:listCell><tags:createField property="ftdnsj" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
			<tags:listCell><tags:createField property="ftdpsj" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
			<tags:listCell><tags:createField property="ftdmsj" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
			<tags:listCell><tags:createField property="ftdasj" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
		</tags:listRow>
		<tags:listRow>
			<tags:listCell><tags:outputText textKey="udsftldfamilyhistory2.siblings.sibling3k" inline="false"/></tags:listCell>
			<tags:listCell><tags:createField property="ftdbskm" component="${component}" entity="${instrTypeEncoded}"/>/<tags:createField property="ftdbsk" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
			<tags:listCell><tags:createField property="ftdnsk" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
			<tags:listCell><tags:createField property="ftdpsk" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
			<tags:listCell><tags:createField property="ftdmsk" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
			<tags:listCell><tags:createField property="ftdask" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
		</tags:listRow>
		<tags:listRow>
			<tags:listCell><tags:outputText textKey="udsftldfamilyhistory2.siblings.sibling3l" inline="false"/></tags:listCell>
			<tags:listCell><tags:createField property="ftdbslm" component="${component}" entity="${instrTypeEncoded}"/>/<tags:createField property="ftdbsl" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
			<tags:listCell><tags:createField property="ftdnsl" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
			<tags:listCell><tags:createField property="ftdpsl" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
			<tags:listCell><tags:createField property="ftdmsl" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
			<tags:listCell><tags:createField property="ftdasl" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
		</tags:listRow>
		<tags:listRow>
			<tags:listCell><tags:outputText textKey="udsftldfamilyhistory2.siblings.sibling3m" inline="false"/></tags:listCell>
			<tags:listCell><tags:createField property="ftdbsmm" component="${component}" entity="${instrTypeEncoded}"/>/<tags:createField property="ftdbsm" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
			<tags:listCell><tags:createField property="ftdnsm" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
			<tags:listCell><tags:createField property="ftdpsm" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
			<tags:listCell><tags:createField property="ftdmsm" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
			<tags:listCell><tags:createField property="ftdasm" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
		</tags:listRow>
	</tags:tableForm>
</page:applyDecorator>		
		
<page:applyDecorator name="component.instrument.section">
  	<page:param name="sectionId">children</page:param> 
  	<page:param name="sectionNameKey">udsftldfamilyhistory2.children.section</page:param> 
  	<page:param name="view">${componentView}</page:param>
  	<page:param name="instructions"> </page:param>

  	<tags:tableForm>
		<tags:listRow>
			<tags:listColumnHeader labelKey="udsftldfamilyhistory2.children.labelHeader" width="5%"/>
			<tags:listColumnHeader labelKey="udsftldfamilyhistory2.children.bmyHeader" width="23%"/>
			<tags:listColumnHeader labelKey="udsftldfamilyhistory2.children.npHeader" width="18%"/>
			<tags:listColumnHeader labelKey="udsftldfamilyhistory2.children.pdHeader" width="18%"/>
			<tags:listColumnHeader labelKey="udsftldfamilyhistory2.children.moeHeader" width="18%"/>
			<tags:listColumnHeader labelKey="udsftldfamilyhistory2.children.aooHeader" width="18%"/>
		</tags:listRow>  		
		<tags:listRow>
			<tags:listCell><tags:outputText textKey="udsftldfamilyhistory2.children.child4a" inline="false"/></tags:listCell>
			<tags:listCell><tags:createField property="ftdbcam" component="${component}" entity="${instrTypeEncoded}"/>/<tags:createField property="ftdbca" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
			<tags:listCell><tags:createField property="ftdnca" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
			<tags:listCell><tags:createField property="ftdpca" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
			<tags:listCell><tags:createField property="ftdmca" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
			<tags:listCell><tags:createField property="ftdaca" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
		</tags:listRow>
		<tags:listRow>
			<tags:listCell><tags:outputText textKey="udsftldfamilyhistory2.children.child4b" inline="false"/></tags:listCell>
			<tags:listCell><tags:createField property="ftdbcbm" component="${component}" entity="${instrTypeEncoded}"/>/<tags:createField property="ftdbcb" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
			<tags:listCell><tags:createField property="ftdncb" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
			<tags:listCell><tags:createField property="ftdpcb" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
			<tags:listCell><tags:createField property="ftdmcb" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
			<tags:listCell><tags:createField property="ftdacb" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
		</tags:listRow>
		<tags:listRow>
			<tags:listCell><tags:outputText textKey="udsftldfamilyhistory2.children.child4c" inline="false"/></tags:listCell>
			<tags:listCell><tags:createField property="ftdbccm" component="${component}" entity="${instrTypeEncoded}"/>/<tags:createField property="ftdbcc" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
			<tags:listCell><tags:createField property="ftdncc" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
			<tags:listCell><tags:createField property="ftdpcc" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
			<tags:listCell><tags:createField property="ftdmcc" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
			<tags:listCell><tags:createField property="ftdacc" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
		</tags:listRow>
		<tags:listRow>
			<tags:listCell><tags:outputText textKey="udsftldfamilyhistory2.children.child4d" inline="false"/></tags:listCell>
			<tags:listCell><tags:createField property="ftdbcdm" component="${component}" entity="${instrTypeEncoded}"/>/<tags:createField property="ftdbcd" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
			<tags:listCell><tags:createField property="ftdncd" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
			<tags:listCell><tags:createField property="ftdpcd" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
			<tags:listCell><tags:createField property="ftdmcd" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
			<tags:listCell><tags:createField property="ftdacd" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
		</tags:listRow>
		<tags:listRow>
			<tags:listCell><tags:outputText textKey="udsftldfamilyhistory2.children.child4e" inline="false"/></tags:listCell>
			<tags:listCell><tags:createField property="ftdbcem" component="${component}" entity="${instrTypeEncoded}"/>/<tags:createField property="ftdbce" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
			<tags:listCell><tags:createField property="ftdnce" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
			<tags:listCell><tags:createField property="ftdpce" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
			<tags:listCell><tags:createField property="ftdmce" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
			<tags:listCell><tags:createField property="ftdace" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
		</tags:listRow>
		<tags:listRow>
			<tags:listCell><tags:outputText textKey="udsftldfamilyhistory2.children.child4f" inline="false"/></tags:listCell>
			<tags:listCell><tags:createField property="ftdbcfm" component="${component}" entity="${instrTypeEncoded}"/>/<tags:createField property="ftdbcf" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
			<tags:listCell><tags:createField property="ftdncf" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
			<tags:listCell><tags:createField property="ftdpcf" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
			<tags:listCell><tags:createField property="ftdmcf" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
			<tags:listCell><tags:createField property="ftdacf" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
		</tags:listRow>
		<tags:listRow>
			<tags:listCell><tags:outputText textKey="udsftldfamilyhistory2.children.child4g" inline="false"/></tags:listCell>
			<tags:listCell><tags:createField property="ftdbcgm" component="${component}" entity="${instrTypeEncoded}"/>/<tags:createField property="ftdbcg" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
			<tags:listCell><tags:createField property="ftdncg" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
			<tags:listCell><tags:createField property="ftdpcg" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
			<tags:listCell><tags:createField property="ftdmcg" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
			<tags:listCell><tags:createField property="ftdacg" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
		</tags:listRow>
		<tags:listRow>
			<tags:listCell><tags:outputText textKey="udsftldfamilyhistory2.children.child4h" inline="false"/></tags:listCell>
			<tags:listCell><tags:createField property="ftdbchm" component="${component}" entity="${instrTypeEncoded}"/>/<tags:createField property="ftdbch" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
			<tags:listCell><tags:createField property="ftdnch" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
			<tags:listCell><tags:createField property="ftdpch" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
			<tags:listCell><tags:createField property="ftdmch" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
			<tags:listCell><tags:createField property="ftdach" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
		</tags:listRow>
		<tags:listRow>
			<tags:listCell><tags:outputText textKey="udsftldfamilyhistory2.children.child4i" inline="false"/></tags:listCell>
			<tags:listCell><tags:createField property="ftdbcim" component="${component}" entity="${instrTypeEncoded}"/>/<tags:createField property="ftdbci" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
			<tags:listCell><tags:createField property="ftdnci" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
			<tags:listCell><tags:createField property="ftdpci" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
			<tags:listCell><tags:createField property="ftdmci" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
			<tags:listCell><tags:createField property="ftdaci" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
		</tags:listRow>
		<tags:listRow>
			<tags:listCell><tags:outputText textKey="udsftldfamilyhistory2.children.child4j" inline="false"/></tags:listCell>
			<tags:listCell><tags:createField property="ftdbcjm" component="${component}" entity="${instrTypeEncoded}"/>/<tags:createField property="ftdbcj" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
			<tags:listCell><tags:createField property="ftdncj" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
			<tags:listCell><tags:createField property="ftdpcj" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
			<tags:listCell><tags:createField property="ftdmcj" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
			<tags:listCell><tags:createField property="ftdacj" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
		</tags:listRow>
		<tags:listRow>
			<tags:listCell><tags:outputText textKey="udsftldfamilyhistory2.children.child4k" inline="false"/></tags:listCell>
			<tags:listCell><tags:createField property="ftdbckm" component="${component}" entity="${instrTypeEncoded}"/>/<tags:createField property="ftdbck" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
			<tags:listCell><tags:createField property="ftdnck" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
			<tags:listCell><tags:createField property="ftdpck" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
			<tags:listCell><tags:createField property="ftdmck" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
			<tags:listCell><tags:createField property="ftdack" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
		</tags:listRow>
		<tags:listRow>
			<tags:listCell><tags:outputText textKey="udsftldfamilyhistory2.children.child4l" inline="false"/></tags:listCell>
			<tags:listCell><tags:createField property="ftdbclm" component="${component}" entity="${instrTypeEncoded}"/>/<tags:createField property="ftdbcl" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
			<tags:listCell><tags:createField property="ftdncl" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
			<tags:listCell><tags:createField property="ftdpcl" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
			<tags:listCell><tags:createField property="ftdmcl" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
			<tags:listCell><tags:createField property="ftdacl" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
		</tags:listRow>
		<tags:listRow>
			<tags:listCell><tags:outputText textKey="udsftldfamilyhistory2.children.child4m" inline="false"/></tags:listCell>
			<tags:listCell><tags:createField property="ftdbcmm" component="${component}" entity="${instrTypeEncoded}"/>/<tags:createField property="ftdbcm" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
			<tags:listCell><tags:createField property="ftdncm" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
			<tags:listCell><tags:createField property="ftdpcm" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
			<tags:listCell><tags:createField property="ftdmcm" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
			<tags:listCell><tags:createField property="ftdacm" component="${component}" entity="${instrTypeEncoded}"/></tags:listCell>
		</tags:listRow>
	</tags:tableForm>
</page:applyDecorator>


<page:applyDecorator name="component.instrument.section">
	<page:param name="sectionId">anonymous</page:param>
	<page:param name="view">${componentView}</page:param>
	<page:param name="instructions"> </page:param>
	<tags:createField property="notes['udsftldfamilyhistory2']" entity="${instrTypeEncoded}" component="${component}" metadataName="instrument.sectionNote" labelAlignment="top" dataStyle="instrNote"/>
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
  <ui:observe elementIds="ftdaff" component="${componentPrefix}" forValue="^1" comboRadioSelect="${componentMode == 'dc' ? 'true' : 'false'}"/>
  <ui:unskip elementIds="ftdmutat,ftdpmut,ftdpmutx,ftdmclab,ftdmrlab,ftdmfamr,ftdmoth,ftdmothx,ftdmomn,ftdmomp,ftdmome,ftdmoma,ftddadn,ftddadp,ftddade,ftddada,ftdbsam,ftdbsa,ftdnsa,ftdpsa,ftdmsa,ftdasa,ftdbsbm,ftdbsb,ftdnsb,ftdpsb,ftdmsb,ftdasb,ftdbscm,ftdbsc,ftdnsc,ftdpsc,ftdmsc,ftdasc,ftdbsdm,ftdbsd,ftdnsd,ftdpsd,ftdmsd,ftdasd,ftdbsem,ftdbse,ftdnse,ftdpse,ftdmse,ftdase,ftdbsfm,ftdbsf,ftdnsf,ftdpsf,ftdmsf,ftdasf,ftdbsgm,ftdbsg,ftdnsg,ftdpsg,ftdmsg,ftdasg,ftdbshm,ftdbsh,ftdnsh,ftdpsh,ftdmsh,ftdash,ftdbsim,ftdbsi,ftdnsi,ftdpsi,ftdmsi,ftdasi,ftdbsjm,ftdbsj,ftdnsj,ftdpsj,ftdmsj,ftdasj,ftdbskm,ftdbsk,ftdnsk,ftdpsk,ftdmsk,ftdask,ftdbslm,ftdbsl,ftdnsl,ftdpsl,ftdmsl,ftdasl,ftdbsmm,ftdbsm,ftdnsm,ftdpsm,ftdmsm,ftdasm,ftdbcam,ftdbca,ftdnca,ftdpca,ftdmca,ftdaca,ftdbcbm,ftdbcb,ftdncb,ftdpcb,ftdmcb,ftdacb,ftdbccm,ftdbcc,ftdncc,ftdpcc,ftdmcc,ftdacc,ftdbcdm,ftdbcd,ftdncd,ftdpcd,ftdmcd,ftdacd,ftdbcem,ftdbce,ftdnce,ftdpce,ftdmce,ftdace,ftdbcfm,ftdbcf,ftdncf,ftdpcf,ftdmcf,ftdacf,ftdbcgm,ftdbcg,ftdncg,ftdpcg,ftdmcg,ftdacg,ftdbchm,ftdbch,ftdnch,ftdpch,ftdmch,ftdach,ftdbcim,ftdbci,ftdnci,ftdpci,ftdmci,ftdaci,ftdbcjm,ftdbcj,ftdncj,ftdpcj,ftdmcj,ftdacj,ftdbckm,ftdbck,ftdnck,ftdpck,ftdmck,ftdack,ftdbclm,ftdbcl,ftdncl,ftdpcl,ftdmcl,ftdacl,ftdbcmm,ftdbcm,ftdncm,ftdpcm,ftdmcm,ftdacm" component="${componentPrefix}"/>
</ui:formGuide>

<ui:formGuide>
  <ui:observe elementIds="ftdmutat" component="${componentPrefix}" forValue="^1" comboRadioSelect="${componentMode == 'dc' ? 'true' : 'false'}"/>
  <ui:unskip elementIds="ftdpmut,ftdpmutx,ftdmclab,ftdmrlab,ftdmfamr,ftdmoth,ftdmothx" component="${componentPrefix}"/>
</ui:formGuide>

<ui:formGuide>
  <ui:observe elementIds="ftdpmut" component="${componentPrefix}" forValue="^8" comboRadioSelect="${componentMode == 'dc' ? 'true' : 'false'}"/>
  <ui:unskip elementIds="ftdpmutx" component="${componentPrefix}"/>
</ui:formGuide>

<ui:formGuide simulateEvents="${(current == 0 && componentView != 'compare') || (current == 1) ? 'true' : ''}">
  <ui:observe elementIds="ftdmoth" component="${componentPrefix}" forValue="^1" comboRadioSelect="${componentMode == 'dc' ? 'true' : 'false'}"/>
  <ui:unskip elementIds="ftdmothx" component="${componentPrefix}"/>
</ui:formGuide>

  </c:if>
</c:forEach>
</c:if>

</page:applyDecorator>    
</page:applyDecorator>    
	    
