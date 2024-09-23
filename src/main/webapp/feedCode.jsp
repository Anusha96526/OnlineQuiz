<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<% 
   String name = request.getParameter("name");
   String email = request.getParameter("email");
   String feedback = request.getParameter("feedback");
   try{
	   Class.forName("oracle.jdbc.driver.OracleDriver");
	   Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "anusha", "welcome");
	   PreparedStatement ps = con.prepareStatement("select*from quiz where name=? and email=?");
	   ps.setString(1, name);
	   ps.setString(2, email);
	   ResultSet rs = ps.executeQuery();
	   if(rs.next()){
		   out.println("<center><h2>Your Feedback successfully received</h2>"+"<br/>");
	   }
	   PreparedStatement ps1 = con.prepareStatement("insert into feedback values(?,?,?)");
	   ps1.setString(1, name);
	   ps1.setString(2, email);
	   ps1.setString(3, feedback);
	   int i = ps1.executeUpdate();
	   if(i>0){
		   out.println(i+ "<center><b>Name : "+name+"</br>Email : "+email+"</br>Feedback : "+feedback+"</b></center>");
	   }
	   con.close();	   
   }
   catch(Exception ex){
	   out.println("<h3><center>"+ex+"</center></h3>");
   }
%>
<center>
<p></p><form action="webpage.jsp" method="post">
<input type="hidden">
<input type="submit" value="Home Page">
</form>
<button onclick="history.back()">Go Back</button>
</center>