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
			  <h3>Department <a href="Dept_form.jsp"><img src="../temp/images/plus.png"></h3>
			  
			  <p><a href="academic_form.jsp"><img src="../temp/icon/new.jpg" width="80" height="30"border="0"></a>  </p>
		  </div>
		  
<link rel="stylesheet" href="../temp/css_tab/style.css" type="text/css" media="screen"/>


  <div id="content">
<table width="521" height="99" border="1">
  <tr>
    <td colspan="5"><div align="center">Department</div></td>
  </tr>
  <tr>
    <th width="84"><div align="center">Dept ID </div></th>
    <th width="110"><div align="center">Dept Name</div></th>
    <th width="107"><div align="center">Description</div></th>
    <th width="77"><div align="center">Delete</div></th>
    <th width="109"><div align="center">Action</div></th>
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
    <td><a href="Dept_delete.jsp?dept_id=<%=did%>" onClick="return confirm('Are u sure want to delete..')"><img src="../temp/icon/delete.jpg" width="80" height="30"border="0"></a></div>
    <td><a href="Dept_edit_1.jsp?dept_id=<%=did%>" onClick="return confirm('Are u sure want to editor..')"><img src="../temp/icon/update.jpg" width="80" height="30"border="0"></a></div>
    
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


