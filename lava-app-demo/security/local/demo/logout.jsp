<%@ include file="/WEB-INF/jsp/includes/include.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>DEMO LAVA CRMS Application Logout</title>
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
<table width="600" height="250"  border="0" align="center" cellpadding="10" cellspacing="0" bgcolor="#ffffff">
 <tr>
    <th colspan="2" scope="col"><div align="left"><img src="images/local/${pageContext.request.contextPath}/${pageContext.request.contextPath}_logo.gif" ></div></th>
   
  </tr>
  <tr>
   <td colspan="2" scope="col" align="left" ><p style="font-size: 12px">
     This demo application illustrates the basic core features of the LAVA CRMS (Clinical Research Management System) application development framework.  
          <br/><br/> 
     By default, you can login as an administrator using username: admin password: admin, or as a regular user with username: demo password: demo. 
     </p></td>
    </tr>
   <tr><form name="form1" method="post" action="<c:url value='/j_acegi_security_check.lava'/>" >
     <th height="15" valign="bottom" scope="col"><p align="right" style="font-size:16px;font-weight:bold">Please log in </p>
      </th>
     <td class="Error"></td>     
     <tr>
     <th scope="col"><div align="right" style="font-size:16px;font-weight:normal">Username</div></th>
     <td height="15"><input name="j_username" type="text" id="j_username" autocomplete="off" size="25" maxlength="25">   
	 </td>
  </tr>
   <tr>
     <th scope="col"><div align="right" style="font-size:16px;font-weight:normal">Password</div></th>
     <td height="40" valign="middle"><input name="j_password" type="password" autocomplete="off" id="j_password" size="25" maxlength="25" >
  		<input name="_login"  type="submit" class="loginButton" value="Login"/>
      </tr>
     <tr>
       <th colspan="2" scope="col" style="background-color:#cccccc;color:#990000;font-size:12px;font-weight:normal;margin-top:20px;">You have been logged out of the system. You may re-login or close your browser.</th>
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
