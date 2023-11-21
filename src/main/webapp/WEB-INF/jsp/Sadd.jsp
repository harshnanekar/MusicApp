<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert</title>
</head>
<body>
<form method="post" action="/Songs/added" enctype="multipart/form-data">
<p>Enter the song name: <input type="text" name="song" /></br></br>
Enter the song: <input type="file" name="songs" /></br></br>
Enter the Composer's: <input type="textarea" name="composer" /></br></br>
Enter the Lyrics Given By: <input type="textarea" name="lyrics" /></br></br>
Enter the Song Image: <input type="file" name="mphoto" /></br></br>
Enter the Song Language: <input type="text" name="language" /></br></br>
Enter the Singer's: <input type="text" name="singers" /></br></br>
<input type="submit" />
</p>

</form>
</body>
</html>