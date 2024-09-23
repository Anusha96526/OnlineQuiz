<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Login Page</title>
<style type="text/css">
body{
text-align:center;
}
form{
 border: 1px solid black;
 width: 25%;
 display: inline-block;
 padding: 20px;
 text-align: justify;
 font-size: 20px;
 border-radius: 30px;
 background: linear-gradient(45deg, grey, white);
}
a{
text-align: center;
}
a:hover{
color: blue;
}
</style>
</head>
<body>
<h3>Don't have an account, click here to <a href="register.jsp">Register</a></h3>
<form action="loginCode.jsp" method="post">
<h1>Login</h1>
UserName : <input type="text" name="uname" placeholder="Enter your register name"><p></p>
Password : <input type="password" name="pswd" placeholder="Enter Password"><p></p>
<input type="submit" value="Login">
</form>
<h2><a href="webpage.jsp"><input type="submit" value="Go Back"></a></h2>
</body>
</html>