<?php
session_start();
if(!isset($_SESSION['admin'])){
    header("location: index.php");
}
else
{  
$connect = mysqli_connect("localhost", "root", "", "isaccs");
if(isset($_POST["submit"]))
{
 if($_FILES['file']['name'])
 {
  $filename = explode(".", $_FILES['file']['name']);
  if($filename[1] == 'csv')
  {
   $handle = fopen($_FILES['file']['tmp_name'], "r");
   while($data = fgetcsv($handle))
   {
    $item1 = mysqli_real_escape_string($connect, $data[0]);  
	$item2 = mysqli_real_escape_string($connect, $data[1]);
	$item3 = mysqli_real_escape_string($connect, $data[2]);  
	$item4 = mysqli_real_escape_string($connect, $data[3]);
	$item5 = mysqli_real_escape_string($connect, $data[4]);  
	$item6 = mysqli_real_escape_string($connect, $data[5]);
	$item7 = mysqli_real_escape_string($connect, $data[6]);  
	
                $query = "INSERT into apt_mcqbank(id, question, opt_a, opt_b, opt_c, opt_d, ans) values('$item1','$item2','$item3','$item4','$item5','$item6','$item7')";
                mysqli_query($connect, $query);
   }
   fclose($handle);
   echo "<script>alert('Import done');</script>";
  }
 }
}
}
?>  
<!DOCTYPE html>  
<html>  
 <head>  
  <title>Aptitude Question Import</title>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>  
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
 </head>  
 <body>  
  <h3 align="center">Aptitude Domain Import MCQ Question Bank</h3><br />
  <form method="post" enctype="multipart/form-data">
   <div align="center">  
    <label>Select CSV File:</label>
    <input type="file" name="file" />
    <br />
    <input type="submit" name="submit" value="Import" class="btn btn-info" />
   </div>
  </form>
 </body>  
 <script>
    if ( window.history.replaceState ) {
        window.history.replaceState( null, null, window.location.href );
    }
</script>
</html>
