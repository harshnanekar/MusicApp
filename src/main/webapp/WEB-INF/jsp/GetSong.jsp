<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="ISO-8859-1">
<title>Index</title>
<style>
li{
display:inline-block;

}
img {
width:200px;
display:flex;
justify-content:center;
border-radius:100px;
margin-bottom:10px;
}
.musics{
box-shadow:8px 8px 8px grey;
}
.songs{
display:flex;
}
audio::-webkit-media-controls-panel {
  background-color: coral;
}
.navbar{
display:flex;
}
.navs{
width:300px;
height:100px;
}
hr{
height:2px;
background-color: black;
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
.flex{
display:flex;
}
li{
padding:20px;
margin-right:10px;
}
.newgen,.newgens{
padding-right:30px;

}
h2{
font-family:cursive;
background-color:#FA8072;
padding-left:20px;
padding-top:10px;
padding-bottom:10px;
border-radius:20px;
margin-bottom:20px;
color:white;
}
.ps{
font-family:20px;
}
.ases{
text-decoration:none;

}
center{
margin-top:20px;
font-size:20px;
font-family:cursive;
color:black;
font-weight:bold;
}
.See{
text-decoration:none;
font-size:20px;
font-family:cursive;
color:black;
font-weight:bold;
}
</style>
</head>
<body>
<div class="navbar">
<img class="navs" src="/resource/image/music.jpg" /></br>
</div>
<hr/>
<div class="flex">
<div class="opt">
<ul>
<li><a class="as" href="#"><span>&#127968;</span>Home</a></li></br>
<li><a class="as" href="/Songs/viewartist"><span>&#127925;</span>Artist</a></li>
<li><a class="as" href="/Songs/viewalbums"><span>&#127932;</span>Albums</a></li>
<li><a class="as" href="/Songs/viewallsongs"><span>&#127926;</span>Songs</a></li>
<li><a class="as" href="#"><span>&#127926;</span>Playlist</a></li>
</ul>
</div>
&ensp;
<div class="it">

<h2>Top Charts</h2></br>
</br>
<div class="songs">
<c:forEach var="daos" items="${daoi.key1}">
<div class="newgen">
<a class="ases" href="/Songs/mainmusic?name=${daos.getMusic()}">
<img class="musics" src="${daos.getMusicPhoto() }" ></img><center>${daos.getSong()}</center></a></br>
</div>
</c:forEach>
<a class="See" href="/Songs/fullsong">See All >></a>
</div>
</br>

<h2>Top Marathi</h2>
</br>
<div class="songs">
<c:forEach var="newd" items="${daoi.key3 }">
<div class="newgens">
<a class="ases" href="/Songs/mainmusic?name=${newd.getMusic()}">
<img class="musics" src="${newd.getMusicPhoto() }" ></img><center>${newd.getSong()}</center></a></br>
</div>
</c:forEach>
<a class="See" href="/Songs/TopMarathi">See All >></a>
</div>
</br>

<h2>Artists</h2>
</br>
<div class="songs">
<c:forEach var="newd" items="${daoi.key4 }">
<div class="newgens">
<a class="ases" href="/Songs/viewdar?name=${newd.getArtistName()}">
<img class="musics" src="${newd.getArtistPhoto() }" ></img><center>${newd.getArtistName()}</center></a></br>
</div>
</c:forEach>
<a class="See" href="/Songs/viewartist">See All >></a>
</div>
</br>

<h2>Devotional</h2>
</br>
<div class="songs">
<c:forEach var="newd" items="${daoi.key5 }">
<div class="newgens">
<a class="ases" href="/Songs/checklord?name=${newd.getLord()}">
<img class="musics" src="${newd.getSpic() }" ></img><center>${newd.getLord()}</center></a></br>
</div>
</c:forEach>
<a class="See" href="/Songs/devallsong">See All >></a>
</div>
</br>

<h2>Best Of 90's</h2>
</br>
<div class="songs">
<c:forEach var="newd" items="${daoi.key6 }">
<div class="newgens">
<a class="ases" href="/Songs/mainmusic?name=${newd.getMusic()}">
<img class="musics" src="${newd.getMusicPhoto() }" ></img><center>${newd.getSong()}</center></a></br>
</div>
</c:forEach>
<a class="See" href="/Songs/All90">See All >></a>
</div>
</br>

<h2>Romantic Hits</h2>
</br>
<div class="songs">
<c:forEach var="newd" items="${daoi.key7 }">
<div class="newgens">
<a class="ases" href="/Songs/mainmusic?name=${newd.getMusic()}">
<img class="musics" src="${newd.getMusicPhoto() }" ></img><center>${newd.getSong()}</center></a></br>
</div>
</c:forEach>
<a class="See" href="/Songs/">See All >></a>
</div>
</br>









</div>
</div>
</body>
</html>