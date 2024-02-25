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
			  <h3>Atteches <a href="Category_form.jsp"><img src="../temp/images/plus.png"></h3>
			  
			  <p><a href="academic_form.jsp"><img src="../temp/icon/new.jpg" width="80" height="30"border="0"></a>  </p>
		  </div>
		  
<link rel="stylesheet" href="../temp/css_tab/style.css" type="text/css" media="screen"/>


  <div id="content">
 <table class="table1" align="center">
  <tr>
    <th colspan="9"><p align="center">Attached Files</p>    </td>
  </tr>
  <tr>
    <th width="98"><div align="center">Attached ID </div></th>
    <th width="103"><div align="center">Attached By</div></th>
    <th width="117"><div align="center">Attached Date</div></th>
    <th width="105"><div align="center">Attached File</div></th>
    <th width="97"><div align="center">Category ID </div></th>
    <th width="60"><div align="center">Key</div></th>
    <th width="79"><div align="center">Status</div></th>
    
    <th width="90"><div align="center">Action</div></th>
    <th width="62"><div align="center">Delete</div></th>
  </tr>
  <%@page import="java.sql.*"%>
<%@page import="portal.notesportal"%>
<jsp:useBean id="s" class="portal.notesportal"/>
<jsp:getProperty name="s" property="conn"/>
  <%
  ResultSet rs=s.stmt.executeQuery("select * from attached_files");
  while(rs.next())
  {
  int aid=rs.getInt("Attached_id");
  %>
  <tr>
    <td>&nbsp;<%=aid%></td>
    <td>&nbsp;<%=rs.getString("Attached_by")%></td>
    <td>&nbsp;<%=rs.getString("Attached_date")%></td>
    <td>&nbsp;<%=rs.getString("Attached_file")%></td>
    <td>&nbsp;<%=rs.getInt("Category_id")%></td>
    <td>&nbsp;<%=rs.getString("Key")%></td>
    <td>&nbsp;<%=rs.getString("Status")%></td>
	 <td><div align="center"><a href="Attached_edit_1.jsp?aid=<%=aid%>" onClick="return confirm('Are u sure want to editor..')"><img src="../temp/icon/update.jpg" width="80" height="30"border="0"></a></div></td>
     <td><div align="center"><a href="Attached_delete.jsp?aid=<%=aid%>" onClick="return confirm('Are u sure want to delete..')"><img src="../temp/icon/delete.jpg" width="80" height="30"border="0"></a></div></td>
   
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

