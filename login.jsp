<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<title>DIGITAL LIBRARY</title>

	<!-- Google Fonts -->
	<link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700|Lato:400,100,300,700,900' rel='stylesheet' type='text/css'>

	<link rel="stylesheet" href="css/animate.css">
	<!-- Custom Stylesheet -->
	<link rel="stylesheet" href="css/style.css">

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
</head>

<body>
	<div class="container">
		<div class="top">
			<h1 id="title" class="hidden"><span id="logo">DIGITAL <span>LIBRARY</span></span></h1>
		</div>
		<form action="logcheck.jsp" method="post">
		<div class="login-box animated fadeInUp">
			<div class="box-header">
				<h2>Log In</h2>
			</div>
			<label for="username">Username</label>
			<br/>
			<input type="text" name="username" id="username">
			<br/>
			<label for="password">Password</label>
			<br/>
			<input type="password" name="password" id="password">
			<br/>
			<button type="submit">Sign In</button>
			<br/>
			<a href="forgot1.jsp"><p class="small">Forgot your password?</p></a><a href="Admin/User_reg_form.jsp"><p class="small">Registration</p></a>
		</div>
	</div>
</body>
</form>
<script>
	$(document).ready(function () {
    	$('#logo').addClass('animated fadeInDown');
    	$("input:text:visible:first").focus();
	});
	$('#username').focus(function() {
		$('label[for="username"]').addClass('selected');
	});
	$('#username').blur(function() {
		$('label[for="username"]').removeClass('selected');
	});
	$('#password').focus(function() {
		$('label[for="password"]').addClass('selected');
	});
	$('#password').blur(function() {
		$('label[for="password"]').removeClass('selected');
	});
</script>

</html>