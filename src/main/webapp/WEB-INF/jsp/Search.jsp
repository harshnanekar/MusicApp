<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="ISO-8859-1">
<title>Songs</title>
<style>
.yess{
width:85px;
border-radius:5px;
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
.checks{
display:flex;
background:white;
border:solid black 3px;
width:150%;
padding:10px;
margin-bottom:20px;
border-radius:20px;
margin-left:10px;
}
h3{
text-decoration:none;
font-family:cursive;
margin-left:80px;
font-size:20px;
}
.flex{
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
margin-bottom:20px;

}
li{
display:inline-block;
padding-bottom:40px;
}
</style>
</head>
<body>
<div class="navbar">
<img class="navs" src="/resource/image/music.jpg"/>
</div>
<hr/>
<div class="flex">
<div class="opt">
<ul>
<li><a class="as" href="#"><span>&#127968;</span>Home</a></li></br>
<li><a class="as" href="/Songs/viewartist"><span>&#127925;</span>Artist</a></li></br>
<li><a class="as" href="/Songs/viewalbums"><span>&#127932;</span>Albums</a></li></br>
<li><a class="as" href="/Songs/viewallsongs"><span>&#127926;</span>Songs</a></li></br>
<li><a class="as" href="#"><span>&#127926;</span>Playlist</a></li>
</ul>
</div> 
<div>
<c:forEach var="daos" items="${dao }">

<div class="checks">
<a href="/Songs/mainmusic?name=${daos.getMusic() } " ><img class="yess" src=${daos.getMusicPhoto() } /></a>
<h3>${daos.getSong()}</br></br>
</h3>
</div>
</c:forEach>
</div>
</div>
</body>
</html>