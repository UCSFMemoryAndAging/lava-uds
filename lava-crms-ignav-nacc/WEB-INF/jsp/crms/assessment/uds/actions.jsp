<%@ include file="/WEB-INF/jsp/includes/include.jsp"%>

<html>
<body>

<%--  patient actions --%>
<c:if test="${not empty currentPatient}">
	<a href="<tags:actionURL actionId="emorylava.crms.assessment.uds.patientUdsInstruments"/>">
	<spring:message code="action.lava.crms.assessment.uds.patientUdsInstruments.list" /></a>
	<br>
	<a href="<tags:actionURL actionId="emorylava.crms.assessment.uds.patientUdsSubmissions"/>">
	<spring:message code="action.lava.crms.assessment.uds.patientUdsSubmissions.list" /></a>
	<br>
</c:if>

<%--  project actions --%>
<a href="<tags:actionURL actionId="emorylava.crms.assessment.uds.projectUdsInstruments"/>">
<spring:message code="action.lava.crms.assessment.uds.projectUdsInstruments.list" /></a>
<br>
<a href="<tags:actionURL actionId="emorylava.crms.assessment.uds.projectUdsSubmissions"/>">
<spring:message code="action.lava.crms.assessment.uds.projectUdsSubmissions.list" /></a>
<br>

<c:import url="/WEB-INF/jsp/crms/assessment/instrument/actionVisitInstruments.jsp">
	<c:param name="section_name" value="uds"/>
</c:import>

<c:set var="currentInstrument" value="instrument" />
<%-- the visit used in the navigation bar will not necessarily be the 'currentVisit',
       e.g. when patientInstruments list is showing (are to ignore the currentVisit value) --%>
<c:set var="visitNav" value="${command.components['visitNavigation']}" />

<%-- Only show this nav list for flows we expect to use it
      e.g. though we could show it for the 'delete' subflow, using it during 'delete' isn't a normal
      usage and possibly could complicate the flow, so just don't show it to begin with --%>
<c:set var="enableNavList" value="false" />
<c:if test="${(flowMode == 'list')
			  || (flowMode == 'view')
 			  || (flowMode == 'enter')
 			  || (flowMode == 'enterReview')
 			  || (flowMode == 'status')
 			  || (flowMode == 'editStatus')}">
	<%-- also a quick way of turning the rest off for debugging purposes--%>
	<c:set var="enableNavList" value="true" />
</c:if>

<%-- we expect this to be a uds visit --%>
<c:if test="${visitNav.projName != 'UDS'}">
	<c:set var="enableNavList" value="false" />
</c:if>

<c:if test="${enableNavList}">
<c:if test="${not empty currentPatient}">
<c:if test="${not empty visitNav}">
	<c:set var="currentPageName" value="${command.components[currentInstrument].instrTypeEncoded}" />
	<c:if test="${empty currentPageName}">
		<%-- i.e. there is no current instrument, so this is likely the instrument list view --%>
		<c:set var="currentPageName" value="${component}" />
	</c:if>
	
	<%-- VISIT PACKET STATUS (UDS ONLY) --%>
	<%-- readyForConsensus is a user-specified setting, thus specific to an ADRC's protocol (not used in shared code)
	<c:set var="readyForConsensus"
	    value="${(not empty visitNav.visitStatus && visitNav.visitStatus == 'COMPLETE') ? true : false }"/>
	--%>
	<c:set var="packetSubmittable"
	    value="${visitNav.packetComplete}" />
	<%-- readyForSubmit is a user-specified setting, thus specific to an ADRC's protocol (not used in shared code)
	<c:set var="readyForSubmit"
		value="${(not empty visitNav.readyForSubmit && visitNav.readyForSubmit != 0) ? true : false}" />
 	--%>
	<c:set var="packetStatus"
		value="${(empty visitNav.submissionStatusZ1) ? 'Incomplete/Working' : visitNav.submissionStatusZ1}" />
	<c:set var="packetSubmitted"
		value="${(packetStatus == 'Complete/Current' || packetStatus == 'Complete/Frozen') ? true : false}" />
	
	<br>
	<div class="leftNavSectionHeader">
	<spring:message code="actionbar.assessment.uds.visitPacketStatus.header"/>
	</div>


	<%-- Ready for Consensus? --%>
	<%-- don't show this if a milestone visit --%>
<%-- readyForConsensus is a user-specified setting, thus specific to an ADRC's protocol (not used in shared code)
	<c:if test="${visitNav.visitType != 'Milestone'}">
	<c:choose>
		<c:when test="${readyForConsensus}">
			<img src="images/check_green.png"
				alt="+&nbsp;" height=11 title="Marked YES" />
		</c:when>
		<c:otherwise>
			<img src="images/cross_grey.png"
				alt="-&nbsp;" height=11 title="Marked NO" />
		</c:otherwise>
	</c:choose>
	<c:if test="${not readyForConsensus && readyForSubmit}">
		<span style="color: red">
	</c:if>
	<spring:message code="actionbar.assessment.uds.visitPacketStatus.readyForConsensus"/>
	<c:if test="${not readyForConsensus && readyForSubmit}">
		</span>
	</c:if>
	<br>
	</c:if>
--%>
	<%-- Data Is Submittable? --%>
	<%-- (Only show if not locked, as locked visits won't show individual instrument statuses above,
	        This would not be useful info in that case, and would only complicate the view.)
	  --%>
	<c:if test="${not visitNav.locked}">
		<c:choose>
			<c:when test="${packetSubmittable}">
				<img src="images/check_green.png"
					alt="+&nbsp;" height=11 title="Calculated as YES" />
			</c:when>
			<c:otherwise>
				<img src="images/cross_grey.png"
					alt="-&nbsp;" height=11 title="Calculated as NO" />
			</c:otherwise>
		</c:choose>
		<%-- show any inconsistencies of unlocked visits --%>
		<c:if test="${not packetSubmittable && readyForSubmit}">
			<span style="color: red">
		</c:if>
		<spring:message code="actionbar.assessment.uds.visitPacketStatus.dataIsSubmittable"/>
		<c:if test="${not packetSubmittable && readyForSubmit}">
			</span>
		</c:if>
		<br>
	</c:if>

	<%-- Ready To Submit? --%>
<%-- readyForSubmit is a user-specified setting, thus specific to an ADRC's protocol (not used in shared code)
	<c:choose>
		<c:when test="${readyForSubmit}">
			<img src="images/check_green.png"
				alt="+&nbsp;" height=11 title="Marked YES" />
		</c:when>
		<c:otherwise>
			<img src="images/cross_grey.png"
				alt="-&nbsp;" height=11 title="Marked NO" />
		</c:otherwise>
	</c:choose>
	<c:if test="${not packetSubmittable && readyForSubmit && not visitNav.locked}">
		<span style="color: red">
	</c:if>
	<spring:message code="actionbar.assessment.uds.visitPacketStatus.readyToSubmit"/>
	<c:if test="${not packetSubmittable && readyForSubmit && not visitNav.locked}">
		</span>
	</c:if>
	<br>
--%>

	<%-- Packet Submitted? --%>
	<c:choose>
		<c:when test="${packetSubmitted}">
			<img src="images/check_green.png"
				alt="+&nbsp;" height=11 title="Marked YES" />
		</c:when>
		<c:otherwise>
			<img src="images/cross_grey.png"
				alt="-&nbsp;" height=11 title="Marked NO" />
		</c:otherwise>
	</c:choose>
	<c:if test="${not readyForSubmit && packetSubmitted}">
		<span style="color: red">
	</c:if>
	<spring:message code="actionbar.assessment.uds.visitPacketStatus.packetSubmitted"/>
	<c:if test="${not readyForSubmit && packetSubmitted}">
		</span>
	</c:if>

</c:if> <%--<c:if test="${not empty visitNav}">--%>
</c:if> <%--<c:if test="${not empty currentPatient}">--%>
</c:if> <%--<c:if test="${enableNavList}">--%>

</body>
</html>
