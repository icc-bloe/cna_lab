<html>
<head>
	<title>Hello visitor!</title>
</head>
<body>
	<h1>This is just a web page...</h1>
	<?php 
	  if($_ENV["HOSTNAME"]) {
	?>
	    <h3>My hostname is <?php echo $_ENV["HOSTNAME"]; ?> </h3>
	<?php 
	  } 
	?>
</body>
</html>