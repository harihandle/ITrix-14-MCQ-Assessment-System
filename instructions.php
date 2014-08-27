<html>
<head>
	<title>Instructions</title>
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
				<li><a href="#" accesskey="2" title="">Details</a></li>
				<li class="current_page_item"><a href="#" accesskey="3" title="">Instructions</a></li>
				<li><a href="#" accesskey="4" title="">Test</a></li>
				<li><a href="#" accesskey="5" title="">Done !!!</a></li>
			</ul>
		</div>
	</div>
	<div id="main">
		<div id="banner">
			<img src="<?php echo $_POST['ename']; ?>/pic01.jpg" alt="" height="100" />
		</div>
		<div id="welcome">
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
					
					$ename=$_POST['ename'];
					$event=$_POST['event'];
					
					$itrixid=$_POST['itrixid'];
					
					$instructions = str_replace("<","",$itrixid);
					$itrixid = str_replace(">","",$instructions);
					
					$name=$_POST['name'];
					
					$instructions = str_replace("<","",$name);
					$name = str_replace(">","",$instructions);
					
					$year=$_POST['year'];
					
					$instructions = str_replace("<","",$year);
					$year = str_replace(">","",$instructions);
					
					$degree=$_POST['degree'];
					
					$instructions = str_replace("<","",$degree);
					$degree = str_replace(">","",$instructions);
					
					$branch=$_POST['branch'];
					
					$instructions = str_replace("<","",$branch);
					$branch = str_replace(">","",$instructions);
					
					$college=$_POST['college'];
					
					$instructions = str_replace("<","",$college);
					$college = str_replace(">","",$instructions);
					
					$cno=$_POST['cno'];
					$instructions = str_replace("<","",$cno);
					$cno = str_replace(">","",$instructions);
					
					$email=$_POST['email'];
					
					$instructions = str_replace("<","",$email);
					$email = str_replace(">","",$instructions);
					
					$questions="ok";
					$answers="ok";
					
					$easy=5;
					$moderate=5;
					$hard=5;
					
					$sql="SELECT * FROM test WHERE ename='$ename'";
					$result=mysql_query($sql);
					while($row = mysql_fetch_array($result))
					{
						$easy=$row['easy'];
						$moderate=$row['moderate'];
						$hard=$row['hard'];
						$neg=$row['neg'];
						$instructions=$row['instructions'];
						$duration=$row['duration'];
					}
					
					$sql="SELECT * FROM ".$ename."_pps WHERE itrixid='$itrixid'";
					$result=mysql_query($sql);
					$flag=0;
					while($itrixid!=NULL && $row = mysql_fetch_array($result))
					{
						$status=$row['status'];
						if($status==1)
							$flag=1;
					}
					if($flag==0)
					{
						//RANDOMIZE OPTIONS...
						$numbers_sql="SELECT * FROM numbers order by RAND() LIMIT 4";
						$numbers_result = mysql_query($numbers_sql);
						$rows = mysql_fetch_array($numbers_result);
						$options=$rows['numbers'];
						while($rows = mysql_fetch_array($numbers_result))
						{
							$options=$options.",".$rows['numbers'];
						}
						
						//RANDOMIZE QUESTIONS...
						$esql="SELECT * FROM ".$ename."_q WHERE difficulty=0 order by RAND() LIMIT $easy";
						$msql="SELECT * FROM ".$ename."_q WHERE difficulty=1 order by RAND() LIMIT $moderate";
						$hsql="SELECT * FROM ".$ename."_q WHERE difficulty=2 order by RAND() LIMIT $hard";
						$eresult = mysql_query($esql);
						$mresult = mysql_query($msql);
						$hresult = mysql_query($hsql);
						$erow = mysql_fetch_array($eresult);
						$questions=$erow['qno'];
						$answers="-1";
						$easy=$easy-1;
						while($easy+$moderate+$hard>0)
						{
							if($moderate>0 && $mrow = mysql_fetch_array($mresult))
							{
								$questions=$questions.",".$mrow['qno'];
								$answers=$answers.",-1";
								$moderate=$moderate-1;
							}
							if($hard>0 && $hrow = mysql_fetch_array($hresult))
							{
								$questions=$questions.",".$hrow['qno'];
								$answers=$answers.",-1";
								$hard=$hard-1;
							}
							if($easy>0 && $erow = mysql_fetch_array($eresult))
							{
								$questions=$questions.",".$erow['qno'];
								$answers=$answers.",-1";
								$easy=$easy-1;
							}
						}
						
						//echo "'$itrixid', '$name', '$year', '$degree', '$branch', '$college', $cno, '$email'";
						$sql="INSERT INTO ".$ename."_participants VALUES ('$itrixid', '$name', '$year', '$degree', '$branch', '$college', $cno, '$email');";
						$ok1=mysql_query($sql,$con);
						if($ok1==1)
						{
							$sql="INSERT INTO ".$ename."_pps VALUES ('$itrixid','$name','$questions','$answers','$options',0,0);";
							$ok2=mysql_query($sql,$con);
						}
						if($ok1==1 && $ok2==1)
						{
						?>
						<div class="title">
							<h2>Instructions | <?php echo $event ?></h2>
							<span class="byline">Read the instructions carefully before taking the test</span>
						</div>
						<?php echo nl2br($instructions); ?>
						<form method="post" action="start_test.php">
						<input type="password" style="display:none" value="<?php echo $ename ?>" name="ename">
						<input type="password" style="display:none" value="<?php echo $event ?>" name="event">
						<input type="password" style="display:none" value="<?php echo $itrixid ?>" name="itrixid">
						<input type="password" style="display:none" value="<?php echo $neg ?>" name="neg">
						<input type="password" style="display:none" value="<?php echo $duration ?>" name="duration">
						<br><br>
						<input type="submit" value="Start Test" class="btn btn-large btn-block btn-info">
						</form>
						<?php
						}
						else
						{
							echo "Erraneous Input... Close the Window and try again...<br><br><br>";
						}
					}
					else
					{
						?>
						<script type="text/javascript">
						alert("Already Took Test.\nThe Window will automatically close.");
						window.close();
						</script>
						<?php
					}
				}
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