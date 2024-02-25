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
			  <h3>Department </h3>
			  
			 
		  </div>
		  
<link rel="stylesheet" href="../temp/css_tab/style.css" type="text/css" media="screen"/>


  <div id="content">
<table width="521" height="99" border="1" class="table1">
  <tr>
    <td colspan="5"><div align="center">Department</div></td>
  </tr>
  <tr>
    <th width="84"><div align="center">Dept ID </div></th>
    <th width="110"><div align="center">Dept Name</div></th>
    <th width="107"><div align="center">Description</div></th>
    
  </tr>
          <%@page import="java.sql.*"%>
<%@page import="portal.notesportal"%>
<jsp:useBean id="s" class="portal.notesportal"/>
<jsp:getProperty name="s" property="conn"/>
<%
ResultSet rs=s.stmt.executeQuery("select * from  dept");
  while(rs.next())
  {
  int did=rs.getInt("dept_id");
  %>
  <tr>
    <td>&nbsp;<%=did%></td>
    <td>&nbsp;<%=rs.getString("dept_name")%></td>
    <td>&nbsp;<%=rs.getString("description")%></td>
   
    
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


