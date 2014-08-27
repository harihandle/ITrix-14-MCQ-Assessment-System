<html>
<head>
	<title>Adminstrator</title>
	<link rel="shortcut icon" type=image/x-icon href="images/pic02.jpg">
</head>
<body>
<form action="organiser.php" method="post">
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
			$easy=$_POST['easy'];
			$moderate=$_POST['moderate'];
			$hard=$_POST['hard'];
			$easym=$_POST['easym'];
			$moderatem=$_POST['moderatem'];
			$hardm=$_POST['hardm'];
			$neg=$_POST['neg'];
			$instructions=$_POST['instructions'];
			
			$instructions = str_replace("\\","\\\\",$instructions);
			$instructions = str_replace("\"","\\\"",$instructions);
			$instructions = str_replace("'","\'",$instructions);
			
			$duration=$_POST['duration'];
			$sql="SELECT * FROM test where ename='$ename'";
  			$result = mysql_query($sql);
			$flag=0;
  			while($ename!=NULL && $row = mysql_fetch_array($result))
			{
				$flag=1;
				$sql="UPDATE `test` SET `easy`=$easy,`moderate`=$moderate,`hard`=$hard,`easym`=$easym,`moderatem`=$moderatem,`hardm`=$hardm,`instructions`='$instructions',`neg`=$neg, `duration`=$duration WHERE ename='$ename'";
			}
			if($flag==0)
			{
				$sql="INSERT INTO `test` (`ename`, `easy`, `moderate`, `hard`,`easym`, `moderatem`, `hardm`,`instructions`,`neg`,`duration`) VALUES ('$ename', $easy, $moderate, $hard,$easym, $moderatem, $hardm,'$instructions',$neg,$duration);";
			}
			mysql_query($sql,$con);
			echo "Successful<br>";
		}
		mysql_close($con); 
	?>
<input type="submit" value="Home">
</form>
</body>
</html>