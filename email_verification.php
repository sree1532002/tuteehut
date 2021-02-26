<?php
$con=mysqli_connect('localhost','root','');
mysqli_select_db($con,'tuteehut');
$email=mysqli_real_escape_string($con,$_POST['em']);
$sql="select * from user_details where Email='$email'";
$temp=mysqli_query($con,$sql);
$val=mysqli_num_rows($temp);
if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
 echo '2';
}
else
{
if($val==0){
	echo '1';
}
else
{
	echo '0';
}
}
?>
