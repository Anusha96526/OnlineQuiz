<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<% 
String name = request.getParameter("name");
try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "anusha", "welcome");
	PreparedStatement ps2 = con.prepareStatement("delete from feedback where name=?");
	ps2.setString(1, name);
	int k = ps2.executeUpdate();
	PreparedStatement ps1 = con.prepareStatement("delete from score where name=?");
	ps1.setString(1, name);
	int j = ps1.executeUpdate();
	
	PreparedStatement ps = con.prepareStatement("delete from quiz where name=?");
	 ps.setString(1, name);
	 int i = ps.executeUpdate();
     if(k==j){
		 if(i>0){
			out.println(i+" "+"<h1><center>"+name+" Account deleted Permanently....</center></h1>");
		}
     }
     else if(j>0){
		 if(i>0){
			out.println(i+" "+"<h1><center>"+name+" Account deleted Permanently....</center></h1>");
		}
    	 
     }
     else if(i>0){
    	 out.println(i+" "+"<h1><center>"+name+" Account deleted Permanently....</center></h1>");
     }
     else{
			out.println("<h1><center>Please give your Registered name and name cannot be null.....</center></h1>");
		}
	con.close();
}
catch(Exception ex){
	out.println("<h3><center>"+ex+"</center></h3>");
}
%>
<center><p></p>
<a href="webpage.jsp" target="_self"><input type="submit" value="Home Page"></a>
<button onclick="history.back()">Go Back</button>
</center>