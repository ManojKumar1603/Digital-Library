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
			  <h3>Category <a href="Category_form.jsp"><img src="../temp/images/plus.png"></a></h3>
			  
			  <p><a href="academic_form.jsp"><img src="../temp/icon/new.jpg" width="80" height="30"border="0"></a>  </p>
		  </div>
		  
<link rel="stylesheet" href="../temp/css_tab/style.css" type="text/css" media="screen"/>


        


<div id="content">
 
<p>&nbsp;</p>
<table class="table1" align="center">
  <tr>
    <td colspan="5"><div align="center">Category </div></td>
  </tr>
  <tr>
    <th><div align="center">Category ID </div></th>
    <th><div align="center">Category Name</div></th>
    <th><div align="center">Description</div></th>
	<th><div align="center">Delete</div></th>
    <th><div align="center">Action</div></th>
  </tr>
  <%@page import="java.sql.*"%>
<%@page import="portal.notesportal"%>
<jsp:useBean id="s" class="portal.notesportal"/>
<jsp:getProperty name="s" property="conn"/>
<%
ResultSet rs=s.stmt.executeQuery("select * from category");
  while(rs.next())
  {
  int id=rs.getInt("c_id");
  %>
  <tr>
    <td>&nbsp;<%=id%></td>
    <td>&nbsp;<%=rs.getString("category_name")%></td>
    <td>&nbsp;<%=rs.getString("description")%></td>
	 <td><a href="Category_delete.jsp?c_id=<%=id%>" onClick="return confirm('Are u sure want to delete..')"><img src="../temp/icon/delete.jpg" width="80" height="30"border="0"></a></div></td>
     <td><a href="Category_edit_1.jsp?c_id=<%=id%>" onClick="return confirm('Are u sure want to Editor..')"><img src="../temp/icon/update.jpg" width="80" height="30"border="0"></a></div></td>
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
