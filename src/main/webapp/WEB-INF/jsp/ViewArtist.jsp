<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Artists</title>
<script type="text/javascript">
function over(){
	var am=document.getElementById("art");
	am.style.width= 400px;
	am.style.height= 400px;
	
}
function outs(){
	var am=document.getElementById("art");
	am.style.width= 200px;
	am.style.height= 200px;
	
}
</script>
<style>
 #art{
width:280px;
border-radius:200px;
box-shadow:8px 8px 8px grey;
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
.navs{
width:250px;
margin-left:20px;
}
.nav{
display:flex;
}
.flex{
display:flex;
}
hr{
height:2px;
background-color:black;
}
.opt{
background:#FA8072;
width:15%;
}
.mains{
display:grid;
grid-template-columns:auto auto auto;
column-gap:180px;
row-gap:20px;
margin-left:50px;
margin-top:20px;
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
.a{
text-decoration:none;
font-size:25px;
font-family:Helvetica;
font-weight:bold;
color:black;
}
center{
margin-top:15px;
}
</style>
</head>
<body>

<div class="nav">
<img class="navs" src="/resource/image/music.jpg" /></br>
<img class="logo" src="/resource/image/anilogo.jpg" />
</div>
<hr/>
<div class="flex">
<div class="opt">
<ul>
<li><a class="as" href="#"><span>&#127968;</span>Home</a></li>
<li><a class="as" href="#"><span>&#127925;</span>Artist</a></li>
<li><a class="as" href="/Songs//viewartist"><span>&#127932;</span>Albums</a></li>
<li><a class="as" href="#"><span>&#127926;</span>Playlist</a></li>
</ul>
</div>
&ensp;
<div class="mains">
<c:forEach var="daos" items="${dao }">
<div class="grid">
<a id="a" href="/Songs/viewdar?name=${daos.getArtistName() }" ><img id="art" src="${daos.getArtistPhoto()}" onmouseover="overs()" onmouseout="outs()"><center>${daos.getArtistName() }</center></img></a></br>
</div>
</c:forEach>
</div>
</div>
</body>
</html> 