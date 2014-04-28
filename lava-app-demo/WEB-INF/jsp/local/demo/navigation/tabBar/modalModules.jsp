<%@ include file="/WEB-INF/jsp/includes/include.jsp" %>

<ul>
	<tags:crmsNavTab module="home" text="Home" disabled="true"/>
  	<tags:crmsNavTab module="people" text="People" disabled="true"/>
  	<tags:crmsNavTab module="enrollment" text="Enrollment" disabled="true"/>
  	<tags:crmsNavTab module="scheduling" text="Scheduling" disabled="true"/>
  	<tags:crmsNavTab module="assessment" text="Assessment" disabled="true"/>
  	<tags:crmsNavTab module="reporting" text="Reporting" disabled="true"/>
   	<!--  note that even though this is a crms action it uses coreNavTab because it does not have Patient Context -->
  	<tags:crmsNavTab module="importing" text="Import" disabled="true"/>
  
    <tags:ifHasRole roles="SYSTEM ADMIN"> 
  		<tags:coreNavTab module="admin" text="Admin" disabled="true"/>
	</tags:ifHasRole>
</ul>