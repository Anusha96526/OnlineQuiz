<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<% 
String name = request.getParameter("name");
int score = Integer.parseInt(request.getParameter("score"));
try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "anusha", "welcome");
	PreparedStatement ps = con.prepareStatement("insert into score values(?,?)");
	ps.setInt(1, score);
	ps.setString(2, name);
	int i = ps.executeUpdate();
		if(i>0){
			out.println(i+"<h1>"+name+" Score Board</h1>");
		}
		PreparedStatement ps1 = con.prepareStatement("select * from score where name = ?");
		ps1.setString(1, name);
		ResultSet rs = ps1.executeQuery();
		ResultSetMetaData rsm = rs.getMetaData();
		int n = rsm.getColumnCount();
		out.print("<table border ='1'>");
		for(int j=1; j<=n; j++)
			out.println("<td><font color=blue size=3>"+"<br>"+rsm.getColumnName(j));
			out.println("<tr>");
			while(rs.next()){
				for(int j=1; j<=n; j++)
					out.println("<td><br>"+rs.getString(j));
					out.println("<tr>");
				}
				out.println("</table></body></html>");
		
		con.close();
}
catch(Exception ex){
	out.println("Please give your Registered name");
}
%>
<p></p><a href="webpage.jsp" target="_self"><input type="submit" value="Home Page"></a>
<button onclick="history.back()">Try again</button>