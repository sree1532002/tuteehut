<?php
session_start();
if(isset($_SESSION['user_id'])||isset($_SESSION['developer'])){
$conn=mysqli_connect('localhost','root','');
mysqli_select_db($conn,'tuteeHUT');
if(isset($_SESSION['developer']))
{
echo "<script>window.location.href = 'quiz_redirect.php';</script>";
}
else
{
$sql="SELECT * FROM log where user_id=$_SESSION[user_id] and event_id=$_SESSION[event]";
$result=mysqli_query($conn,$sql);
 
 $val_no=mysqli_num_rows($result);
 /*echo $_SESSION['user_id'];
 echo $_SESSION['event'];*/
 /*$h=not(isset($_SESSION['developer']));
 echo "<script>";
echo "alert('$h');";
  echo "</script>";}*/
 if($val_no==0)
 {
 echo "<script>window.location.href = 'https://www.payumoney.com/paybypayumoney/#/E9A6987953A2838815AA23DD2F7D6A73';</script>";
 }
 else
 {
	 $val = mysqli_fetch_assoc($result);
	 if($val['status']==0)
	 {
	 	echo "<script>window.location.href = 'quiz_redirect.php';</script>";
	 }
	else
	{
	//echo "<script>;alert("You have already attended the quiz");window.location.href = 'logged.php';</script>";
		echo "<script>";
	  echo "alert('You have already attended the quiz');";
	  echo "window.location.href = 'logged.php';";
	  echo "</script>";
	 }
}
}
}
else{
echo "<script>";
echo "alert('Please login/sign up to continue!');";
  echo "window.location.href = 'signup_page.php';";
  echo "</script>";

}
?>