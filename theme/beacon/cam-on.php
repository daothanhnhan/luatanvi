<?php 
	function nhan_tai_lieu () {
		$action_email = new action_email();
		global $conn_vn;
		if (isset($_POST['dk_tailieu'])) {
			$name = $_POST['name'];
			$email = $_POST['email'];
			$phone = $_POST['phone'];

			$sql = "INSERT INTO nhan_tai_lieu_1 (name, email, phone) VALUES ('$name', '$email', '$phone')";
			$result = mysqli_query($conn_vn, $sql);
			if ($result) {
				if ($email != '') {
					$noidung = "
						<ul>
							<li>Tên: $name</li>
							<li>Số điện thoại: $phone</li>
							<li>Email: $email</li>
						</ul>
					";
					$action_email->email_send($email, "Đăng ký nhận tài liệu", $noidung);
				}
				echo '<script>alert(\'Bạn đã đăng ký nhận tin thành công.\')</script>';
			} else {
				echo '<script>alert(\'Có lỗi xảy ra.\')</script>';
			}
		}
	}
	nhan_tai_lieu();
?>
<!-- <script>alert('Có lỗi xảy ra.')</script> -->
<div class="container">
	<h1>Cám ơn</h1>
</div>