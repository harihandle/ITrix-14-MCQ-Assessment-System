<html>
<head>
	<title>Add Questions</title>
	<link rel="shortcut icon" type=image/x-icon href="images/pic02.jpg">
</head>
<body>
	<h3>ADD QUESTIONS</h3>
	<form action="process.php" method="post" onSubmit="return validate();" enctype="multipart/form-data">
		<?php
			$ename=$_POST['ename'];
			$event=$_POST['event'];
			?>
			<h4>Event Name: <?php echo $event ?></h4>
			<input type="password" style="display:none" value="<?php echo $ename ?>" name="ename">
			<input type="password" style="display:none" value="<?php echo $event ?>" name="event">
			<?php
		?>
		Question:<br />
		<textarea id="question" name="question" rows="6" cols="50" required></textarea><br />
		<label for="qimg">Question Image(Optional):</label>
		<input type="file" name="file[]"><br />
		
		Difficulty:<br />
		<input type="radio" name="difficulty" value="0" /> Easy<br />
		<input type="radio" name="difficulty" value="1" /> Moderate<br />
		<input type="radio" name="difficulty" value="2" /> Hard<br />
		
		Option A:<br />
		<textarea id="a" name="a" rows="4" cols="50" required></textarea><br />
		<label for="aimg">Image A(Optional):</label>
		<input type="file" name="file[]"><br />
		
		Option B:<br />
		<textarea id="b" name="b" rows="4" cols="50" required></textarea><br />
		<label for="bimg">Image B(Optional):</label>
		<input type="file" name="file[]"><br />
		
		Option C:<br />
		<textarea id="c" name="c" rows="4" cols="50" required></textarea><br />
		<label for="cimg">Image C(Optional):</label>
		<input type="file" name="file[]"><br />
		
		Option D:<br />
		<textarea id="d" name="d" rows="4" cols="50" required></textarea><br />
		<label for="dimg">Image D(Optional):</label>
		<input type="file" name="file[]"><br />
		
		Option E:<br />
		<textarea id="e" name="e" rows="4" cols="50"></textarea><br />
		<label for="eimg">Image E(Optional):</label>
		<input type="file" name="file[]"><br />
		
		Answer:<br />
		<input type="radio" name="ans" value="0" /> A<br />
		<input type="radio" name="ans" value="1" /> B<br />
		<input type="radio" name="ans" value="2" /> C<br />
		<input type="radio" name="ans" value="3" /> D<br />
		<input type="radio" name="ans" value="4" /> E<br />
		<input type="submit" value="ADD"/>
	</form>
</body>
</html>