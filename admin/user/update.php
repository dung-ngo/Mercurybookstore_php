<?php 
session_start();
require_once("../../config/connection.php");

if(!isset($_POST["updateBtn"])){
	header("location: login.php");
} else {
	$user = $_SESSION["user"];

	$sql = "select * from users where username = '$user' ";
	$query = mysqli_query($connect, $sql);

	while($row = mysqli_fetch_array($query, MYSQLI_ASSOC)){
		$fname = $row["firstname"];
		$lname = $row["lastname"];
		$email = $row["email"];
		$pass = $row["password"];
	}
}

?>

<html>
	<head>
      	<title>Mercury bookstore</title>
      	<link rel="icon" href="img/book.png">
		<link rel="stylesheet" href="asset/style.css" />
	</head>
	<h1>Hiệu chỉnh thông tin</h1>
	<div class="updateInfo">
		<form action="update_save.php" method="post">
			Tên: <input type="text" name="fnameTxt" value="<?php echo $fname; ?>"><br>
			Họ: <input type="text" name="lnameTxt" value="<?php echo $lname; ?>"><br>
			Email: <input type="text" name="emailTxt" value="<?php echo $email; ?>"><br>
			Mật khẩu: <input type="text" name="passTxt" value="<?php echo $pass; ?>"><br>
			<input class="updBtn" type="submit" name="updateBtn" value="Lưu thông tin"><br>
		</form>

		<form action="../../home.php">
			<input class="updBtn" type="submit" name="back" value="Thoát">
		</form>

		<form action="delete.php" method="post">
			<input class="updBtn" type="submit" name="delete" value="Xóa tài khoản">
		</form>	
	</div>
</html>