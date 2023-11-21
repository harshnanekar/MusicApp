<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Reset</title>
<style>
.nav{
width:300px;
}
hr{
height:2px;
background-color:black;
}
.lock{
width:150px;
margin-left:35%;
}
.forgot{
border:solid black 1px;
width:30%;
margin-left:35%;
margin-top:50px;
box-shadow:8px 8px 8px grey;
border-radius:20px;
background-color:white
}

input[type="email"]{
padding:5px;
margin:10px;
}
input[type="text"]{
padding:5px;
margin:10px;
}
input[type="password"]{
padding:5px;
margin:10px;
}
input[type="submit"]{
padding:5px;
font-family:Times New Roman;
font-size:18px;
font-weight:bold;
margin:20px;
width:80%;
}
p{
font-family:Times New Roman;
font-size:20px;
font-weight:bold;
margin-left:20px;
}
</style>
</head>
<body>
<div class="nav">
<img class="navs" src="/resource/image/music.jpg" />
</div>
<hr/>
<div class="forgot">
<form method="post" action="/UserCtrl/forgotting" >
<img class="lock" src="/resource/image/lock1.jpg" /></br>
<p>
Enter the Email-Id: <input type="email" name="email"  /></br>
Enter the New Password: <input type="password" name="password" /></br>
Enter the otp: <input type="text" name="otp" /></br>
<input type="submit" value="Reset password"/>

</p>
</form>
</div>
</body>
</html>