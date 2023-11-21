<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Movie</title>
</head>
<body>
<div>
<form method="post" action="/Songs/movieadd" enctype="multipart/form-data">
<p>
Enter the Movie Name: <input type="text" name="movieName" /></br></br>
Enter the Movie Poster: <input type="file" name="pics"/></br></br>
Enter the Language: <input type="text" name="language" /></br></br>

<input type="submit" />
</p>
</form>
</div>
</body>
</html>