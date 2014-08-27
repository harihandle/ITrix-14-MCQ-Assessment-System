<html>
<head>
	<title>Add Sponsor Logo</title>
	<link rel="shortcut icon" type=image/x-icon href="images/pic02.jpg">
</head>
<body>
	<h3>ADD SPONSOR LOGO</h3>
	<form action="addSponsorValidation.php" method="post" enctype="multipart/form-data">
		<?php
			$ename=$_POST['ename'];
			$event=$_POST['event'];
			?>
			<h4>Event Name: <?php echo $event ?></h4>
			<input type="password" style="display:none" value="<?php echo $ename ?>" name="ename">
			<input type="password" style="display:none" value="<?php echo $event ?>" name="event">
			<?php
		?>
		<label for="img">Image:</label>
		<input type="file" name="file[]" required><br /><br />
		<input type="submit" value="Submit" />
	</form>
</body>
</html>