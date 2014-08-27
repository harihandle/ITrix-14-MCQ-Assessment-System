<html>
<head>
	<title>Adminstrator</title>
	<link rel="shortcut icon" type=image/x-icon href="images/pic02.jpg">
</head>
<body>
<form action="setnumbers validation.php" method="post">
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
			
			$ename=$_POST['ename'];
			$event=$_POST['event'];
			$sql="SELECT * FROM test where ename='$ename'";
  			$result = mysql_query($sql);
			$flag=0;
			?><input type="password" style="display:none" value="<?php echo $ename ?>" name="ename"><?php
  			while($ename!=NULL && $row = mysql_fetch_array($result))
			{
				$flag=1;
				?>
				Easy: <input type="text" size="3" name="easy" value="<?php echo $row['easy']; ?>" /><br />
				Moderate: <input type="text" size="3" name="moderate" value="<?php echo $row['moderate']; ?>" /><br />
				Hard: <input type="text" size="3" name="hard" value="<?php echo $row['hard']; ?>" /><br />
				Easy Mark: <input type="text" size="3" name="easym" value="<?php echo $row['easym']; ?>" /><br />
				Moderate Mark: <input type="text" size="3" name="moderatem" value="<?php echo $row['moderatem']; ?>" /><br />
				Hard Mark: <input type="text" size="3" name="hardm" value="<?php echo $row['hardm']; ?>" /><br />
				Negative Marking: <input type="text" size="3" name="neg" value="<?php echo $row['neg']; ?>" /><br />
				Instructions:<textarea id="instructions" name="instructions" rows="6" cols="50" ><?php echo $row['instructions']; ?></textarea><br />
				Duration (in mins): <input type="text" size="3" name="duration" value="<?php echo $row['duration']; ?>" /><br />
				<?php
			}
			if($flag==0)
			{
				?>
				Easy: <input type="text" size="3" name="easy"/><br />
				Moderate: <input type="text" size="3" name="moderate"/><br />
				Hard: <input type="text" size="3" name="hard"/><br />
				Easy Mark: <input type="text" size="3" name="easym"/><br />
				Moderate Mark: <input type="text" size="3" name="moderatem"/><br />
				Hard Mark: <input type="text" size="3" name="hardm"/><br />
				Negative Marking: <input type="text" size="3" name="neg"/><br />
				Instructions:<textarea id="instructions" name="instructions" rows="6" cols="50" ></textarea><br />
				Duration (in mins): <input type="text" size="3" name="duration"/><br />
				<?php
			}
		}
		mysql_close($con); 
	?>
<input type="submit" value="Set Numbers">
</form>
</body>
</html>