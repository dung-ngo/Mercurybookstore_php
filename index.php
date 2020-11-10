<?php
	session_start();
?>
<?php
	$output = "";
	if(!isset($_SESSION["user"])){
		$output = "
			<div>
				<h1>Chào mừng đến với Mercury bookstore</h1>
				<p>Bạn vui lòng đăng nhập để xem nội dung. Bấm vào <span style='font-weight:bold;'><a href='admin/user/login.php'>đây</a></span> để đăng nhập.</p>
				<p>Bạn chưa có tài khoản? Bấm vào <span style='font-weight:bold;'><a href='admin/user/signup.php'>đây</a></span> để đăng ký</p>
			</div>

			";
	} else {
		header("location: home.php");
	}
?>

<!DOCTYPE html>
<html>
	<head>
		<title>Mercury bookstore</title>
		<link rel="stylesheet" href="asset/style.css" />
        <link rel="icon" href="img/book.png">
	</head>

	<body>
		<a href="admin/user/login.php">Trang Đăng nhập </a>|
		<a href="admin/user/signup.php">Trang Đăng ký</a>
		<div>
			<?php echo $output; ?>	
		</div>
	</body>
</html>