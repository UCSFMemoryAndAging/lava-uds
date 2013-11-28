<%@ include file="/WEB-INF/jsp/includes/include.jsp"%>

<%-- if a visitNavigation is defined, use it to determine the characteristics of the action bar --%>
<c:set var="visitNav" value="${command.components['visitNavigation']}" />

<c:choose>
<c:when test="${visitNav.projName == 'UDS'}">
<%-- then show the UDS version of the action bar --%>
<c:import url="/WEB-INF/jsp/crms/assessment/uds/actions.jsp"/>
</c:when>
<c:otherwise>

<html>
<body>

<%--  patient actions --%>
<c:if test="${not empty currentPatient}">
	<a href="<tags:actionURL actionId="lava.crms.assessment.summary.patientInstruments"/>">
	<spring:message code="action.lava.crms.assessment.summary.patientInstruments.list" /></a>
	<br>
</c:if>

<%--  project actions --%>
<a href="<tags:actionURL actionId="lava.crms.assessment.summary.projectInstruments"/>">
<spring:message code="action.lava.crms.assessment.summary.projectInstruments.list"/></a>
<br>

<c:import url="/WEB-INF/jsp/crms/assessment/instrument/actionVisitInstruments.jsp">
	<c:param name="section_name" value="instrument"/>
</c:import>

</body>
</html>

</c:otherwise>
</c:choose>
