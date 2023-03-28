<?php
ob_start();
session_start();
include_once('__autoload.php');
include_once('../functions/database.php');
$action = new action_page();//echo phpversion();die;
$acc = new action_account();
$order = new action_order();
if($acc->isLoginAdmin()){
	include_once('admin.php');
}else{
	include_once('Login.php');
}

