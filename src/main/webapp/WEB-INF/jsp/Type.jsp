<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Type</title>
</head>
<body>
<form method="post" action="/Songs/typeadd" enctype="multipart/form-data">
<p>
Enter the Language: <input type="text" name="language" /></br>
Enter the Song Type: <input type="text" name="stype" /></br>
Enter the Lord Name: <input type="text" name="lord" /></br>
Enter the Picture: <input type="file" name="mphoto" /></br>
<input type="submit" />

</p>

</form>
</body>
</html>