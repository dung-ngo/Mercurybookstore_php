<?php 
session_start();
require_once("../../config/connection.php");

if(!isset($_POST["updateBtn"])){
	header("location: ../../index.php");
}
$user = $_SESSION["user"];

$fname = $_POST["fnameTxt"];
$lname = $_POST["lnameTxt"];
$email = $_POST["emailTxt"];
$pass = $_POST["passTxt"];

$sql = "update users set 
						firstname='$fname',
						lastname='$lname',
						email='$email',
						password='$pass' 
					where username = '$user' ";
$query = mysqli_query($connect, $sql);

header("location: ../../index.php");
?>