<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Feedback</title>
<style>
 form{
   text-align:justify;
   border: 1px solid black;
   display: inline-block;
   width: 20%;
   padding: 20px;
   font-size: 20px;
   border-radius: 25px;
   background-color: navajowhite;
}
h2{
 background-color: coral;
 text-align: center;
}
.submit{
  text-align: center;
  width: 100%;
  background-color: purple;
  color: white;
  font-size: 20px;
  border-radius: 5px;
}
body{
  text-align: center;
}
</style>
</head>
<body>
<form action="feedCode.jsp" method="post">
<h2>Feedback</h2>
<input type="text" name="name" placeholder="Enter your registered Name"><p></p>
<input type="email" name="email" placeholder="Enter Your registered Email"><p></p>
<textarea name="feedback" placeholder="Enter Your Feedback" rows="4" cols="25"></textarea><p></p>
<input type="submit" value="Submit" class="submit">
</form>
<h3><a href="webpage.jsp"><input type="submit" value="Go Back"></a></h3>
</body>
</html>