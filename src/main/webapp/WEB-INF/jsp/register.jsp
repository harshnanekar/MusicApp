<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.4/angular.js"></script>
<script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.3.1.min.js">
</script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register</title>
<style>
.nav{
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
input[type="email"]{
width:40%;
padding:3px;
margin-bottom:20px;

}
input[type="password"]{
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
</style>
<script type="text/javascript">
function shows(){
	var x=document.getElementById("spass");
	if(x.type==="password"){
		x.type="text";
	}else{
		x.type="password";
	}
}
</script>
</head>
<body>
<div>
<img class="nav" src="/resource/image/music.jpg" />
</div>
<hr/>
<div class="forms">
<img class="guitar" src="/resource/image/guitar1.jpg" />&ensp;&ensp;&ensp;
<form method="post" action="/UserCtrl/registered">
<h2><center>Registration Form</center></h2>
<p>Enter the Firstname: <input type="text" name="firstname" /></br>
Enter the Lastname: <input type="text" name="lastname" /></br>
Enter the Email-Id: <input type="email" name="email" /></br>
Enter the Username: <input type="text" name="username" /></br>
Enter the Password: <input id="spass" type="password" name="password" ><input type="checkbox" 
 onclick="shows()"></input></br>
<input class="submit" type="submit" />
</p>
</form>
</div>
</body>
</html>