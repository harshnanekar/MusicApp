<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Song</title>

<style>
.imgs{
width:300px;
box-shadow:8px 8px 8px grey;
margin-left:25%;
border-radius:20px;
}

hr{
height:2px;
background-color:black;
}
.main{
background:rgba(0,0,0,0.1);
width:40%;
margin-left:30%;
margin-top:20px;
padding:20px;
box-shadow:8px 8px 8px grey;
border-radius:20px;
}

.navs{
width:250px;
}
.logos{
width:500px;
margin-left:20%;
}
h1{
text-align:center;
font-family:cursive;

}
audio{
width:100%;

}
audio::-webkit-media-controls-panel{
background-color:#FA8072;
}
strong{
font-family:cursive;
margin-left:20px;
}
a{
text-decoration:none;
font-family:sans-serif;
font-weight:bold;
color:white;
background-color:#FA8072;
padding-top:5px;
padding-bottom:5px;
padding-left:25px;
padding-right:25px;
font-size:18px;
border-radius:10px;
margin-left:45%;
margin-top:20px;
margin-bottom:20px;
}
</style>
</head>
<body >
<div class="navbar">
<img class="navs" src="/resource/image/music.jpg" />
<img class="logos" src="/resource/image/anilogo.jpg" />
</div>
<hr/>



<div  class="main">
<img class="imgs" src="${dao.getMusicPhoto() }" />
<h1>${dao.getSong()}</h1></br>
<strong>Lyrics: ${dao.getLyrics()}</strong></br></br><strong> Singers: ${dao.getSingers()}</strong></br></br><strong> Composers: ${dao.getComposer()}</strong></br></br>
<audio  controls autoplay src="${dao.getMusic()}" ></audio></br></br>
<a href="/Songs/saved?name=${dao.getMusic()}" >Save</a>
</div>
</body>
</html>