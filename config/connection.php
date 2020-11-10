<?php 

$connect = @mysqli_connect("localhost", "root", "", "users");

if(mysqli_connect_error() == true){
	echo "<div style='color:red'>Lỗi kết nối dữ liệu</div><br>";
} else {
	mysqli_query($connect, "SET CHARACTER SET UTF8");
}

?>