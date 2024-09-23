<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Edit Profile</title>
<style>
body{
text-align: center;
}
.update{
text-align: justify, center;
border: 1px solid black;
display: inline-block;
width: 50%;
padding: 10px;
margin: 5px;
border-radius: 10px;
background-color: turquoise;
}
.delete{
border: 1px solid black;
display: inline-block;
width: 50%;
padding: 10px;
margin: 5px;
border-radius: 10px;
background-color: lightcoral;
}
.back{
text-align: center;
width: 20%;
padding: 10px;
border-radius: 10px;
background-color: steelblue;
}
</style>
</head>
<body>
<h1>Edit Your Profile</h1>
<form action="update.jsp" method="post" class="update">
<h1>If you want to Update Your profile</h1>
User Name : <input type="text" name="name"><p></p>
Email : <input type="email" name="email"><p></p>
Gender: <input type="radio" name="gender" value="Male">Male
        <input type="radio" name="gender" value="Female">Female<p></p>
Password: <input type="password" name="pswd"><p></p>
<input type="submit" value="Update">
<input type="reset" value="Reset">
</form>
<form action="delete.jsp" method="post" class="delete">
<h1>If you want to Delete Your Account Permanently</h1>
Name : <input type="text" name="name"><p></p>
<input type="submit" value="Delete">
<input type="reset" value="Reset">
</form><p></p>
<button onclick="history.back()" class="back">Go Back</button>
</body>
</html>