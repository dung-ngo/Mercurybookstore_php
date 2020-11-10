<?php 
	include_once('../config/database_book.php');

	if(isset($_POST['bookID']) == false){
		header('location: ../index.php');
	}
	$bookID = $_POST["bookID"];
	$bTenSach = $_POST["bTenSach"];
	$bGiaBan = $_POST["bGiaBan"];
	$bSoLuong = $_POST["bSoLuong"];
	$bTheLoai = $_POST["bTheLoai"];
	$bURLHinh = $_POST["bURLHinh"];


	$connection = mysqli_connect($server, $svuser, $svpass, $dbname);
	
	if(mysqli_connect_errno()){
		$errMsg = mysqli_connect_error();
		echo "<p style='color: red;'>Lỗi kết nối. $errMsg</p>";
		exit();
	}

	mysqli_query($connection, "SET CHARACTER SET utf8");

	$sql = "Update Sach Set
				TenSach='$bTenSach',
				GiaBan=$bGiaBan,
				SoLuong=$bSoLuong,
				ThuocTL='$bTheLoai',
				URLHinh='$bURLHinh'
			where IDSach=$bookID ;";

	$data = mysqli_query($connection, $sql);
	$urlBack = "../home.php?tl=$bTheLoai";
	header("location: $urlBack");

	mysqli_close($connection);

?>
