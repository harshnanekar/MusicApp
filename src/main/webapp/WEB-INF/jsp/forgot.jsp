<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Forgot Password</title>
<style>
.nav{
width:300px;
}
hr{
height:2px;
background-color:black;
}
.lock{
width:180px;
margin-left:30%;
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
h1,h3{
text-align:center;
}
input[type="email"]{
padding:5px;
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
margin-left:50px;
}
</style>
</head>
<body>
<div class="nav">
<img class="navs" src="/resource/image/music.jpg" />
</div>
<hr/>
<div class="forgot">
<form method="post" action="/UserCtrl/forgotted" >
<img class="lock" src="/resource/image/lock1.jpg" /></br>
<h1>Forgot Password ?</h1>
<h3>You can reset your password here </h3></br>
<p>
Enter the Email-Id: <input type="email" name="email"  /></br>
<input type="submit" value="Send my password"/>

</p>
</form>
</div>
</body>
</html>