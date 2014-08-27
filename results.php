<html>
<head>
	<title>Adminstrator</title>
	<link rel="shortcut icon" type=image/x-icon href="images/pic02.jpg">
</head>
<body oncontextmenu="return false">
	<script src="refresh.js"></script>
	<table border="2">
	<tbody>
	<th>Itrix ID</th>
	<th>Name</th>
	<th>Score</th>
	<th>Year</th>
	<th>Degree</th>
	<th>Branch</th>
	<th>College</th>
	<th>Contact Number</th>
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
			$sql="SELECT * FROM ".$ename."_pps AS a JOIN ".$ename."_participants AS b WHERE a.itrixid=b.itrixid ORDER BY a.score DESC";
			$result=mysql_query($sql,$con);
			while($row = mysql_fetch_array($result))
			{
				echo "<tr>";
				echo "<td>".$row['itrixid']."</td>";
				echo "<td>".$row['name']."</td>";
				echo "<td>".$row['score']."</td>";
				echo "<td>".$row['year']."</td>";
				echo "<td>".$row['degree']."</td>";
				echo "<td>".$row['branch']."</td>";
				echo "<td>".$row['college']."</td>";
				echo "<td>".$row['cno']."</td>";
				echo "</tr>";
			}
		}
	?>
	</tbody>
	</table>
</body>
</html>