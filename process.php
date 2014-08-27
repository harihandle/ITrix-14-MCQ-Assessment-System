<html>
<head>
	<title>Add Questions</title>
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
			
			$ename=$_POST['ename'];
			$event=$_POST['event'];
			
			$instructions = str_replace("\\","\\\\",$_POST['question']);
			$instructions = str_replace("\"","\\\"",$instructions);
			$instructions = str_replace("'","\'",$instructions);
			$question=$instructions;
			
			$instructions = str_replace("\\","\\\\",$_POST['a']);
			$instructions = str_replace("\"","\\\"",$instructions);
			$instructions = str_replace("'","\'",$instructions);
			$a=$instructions;
			
			$instructions = str_replace("\\","\\\\",$_POST['b']);
			$instructions = str_replace("\"","\\\"",$instructions);
			$instructions = str_replace("'","\'",$instructions);
			$b=$instructions;
			
			$instructions = str_replace("\\","\\\\",$_POST['c']);
			$instructions = str_replace("\"","\\\"",$instructions);
			$instructions = str_replace("'","\'",$instructions);
			$c=$instructions;
			
			$instructions = str_replace("\\","\\\\",$_POST['d']);
			$instructions = str_replace("\"","\\\"",$instructions);
			$instructions = str_replace("'","\'",$instructions);
			$d=$instructions;
			
			$instructions = str_replace("\\","\\\\",$_POST['e']);
			$instructions = str_replace("\"","\\\"",$instructions);
			$instructions = str_replace("'","\'",$instructions);
			$e=$instructions;
			
			$qimg="$ename/" . $_FILES["file"]["name"][0];
			$aimg="$ename/" . $_FILES["file"]["name"][1];
			$bimg="$ename/" . $_FILES["file"]["name"][2];
			$cimg="$ename/" . $_FILES["file"]["name"][3];
			$dimg="$ename/" . $_FILES["file"]["name"][4];
			$eimg="$ename/" . $_FILES["file"]["name"][5];
			$flag=0;
			
			if($_FILES["file"]["name"][0]==NULL)
				$qimg=NULL;
			if($_FILES["file"]["name"][1]==NULL)
				$aimg=NULL;
			if($_FILES["file"]["name"][2]==NULL)
				$bimg=NULL;
			if($_FILES["file"]["name"][3]==NULL)
				$cimg=NULL;
			if($_FILES["file"]["name"][4]==NULL)
				$dimg=NULL;
			if($_FILES["file"]["name"][5]==NULL)
				$eimg=NULL;
			
			$i=0;
			while($i<6)
			{
				if ($_FILES["file"]["name"][$i]!=NULL && file_exists($ename."/" . $_FILES["file"]["name"][$i]))
				{
					echo $_FILES["file"]["name"][$i] . " already exists. Go back, Change the filename and try again.<br>";
					$flag=1;
				}
				$i=$i+1;
			}
			
			$sql="INSERT INTO `$ename"."_q` (`qno`, `question`, `difficulty`, `a`, `b`, `c`, `d`,`e`, `qimg`, `aimg`, `bimg`, `cimg`, `dimg`,`eimg`, `ans`) VALUES (NULL, '$question',$_POST[difficulty],  '$a', '$b', '$c', '$d','$e','$qimg','$aimg','$bimg','$cimg','$dimg','$eimg', $_POST[ans]);";
			
			$i=0;
			if($flag==0 && mysql_query($sql,$con))
			{
				echo "Question Added Successfully<br>";
				while($i<6)
				{
					move_uploaded_file($_FILES["file"]["tmp_name"][$i],"$ename/" . $_FILES["file"]["name"][$i]);
					echo "Stored in: " . "$ename/" . $_FILES["file"]["name"][$i]."<br>";
					$i=$i+1;
				}
				?>
				<form action="addquestions.php" method="post">
				<input type="password" style="display:none" value="<?php echo $ename ?>" name="ename">
				<input type="password" style="display:none" value="<?php echo $event ?>" name="event">
				<input type="submit" value="Add More Questions">
				</form>
				<?php
			}
			else
			{
				echo $sql." ".$flag;
				echo "<br> Question NOT Added";
			}
		}
	?>
</body>
</html>