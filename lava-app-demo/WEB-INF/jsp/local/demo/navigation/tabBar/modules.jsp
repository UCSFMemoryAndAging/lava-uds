<%@ include file="/WEB-INF/jsp/includes/include.jsp" %>

  <ul>
  	
  	<tags:crmsNavTab module="home" text="Home"/>
  	<tags:crmsNavTab module="people" text="People"/>
  <!-- 
  	<tags:crmsNavTab module="people" text="People2"/>
  -->
  	<tags:crmsNavTab module="enrollment" text="Enrollment"/>
  	<tags:crmsNavTab module="scheduling" text="Scheduling"/>
  	<tags:crmsNavTab module="assessment" text="Assessment"/>
  	<tags:crmsNavTab module="reporting" text="Reporting"/>
  	
  	<tags:ifHasRole roles="SYSTEM ADMIN"> 
 	 	<tags:coreNavTab module="admin" text="Admin"/>
  	</tags:ifHasRole>
  	
  </ul>