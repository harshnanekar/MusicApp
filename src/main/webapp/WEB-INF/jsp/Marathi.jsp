<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
.imgas{
width:200px;
margin-left:30px;
border-radius:100px;
box-shadow:8px 8px 8px grey;
}
.flexb{
display:flex;
flex-wrap:wrap;
}
.navs{
width:250px;
}
.logos{
width:500px;
margin-left:20%;
}
hr{
height:2px;
background-color:black;
}
center{
font-family:cursive;
font-weight:bold;
font-size:20px;
color:black;
margin-left:30px;
margin-top:20px;
}
a{
text-decoration:none;
}
</style>
</head>
<body>
<div class="navbar">
<img class="navs" src="/resource/image/music.jpg" />
<img class="logos" src="/resource/image/anilogo.jpg" />
</div>
<hr/>
<div class="flexb">
<c:forEach var="doas" items="${dao }">
<a class href="/Songs/mainmusic?name=${doas.getMusic()}" ><img class="imgas" src=${doas.getMusicPhoto() }><center>${doas.getSong()}</center></img></a>
</c:forEach>
</div>
</body>
</html>