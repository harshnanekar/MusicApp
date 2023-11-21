<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
.imgs{
width:200px;
}
.navs{
width:250px;
}
hr{
height:2px;
background-color:black;
}
.navbar{
display:flex;
}
.mainimag{
display:flex;
flex-wrap:wrap;
}
.imgs{
margin-left:10px;
border-radius:100px;
box-shadow:8px 8px 8px grey;
}
center{
font-size:20px;
color:black;
font-family:cursive;
margin-top:10px;
font-weight:bold;
}
a{
text-decoration:none;
}
</style>
</head>
<body>
<div class="navbar">
<img class="navs" src="/resource/image/music.jpg"/>
</div>
<hr/>
<div class="mainimag">
<c:forEach var="daos" items="${dao }">
<div class="imag">
<a href="/Songs/mainmusic?name=${daos.getMusic() }" ><img class="imgs" src=${daos.getMusicPhoto() } ><center>${daos.getSong() }</center></img> </a>
</div>
</c:forEach>
</div>
</body>
</html>