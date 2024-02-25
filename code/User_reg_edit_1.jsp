<<jsp:include page="header.jsp"></jsp:include>

<jsp:include page="sidemenu.jsp"></jsp:include>

<div class="container-fluid">
		<div class="content">
			<div class="row-fluid no-margin">
				<div class="span12">


<div class="box">
		  <div class="box-head">
			  <h3>User_Reg_Edit</h3>
		  </div>
		  
<link rel="stylesheet" href="css_tab/style.css" type="text/css" media="screen"/>
<link href="../temp/css/bootstrap.css" rel="stylesheet" type="text/css">
<body>
<script language="JavaScript" type="text/javascript">
window.history.forward(1);
</script>
<html>
<script language="JavaScript" type="text/javascript">
window.history.forward(1);
</script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">

<script language="JavaScript" type="text/JavaScript">
<!--
function MM_reloadPage(init) {  //reloads the window if Nav4 resized
  if (init==true) with (navigator) {if ((appName=="Netscape")&&(parseInt(appVersion)==4)) {
    document.MM_pgW=innerWidth; document.MM_pgH=innerHeight; onresize=MM_reloadPage; }}
  else if (innerWidth!=document.MM_pgW || innerHeight!=document.MM_pgH) location.reload();
}
MM_reloadPage(true);
//-->
</script>


<link rel="stylesheet" href="js/validationEngine.jquery.css" type="text/css" media="screen" title="no title" charset="utf-8" />
<script src="js/jquery.min.js" type="text/javascript"></script>
<script src="js/jquery.validationEngine-en.js" type="text/javascript"></script>
<script src="js/jquery.validationEngine.js" type="text/javascript"></script>
		
 <script>	
   $(document).ready(function() {
   $("#formID").validationEngine()
   });
 </script>	
<form name="form1" method="post" id="formID" action="Attached_insert.jsp">
 <table class="table1" align="center">

<%@page import="java.sql.*"%>
<%@page import="portal.notesportal"%>
<jsp:useBean id="s" class="portal.notesportal"/>
<jsp:getProperty name="s" property="conn"/>
<%
String uid=request.getParameter("user_id");
ResultSet rs=s.stmt.executeQuery("select * from user_registration where user_id="+uid+" ");
rs.next();
%>
<body>
<link rel="stylesheet" href="js/validationEngine.jquery.css" type="text/css" media="screen" title="no title" charset="utf-8" />
		<link rel="stylesheet" href="images/Refresh.css" type="text/css" />
		
<script src="js/jquery.min.js" type="text/javascript"></script>
<script src="js/jquery.validationEngine-en.js" type="text/javascript"></script>
		<script src="js/jquery.validationEngine.js" type="text/javascript"></script>
		
		<script>	
		$(document).ready(function() {
			$("#formID").validationEngine()
		});
	</script>
<form name="form1" method="post" id="formID" action="User_reg_edit_2.jsp">
<input type="hidden" value="<%=rs.getInt("user_id")%>" name="uid">
  <table width="200" border="1" align="center">
    <tr>
      <td colspan="2"><div align="center">User Registration</div></td>
    </tr>
    <tr>
      <td>Username</td>
      <td><input name="username" type="text" id="username" value="<%=rs.getString("user_name")%>" class="validate[required,custom[onlyLetter]]"></td>
    </tr>
    <tr>
      <td>Password</td>
      <td><input name="password" type="text" id="password" value="<%=rs.getString("password")%>"class="validate[required]"></td>
    </tr>
    <tr>
      <td>Address</td>
      <td><textarea name="address" id="address"class="validate[required]"><%=rs.getString("address")%></textarea></td>
    </tr>
    <tr>
      <td>City</td>
      <td><input name="city" type="text" id="city" value="<%=rs.getString("city")%>" class="validate[required,custom[onlyLetter]]"></td>
    </tr>
    <tr>
      <td>State</td>
      <td><input name="state" type="text" id="state" value="<%=rs.getString("state")%>" class="validate[required,custom[onlyLetter]]"></td>
    </tr>
    <tr>
      <td>Country</td>
      <td><input name="country" type="text" id="country" value="<%=rs.getString("country")%>" class="validate[required,custom[onlyLetter]]"></td>
    </tr>
    <tr>
      <td>Contact No </td>
      <td><input name="C_ no" type="text" id="C_ no" value="<%=rs.getString("contact_no")%>" class="validate[required,custom[mobile]]"></td>
    </tr>
    <tr>
      <td>Age</td>
      <td><input name="age" type="text" id="age" value="<%=rs.getString("age")%>" class="validate[required,custom[onlyNumber]]"></td>
    </tr>
	<%
	String gender=rs.getString("gender");
	%>
    <tr>
      <td>Gender</td>
      <td><input name="gender" type="radio" <% if(gender.equals("Male")) { %> checked <% } %> value="Male">
        Male
        <input name="gender" type="radio" <% if(gender.equals("Female")) { %> checked <% } %>  value="Female">
        Female</td>
    </tr>
    <tr>
      <td>Qualification</td>
      <td><input name="qualification" type="text" id="qualification" value="<%=rs.getString("qualification")%>" class="validate[required,custom[onlyLetter]]"></td>
    </tr>
    <tr>
      <td colspan="2"><div align="center">
        <input type="submit" name="Submit" class="btn-success" value="Submit">
        <input type="reset" name="Reset" value="Reset" class="btn-danger">
      </div></td>
    </tr>
  </table>
</form>
</div>

		  </div>
					</div>

					
				</div>
			</div>
		  <div class="row-fluid">		  </div>
			<div class="row-fluid">		  </div>
			<div class="row-fluid">		  </div>
		</div>	
	</div>

				
				<jsp:include page="footer.jsp"></jsp:include>	

        </div>
