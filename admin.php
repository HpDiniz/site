<?php

	if(!isset($_POST['u']) || !isset($_POST['p']) )
		header("Location: admin.html");

	$host = "localhost";
	$userbd = "root";
	$passbd = "";
	$banco = "admin";

	$conexao = mysqli_connect($host, $userbd, $passbd, $banco) or die(mysqli_error());

	mysqli_select_db($conexao, $banco);

	$username= $_POST['u'];
	$pass = $_POST['p'];
	$sql = mysqli_query($conexao, "SELECT * FROM adminlogin WHERE admin='$username' and senha='$pass'") or die(mysqli_error());
	$row = mysqli_num_rows($sql);

	if($row < 1)
		header("Location: admin.html");
	else{
		session_start();
		$_SESSION['user'] = $username;
		header("Location: painel.php");
	}


?>