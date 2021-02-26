<?php
$con=mysqli_connect('localhost','root','');
mysqli_select_db($con,'tuteehut');
$email=mysqli_real_escape_string($con,$_POST['em']);
$password=mysqli_real_escape_string($con,$_POST['password']);
if(strcmp($email,"developer@tuteehut.in")==0&&strcmp($password,"developer@tutee")==0)
{
	echo '1';

}
else
{

$sql="select * from user_details where Email='$email' and password='$password'";
$temp=mysqli_query($con,$sql);
$val=mysqli_num_rows($temp);
if($val==0){
	echo '0';
}
else
{
	echo '1';
}
}

?>
