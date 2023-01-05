<?php 

    include('../config/constants.php'); 
    include('login-check.php');

?>


<html>
    <head>
        <title> Elektronik restoran sistemi</title>

        <link rel="stylesheet" href="../css/admin.css">
    </head>
    
    <body>
        <!-- Menu Section Starts -->
        <div class="menu text-center">
            <div class="wrapper">
                <ul>
                    <li><a href="index.php"> kontrol paneli</a></li>
                    <li><a href="manage-category.php">Kategoriler</a></li>
                    <li><a href="manage-food.php"> Yemekler</a></li>
                    <li><a href="manage-order.php"> İstekler bölümü</a></li>
                    <li><a href="manage-admin.php"> Yönetici yönetimi</a></li>
                    <li><a href="logout.php">Oturumu kapat</a></li>
                </ul>
            </div>
        </div>
        <!-- Menu Section Ends -->