<%@ include file="/WEB-INF/jsp/includes/include.jsp" %>

<c:set var="component">${param.component}</c:set>
<c:set var="componentView">${param.componentView}</c:set>

<tags:contentColumn columnClass="colLeft2Col5050">
<page:applyDecorator name="component.entity.section">
  <page:param name="sectionId">udsAssessment</page:param>
  <page:param name="sectionNameKey">udsVisit.udsAssessment.section</page:param>
  <page:param name="quicklinkPosition">top</page:param>
<tags:createField property="packet" component="${component}" metadataName="udsVisit.packet"/>
<tags:createField property="visitNum" component="${component}" metadataName="udsVisit.visitNum"/>

</page:applyDecorator>  
</tags:contentColumn>
 
 
<c:if test="${param.componentMode != 'vw'}">

<ui:formGuide simulateEvents="true">
  <ui:observe elementIds="packet" component="visit" forValue="[I|F|T]" negate="true" />
  <ui:disable elementIds="visitNum" component="visit"/>
  <ui:setValue elementIds="visitNum" component="visit" value=""/>
</ui:formGuide>
</c:if>




