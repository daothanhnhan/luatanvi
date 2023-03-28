<?php 
	$id = $_GET['id'];
	$sql = "DELETE FROM bang_khoa_hoc WHERE id = $id";
	$result = mysqli_query($conn_vn, $sql);
	header('location: index.php?page=bang-khoa-hoc');
?>