<%@ include file="/WEB-INF/jsp/includes/include.jsp" %>

<ul>
	<tags:crmsNavTab module="home" text="Home" disabled="true"/>
	<tags:crmsNavTab module="protocol" text="Protocol" disabled="true"/>	
  	<tags:crmsNavTab module="people" text="People" disabled="true"/>
  	<tags:crmsNavTab module="enrollment" text="Enrollment" disabled="true"/>
  	<tags:crmsNavTab module="scheduling" text="Scheduling" disabled="true"/>
  	<tags:crmsNavTab module="assessment" text="Assessment" disabled="true"/>
  	<tags:crmsNavTab module="reporting" text="Reporting" disabled="true"/>
  
    <tags:ifHasRole roles="SYSTEM ADMIN"> 
  		<tags:coreNavTab module="admin" text="Admin" disabled="true"/>
	</tags:ifHasRole>
</ul>