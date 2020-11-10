<?php 
session_start();
require_once("../../config/connection.php");

if(!isset($_POST["delete"])){
	header("location: ../index.php");
} else {
	$user = $_SESSION["user"];

	$sql = "delete from users where username = '$user' ";
	$query = mysqli_query($connect, $sql);

	$_SESSION["user"] = null;
	$_SESSION["pass"] = null;

	header("location: login.php");
}

?>