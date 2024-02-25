<script language="JavaScript" type="text/javascript">
window.history.forward(1);
</script>
<html>
<script language="JavaScript" type="text/javascript">
window.history.forward(1);
</script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>A.E.R.F.B.E.A.S</title>
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
			  
			  <p><a href="academic_form.jsp"><img src="icon/new.jpg" width="80" height="30"border="0"></a>  </p>
		  </div>
		  
<link rel="stylesheet" href="css_tab/style.css" type="text/css" media="screen"/>


        


<div id="content">
 <table class="table1" align="center">
  <tr>
    <th><div align="center">usn</div></th>
    <th><div align="center">sem</div></th>
    <th><div align="center">cgpa</div></th>
    <th><div align="center">action</div></th>
    <th><div align="center">action</div></th>
  </tr>
  <%@page import="java.sql.*"%>
<%@page import="results.dbconnect"%>
<jsp:useBean id="s" class="results.dbconnect"/>
<jsp:getProperty name="s" property="con"/>
<%
ResultSet rs=s.stmt.executeQuery("select * from sem_results");
while(rs.next())
{
String sm=rs.getString("usn");

%>
  <tr>
    <td><div align="center"><%=sm%>&nbsp;</div></td>
    <td><div align="center"><%=rs.getString("sem")%>&nbsp;</div></td>
    <td><div align="center"><%=rs.getString("cgpa")%></div></td>
    <td><div align="center"><a href="sem_results_update1.jsp?ms=<%=sm%>"><img src="icon/update.jpg" width="80" height="30"border="0"></a></div></td>
    <td>
    <div align="center"><a onClick="return confirm('are you sure?')"; href="sem_results_delete.jsp?ms=<%=sm%>"><img src="icon/delete.jpg" width="80" height="30"border="0"></a></div></td>
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


