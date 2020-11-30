<?php
    
    session_start();
    unset($_SESSION['questions']);
    $connect = mysqli_connect("localhost", "root", "", "isaccs");
    $usr_email=$_SESSION["user_email_address"];
    $d1=0;
    $d2=0;
    $d3=0;
    if(!isset($_SESSION['access_token']))
    {
        header('location: logout.php');
    }
    else{
        //IF APT is not attempted automatically push to the aptitude page
        $usremail=$_SESSION['user_email_address'];
        $sql = "SELECT apt FROM users WHERE email='$usremail'";
        $result = $connect->query($sql);

        if ($result->num_rows > 0) {
          // output data of each row
          while($row = $result->fetch_assoc()) {
            if($row["apt"]==0)
            {
              header('location: apt_welcome.php');
            }
          }
        } else {
          echo "First Login to your account";
        }
        
    }

?>
<?php
    $sql = "SELECT d1 FROM users WHERE email='$usr_email'";
    $result = $connect->query($sql);
  
  if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
      if($row["d1"]==1)
      {
        $d1=1;
      }
    
  }
}
    ?>
    <?php
    $sql = "SELECT d2 FROM users WHERE email='$usr_email'";
    $result = $connect->query($sql);
  
  if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
      if($row["d2"]==1)
      {
        $d2=1;
      }
    
  }
}
    ?>
    <?php
    $sql = "SELECT d3 FROM users WHERE email='$usr_email'";
    $result = $connect->query($sql);
  
  if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
      if($row["d3"]==1)
      {
        $d3=1;
      }
  }
}
    ?>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

    <title>Test</title>
    <style>
      .inactiveLink {
      pointer-events: none;
      cursor: default;
      }
    </style>
  </head>
  <body>
    
  <div class="container">
      <div class="row">
        <div class="col">
        <div class="card" style="width: 18rem;">
  <img src="..." class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title">Technical Domain</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="techtest.php" class="btn btn-<?php if($d1==1){echo "success inactiveLink";}else{echo "primary";}?>">
    <?php if($d1==1){echo "SUBMITTED";}else{echo "Take Test";}?>
    </a>
  </div>
</div>
        </div>
        <div class="col">
        <div class="card" style="width: 18rem;">
  <img src="..." class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title">Design Domain</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="designtest.php" class="btn btn-<?php if($d2==1){echo "success inactiveLink";}else{echo "primary";}?>">
    <?php if($d2==1){echo "SUBMITTED";}else{echo "Take Test";}?>
    </a>
  </div>
</div>
        </div>
        <div class="col">
        <div class="card" style="width: 18rem;">
  <img src="..." class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title">Management Domain</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="managementtest.php" class="btn btn-<?php if($d3==1){echo "success inactiveLink";}else{echo "primary";}?>">
    <?php if($d3==1){echo "SUBMITTED";}else{echo "Take Test";}?>
    </a>
  </div>
</div>
        </div>
</div>
</div>
<?php
$connect->close();
?>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
  </body>
</html>