<html>
<head>
<title>Login</title>
</head>
<body>
<h1>Login</h1>
<?php
session_start();
$conn=mysqli_connect("localhost","root","","user");
if(isset($_REQUEST["submit"]))
{
$user=$_REQUEST["user"];
$_SESSION["user"]=$user;
header("location:welcome.php");
}
if(isset($_REQUEST["facebook"]))
{
header("location:http://www.facebook.com");
}
if(isset($_REQUEST["twitter"]))
{
header("location:http://www.twitter.com");
}

?>
<form method="post">
Username:
<input type="text" name="user" placeholder="Enter Username" title="Username" id="user">
<span id="name" style="color:red"></span>
<br><br>
Password:
<input type="password" name="pass" placeholder="Enter Password" title="Username" id="pass">
<span id="word" style="color:red"></span>
<br><br>
<input type="submit" name="submit" value="submit" style="border-radius:5px; height:40px; width:80px; background-color:green; font-weight:bold;"><br>
<h1> Or </h1>
<input type="submit" name="facebook" value="Log in with Facebook" style="border-radius:7px; height:40px; width:150px; background-color:blue; font-weight:bold;"><br><br>
<input type="submit" name="twitter" value="Log in with Twitter" style="border-radius:7px; height:40px; width:150px; background-color:yellow; font-weight:bold;"><br><br

</form>
</body>
</html>
