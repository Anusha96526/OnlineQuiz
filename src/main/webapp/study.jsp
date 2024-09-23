<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Study</title>
<style>
body{
  text-align: center;
}
img{
text-align: left;
float: left;
width: 25%;
height: 100px;
}
a{
 text-align: right;
 text-decoration: none;
 font-size: 30px;
 padding: 20px;
 float: center,right;
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
<form class="form">
<img src="plant.avif">
<a href="plants.jsp" target="_self">Plants</a> <!-- Plants -->
</form>
<form class="form">
<img src="computer.jpg">
<a href="computer.jsp" target="_self">Computer</a> <!-- Computer -->
</form>
<form class="form">
<img src="human.png">
<a href="hb.jsp" target="_self">Human Body</a> <!-- Human Body -->
</form>
<form class="form">
<img src="env.jpg">
<a href="environment.jsp" target="_self">About Environment</a> <!-- Environment -->
</form>
<form class="form">
<img src="ab.jpg">
<a href="ab.jsp" target="_self">About Animals and Birds</a> <!-- Animals and Birds -->
</form>
<form class="form">
<img src="ccs.jpg">
<a href="cc.jsp" target="_self">Countries and Capitals</a> <!-- Countries and Capitals -->
</form>
<form class="form">
<img src="ini.jpg">
<a href="ii.jsp" target="_self">Inventions and Inventors</a> <!-- Inventions and Inventors -->
</form>
<form class="form">
<img src="naf.webp">
<a href="naf.jsp" target="_self">National Anthem and Flag</a> <!-- National Anthem and Flag -->
</form>
<form class="form">
<img src="nab.webp">
<a href="nab.jsp" target="_self">National Animal and Bird</a>  <!-- National Animal and National Bird -->
</form>
<form class="form">
<img src="nfl.png">
<a href="nf.jsp" target="_self">National Flower</a> <!-- National Flower -->
</form><br>
<button onclick="history.back()">Go Back</button>
</body>
</html>