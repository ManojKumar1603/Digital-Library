<<jsp:include page="header.jsp"></jsp:include>

<jsp:include page="sidemenu.jsp"></jsp:include>

<div class="container-fluid">
		<div class="content">
			<div class="row-fluid no-margin">
				<div class="span12">


<div class="box">
		  <div class="box-head">
			  <h3>Subject</h3>
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
<form name="form1" method="post" id="formID" action="Sub_insert.jsp">
  <table class="table1" align="center">
    <tr>
      <td colspan="2"><div align="center">Subject</div></td>
    </tr>
    <tr>
      <td width="96">Sub Name </td>
      <td width="155"><input name="sub_name" type="text" id="sub_name" class="validate[required,custom[onlyLetter]]"></td>
    </tr>
    <tr>
      <td>Course ID </td>
      <td><select name="course_id" id="course_id" class="validate[required,custom[onlyNumber]]">
        <option>Select</option>
        
        <%@page import="java.sql.*"%>
        <%@page import="portal.notesportal"%>
        <jsp:useBean id="s" class="portal.notesportal"/>
        
        <jsp:getProperty name="s" property="conn"/>      
        <%
 ResultSet rs=s.stmt.executeQuery("select * from course");
  while(rs.next())
  {
  %>
  <option value="<%=rs.getInt("course_id")%>"><%=rs.getString("course_name")%> </option>
        <%
  }
  %>
            </select></td>
    </tr>
    <tr>
      <td>Sem</td>
      <td><select name="sem" id="sem">
        <option value="I">I</option>
        <option value="II">II</option>
        <option value="III">III</option>
        <option value="IV">IV</option>
        <option value="V">V</option>
        <option value="VI">VI</option>
        <option value="VII">VII</option>
        <option value="VIII">VIII</option>
      </select></td>
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
