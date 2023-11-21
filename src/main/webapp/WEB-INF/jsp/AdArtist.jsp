<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Artist</title>
</head>
<body>
<div>
<form method="post" action="/Songs/artistadd" enctype="multipart/form-data">
<p>
Enter the Artist Name: <input type="text" name="artistName" /></br></br>
Enter the Artist photo: <input type="file" name="photo" /></br></br>
<input type="submit" />
</p>
</form>
</div>
</body>
</html>