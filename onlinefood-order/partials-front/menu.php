<?php include('config/constants.php'); ?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <!-- Important to make website responsive -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Online Yemek Sipariş Sistemi</title>

    <!-- Link our CSS file -->
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/styles.css">
</head>

<body>
    <!-- Navbar Section Starts Here -->
    <section class="navbar">
        <div class="container">
            <div class="logo">
                <a href="#" title="Logo">
                    <img src="images/jahez_launch.png" alt="Restaurant Logo" class="img-responsive">
                </a>
            </div>

            <div class="menu text-right" style="font-size: 26px;">
                <ul>
                    <li>
                        <a href="<?php echo SITEURL; ?>">Ana Sayfa</a>
                    </li>
                    <li>
                        <a href="<?php echo SITEURL; ?>categories.php">kategoriler</a>
                    </li>
                    <li>
                        <a href="<?php echo SITEURL; ?>foods.php">yemeklerimiz</a>
                    </li>
                </ul>
            </div>

            <div class="clearfix"></div>
        </div>
    </section>
    <!-- Navbar Section Ends Here -->