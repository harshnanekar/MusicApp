<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Invalid</title>
<style>
.navs{
width:300px;
margin-left:20px;
}
hr{
height:2px;
background-color:black;
}
.forms{
display:flex;
background:rgba(0,0,0,0.1);
margin-top:5%;
box-shadow:8px 8px 8px grey;
width:50%;
margin-left:25%;
}
.guitar{
width:300px;
}
p{
font-family:Times New Roman;
font-weight:bold;
font-size:20px;
}
input[type="text"]{
width:40%;
padding:3px;
margin-bottom:20px;

}
center{
padding-bottom:18px;
font-size:30px;
}
.submit{
width:90%;
padding:5px;
background-color:white;
margin-top:15px;
font-family:Times New Roman;
font-weight:bold;
font-size:18px;
border:solid black 1px;
}
.inval{
background:rgba(0,0,0,0.1);
width:25%;
margin-left:38%;
margin-top:20px;
box-shadow:8px 8px 8px grey;
}
h4{
font-size:20px;
font-family:Times New Roman;
text-align:center;
padding:10px;
}
</style>
</head>
<body>
<div class="nav">
<img class="navs" src="/resource/image/music.jpg" />
</div>
<hr/>
<div class="inval">
<h4>Invalid Credentials!!</h4>
</div>
<div class="forms">
<img class="guitar" src="/resource/image/guitar1.jpg" />&ensp;&ensp;&ensp;
<form method="post" action="/UserCtrl/logged">
<h2><center>Login Form</center></h2>
<p>
Enter the Username: <input type="text" name="username" /></br>
Enter the Password: <input type="password" name="password" /></br>
<input class="submit" type="submit" /></br></br>
<h3>Don't have an account ?<a href="/UserCtrl/register/">SignIn</a>&nbsp; | <a href="#" > Forgot Password</a></h3>
</p>
</form>
</body>
</html>