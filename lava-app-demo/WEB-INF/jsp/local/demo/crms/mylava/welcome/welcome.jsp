<%@ include file="/WEB-INF/jsp/includes/include.jsp" %>
<html>
<head><title>Welcome to the DEMO Lava CRMS Application</title>
<meta name="pageHeading" content="Welcome to the DEMO Lava CRMS Application >
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


<div style="margin-left: 30px">
		<br/>

<ul>
	<li>This is the demo Lava CRMS Site.</li><br/>
</ul>

<br>

</div>
</body>
</html>
