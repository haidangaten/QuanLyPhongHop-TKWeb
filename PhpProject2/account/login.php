<?php
session_start();

if (!empty($_SESSION['username'])) {
    header("location:../../index.php?page=_home");
}
?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
        <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
        <title>Login to Conference register website </title>
        <meta name="description" content="Custom Login Form Styling with CSS3" />
        <meta name="keywords" content="css3, login, form, custom, input, submit, button, html5, placeholder" />
        <meta name="author" content="G7" />
        <link rel="shortcut icon" href="../favicon.ico"> 
        <link rel="stylesheet" type="text/css" href="css/style.css" />
        <script src="js/modernizr.custom.63321.js"></script>
        <!--[if lte IE 7]><style>.main{display:none;} .support-note .note-ie{display:block;}</style><![endif]-->
    </head>
    <body>
        <div class="container">

            <!-- Codrops top bar -->
            <div class="codrops-top">

                <strong>&laquo; Thiet ke va xay dung web: </strong>Group 7 Tran Trung Hieu- Nguyen Dinh Thai- Nguyen Duc Tien-Bui Ly Hai Dang 
            </div><!--/ Codrops top bar -->

            <header>

                <h1>Welcome to <strong>Conference register</strong> website</h1>
                <h2> <?php include '../database_connect/connect.php';?>
            <?php include '../src/_check_login.php'; ?> </h2>
            </header>

            <section class="main">
               
                <form class="form-1"  method="POST" action="">
                    <p class="field">
                        <input type="text" name="username" placeholder="Username">
                        <i class="icon-user icon-large"></i>
                    </p>
                    <p class="field">
                        <input type="password" name="password" placeholder="Password">
                        <i class="icon-lock icon-large"></i>
                    </p>
                    <p class="submit">
                        <button type="submit" name="btn_submit"><i class="icon-arrow-right icon-large"></i></button>
                    </p>
                </form>
                <script src='../jquery/min.js'></script>

            </section>
        </div>
    </body>
</html>