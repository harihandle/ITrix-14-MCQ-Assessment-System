<html>
<head>
	<title>Fill your Details</title>
	<link rel="shortcut icon" type=image/x-icon href="images/pic02.jpg">
	<link href="default.css" rel="stylesheet" type="text/css" media="all" />
	<link href="fonts.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css/flat-ui.css" rel="stylesheet">
	<script src="refresh.js"></script>
	<script>
		//window.location.reload(false);
		if(!window.opener)
		{
			window.location.replace("candidate.php");
		}
	</script>
	<script>
		function validateID(id)
		{
			if(id==null || id=="")
			{
				return 1;
			}
			var college=document.forms["details"]["college"].value;
			if(college.toUpperCase()=="CEG")
			{
				return 0;
			}
			//Code Here
			//I+7 Characters = 8
			if(id.length==8 && id.charAt(0)==='I')
			{
				return 0;
			}
			return 1;
		}
		function validateForm()
		{
			var itrixid=document.forms["details"]["itrixid"].value;
			var cno=document.forms["details"]["cno"].value;
			var email=document.forms["details"]["email"].value;
			if(validateID(itrixid.toUpperCase())==1)
			{
				alert("INVALID ITRIX ID");
				return false;
			}
			if(isNaN(cno))
			{
				alert("INVALID CONTACT NUMBER");
				return false;
			}
			if(!email.match("@"))
			{
				alert("INVALID Email ID");
				return false;
			}
			return true;
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
				<li><a href="#" accesskey="1" title="">Login</a></li>
				<li class="current_page_item"><a href="#" accesskey="2" title="">Details</a></li>
				<li><a href="#" accesskey="3" title="">Instructions</a></li>
				<li><a href="#" accesskey="4" title="">Test</a></li>
				<li><a href="#" accesskey="5" title="">Done !!!</a></li>
			</ul>
		</div>
	</div>
	<div id="main">
			<!-- CONTENT HERE -->
			<?php
				//INITIALISATION
				$address="localhost";
				$username="root";
				$password="mysql";
				$db="datastructs";
				$con=mysql_connect($address,$username,$password);
				
				if (!$con)
				{
					die('Could not connect: ' . mysql_error());
				}
				else
				{
					mysql_select_db($db,$con);
					
					$un=$_POST['username'];
					$ps=$_POST['password'];
					$sql="SELECT * FROM candidates where cname='$un' and cpass=md5('$ps')";
					$result = mysql_query($sql);
					$flag=0;
					while($un!=NULL && $row = mysql_fetch_array($result))
					{
						$flag=1;
						?>
						<div id="banner">
							<img src='<?php echo $row['ename'] ?>/pic01.jpg' alt="" height="100"/>
						</div>
						<div id="welcome">
						<div class="title">
							<h2>Enter your Details</h2>
							<span class="byline">Event: <?php echo $row['event'] ?></span>
						</div>
						<form action="instructions.php" onSubmit="return validateForm();" method="post" name="details">
						<input type="password" style="display:none" value="<?php echo $row['ename'] ?>" name="ename">
						<input type="password" style="display:none" value="<?php echo $row['event'] ?>" name="event">
						<input type="text" size="20" name="itrixid" class="login-field" value="" placeholder="ITrix Id" size="20" required/><br />
						<input type="text" size="20" name="name" class="login-field" value="" placeholder="Name" size="20" required/><br />
						<!--URN:<input type="text" size="20" name="urn" /><br />-->
						<input type="text" size="1" name="year" class="login-field" value="" placeholder="Year" size="20" required/><br />
						<input type="text" size="20" name="degree" class="login-field" value="" placeholder="Degree" size="20" required/><br />
						<input type="text" size="20" name="branch" class="login-field" value="" placeholder="Branch" size="20" required/><br />
						<input type="text" size="20" name="college" class="login-field" value="" placeholder="College" size="20" required/><br />
						<input type="text" size="10" name="cno" class="login-field" value="" placeholder="Contact Number" size="20" required/><br />
						<input type="text" size="30" name="email" class="login-field" value="" placeholder="E-mail" size="20" required/><br /><br><br>
						After submitting, you will be redirected to the instructions page....<br><br>
						<input type="submit" value="Submit" class="btn btn-large btn-block btn-info">
						</form>
						<?php
					}
					if($flag==0)
					{
						echo "INVALID USERNAME or PASSWORD";
						?> <a href="candidate1.php">Go Back</a> <?php
					}
				}
				mysql_close($con); 
			?>
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