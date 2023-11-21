<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.4/angular.js"></script>
<script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.3.1.min.js">
</script>
<meta charset="ISO-8859-1">
<title>Songs</title>
<style>
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
form{
padding-top:30px;
margin-left:15%;
width:100%;
}
input[type="text"]{
padding:4px;
width:40%;
border:solid black 2px;
}
input[type="submit"]{
background-color:salmon;
width:15%;
padding:5px;
border:0px;
color:white;
font-family:Helvetica;
font-size:15px;
font-weight:bold;
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
.flex{
display:flex;
}
#langs{
text-decoration:none;
margin-left:20px;
border:solid black 3px;
padding:5px;
font-family:sans-serif;
font-weight:bold;
font-size:20px;
color:black;
border-radius:10px;
}
.langflex{
display:flex;
flex-wrap:wrap;
}
.langdiv{
margin-top:10px;
}
.saveimg{
width:200px;
margin-left:40px;
border-radius:100px;
box-shadow:8px 8px 8px grey;
margin-top:20px;
}
.savesong{
display:flex;
flex-wrap:wrap;
}
.bas{
text-decoration:none;
}
center{
margin-top:20px;
font-family:cursive;
font-weight:bold;
font-size:20px;
color:black;
margin-left:40px;
}
h1{
text-align:center;
}
</style>
<script type="text/javascript">

</script>
</head>
<body>
<div class="navbar">
<img class="navs" src="/resource/image/music.jpg"/>
<form method="post" action="/Songs/searchsong"><input type="text" name="search"/>&ensp;<input type="submit"  value="Search" /></form>
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
<div class="langdiv">
<div class="langflex">
<c:forEach var="daos" items="${dao.key3 }">
<a id="langs" href="/Songs/checklang?lname=${daos.getLanguage()}" >${daos.getLanguage()}</a>
</c:forEach>
</div>
</br>
<h1>${dao.key4.getUsername() } Your Saved Songs</h1>
<div class="savesong">
<c:forEach var="daoss" items="${dao.key2 }">
<a class="bas" href="/Songs/mainmusic?name=${daoss.getSong().getMusic()}" ><img class="saveimg" src="${daoss.getSong().getMusicPhoto()}"><center>${daoss.getSong().getSong()}</center></a>
</c:forEach>
</div>
</div>

</div>


</body>
</html>