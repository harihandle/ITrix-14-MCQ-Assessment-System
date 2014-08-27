<html>
<head>
	<title>Add Sponsor Logo</title>
	<link rel="shortcut icon" type=image/x-icon href="images/pic02.jpg">
</head>
<body>
	<?php
			$ename=$_POST['ename'];
			$event=$_POST['event'];
			
			move_uploaded_file($_FILES["file"]["tmp_name"][0],"$ename/pic01.jpg");
			echo "DONE<br>";
	?>
	<a href="organiser.php">Organiser</a>
</body>
</html>