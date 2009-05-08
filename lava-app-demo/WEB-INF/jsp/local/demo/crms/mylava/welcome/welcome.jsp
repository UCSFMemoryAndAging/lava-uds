<%@ include file="/WEB-INF/jsp/includes/include.jsp" %>
<html>
<head><title>LAVA CRMS Demo Application</title>
<meta name="pageHeading" content="Welcome to LAVA CRMS Demo Application">
</head>
<body>

<spring:bind path="command">
<div id="messageBox">
<%-- first iterate thru command errors (aka global errors) to display info messages --%>
<%-- command info messages (i.e. non-error) message codes must start with "info.", so they will not
	be styled like error codes --%>
<c:forEach items="${status.errors.globalErrors}" var="error"> 
	<c:if test="${fn:startsWith(error.code, 'info.')}">
	  	<img class="infoMsgIcon" src="images/info.png" alt="error"/>
		<span class="infoMsgHeaderText">Info</span>
 	  	<div class="infoMsgHeaderLine"></div>
	  	<ol class="infoMsgList">
			<li class="infoMsgListItem"><spring:message message="${error}"/></li>
		</ol>
	</c:if>	
</c:forEach>

<%-- second, iterate thru command errors to display error messages --%>	
<c:forEach items="${status.errors.globalErrors}" var="error"> 
	<c:if test="${not fn:startsWith(error.code, 'info.')}">
	  	<img class="errorIcon" src="images/error.png" alt="error"/>
		<span class="errorHeaderText">Error</span>
 	  	<div class="errorHeaderLine"></div>
	  	<ol class="errorList">
			<li class="errorListItem"><spring:message message="${error}"/></li>
		</ol>
	</c:if>		
</c:forEach>					

</div>
</spring:bind>


<div style="margin-left: 20px">
This demo application illustrates the basic core features of the LAVA CRMS (Clinical Research Management System) application development framework.  
<br/><br/>
<ul style="margin-left: 30 px">
	<li><b><a href="<tags:actionURL actionId="lava.defaultScope.mylava.defaultAction"/>">My Lava</a></b> Tab</li>
	<ul style="margin-left: 40px">
		<li><b><a href="<tags:actionURL actionId="lava.defaultScope.mylava.welcome.defaultAction"/>">Wecome</a></b> - This page</li>
		<li><b><a href="<tags:actionURL actionId="lava.defaultScope.mylava.myCalendar.defaultAction"/>">My Calendar</a></b> - Scheduled subject visits for the current user</li>
	</ul>
	<br/>
	<li><b><a href="<tags:actionURL actionId="lava.defaultScope.people.defaultAction"/>">People</a></b> Tab</li>
	<ul style="margin-left: 40px">
		<li><b><a href="<tags:actionURL actionId="lava.defaultScope.people.patient.defaultAction"/>">Patient Management</a></b> - Patient and research subject records</li>
		<li><b><a href="<tags:actionURL actionId="lava.defaultScope.people.caregiver.defaultAction"/>">Caregivers</a></b> - Informants and caregivers for patients and subjects</li>
		<li><b><a href="<tags:actionURL actionId="lava.defaultScope.people.contactLog.defaultAction"/>">Contact Log</a></b> - Record of contacts with patients/subjects or their caregivers</li>
		<li><b><a href="<tags:actionURL actionId="lava.defaultScope.people.contactInfo.defaultAction"/>">Contact Info</a></b> - Address and Phone Information</li>
		<li><b><a href="<tags:actionURL actionId="lava.defaultScope.people.doctor.defaultAction"/>">Doctors</a></b> - A simple referring doctor registry</li>
		<li><b><a href="<tags:actionURL actionId="lava.defaultScope.people.task.defaultAction"/>">Tasks</a></b> - A simple task recording system</li>
	</ul>
	<br/>
	<li><b><a href="<tags:actionURL actionId="lava.defaultScope.enrollment.defaultAction"/>">Enrollment</a></b> Tab</li>
	<ul style="margin-left: 40px">
		<li><b><a href="<tags:actionURL actionId="lava.defaultScope.enrollment.status.defaultAction"/>">Enrollment Status</a></b> - Patient / Subject Project Enrollment</li>
		<li><b><a href="<tags:actionURL actionId="lava.defaultScope.enrollment.consent.defaultAction"/>">Consent</a></b> - Simple record of consent</li>
	</ul>
	<br/>
	<li><b><a href="<tags:actionURL actionId="lava.defaultScope.scheduling.defaultAction"/>">Scheduling</a></b> Tab</li>
	<ul style="margin-left: 40px">
		<li><b><a href="<tags:actionURL actionId="lava.defaultScope.scheduling.patientCalendar.defaultAction"/>">Patient Calendar</a></b> - Patient / Subject Visit History</li>
		<li><b><a href="<tags:actionURL actionId="lava.defaultScope.scheduling.projectCalendar.defaultAction"/>">Project Calendar</a></b> - Project Visit History</li>
	</ul>
	<br/>
	<li><b><a href="<tags:actionURL actionId="lava.defaultScope.assessment.defaultAction"/>">Assessment</a></b> Tab</li>
	<ul style="margin-left: 40px">
		<li><b><a href="<tags:actionURL actionId="lava.defaultScope.assessment.summary.defaultAction"/>">Assessment Summary</a></b> - Assessment Measures for Patients / Subjects</li>
		<li><b><a href="<tags:actionURL actionId="lava.defaultScope.assessment.uds.defaultAction"/>">UDS</a></b> - UDS Specific Asssessment Screens</li>
	</ul>
	<br/>
	<li><b><a href="<tags:actionURL actionId="lava.defaultScope.reporting.defaultAction"/>">Reporting</a></b> Tab</li>
	<ul style="margin-left: 40px">
		<li><b><a href="<tags:actionURL actionId="lava.defaultScope.reporting.reports.defaultAction"/>">Reports</a></b> - Report Launching Screen</li>
	</ul>
	<br/>
	<li><b><a href="<tags:actionURL actionId="lava.defaultScope.admin.defaultAction"/>">Admin</a></b> Tab</li>
	<ul style="margin-left: 40px">
		<li><b><a href="<tags:actionURL actionId="lava.defaultScope.admin.session.defaultAction"/>">Session Mgmt</a></b> - Monitor and Manager User Sessions</li>
		<li><b><a href="<tags:actionURL actionId="lava.defaultScope.admin.auth.defaultAction"/>">Authorization</a></b> - Configure Authorization</li>
	</ul>
	
</ul>

<br>

</div>
</body>
</html>
