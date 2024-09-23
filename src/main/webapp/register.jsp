<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Register</title>
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
color: black;
}
.form a:hover{
color: blue;
}
</style>
</head>
<body>
<form action="registerCode.jsp" method="post" class="form">
<h1>Registration</h1>
Name : <input type="text" name="name" placeholder="Enter your name"><p></p>
Email: <input type="email" name="email" placeholder="Enter your Email"><p></p>
Gender: <input type="radio" name="gender" value="Male">Male
        <input type="radio" name="gender" value="Female">Female<p></p>
Create Password: <input type="password" name="pswd" placeholder="create password" ><p></p>
<input type="checkbox" name="cbox"><a href="conditions.jsp">I accept all terms and conditions</a><p></p>
<input type="submit" value="Register Now">
<input type="reset" value="Reset"> <p></p>
Already have an account?<a href="login.jsp" target="self">Login Now</a>
</form>
<h2><a href="webpage.jsp"><input type="submit" value="Go Back"></a></h2>
</body>
</html>