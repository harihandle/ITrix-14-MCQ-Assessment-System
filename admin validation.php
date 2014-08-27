<html>
<head>
	<title>Adminstrator</title>
	<link rel="shortcut icon" type=image/x-icon href="images/pic02.jpg">
</head>
<body>
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
			$sql="SELECT * FROM administrator where username='$un' and password=md5('$ps')";
  			$result = mysql_query($sql);
			$flag=0;
  			while($un!=NULL && $row = mysql_fetch_array($result))
			{
				$flag=1;
				?>
				<h3>Welcome Adminstrator</h3>
				<form action="addevent.php" method="post">
				<input type="password" style="display:none" value="<?php echo $un ?>" name="un">
				<input type="password" style="display:none" value="<?php echo $row['password'] ?>" name="ps">
				<input type="submit" value="Add Event">
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