<%@ include file="/WEB-INF/jsp/includes/include.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>MAC LavaWeb Login</title>
<%@ include file="/WEB-INF/jsp/includes/base.jsp" %>
<%-- note: does not use any styles from lava/styles/stylesheet.css --%>
<style type="text/css">
<!--
body {
	background-image: url(images/nonexistent.jpg);
	margin-top: 10%;
	background-color: #FFFFFF;
	color: #003366;
	font-size: 11pt;
	font-family: Arial, Helvetica, Geneva, sans-serif;
	font-style: normal
}

input.loginButton {
	border: none;
	font-size:9pt;
	color:#000000;
	font-weight:normal;
	text-align:center;
	text-decoration:none;
    background: url('images/BUTT_small.png') no-repeat center center;
    padding: 3px 20px;
    }
    
input.loginButton:hover{
	background: url('images/BUTT_small_over.png') no-repeat center center;
    }
    
-->
</style>
</head>

<body onload="document.form1.j_username.focus()">
<table width="600" height="250"  border="0" align="center" cellpadding="10" cellspacing="0" bgcolor="#FFFFFF">
  <tr>
    <th colspan="2" scope="col"><div align="left"><img src="images/local/${pageContext.request.contextPath}/${pageContext.request.contextPath}_logo.gif"></div></th>
  </tr>
  <tr>
     <td colspan="2" scope="col" align="left" ><p style="font-size: 12px">This is a UCSF Memory and Aging Center Data Management application, provided only for use by authorized personnel.  Unauthorized access or violations of the data access agreements governing the use of this application may result in criminal prosecution and/or UCSF administrative sanctions.  All usage is monitored and logged, and by accessing this application you are consenting to this monitoring and to the terms of the governing access agreements.</p></td>
  </tr>
   <tr><form name="form1" method="post" action="<c:url value='/j_acegi_security_check.lava'/>" >
     <th colspan="2" height="15" valign="bottom" scope="col"><p align="left" style="font-size:16px;font-weight:bold">Please log in </p>
      </th>
     
     <tr>
     <th scope="col"><div align="right" style="font-size:16px;font-weight:normal">Username</div></th>
     <td height="15"><input name="j_username" type="text" id="j_username" autocomplete="off" size="25" maxlength="25">   
	  <span style="font-size:9pt">(do NOT include "CAMPUS\")</span></td>
  </tr>
   <tr>
     <th scope="col"><div align="right" style="font-size:16px;font-weight:normal">Password</div></th>
       <td height="40" valign="middle"><input name="j_password" type="password" autocomplete="off" id="j_password" size="25" maxlength="25">
   		  <input name="_login"  type="submit" class="loginButton" value="Login"/>
    </tr>
   
     <tr>
       <th colspan="2" scope="col">&nbsp;</th>
       </tr>
   </form>
  </tr>

</table>


   
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;
</p>
</body>
</html>
