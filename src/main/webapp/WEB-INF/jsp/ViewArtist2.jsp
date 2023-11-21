<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ArtistSong</title>
<style>
.navs{
width:250px;
margin-left:20px;
}
.nav{
display:flex;
}
.logo{
width:400px;
margin-left:25%;
animation:animation 5s ease-out;
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
 hr{
 height:2px;
 background-color:black;
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
span{
color:white;
  font-variant-emoji: text;       
  font-variant-color: white;
}
ul{
list-style-type: none;
}
.mains{
display:flex;
}
.gs{
width:180px;
}
.flexs{
display:flex;
}

</style>
<script type="text/javascript">
function checks(){
	var a;
	<c:forEach var="daos" items="${dao }" >
	a=${daos.getId()};
	document.getElementById(a).play();
	</c:forEach>
	

}
function lakes(){
	var a;
	<c:forEach var="daos" items="${dao }" >
	a=${daos.getId()};
	document.getElementById(a).pause();
	</c:forEach>
	

}
</script>
</head>
<body>
<div class="nav">
<img class="navs" src="/resource/image/music.jpg" /></br>
<img class="logo" src="/resource/image/anilogo.jpg" />
</div>
<hr/>
<div class="mains">
<div class="opt">
<ul>
<li><a class="as" href="#"><span>&#127968;</span>Home</a></li>
<li><a class="as" href="#"><span>&#127925;</span>Artist</a></li>
<li><a class="as" href="#"><span>&#127932;</span>Albums</a></li>
<li><a class="as" href="#"><span>&#127926;</span>Playlist</a></li>
</ul>
</div>
&ensp;
<div class="songs">
<c:forEach var="daos" items="${dao }" >
<div class="flexs">
<img class="gs" src="${daos.getMusicPhoto() }" />
<p> ${daos.getSong() }</p>&ensp;
<div >
<audio id="${daos.getId()}" onmouseover="checks()" onmouseout="lakes()" controls >
<source src="${daos.getMusic()}"  type="audio/mp3" /></audio>
</div>
</div>
</c:forEach>
</div>
</div>
<p id="new"></p>
</body>
</html>