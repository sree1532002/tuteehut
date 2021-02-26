<?php
/*check
*/
session_start();
include "config.php";
if(isset($_SESSION['event'])&& (isset($_SESSION['user_id'])||isset($_SESSION['developer']))  ){
  $sql="select * from log where user_id=$_SESSION[user_id] and event_id=$_SESSION[event]";
$temp=mysqli_query($con,$sql);
$val=mysqli_fetch_assoc($temp);

if(isset($val)||isset($_SESSION['developer']))
{
  if($val['status']==0 || isset($_SESSION['developer'])){
  
$quizid = $_SESSION['event'];
?>
<!DOCTYPE html>
<html lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>TuteeHUT | Quiz</title>
<head><link rel="icon" href="favicon.ico" type="image/icon type"></head>
<style>
  #ques{
    background-color: #010217;
    color:white;
    text-align: center; 
    border: 1.5px solid #010217;
  border-radius: 10px;
  }
  .try{
    padding:10%;
  }
  #qbox{
    border:10px double #010217;background-color: white;margin-top: 5%;margin-bottom: 5%;max-width: 60%
  }
  #qbutton{
    font-size: 18px;
    background-color: #010217;
    color:white;
    border: 1.5px solid #010217;
  border-radius: 10px;
  }
  @media only screen and (max-width: 768px) {
  /* For mobile phones: */
  #ques{
  background-color: #010217;
    color:white;
    text-align: center;
    align:center;
    border: 1.5px solid #010217;
  border-radius: 10px;
  font-size: 15px;
  margin-top:5%;
  }
  #qfont{
    font-size: 10px;
    padding:5%;
  }
  
  #qbox{
    border:5px double #010217;background-color: white;margin:10%;max-width: 80%;padding:5%;
  }
  #qbutton{
    font-size: 10px;
    background-color: #010217;
    color:white;
  }
}
</style>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
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
<style type="text/css">.scrollax-performance, .scrollax-performance *, .scrollax-performance *:before, .scrollax-performance *:after { pointer-events: none !important; -webkit-animation-play-state: paused !important; animation-play-state: paused !important; };</style><script type="text/javascript" charset="UTF-8" src="./StudyLab - Free Bootstrap 4 Template by Colorlib_files/common.js.download"></script><script type="text/javascript" charset="UTF-8" src="./StudyLab - Free Bootstrap 4 Template by Colorlib_files/util.js.download"></script><script type="text/javascript" charset="UTF-8" src="./StudyLab - Free Bootstrap 4 Template by Colorlib_files/AuthenticationService.Authenticate"></script></head>

<body style="background-color:#010217 ">
  <section class="ftco-section ftco-no-pb ftco-no-pt"  >
<div class="container" id = "qbox">
<div class="try" id = "qfont">

<?php
$query1 = "SELECT * FROM questions WHERE visibility = '1' AND quizid = '$quizid'" ;
$query2 = "SELECT * FROM fillups WHERE visibility = '1' AND quizid = '$quizid'";
$query3 = "SELECT * FROM connection WHERE visibility = '1' AND quizid = '$quizid'";
$result1 = mysqli_query($con,$query1);
$result2 = mysqli_query($con,$query2);
$result3 = mysqli_query($con,$query3);
?>
<style>
.myInput
{
   border-color:#ffffff;
}
.myInput:hover
{
   border-color:#ffffff;
}
.myInput:focus
{
   border-color:#ffffff;
}
.myInput:active
{
   border-color:#ffffff;
}
</style>
<section style="position:relative;padding-left: 0%;padding-top: 0%">

    <div class="container">
    <form action="result.php" method="post">
        <h3 id = "ques">Questions</h3><br>
        <?php
        static $i = 1;
        while($row = mysqli_fetch_assoc($result1)){
        ?>
            <p style="color:#010217;"><?php echo $i.". ".$row['question'];?></p>

            <input type="radio" name='<?php echo $row['id'];?>' value="1" id = "op1" required>
            <label><?php echo $row['option1'];?></label><br>

            <input type="radio"  name='<?php echo $row['id'];?>' value="2" id = "op2">
            <label><?php echo $row['option2'];?></label><br>

            <input type="radio" name='<?php echo $row['id'];?>' value="3" id = "op3">
            <label><?php echo $row['option3'];?></label><br>

            <input type="radio" name='<?php echo $row['id'];?>' value="4" id = "op4">
            <label><?php echo $row['option4'];?></label><br>
        <?php
        $i++;
        }
        ?>
        <?php

        while($row = mysqli_fetch_assoc($result2)){
        ?>
            <br><p style="color:#010217;"><?php echo $i.".  ".$row['question'];?></p>

            <input type="text" name="<?php echo $row['id'];?>" class = "myInput" placeholder="Your answer" id = "fill" required>
            <br>
       <?php
       $i++;
        }
        ?>
        <?php
        while($row = mysqli_fetch_assoc($result3)){
        ?>
            <br><p style="color:#010217;"><?php echo $i.".  ".$row['heading'];?></p>
            <img style="height: 10em;width: 10em" src = "admin_console/admin/uploaded_images/<?php echo $row['image1'];?>">
            <img style="height: 10em;width: 10em" src = "admin_console/admin/uploaded_images/<?php echo $row['image2'];?>"><br><br>
            <input type="text" name="<?php echo $row['id'];?>" class = "myInput" placeholder="Your answer" id = "fill" required>
            <br>
        <?php
        $i++;
        }
        ?>
          <br><div style = "text-align: center;"><input type="submit" value="Submit" id = "qbutton"class="btn btn-dark" /></div>
    </form>
    </div>
</section>
</div>
</div>
</section>
<?php
}
else{
  echo "<script>";
  echo "alert('You have already attempted the quiz!');";
  echo "window.location.href = 'logged_department.php';";
  echo "</script>";
}
}else {
  echo "<script>";
  echo "alert('This page cannot be accessed');";
  echo "window.location.href = 'logged_department.php';";
  echo "</script>";
}
}
else
{
  echo "<script>";
  echo "alert('Login/Sign up to continue!');";
  echo "window.location.href = 'login.php';";
  echo "</script>";
}
?>