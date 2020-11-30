<?php
session_start();
session_destroy();
//redirect page to adminlogin.php
header('location:adminlogin.php');
?>