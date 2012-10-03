<%@ include file="/WEB-INF/jsp/includes/include.jsp" %>
<c:set var="instrTypeEncoded" value="udsftldsboc2"/>
<c:import url="/WEB-INF/jsp/crms/assessment/instrument/include.jsp">
	<c:param name="instrTypeEncoded" value="${instrTypeEncoded}"/>
</c:import>

<%-- instrument-specific focusField setting (include.jsp has common focusField settings) --%>
<c:choose>
	<c:when test="${componentView == 'doubleEnter' || componentView == 'compare'}">
		<c:set var="focusField" value="ftdself"/>
	</c:when>
</c:choose>	

<page:applyDecorator name="component.content">
  <page:param name="isInstrument">true</page:param> 
  <page:param name="component">${instrTypeEncoded}</page:param> 
  <page:param name="focusField">${focusField}</page:param>
  <page:param name="pageHeadingArgs">UDS FTLD SBOC</page:param>
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
	
	<tags:createField property="ftdself" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdbadly" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftddepr" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdemotd" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdlself" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftddisr" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdbelch" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdgigg" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdpriv" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdnegat" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdecomm" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdinapj" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdfaila" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdresis" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdinter" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdverba" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdphysi" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdtopic" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdproto" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdpreo" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdfini" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdacted" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdabs" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdfeedb" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdfrust" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdanxi" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdnervo" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdndiag" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdstimb" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdstime" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdobjec" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdcircu" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdperse" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdrepea" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdanecd" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftddinit" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftddelay" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdaddve" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdfluct" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdlostt" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdrepru" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdtrain" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftddiscl" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdspont" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdsponr" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdstood" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdtouch" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftddsoci" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdexagg" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdsbtot" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdsbcto" component="${component}" entity="${instrTypeEncoded}"/>
	<tags:createField property="ftdlengt" component="${component}" entity="${instrTypeEncoded}"/>

</page:applyDecorator>

<page:applyDecorator name="component.instrument.section">
	<page:param name="sectionId">anonymous</page:param>
	<page:param name="view">${componentView}</page:param>
	<page:param name="instructions"> </page:param>
	<tags:createField property="notes['udsftldsboc2']" entity="${instrTypeEncoded}" component="${component}" metadataName="instrument.sectionNote" labelAlignment="top" dataStyle="instrNote"/>
</page:applyDecorator>

</page:applyDecorator>    
</page:applyDecorator>    
	    
