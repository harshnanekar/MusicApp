<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.4/angular.js"></script>
<script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.3.1.min.js">
</script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<title>Main</title>
<style>
.navbar{
display:flex;
}
li{
display:inline-block;

}
img{
width:300px;
margin-left:20px;
}
#a{
text-decoration:none;
margin-left:1300%;
color:black;
font-size:20px;
font-weight:bold;
font-family:Helvetica;

}
#as{
text-decoration:none;
margin-left:1650%;
color:black;
font-size:20px;
font-weight:bold;
font-family:Helvetica;
}
hr{
height:2px;
background-color:black;
}
.nav2{
display:flex;
margin-top:10%;
justify-content:center;
}
.simage{
animation:animation 5s linear;
width:400px;
height:160px;
}
h1{
font-size:50px;
font-family:Helvetica;
margin-top:3.5%;
}
@keyframes animation {
      0% {
        opacity: 0;
        left: -700px;
        
      }

      100% {
        opacity: 1;
        left: 0;
      }
    }
    
 .simage1{
 width:300px;
 }
 em{
 margin-left:38%;

 font-size:35px;
 font-weight:bold;
 }
</style>
</head>
<body>
<div class="navbar">
<img src="/resource/image/music.jpg" />
<ul>
<li><a id="as" href="/UserCtrl/register">SignIn</a></li>
<li><a id="a" href="/UserCtrl/login" >LogIn</a></li>
</ul>
</div>
<hr/>
<div class="nav2">
<img class="simage1" src="/resource/image/waves.jpg" />
<h1>Welcome To&ensp;</h1><img class="simage" src="/resource/image/apna.jpg" />
</div>
<em>"The Perfect Place For Music Heaven"</em>
</body>
</html>