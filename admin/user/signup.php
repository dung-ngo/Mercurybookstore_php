<?php
	require_once("../../config/connection.php");

	$output = "";
	if(isset($_POST["submitBtn"])){
		$fname = $_POST["fnameTxt"];
		$lname = $_POST["lnameTxt"];
		$email = $_POST["emailTxt"];
		$user = $_POST["userTxt"];
		$pass = $_POST["passTxt"];

		if($fname=="" | $lname=="" | $email=="" | $user=="" | $pass=="" ){
			$output = "Vui lòng nhập đủ thông tin";
		} else {
			$sql_check = "select * from users where username = '$user' and password = '$pass' ";
			$query_check = mysqli_query($connect, $sql_check);

			$num_rows = mysqli_num_rows($query_check);
			if($num_rows > 0){
				$output = "Tài khoản đã tồn tại";
			} else {
				$sql = "insert into users(firstname, lastname, email, username, password)
								values('$fname', '$lname', '$email', '$user', '$pass') ";
				$query = mysqli_query($connect, $sql);

				$output = "Đăng ký thành công | <a href='login.php'>Đăng nhập?</a>";
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
		<a href="login.php">Trang Đăng nhập</a>

		<h1>Trang Đăng ký</h1>
		<fieldset style="width: 300px;">
			<legend><strong>Form Đăng ký</strong></legend>
			<form action="signup.php" method="post">
				<table>
					<tr>
						<td>Tên</td>
						<td style="padding-left: 20px;"><input type="text" name="fnameTxt"></td>
					</tr>
					<tr>
						<td>Họ</td>
						<td style="padding-left: 20px;"><input type="text" name="lnameTxt"></td>
					</tr>
					<tr>
						<td>Email</td>
						<td style="padding-left: 20px;"><input type="email" name="emailTxt"></td>
					</tr>
					<tr>
						<td>Tên đăng nhập</td>
						<td style="padding-left: 20px;"><input type="text" name="userTxt"></td>
					</tr>
					<tr>
						<td>Mật khẩu</td>
						<td style="padding-left: 20px;"><input type="password" name="passTxt"></td>
					</tr>
					<tr>
						<td colspan="2"><span style="color: red;"><?php echo $output; ?></span></td>
					</tr>
					<tr>
						<td colspan="2" align="center" style="padding-top: 10px;"><input type="submit" name="submitBtn" value="Đăng ký"></td>
					</tr>
				</table>
			</form>
		</fieldset>	
	</body>
</html>