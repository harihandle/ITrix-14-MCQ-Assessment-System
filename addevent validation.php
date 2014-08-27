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
				$ename=$_POST['oun'];
				$epass=$_POST['ops'];
				$event=$_POST['en'];
				$cname=$_POST['cun'];
				$cpass=$_POST['cps'];
				$flag=1;
				
				$sql="INSERT INTO `events` (`ename`, `epass`, `event`) VALUES ('$ename', MD5('$epass'), '$event')";
				$sqll="INSERT INTO `candidates` (`cname`, `cpass`, `ename`, `event`) VALUES ('$cname', MD5('$cpass'), '$ename', '$event');";
				
				if(mysql_query($sql,$con) && mysql_query($sqll,$con))
				{
					$sql="CREATE TABLE ".$ename."_q LIKE q";
					mysql_query($sql,$con);
					$sql="CREATE TABLE ".$ename."_participants LIKE participants";
					mysql_query($sql,$con);
					$sql="CREATE TABLE ".$ename."_pps LIKE pps";
					mysql_query($sql,$con);
					mkdir("$ename");
					echo " Event Added Successfully<br>";
				}
				else
					echo " Event NOT Added<br>";
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