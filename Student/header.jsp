<script type="text/javascript">
        function noBack()
         {
             window.history.forward()
         }
        noBack();
        window.onload = noBack;
        window.onpageshow = function(evt) { if (evt.persisted) noBack() }
        window.onunload = function() { void (0) }
    </script>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>DIGITAL LIBRARY</title>
<meta name="description" content="">

<meta name="viewport" content="width=device-width">

<link rel="stylesheet" href="../temp/css/bootstrap.css">
<link rel="stylesheet" href="../temp/css/bootstrap-responsive.css">
<link rel="stylesheet" href="../temp/css/jquery.fancybox.css">

<link rel="stylesheet" href="../temp/css/uniform.default.css">
<link rel="stylesheet" href="../temp/css/bootstrap.datepicker.css">
<link rel="stylesheet" href="../temp/css/jquery.cleditor.css">
<link rel="stylesheet" href="../temp/css/jquery.plupload.queue.css">
<link rel="stylesheet" href="../temp/css/jquery.tagsinput.css">
<link rel="stylesheet" href="../temp/css/jquery.ui.plupload.css">
<link rel="stylesheet" href="../temp/css/chosen.css">
<link rel="stylesheet" href="../temp/css/chosen.css">
<link rel="stylesheet" href="../temp/css/style.css">



</head>
<body>
<link rel="stylesheet" href="js/validationEngine.jquery.css" type="text/css" media="screen" title="no title" charset="utf-8" />
<script src="../temp/js/jquery.min.js" type="text/javascript"></script>
<script src="../temp/js/jquery.validationEngine-en.js" type="text/javascript"></script>
<script src="../temp/js/jquery.validationEngine.js" type="text/javascript"></script>
		
 <script>	
   $(document).ready(function() {
   $("#formID").validationEngine()
   });
 </script>	



<div class="topbar">
	<div class="container-fluid">
		<a href="home.php" class='company'>DIGITAL LIBRARY</a>
		<form action="#">
		</form>
		<ul class='mini'>
			<li class='dropdown dropdown-noclose supportContainer'>
				<a href="change password.jsp"><img src="images/pencil.png" height="20">
					Change Password
				</a>
				
			</li>
			<li>
				<a href="../logout.jsp" onclick="return confirm('Are u sure want to Logout')"><img src="img/icons/fugue/control-power.png">
					Logout
				</a>
			</li>
		</ul>
	</div>
</div>



