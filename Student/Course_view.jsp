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
			  <h3></h3>
			  
			  
		  </div>
		  
<link rel="stylesheet" href="../temp/css_tab/style.css" type="text/css" media="screen"/>


        <div id="content">
 <table class="table1" align="center">

  <tr>
    <td colspan="6"><div align="center">Course</div></td>
  </tr>
  <tr>
    <th width="85"><div align="center">Course ID</div></th>
    <th width="70"><div align="center">Duration</div></th>
    <th width="113"><div align="center">Course Name</div></th>
    <th width="68"><div align="center">Sem Name </div></th>
	
  </tr>
  <%@page import="java.sql.*"%>
  <%@page import="portal.notesportal"%>
  <jsp:useBean id="s" class="portal.notesportal"/>
  
  <jsp:getProperty name="s" property="conn"/>
  <%
ResultSet rs=s.stmt.executeQuery("select * from  course c,sem s where c.sem_id=s.sem_id");
  while(rs.next())
  {
  int cid=rs.getInt("course_id");
  %>
  <tr>
    <td>&nbsp;<%=cid%></td>
    <td>&nbsp;<%=rs.getString("duration")%></td>
    <td>&nbsp;<%=rs.getString("course_name")%></td>
    <td>&nbsp;<%=rs.getString("sem_name")%></td>
    
    
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

