<html>
<head>
	<title>Candidate | Login</title>
	<link rel="shortcut icon" type=image/x-icon href="images/pic02.jpg">
	<link href="default.css" rel="stylesheet" type="text/css" media="all" />
	<link href="fonts.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css/flat-ui.css" rel="stylesheet">
	<script>
		//window.location.reload(false);
		if(!window.opener)
		{
			window.location.replace("candidate.php");
		}
	</script>
</head>
<body oncontextmenu="return false">
<div id="page" class="container">
	<div id="header" style="position:fixed">
		<div id="logo">
			<img src="images/pic02.jpg" alt="" />
			<h1><a href="#">ITrix'14</a></h1>
			<span>Testing the Limits</span>
		</div>
		<div id="menu">
			<ul>
				<li class="current_page_item"><a href="#" accesskey="1" title="">Login</a></li>
				<li><a href="#" accesskey="2" title="">Details</a></li>
				<li><a href="#" accesskey="3" title="">Instructions</a></li>
				<li><a href="#" accesskey="4" title="">Test</a></li>
				<li><a href="#" accesskey="5" title="">Done !!!</a></li>
			</ul>
		</div>
	</div>
	<div id="main">
		<div id="banner">
			<img src="images/pic01.jpg" alt="" height="100" />
		</div>
		<div id="welcome">
			<div class="title">
				<h2>Candidate | Login</h2>
				<span class="byline">Enter the Credentials</span>
			</div>
			<!-- CONTENT HERE -->
				<script src="refresh.js"></script>
				<form action="candidate validation.php" method="post">
					<input type="text" class="login-field" value="" placeholder="Username" size="20" name="username" required><br /><br>
					<input type="password" class="login-field" value="" placeholder="Password" size="20" name="password" required><br /><br>
					<!--
					Username:<input type="text" size="20" name="username" /><br /><br>
					Password:<input type="password" size="20" name="password" /><br /><br>
					-->
					<input type="submit" value="Login" class="btn btn-large btn-block btn-info" />
				</form>
			<!-- CONTENT HERE -->
			<!--
			<ul class="actions">
				<li><a href="#" class="button">Etiam posuere</a></li>
			</ul>
			-->
		</div>
		<div id="copyright">
			<span>Copyright (c) 2014 Itrix'14. All rights reserved.</span>
			<span>Designed by Tech Team, Itrix'14</span>
		</div>
	</div>
</div>
</body>
</html>