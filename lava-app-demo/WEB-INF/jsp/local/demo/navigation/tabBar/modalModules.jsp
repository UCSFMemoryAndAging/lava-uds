<%@ include file="/WEB-INF/jsp/includes/include.jsp" %>

<ul>
	<tags:crmsNavTab module="mylava" text="My Lava" disabled="true"/>
  	<tags:crmsNavTab module="people" text="People" disabled="true"/>
  	<tags:crmsNavTab module="enrollment" text="Enrollment" disabled="true"/>
  	<tags:crmsNavTab module="scheduling" text="Scheduling" disabled="true"/>
  	<tags:crmsNavTab module="assessment" text="Assessment" disabled="true"/>
  	<tags:crmsNavTab module="reporting" text="Reporting" disabled="true"/>
  
    <tags:ifHasRole roles="SYSTEM ADMIN"> 
  		<tags:coreNavTab module="admin" text="Admin" disabled="true"/>
	</tags:ifHasRole>
</ul>