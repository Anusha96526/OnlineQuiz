<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%
 String name = request.getParameter("uname");
 String password = request.getParameter("pswd");
 try{
	 Class.forName("oracle.jdbc.driver.OracleDriver");
	 Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "anusha", "welcome");
	 PreparedStatement ps = con.prepareStatement("select * from quiz where name = ? and password = ?");
	 ps.setString(1, name);
	 ps.setString(2, password);
	 ResultSet rs = ps.executeQuery();
	 int x = 0;
	 while(rs.next()){
		 if(rs.getString(1).equals(name)&&rs.getString(4).equals(password)){
			 x=1;
		 }
		 else{
			 x=2;
		 }
	 }
	 if(x==1){
		 %>
		 <jsp:include page = "loggedIn.jsp"/>
		 <%
	    HttpSession s = request.getSession();
	 out.println("<center><h1>Welcome:"+name+"</h1>");
	 out.println("<br/><b>You are successfully login........");
	 }
	 else{
		 out.println("<center>"+"<b>Either You Enter Wrong UserName or Password</b>");
		 %>
		 <jsp:include page = "login.jsp"/>
		 <%
	 }
	 con.close();
 }
 catch(Exception ex){
	 out.println("<h3><center>"+ex+"</center></h3>");
 }
%>