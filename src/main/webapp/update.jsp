<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<% 
String name = request.getParameter("name");
String email = request.getParameter("email");
String gender = request.getParameter("gender");
String password = request.getParameter("pswd");
try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "anusha", "welcome");
    PreparedStatement ps = con.prepareStatement("update quiz set email=?, gender=?, password=? where name=?");
    ps.setString(1, email);
	ps.setString(2, gender);
	ps.setString(3, password);
	ps.setString(4, name);
	int i = ps.executeUpdate();
	if(i>0){
		out.println("<h1><center>"+i+" "+name+" values are Updated/Changed</center></h1>");
	}
	else{
		out.println("<h1><center> Please give your registered name</center></h1>");
	}
	con.close();
}
catch(Exception ex){
	out.println("<h3><center>"+ex+"</center></h3>");
}
%>
<center>
<a href="webpage.jsp" target="_self"><input type="submit" value="Home Page"></a>
<button onclick="history.back()">Go Back</button>
</center>