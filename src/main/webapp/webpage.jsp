<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Online quiz</title>
<style type="text/css">
body{
background-color: lightcyan;
text-align:center;
}

.navbar a{
  font-size: 25px;
  color: black;
  text-decorations: none;
  font-weight: 500;
  margin-left:35px;
}
.navbar a:hover, .navbar a.active{
color: red;
}
a{
 text-align: right;
 text-decoration: none;
 font-size: 30px;
 padding: 20px;
 color: black;
}
.profile, .out, .quiz, .details{
text-align: left;
width: 25%;
height: 100px;
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
q{
 background-color: lightpink;
 color: black;
 font-family: georgia;
 font-size: 10px;
}
.edit, .log, .section, .my{
  float: right;
}
.form a:hover{
color:red;
}
</style>
</head>
<body>
<h1>ONLINE QUIZ</h1>
<header class="header">
<nav class="navbar">
<a href=" " target="_self" class="active">Home</a>
<a href="login.jsp" target="_self">Login</a>
<a href="register.jsp" target="_self">Register</a>
<a href="feedback.jsp" target="_self">FeedBack</a>
<a href="aboutus.jsp" target="_self">About Us</a>
</nav>
</header><br>
<img src="oq.jpg" width="400" height="200" class="jpg"/> <br>
<form class="form">
<img src="edit.jpg" class="profile">
<a href="editProfile.jsp" target="_self" class="edit">Edit Profile</a>
</form>
<form class="form">
<img src="quiz.png" class="quiz">
<a href="quizSection.jsp" target="_self" class="section">Quiz Section</a>
</form>
<form class="form">
<img src="details.png" class="details">
<a href="showuserdetails.jsp" target="_self" class="my">My Details</a>
</form>
</body>
</html>

