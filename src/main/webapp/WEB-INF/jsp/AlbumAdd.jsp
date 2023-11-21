<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Artist</title>
</head>
<body>
<form method="post" action="/Songs/albumadded" enctype="multipart/form-data">
<p>
Enter the Album Name: <input type="text" name="albumName" /></br></br>
Enter the Album Poster: <input type="file" name="photo" /></br></br>
Enter the Artist: <input type="text" name="art" /></br></br>
<input type="submit" />
</p>
</form>
</body>
</html>