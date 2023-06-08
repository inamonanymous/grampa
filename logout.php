<?php
session_start();
session_destroy();
echo "
		<script>
		window.location.href='login.php';
		</script>
	";
?>
<h1>You have been signed out</h1>