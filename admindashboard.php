<?php
session_start();
if(!isset($_SESSION['admin'])){
    header("location: index.php");
}
?>
<!doctype html>
<html lang="en">
  <head>
  <style>
    
    .welcome{
        margin-top:200px;
    }
  </style>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- Additional CSS Files -->
<link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css">

<link rel="stylesheet" type="text/css" href="assets/css/font-awesome.css">

<link rel="stylesheet" href="assets/css/templatemo-softy-pinko.css">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    <title>Admin | Dash</title>
  </head>
  <body>
<!-- ***** Header Area Start ***** -->
<header class="header-area header-sticky">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <nav class="main-nav">
                        <!-- ***** Logo Start ***** -->
                        <a href="#" class="logo">
                            <img src="assets/images/logo.png" alt="ISA VIT"/>
                        </a>
                        
                        <!-- ***** Logo End ***** -->
                        <!-- ***** Menu Start ***** -->
                        <ul class="nav">
                            
                        </ul>
                        <a class='menu-trigger'>
                            <span>Menu</span>
                        </a>
                        <!-- ***** Menu End ***** -->
                    </nav>
                </div>
            </div>
        </div>
    </header>
    <!-- ***** Header Area End ***** -->
  <form method="POST">
  <div class="welcome container">
  <p><a href="d1_mcq.php">Import Technical Domain MCQ Question</a></p>
  <p><a href="d2_mcq.php">Import Design Domain MCQ Question</a></p>
  <p><a href="d3_mcq.php">Import Management Domain MCQ Question</a></p>
  <br>
  <p><a href="d1_lq.php">Import Technical Domain Long Answer Question</a></p>
  <p><a href="d2_lq.php">Import Design Domain Long Answer Question</a></p>
  <p><a href="d3_lq.php">Import Management Domain Long Answer Question</a></p>
  <br>
  <p><a href="apt_mcq.php">Import Aptitude MCQ Question</a></p>
  <p><a href="apt_lq.php">Import Aptitutde Long Answer Question</a></p>
  <p><a href="">Evaluate</a></p>
  <?php
    
    echo '<h3 ><a href="logout.php" class="btn btn-dark" style="width:55%;">Logout</a></h3></div>';
  
  ?>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>