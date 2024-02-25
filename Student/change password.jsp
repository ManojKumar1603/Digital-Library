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

<body>

<form name="form1" method="post" action="changepin.jsp" id="formID" class="form-horizontal">
  <table width="424" height="221" border="0" align="center">
    <tr>
     
    </tr>
    <tr>
      <td>Old Password </td>
      <td><input name="oldpassword" type="password" id="oldpassword" class="validate[required] form-control" style="margin-bottom:10px""></td>
    </tr>
    <tr>
      <td>New Password </td>
      <td><input name="newpassword" type="password" id="newpassword" class="validate[required,length[6,12]] form-control" style="margin-bottom:10px""></td>
    </tr>
    <tr>
      <td>Confirm Password </td>
      <td><input name="confirmpassword" type="password" id="confirmpassword" class="validate[required,length[6,12]] form-control" style="margin-bottom:10px""></td>
    </tr>
    <tr>
      <td colspan="2"><div align="center">
        <input type="submit" name="Submit" value="Submit" class="btn btn-primary">
        <input type="reset" name="Reset" value="Reset" class="btn">
      </div></td>
    </tr>
  </table>
</form>
</div>
				</div>
				
					<jsp:include page="footer.jsp"></jsp:include>
					<jsp:include page="val.jsp"></jsp:include>
