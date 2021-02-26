<?php
session_start(); 
if(isset($_SESSION['event'])){
$user_id = $_SESSION['user_id'];
$event_id = $_SESSION['event'];
$conn=mysqli_connect('localhost','root','');
mysqli_select_db($conn,'tuteeHUT');
$marks = $_SESSION['marks'];
$sql="UPDATE log SET status = 1 where user_id=$_SESSION[user_id] and event_id=$_SESSION[event]";
$result=mysqli_query($conn,$sql);
 ?>
<!DOCTYPE html>
<html lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>TuteeHUT | Thank you</title>
<head><link rel="icon" href="favicon.ico" type="image/icon type"></head>
<style>
  #qbutton{
    font-size:15px;
    color:white;
    background-color:#010217;
    text-align: center;
    border: 1.5px solid #010217;
  border-radius: 10px;
  padding:1%;
  }
  #whitebox{
    border:10px double #010217;background-color: white;max-width: 60%;margin:auto;padding:5%;margin-top:80px;
  }
  #tnq{
      font-size:50px;
      font-style: normal;
    }
    #textfont{
    font-size:40px;
  }
  @media only screen and (max-width: 768px) {
    #tnq{
      font-size:30px;
      font-style: normal;
    }
  #qbutton{
    font-size:12px;
    color:white;
    background-color:#010217;
    text-align: center;
    border: 3px solid #010217;
  border-radius: 10px;
  padding:1%;
  }
  #whitebox{
    border:5px double #010217;background-color: white;margin:10%;max-width: 80%;margin-top:130px;padding:7%;font-size:20px;
  }
  #textfont{
    font-size:20px;
  }
  }
</style>

<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link href="./StudyLab - Free Bootstrap 4 Template by Colorlib_files/css" rel="stylesheet">
<link rel="stylesheet" href="./StudyLab - Free Bootstrap 4 Template by Colorlib_files/font-awesome.min.css">
<link rel="stylesheet" href="./StudyLab - Free Bootstrap 4 Template by Colorlib_files/animate.css">
<link rel="stylesheet" href="./StudyLab - Free Bootstrap 4 Template by Colorlib_files/owl.carousel.min.css">
<link rel="stylesheet" href="./StudyLab - Free Bootstrap 4 Template by Colorlib_files/owl.theme.default.min.css">
<link rel="stylesheet" href="./StudyLab - Free Bootstrap 4 Template by Colorlib_files/magnific-popup.css">
<link rel="stylesheet" href="./StudyLab - Free Bootstrap 4 Template by Colorlib_files/bootstrap-datepicker.css">
<link rel="stylesheet" href="./StudyLab - Free Bootstrap 4 Template by Colorlib_files/jquery.timepicker.css">
<link rel="stylesheet" href="./StudyLab - Free Bootstrap 4 Template by Colorlib_files/flaticon.css">
<link rel="stylesheet" href="./StudyLab - Free Bootstrap 4 Template by Colorlib_files/style.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<style type="text/css">.scrollax-performance, .scrollax-performance *, .scrollax-performance *:before, .scrollax-performance *:after { pointer-events: none !important; -webkit-animation-play-state: paused !important; animation-play-state: paused !important; };</style><script type="text/javascript" charset="UTF-8" src="./StudyLab - Free Bootstrap 4 Template by Colorlib_files/common.js.download"></script><script type="text/javascript" charset="UTF-8" src="./StudyLab - Free Bootstrap 4 Template by Colorlib_files/util.js.download"></script><script type="text/javascript" charset="UTF-8" src="./StudyLab - Free Bootstrap 4 Template by Colorlib_files/AuthenticationService.Authenticate"></script></head>

<body style="background-color:#010217 ">
  <section class="ftco-section ftco-no-pb ftco-no-pt" style = "margin:auto;">
<div class="container" id = "whitebox">
<div class="try" style="padding:5%;">
  <div align="center">
<h3 class="display-4" id = "tnq">Thank You!</h3>
<p class="lead" id = "textfont"><strong>Submitted successfully</strong><br> Your score is <?php echo $marks?></p>
  <hr>
  <p style="color:#010217;">
    Having trouble?<br> <a href="mailto:info@tuteehut.com" style="color:#010217;">Contact us</a>
  </p>
  <p class="lead">
  <div style = "text-align: center;"><a href = "logged.php"><input type = "button"value="Continue to Homepage" id = "qbutton" /></div>
  </p>
</div>
</div>
</div>
</section>
<?php

}
else{
  echo "<script>";
  echo "alert('This page can't be accessed);";
  echo "window.location.href = 'events.php';";
  echo "</script>";
}
?>

