<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Album's</title>
</head>
<body>
<form method="post" action="/Songs/albadded" >
<h1>Add Songs for Albums</h1>
<p>
Enter the Album Name: <input type="text" name="tempalbum" /></br></br>
Enter the Song: <input type="text" name="song" /></br></br>
<input type="submit" />

</p>
</form>
</body>
</html>