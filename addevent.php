<html>
<head>
	<title>Adminstrator</title>
	<link rel="shortcut icon" type=image/x-icon href="images/pic02.jpg">
</head>
<body>
	<h3>Administrator Login</h3>
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
			
			$un=$_POST['un'];
			$ps=$_POST['ps'];
			$sql="SELECT * FROM administrator where username='$un' and password='$ps'";
  			$result = mysql_query($sql);
			$flag=0;
  			while($un!=NULL && $row = mysql_fetch_array($result))
			{
				$flag=1;
				?>
				<h3>Add Event</h3>
					<form action="addevent validation.php" method="post">
						<input type="password" style="display:none" value="<?php echo $un ?>" name="un">
						<input type="password" style="display:none" value="<?php echo $row['password'] ?>" name="ps">
						<h4>Organiser:</h4>
						Event Name:<input type="text" size="20" name="en" /><br />
						Username:<input type="text" size="20" name="oun" /><br />
						Password:<input type="password" size="20" name="ops" /><br />
						<h4>Candidate:</h4>
						Username:<input type="text" size="20" name="cun" /><br />
						Password:<input type="password" size="20" name="cps" /><br /><br>
						<input type="submit" value="Create Event" />
					</form>
				<?php
			}
			if($flag==0)
			{
				echo "INVALID USERNAME or PASSWORD";
			}
		}
		mysql_close($con);
	?>
</body>
</html>