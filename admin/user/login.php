<?php 
session_start();
require_once("../../config/connection.php");

$output = "";
if(isset($_POST["loginBtn"])){
	$username = $_POST["userTxt"];
	$password = $_POST["passTxt"];

	if($username == "" or $password == ""){
		$output = "Bạn chưa nhập đủ thông tin";
	} else {
		$sql = "select * from users where username = '$username' and password = '$password' ";
		$query = mysqli_query($connect, $sql);


		$num_rows = mysqli_num_rows($query);
		if($num_rows == 0){
			$output = "Thông tin chưa chính xác. Vui lòng nhập lại!";
		} else {
			$_SESSION["user"] = $username;
			$_SESSION["pass"] = $password;

			header("location: ../../index.php");
		}
	}
}


?>
<html>
	<head>
		<title>Mercury bookstore</title>
		<meta charset="UTF-8">
		<link rel="stylesheet" href="../../asset/style.css" />
      	<link rel="icon" href="../../img/book.png">
	</head>
	<body>
		<a href="../../index.php">Trang Chủ </a>|
		<a href="signup.php">Trang Đăng ký</a>

		<fieldset style="width: 300px; margin-top: 30px;">
			<legend><b>Đăng nhập</b></legend>
			<form action="login.php" method="post">
				<table>
					<tr>
						<td>Tên đăng nhập </td>
						<td><input type="text" name="userTxt"></td>
					</tr>
					<tr>
						<td>Mật khẩu </td>
						<td><input type="password" name="passTxt"></td>
					</tr>
					<tr>
						<td colspan="2" align="center"><input type="submit" name="loginBtn" value="Đăng nhập"></td>
					</tr>
				</table>
			</form>
		</fieldset>
	</body>
</html>