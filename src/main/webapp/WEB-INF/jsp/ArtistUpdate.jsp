<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update</title>
</head>
<body>
<form method="post" action="/Songs/update" enctype="multipart/form-data">
<p>Enter the id: <input type="number" name="id" /></br>
Enter the ArtistName: <input type="text" name="artistName" /></br>]
Enter the Artist photo: <input type="file" name="photo" /></br></br>
Enter the Song: <input type="text" name="gsong" /></br></br>
<input type="submit" />

</p>


</form>
</body>
</html>