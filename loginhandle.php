<head><link rel="icon" href="favicon.ico" type="image/icon type"></head>
<?php
session_start();

$con=mysqli_connect('localhost','root','');
mysqli_select_db($con,'tuteehut');


$email=mysqli_real_escape_string($con,$_POST['email']);
$pass=mysqli_real_escape_string($con,$_POST['password']);

if(strcmp($email,"developer@tuteehut.in")==0&&strcmp($pass,"developer@tutee")==0)
{
$_SESSION['email']="developer@tuteehut.in";
$_SESSION['name']="Developer";
$_SESSION['user_id']="0";
$_SESSION['phone'] = "0000000000";
$_SESSION['developer']="tuteehut";
}
else{
$sql="select * from user_details where Email='$email' and password='$pass'";
$result=mysqli_query($con,$sql);
$temp=mysqli_fetch_assoc($result);
$_SESSION['email']=$temp['Email'];
$_SESSION['name']=$temp['Name'];
$_SESSION['user_id']=$temp['ID'];
$_SESSION['phone'] = $temp['phone'];
}
echo "<script>window.location.href = 'logged.php';</script>";
//echo $_SESSION['user_id'];
?>
