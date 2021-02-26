<?php

$con=mysqli_connect('localhost','root','');
mysqli_select_db($con,'tuteehut');


$feedback=mysqli_real_escape_string($con,$_POST['feedback']);


$sql="insert into feedback(feedback) values ('$feedback')";
$result=mysqli_query($con,$sql);

echo "<script>window.location.href = 'index.php';</script>";
//echo $_SESSION['user_id'];
?>