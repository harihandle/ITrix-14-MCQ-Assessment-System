<html>
<head>
	<title>Done !!!</title>
	<link rel="shortcut icon" type=image/x-icon href="images/pic02.jpg">
	<link href="default.css" rel="stylesheet" type="text/css" media="all" />
	<link href="fonts.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css/flat-ui.css" rel="stylesheet">
	
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
				<li><a href="#" accesskey="3" title="">Instructions</a></li>
				<li><a href="#" accesskey="4" title="">Test</a></li>
				<li class="current_page_item"><a href="#" accesskey="5" title="">Done !!!</a></li>
			</ul>
		</div>
	</div>
	<div id="main">
		<div id="banner">
			<img src="<?php echo $_POST['ename'] ?>/pic01.jpg" alt="" height="100"/>
		</div>
		<div id="welcome">
			<div class="title">
				<h2>Congratulations</h2>
				<span class="byline">You have Successfully completed the test</span>
			</div>
			<!-- CONTENT HERE -->
			<script src="refresh.js"></script>
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
						$neg=$_POST['neg'];
						$easy=0;
						$moderate=0;
						$hard=0;
						$ew=0;
						$mw=0;
						$hw=0;
						$correct=0;
						$wrong=0;
						$unattended=0;
						$answers="";
						
						$sql="SELECT * FROM ".$ename."_pps WHERE itrixid='$itrixid'";
						$result=mysql_query($sql);
						$flag=0;
						while($itrixid!=NULL && $row = mysql_fetch_array($result))
						{
							$status=$row['status'];
							$q=$row['questions'];
							$o=$row['options'];
							
							$questions = explode(',', $q);
							$options = explode(',', $o);
							//if($status==1)
								//$flag=1;
						}
						if($flag!=1)
						{
							$total=count($questions);
							$i=0;
							$first=0;
							while($i<$total)
							{
								//echo $questions[$i]."<br>";
								$sql="SELECT * FROM ".$ename."_q WHERE qno=".$questions[$i];
								$result = mysql_query($sql);
								if($row = mysql_fetch_array($result))
								{
									$difficulty=$row['difficulty'];
									if($first==0)
									{
										$first=1;
										if(!isset($_POST[$questions[$i]]))
										{
											$unattended=$unattended+1;
											$answers="-1";
											//break;
										}
										else if($row['ans']==$_POST[$questions[$i]])
										{
											$correct=$correct+1;
											if($difficulty==0)$easy=$easy+1;
											else if($difficulty==1)$moderate=$moderate+1;
											else if($difficulty==2)$hard=$hard+1;
											$answers=$_POST[$questions[$i]];
										}
										else
										{
											$wrong=$wrong+1;
											if($difficulty==0)$ew=$ew+1;
											else if($difficulty==1)$mw=$mw+1;
											else if($difficulty==2)$hw=$hw+1;
											$answers=$_POST[$questions[$i]];
										}
									}
									else
									{
										if(!isset($_POST[$questions[$i]]))
										{
											$unattended=$unattended+1;
											$answers=$answers.",-1";
											//break;
										}
										else if($row['ans']==$_POST[$questions[$i]])
										{
											$correct=$correct+1;
											if($difficulty==0)$easy=$easy+1;
											else if($difficulty==1)$moderate=$moderate+1;
											else if($difficulty==2)$hard=$hard+1;
											$answers=$answers.",".$_POST[$questions[$i]];
										}
										else
										{
											$wrong=$wrong+1;
											if($difficulty==0)$ew=$ew+1;
											else if($difficulty==1)$mw=$mw+1;
											else if($difficulty==2)$hw=$hw+1;
											$answers=$answers.",".$_POST[$questions[$i]];
										}
									}
								}
								$i=$i+1;
							}
						}
						$sql="SELECT * FROM test WHERE ename='$ename'";
						$result=mysql_query($sql);
						if($row = mysql_fetch_array($result))
						{
							$easym=$row['easym'];
							$moderatem=$row['moderatem'];
							$hardm=$row['hardm'];
						}
						$score=($easy*$easym)+($moderate*$moderatem)+($hard*$hardm)-(($ew*$easym*$neg)+($mw*$moderatem*$neg)+($hw*$hardm*$neg));
						$sql="UPDATE `".$ename."_pps` SET `status`=1,`score`=$score,`answers`='$answers' WHERE itrixid='$itrixid'";
						mysql_query($sql,$con);
						//echo $easym."<br>".$correct."<br>".$wrong."<br>".$unattended;
						?>
						<br><br><br>
						<button type="button" onClick="closeWin();" value="Close Window" class="btn btn-large btn-block btn-info">Close Window</button>
						<script type="text/javascript">
						//alert("Test Submitted Successfully.\nThe Window will automatically close.");
						//closeWin();
						</script>
						<?php
						//echo "<br>$sql<br>CONGRATS";
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