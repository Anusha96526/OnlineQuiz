<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Quiz Section</title>
<style>
body{
  text-align: center;
}
img{
text-align: left;
width: 25%;
height: 100px;
}
a{
 text-align: right;
 text-decoration: none;
 font-size: 30px;
 padding: 20px;
 float: right;
}
form{
 border: 1px solid black;
 display: inline-block;
 border-radius: 10px;
 width: 25%;
 height: 100px;
 padding: 5px;
 margin: 20px;
}
.form a:hover{
color: red;
}
</style>
</head>
<body>
<h1>General Knowledge(GK) Quiz</h1>
<p>Enrich your knowledge</p>
<form class="form">
<img src="study.png">
<a href="study.jsp" target="_self">Lesson to Study</a>
</form>
<form class="form">
<img src="practice.jpg">
<a href="practice.jsp" target="_self">Practice</a>
</form>
<form class="form">
<img src="test.jpg">
<a href="test.jsp" target="_self">Take a Test</a>
</form>
<form class="form">
<img src="home.jpg">
<a href="webpage.jsp" target="_self">Home Page</a>
</form>
</body>
</html>