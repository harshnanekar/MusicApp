<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
.bxs{
width:230px;
border-radius:100px;
margin-right:60px;
margin-left:10px;
box-shadow:8px 8px 8px grey;
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
center{
margin-top:10px;
font-family:cursive;
font-size:20px;
font-weight:bold;
}
.mainimg{
display:flex;
flex-wrap: wrap;
}
a{
text-decoration:none;
color:black;
}
</style>
</head>
<body>
<div class="navbar">
<img class="navs" src="/resource/image/music.jpg"/>
</div>
<hr/>
<div class="mainimg">
<c:forEach var="daos" items="${dao }">
<div class="imgs">
<a href="/Songs/mainmusic?name=${daos.getMusic() }"><img class="bxs" src=${daos.getMusicPhoto() } ><center>${daos.getSong() }</center></img></a></br>
</div>
</c:forEach>
</div>
</body>
</html>