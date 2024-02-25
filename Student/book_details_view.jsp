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
			  <h3>Books Download </h3>
			  
			    </p>
		  </div>
		  
<link rel="stylesheet" href="../temp/css_tab/style.css" type="text/css" media="screen"/>


  <div id="content">
 <table class="table1" align="center">
  <tr>
   <th width="98"><div align="center">Book ID </div></th>
    <th width="98"><div align="center">Book Name </div></th>
    <th width="103"><div align="center">Author</div></th>
    <th width="117"><div align="center">Publishar Name</div></th>
    <th width="105"><div align="center">Upload Date </div></th>
	<th width="105"><div align="center">Books </div></th>
    <th width="97"><div align="center">Sem</div></th>
	<th width="97"><div align="center">Type</div></th>
    
  </tr>
  <%@page import="java.sql.*"%>
<%@page import="portal.notesportal"%>
<jsp:useBean id="s" class="portal.notesportal"/>
<jsp:getProperty name="s" property="conn"/>
  <%
  String book_name=request.getParameter("book_name");
  String sem=request.getParameter("sem");
  String type=request.getParameter("type");
  ResultSet rs=s.stmt.executeQuery("select * from book_details where b_id='"+book_name+"' and sem='"+sem+"' and type='"+type+"'  ");
  while(rs.next())
  {
  int aid=rs.getInt("b_id");
  %>
  <tr>
    <td>&nbsp;<%=aid%></td>
    
    <td>&nbsp;<%=rs.getString("book_name")%></td>
    <td>&nbsp;<%=rs.getString("author")%></td>
    <td>&nbsp;<%=rs.getString("publisher")%></td>
    <td>&nbsp;<%=rs.getString("upload_date")%></td>
    <td>&nbsp;<a href="../books/<%=rs.getString("file")%>"><img src="../temp/icon/download.png" height="40" width="40" title="Down Load The Books"></a></td>
	<td>&nbsp;<%=rs.getString("sem")%></td>
	<td>&nbsp;<%=rs.getString("type")%></td>
	
   
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

