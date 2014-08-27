<html>
<head>
	<title>Test</title>
	<link rel="shortcut icon" type=image/x-icon href="images/pic02.jpg">
	<link rel="stylesheet" href="uniform/css/uniform.aristo.css" media="screen" />
	<link href="default.css" rel="stylesheet" type="text/css" media="all" />
	<link href="fonts.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css/flat-ui.css" rel="stylesheet">
	<link rel="stylesheet" href="jquery-ui/themes/base/all.css">
	<script src="jquery-ui/jquery-1.10.2.js"></script>
	<script src="jquery-ui/ui/core.js"></script>
	<script src="jquery-ui/ui/widget.js"></script>
	<script src="jquery-ui/ui/mouse.js"></script>
	<script src="jquery-ui/ui/draggable.js"></script>
	<script src="jquery-ui/ui/position.js"></script>
	<script src="jquery-ui/ui/resizable.js"></script>
	<script src="jquery-ui/ui/button.js"></script>
	<script src="jquery-ui/ui/dialog.js"></script>
	<script src="jquery-ui/ui/effect.js"></script>
	<script src="jquery-ui/ui/effect-blind.js"></script>
	<script src="jquery-ui/ui/effect-explode.js"></script>
	
	<script src="uniform/jquery.uniform.js"></script>
	
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
				<li class="current_page_item"><a href="#" accesskey="4" title="">Test</a></li>
				<li><a href="#" accesskey="5" title="">Done !!!</a></li>
			</ul>
		</div>
	</div>
	<div id="main">
		<div id="banner">
			<img src="<?php echo $_POST['ename'] ?>/pic01.jpg" alt="" height="100" />
		</div>
		<div id="welcome">
			<div class="title">
				<h2>Test</h2>
				<span class="byline">Read the Questions Carefully before Answering Them</span>
			</div>
			<!-- CONTENT HERE -->
			<?php
			$duration=$_POST['duration'];
			?>
			<input type="password" style="display:none" value="<?php echo $duration ?>" id="duration">
			<script src="timer.js"></script>
			<script src="refresh.js"></script>
			<script src="radio.js"></script>
			<div id="hp" style="text-align:left">
			<form id="test" name="test" method="post" onSubmit="return do_this();" action="voila.php">
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
						$neg=$_POST['neg'];
						$itrixid=$_POST['itrixid'];
						
						$sql="SELECT * FROM ".$ename."_pps WHERE itrixid='$itrixid'";
						$result=mysql_query($sql);
						$flag=0;
						while($itrixid!=NULL && $row = mysql_fetch_array($result))
						{
							$status=$row['status'];
							$q=$row['questions'];
							$o=$row['options'].",4";
							//echo $o;//DELETE THIS
							
							$questions = explode(',', $q);
							$options = explode(',', $o);
							if($status==1)
								$flag=1;
						}
						
						$stars="";
						$diff_flag=0;
						if($flag!=1)
						{
							$total=count($questions);
							$i=0;
							while($i<$total)
							{
								echo "<br><br><br>";
								$sql="SELECT * FROM ".$ename."_q WHERE qno=".$questions[$i];
								$result = mysql_query($sql);
								while($row = mysql_fetch_array($result))
								{
									if($row['difficulty']==0)$stars="";
									else if($row['difficulty']==1)$stars="*";
									else if($row['difficulty']==2)$stars="**";
									echo "<b>".($i+1).".(".$stars.") ".nl2br($row['question'])."</b><br>";
									//echo $row['ans']."<br>";
									if($row['qimg']!=NULL)
									{
										?>
										<img src="<?php echo $row['qimg'] ?>"/>
										<?php
										echo "<br><br>";
									}
									?>
									<input type="button" style="height:25; width:50" onClick="clearRadio('<?php echo $row['qno'] ?>');radioUC();" value="Clear"/><br />
									<?php
									foreach( $options as $value)
									{
										if($value==0)
										{
											?><input type="radio" name="<?php echo $row['qno'] ?>" value="0" /><?php echo " ".nl2br($row['a'])."<br>";
											if($row['aimg']!=NULL)
											{
												?><img src="<?php echo $row['aimg'] ?>"/><?php
												echo "<br>";
											}
										}
										else if($value==1)
										{
											?><input type="radio" name="<?php echo $row['qno'] ?>" value="1" /><?php echo " ".nl2br($row['b'])."<br>";
											if($row['bimg']!=NULL)
											{
												?><img src="<?php echo $row['bimg'] ?>"/><?php
												echo "<br>";
											}
										}
										else if($value==2)
										{
											?><input type="radio" name="<?php echo $row['qno'] ?>" value="2" /><?php echo " ".nl2br($row['c'])."<br>";
											if($row['cimg']!=NULL)
											{
												?><img src="<?php echo $row['cimg'] ?>"/><?php
												echo "<br>";
											}
										}
										else if($value==3)
										{
											?><input type="radio" name="<?php echo $row['qno'] ?>" value="3" /><?php echo " ".nl2br($row['d'])."<br>";
											if($row['dimg']!=NULL)
											{
												?><img src="<?php echo $row['dimg'] ?>"/><?php
												echo "<br>";
											}
										}
										else if($value==4 && $row['e']!=NULL)
										{
											?><input type="radio" name="<?php echo $row['qno'] ?>" value="4" /><?php echo " ".nl2br($row['e'])."<br>";
											if($row['eimg']!=NULL)
											{
												?><img src="<?php echo $row['eimg'] ?>"/><?php
												echo "<br>";
											}
										}
									}
									$i=$i+1;
								}
							}
						}
						$sql="UPDATE `".$ename."_pps` SET `status`=1 WHERE itrixid='$itrixid'";
						mysql_query($sql,$con);
						?>
						<?php
					}
				?>
				<div id="dialog" title="Warning" style="display:none;">
				  <p>Don't Focus Away from the Window.<br>Test will be submitted automatically when the Count decrements to 0<br>Counts Left:<span id="count"></span></p>
				</div>
				<input type="password" style="display:none" value="<?php echo $ename ?>" name="ename">
				<input type="password" style="display:none" value="<?php echo $event ?>" name="event">
				<input type="password" style="display:none" value="<?php echo $itrixid ?>" name="itrixid">
				<input type="password" style="display:none" value="<?php echo $neg ?>" name="neg">
				<br><br>
				<input type="submit" value="Submit" class="btn btn-large btn-block btn-info"/>
				</form>
				</div>
				<!-- CONTENT HERE -->
				<!--
				<ul class="actions">
					<li><a href="#" class="button">Etiam posuere</a></li>
				</ul>
				-->
			</div>
			<div id="time"  style=" height:50; width:100; bottom:0; left:100; position:fixed; background-color:#F90006; color:#FFFFFF">
				<b>Time Left:</b>
				<span id="timer"></span>
			</div>
			<div id="copyright">
				<span>Copyright (c) 2014 Itrix'14. All rights reserved.</span>
				<span>Designed by Tech Team, Itrix'14</span>
			</div>
		</div>
</div>
<script type="text/javascript">$("input").uniform();$("select").not("btn").uniform();</script>
</body>
</html>