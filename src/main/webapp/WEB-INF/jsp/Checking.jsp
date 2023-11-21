<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="ISO-8859-1">
<title>Songs</title>
<style>
.imag{
width:200px;
border-radius:100px;
margin-left:10px;
margin-right:10px;
box-shadow:8px 8px 8px grey;
}
.flexy{
display:flex;
flex-wrap:wrap;
}
.asit{
text-decoration:none;
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
margin-top:20px;
color:black;
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
padding-top:40px;
}
</style>
</head>
<body>
<div class="navbar">
<img class="navs" src="/resource/image/music.jpg" />
<img class="logos" src="/resource/image/anilogo.jpg" />
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
<div class="flexy">
<c:forEach var="ds" items="${dao }">
<a class="asit" href="" ><img class="imag" src="${ds.getSpic()}"><center>${ds.getLord()}</center></img></a>
</c:forEach>
</div>
</div>
</body>
</html>