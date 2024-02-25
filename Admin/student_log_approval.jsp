<script language="JavaScript" type="text/javascript">
window.history.forward(1);
</script>
<html>
<script language="JavaScript" type="text/javascript">
window.history.forward(1);
</script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>NOTES PORTAL</title>
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
<jsp:include page="header.jsp"></jsp:include>

<jsp:include page="sidemenu.jsp"></jsp:include>

<div class="container-fluid">
		<div class="content">
			<div class="row-fluid no-margin">
				<div class="span12">


<div class="box">
		  <div class="box-head">
			  <h3>Student Approval Logs </h3>
			  
			  <p> </p>
		  </div>
		  
<link rel="stylesheet" href="../temp/css_tab/style.css" type="text/css" media="screen"/>


  <div id="content">
 <table class="table1" align="center">
<table width="496" height="106" border="1">
  <tr>
    <td colspan="6"><div align="center">Student Logs </div></td>
  </tr>
  <tr>
    <th width="63">&nbsp;</th>
    <th width="79"><div align="center">User Name</div></th>
    <th width="88"><div align="center">Password</div></th>
    <th width="88">Type</th>
  
    <th width="75"><div align="center">Action</div></th>
  </tr>
  <%@page import="java.sql.*"%>
<%@page import="portal.notesportal"%>
<jsp:useBean id="s" class="portal.notesportal"/>
<jsp:getProperty name="s" property="conn"/>
<%
ResultSet rs=s.stmt.executeQuery("select * from login where type='student' and status='pending'");
  while(rs.next())
  {
  String uname=rs.getString("username");
  %>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;<%=uname%></td>
    <td>&nbsp;*********</td>
    <td>&nbsp;<%=rs.getString("status")%></td>
  
    <td><div align="center"><a href="student_log_approval_1.jsp?sid=<%=uname%>" onClick="return confirm('Are u sure want to approve..')"><img src="../temp/icon/update.jpg" width="80" height="30"border="0"></a></div></td>
  </tr>
  <%
  }
  %>
</table>
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



