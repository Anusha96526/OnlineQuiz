<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%
 String name = request.getParameter("name");
 String email = request.getParameter("email");
 String gender = request.getParameter("gender");
 String password = request.getParameter("pswd");
try{
 Class.forName("oracle.jdbc.driver.OracleDriver");
 Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "anusha", "welcome" );
 PreparedStatement ps = con.prepareStatement("insert into quiz values(?,?,?,?)");
 ps.setString(1, name);
 ps.setString(2, email);
 ps.setString(3, gender);
 ps.setString(4, password);
 int i = ps.executeUpdate();
 if(i>0){
	 response.sendRedirect("success.jsp");
 }
 con.close();
}
catch(Exception ex){
	out.println("<h3><center>"+ex+"</center></h3>");
}
%>
