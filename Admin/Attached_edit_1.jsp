<<jsp:include page="header.jsp"></jsp:include>

<jsp:include page="sidemenu.jsp"></jsp:include>

<div class="container-fluid">
		<div class="content">
			<div class="row-fluid no-margin">
				<div class="span12">


<div class="box">
		  <div class="box-head">
			  <h3>Attached_Edit</h3>
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
String aid=request.getParameter("aid");
ResultSet rs=s.stmt.executeQuery("select * from attached_files where attached_id="+aid+" ");
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
<form name="form1" method="post" id="formID" action="Attached_edit_2.jsp">
<input type="hidden" value="<%=rs.getInt("attached_id")%>" name="attached_id">
  <table width="258" border="1" align="center">
    <tr>
      <td colspan="2"><div align="center">Attached_Edit</div></td>
    </tr>
    <tr>
      <td width="98">Attached By </td>
      <td width="144"><input name="A_By" type="text" id="A_By" value="<%=rs.getString("attached_by")%>" class="validate[required,custom[onlyLetter]]"></td>
    </tr>
    <tr>
      <td>Attached Date </td>
      <td><input name="A_Date" type="text" id="A_Date" value="<%=rs.getString("Attached_date")%>"class="validate[required,custom[date]]"></td>
    </tr>
    <tr>
      <td>Attached Files </td>
      <td><input name="A_Files" type="text" id="A_Files" value="<%=rs.getString("Attached_file")%>"class="validate[required,custom[onlyLetter]]"></td>
    </tr>
    <tr>
      <td>Category ID </td>
      <td><input name="C_ID" type="text" id="C_ID" value="<%=rs.getInt("Category_id")%>"class="validate[required,custom[onlyNumber]]"></td>
    </tr>
    <tr>
      <td>Key</td>
      <td><input name="key" type="text" id="key" value="<%=rs.getString("Key")%>"class="validate[required,custom[onlyLetter]]"></td>
    </tr>
    <tr>
      <td>Status</td>
      <td><input name="status" type="text" id="status" value="<%=rs.getString("Status")%>"class="validate[required,custom[onlyLetter]]"></td>
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
