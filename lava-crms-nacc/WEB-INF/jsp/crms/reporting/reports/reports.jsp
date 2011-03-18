<%@ include file="/WEB-INF/jsp/includes/include.jsp" %>
<html>
<body>

<!-- REMOVE the following tag if there are any report links, so 
that the "Reports" heading shows in left nav -->
<content tag="reports">none</content>

<!--  patient reports -->
<c:if test="${not empty currentPatient}">


</c:if>

<!--  project reports -->
<a href="<tags:actionURL actionId="lava.crms.reporting.reports.crmsReportLauncher" parameters="param,udsExtract" flowExecutionKey="${flowExecutionKey}" eventId="reportLauncher__view"/>">
<spring:message code="action.lava.crms.reporting.reports.udsExtract.report"/></a><br/>


</body>
</html>
