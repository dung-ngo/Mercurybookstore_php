<?php
	session_start();
?>
<?php
	if(!isset($_SESSION["user"])){
		header("location: index.php");
	} else {
		$user = $_SESSION["user"];

		include_once('config/database_book.php');
		# =============Lấy dữ liệu thể loại sách từ DB==================
		$connection = mysqli_connect($server, $svuser, $svpass, $dbname);
		
		if(mysqli_connect_errno()==true){
			$errMsg = mysqli_connect_error();
			echo "<p style='color: red;'>Lỗi kết nối. $errMsg</p>";
		} 

		mysqli_query($connection, "SET CHARACTER SET utf8");

		$sql = "select * from theloaisach order by TenTL";

		$data = mysqli_query($connection, $sql);

		# Nhận/ xử DL nếu có
		$htmlDanhMuc = "";
		while ($dongDuLieu = mysqli_fetch_array($data, MYSQLI_ASSOC)){
			$idTL = $dongDuLieu["IDTL"];
			$tenTL = $dongDuLieu["TenTL"];
			$url = "<a href='home.php?tl=$idTL'>$tenTL</a>";
			$htmlDanhMuc .= "<p>$url</p>";
		}
	 
		# =============Lấy dữ liệu đầu sách theo TL từ DB==================
		if(isset($_GET['tl']))
			$tl = $_GET['tl'];
		else
			$tl = '';

		# Câu lệnh SQL lấy dữ liệu
		$sql = "select IDSach, TenSach, URLHinh, GiaBan, SoLuong from sach where ThuocTL='$tl'";

		# Thực hiện lệnh SQL qua PHP
		$data = mysqli_query($connection, $sql);

		# Nhận/ xử DL nếu có
		$htmlDSSach = "";
		while ($dongDuLieu = mysqli_fetch_array($data, MYSQLI_ASSOC)){
			$idS = $dongDuLieu["IDSach"];
			$tenS = $dongDuLieu["TenSach"];
			$urlHinh = $dongDuLieu["URLHinh"];
			$giaS = $dongDuLieu["GiaBan"];
			$slgS = $dongDuLieu["SoLuong"];
			$urlEdit = "admin/bookEdit.php?bid=$idS&tl=$tl";

			$htmlDSSach .= "
				<div style='padding: 20px;'>
					<div class='dm' style='float: left; width: 10%'>
						<img src='$urlHinh' width='100%';/>
					</div>
					<div class='sach' style='float: left; padding-left: 4%'>
						<b>$tenS</b> <br/>
						<span>Giá bán: $giaS</span> <br/>
						<span>Số lượng: $slgS</span> <br/>
						<hr>
						<a href='$urlEdit' id='bEdit'>>> Hiệu chỉnh</a>
					</div>
					<div style='clear:both'></div>
				</div>
			";
		}
		mysqli_close($connection);
	}
?>

<!DOCTYPE html>
<html>
<head>
	<title>Mercury bookstore</title>
	<link rel="stylesheet" href="asset/style.css"/>
  	<link rel="icon" href="img/book.png">
</head>
<body>
	<div class="top-info">
		<ul>
			<li>Chào <span style="color:blue;font-weight: bold;"><?php echo $user; ?> </span></li> |
			<li>
				<form action='admin/user/update.php' method='post'>
	 				<input class="decorBtn" type='submit' name='updateBtn' value='Tùy chỉnh'> |
				</form>
			</li>
			<li>
				<form action='admin/user/logout.php' method='post'>
	 				<input class="decorBtn" type='submit' name='logout' value='Đăng xuất'>
				</form>
			</li>
		</ul>
	</div>
	<h1>Chào mừng đến với Mercury bookstore</h1>
	<div class="book-content">
		<div style="float: left;  background: lightblue; padding: 30px;">
			<b>Danh mục sách</b>
			<?php echo $htmlDanhMuc; ?>
		</div>
		<div style="float: left;  padding: 20px 20px 20px 80px">
			<b>Các đầu sách tương ứng</b>
			<?php echo $htmlDSSach; ?>
		</div>
	</div>
</body>
</html>
