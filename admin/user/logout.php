<?php 
session_start();

if(isset($_SESSION["user"])){
	$_SESSION["user"] = null;
	$_SESSION["pass"] = null;

	header("location: login.php");
} else {
	header("location: ../../index.php");
}


?>