<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="ISO-8859-1">
<title>Albums</title>
<style>
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
.mainimg{
width:210px;
border-radius:100px;
box-shadow:8px 8px 8px grey;
}
.flex{
display:grid;
grid-template-columns:auto auto auto auto;
column-gap:120px;
row-gap:20px;
}
.flexx{
display:flex;
}
.opt{
background:#FA8072;
width:15%;
}
.as{
text-decoration:none;
font-size:20px;
font-family:Helvetica;
color:white;
font-weight:bold;
margin-left:10px;

}
li{
padding:20px;
margin-right:10px;
}
ul{

list-style-type: none;
}
.albums{
display:grid;
grid-template-columns:auto auto 
}
a{
text-decoration:none;
}
center{
font-family:cursive;
margin-top:10px;
color:black;
font-size:20px;
font-weight:bold;
}
</style>
</head>
<body>
<div class="navbar">
<img class="navs" src="/resource/image/music.jpg" />
<img class="logos" src="/resource/image/anilogo.jpg" />
</div>
<hr/>

<div class="flexx">
<div class="opt">
<ul>
<li><a class="as" href="#"><span>&#127968;</span>Home</a></li>
<li><a class="as" href="#"><span>&#127925;</span>Artist</a></li>
<li><a class="as" href="/Songs//viewartist"><span>&#127932;</span>Albums</a></li>
<li><a class="as" href="#"><span>&#127926;</span>Playlist</a></li>
</ul>
</div>
&ensp;

<div class="flex">
<c:forEach var="daos" items="${dao }">
<div class="albums">
<a href="/Songs/viewpartalbums?name=${daos.getAlbumName() }">
<img class="mainimg" src="${daos.getAlbumPhoto() }" /></br>
<center>${daos.getAlbumName() }</center></a>
</div>
</c:forEach>
</div>
</div>
</body>
</html>
