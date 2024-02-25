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
			  <h3>User register </h3>
			  
			 </a>  </p>
		  </div>
		  
<link rel="stylesheet" href="../temp/css_tab/style.css" type="text/css" media="screen"/>


  <div id="content">
 <table class="table1" align="center" >

  <tr>
    <td height="50" colspan="13"><div align="center">User Registration</div></td>
  </tr>
  <tr>
    <th width="80" height="44"><div align="center">User ID </div></th>
    <th width="60"><div align="center">User Name</div></th>
    <th width="78"><div align="center">Password</div></th>
    <th width="66"><div align="center">Address</div></th>
    <th width="40"><div align="center">City</div></th>
    <th width="55"><div align="center">State</div></th>
    <th width="73"><div align="center">Country</div></th>
    <th width="108"><div align="center">Contact No</div></th>
    <th width="78"><div align="center">Age</div></th>
    <th width="91"><div align="center">Gender</div></th>
    <th width="108"><div align="center">Qualification</div></th>
    
  </tr>
    <%@page import="java.sql.*"%>
<%@page import="portal.notesportal"%>
<jsp:useBean id="s" class="portal.notesportal"/>
<jsp:getProperty name="s" property="conn"/>
<%
String staff=session.getAttribute("uname").toString();
ResultSet rsz=s.stmt.executeQuery("select * from login where username='"+staff+"' and type='staff' ");
if(rsz.next())
{
ResultSet rs=s.stmt.executeQuery("select * from  user_registration where user_name='"+staff+"' ");
  while(rs.next())
  {
  int uid=rs.getInt("user_id");
  
  %>
  <tr>
    <td height="43">&nbsp;<%=uid%></td>
    <td>&nbsp;<%=rs.getString("user_name")%></td>
    <td>&nbsp;<%=rs.getString("password")%></td>
	 <td>&nbsp;<%=rs.getString("address")%></td>
	 <td>&nbsp;<%=rs.getString("city")%></td>
	 <td>&nbsp;<%=rs.getString("state")%></td>
	<td>&nbsp;<%=rs.getString("country")%></td>
	 <td>&nbsp;<%=rs.getString("contact_no")%></td>
	 <td>&nbsp;<%=rs.getString("age")%></td>
	 <td>&nbsp;<%=rs.getString("gender")%></td>
	 <td>&nbsp;<%=rs.getString("qualification")%></td>
     
  </tr>
  <%
  }
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


