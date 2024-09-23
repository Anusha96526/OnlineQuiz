<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>My Details</title>
<style>
body{
 text-align:center;
}
</style>
</head>
<body>
<h1>Show User Details</h1>
<form action="mydetailsCode.jsp" method="post">
Name: <input type="text" name="name">
<input type="submit" value="Show"> <p></p>
</form>
<a href="webpage.jsp"><input type="submit" value="Go Back"></a>
</body>
</html>