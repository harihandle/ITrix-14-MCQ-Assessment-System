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
			$sql="SELECT * FROM events where ename='$un' and epass=md5('$ps')";
  			$result = mysql_query($sql);
			$flag=0;
  			while($un!=NULL && $row = mysql_fetch_array($result))
			{
				$flag=1;
				?>
				<h3>Welcome Event Organiser</h3>
				<form action="addSponsor.php" method="post">
				<input type="password" style="display:none" value="<?php echo $un ?>" name="ename">
				<input type="password" style="display:none" value="<?php echo $row['event'] ?>" name="event">
				<input type="submit" value="Add Sponser Logo">
				</form>
				<br>
				<form action="addquestions.php" method="post">
				<input type="password" style="display:none" value="<?php echo $un ?>" name="ename">
				<input type="password" style="display:none" value="<?php echo $row['event'] ?>" name="event">
				<input type="submit" value="Add Questions">
				</form>
				<br>
				<form action="setnumbers.php" method="post">
				<input type="password" style="display:none" value="<?php echo $un ?>" name="ename">
				<input type="password" style="display:none" value="<?php echo $row['event'] ?>" name="event">
				<input type="submit" value="Set Numbers"> For Easy, Moderate and Hard for the test.
				</form>
				<br>
				<form action="results.php" method="post">
				<input type="password" style="display:none" value="<?php echo $un ?>" name="ename">
				<input type="password" style="display:none" value="<?php echo $row['event'] ?>" name="event">
				<input type="submit" value="Results">
				</form>
				<br>
				<form action="display_all.php" method="post">
				<input type="password" style="display:none" value="<?php echo $un ?>" name="ename">
				<input type="password" style="display:none" value="<?php echo $row['event'] ?>" name="event">
				<input type="submit" value="Display All Questions">
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