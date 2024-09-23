<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%
String name = request.getParameter("name");
try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "anusha", "welcome");
	PreparedStatement ps = con.prepareStatement("select*from quiz where name=?");
	ps.setString(1, name);
	ResultSet rs = ps.executeQuery();
	ResultSetMetaData rsm = rs.getMetaData();
	int n = rsm.getColumnCount();
	out.print("<table border ='1'>");
	for(int i=1; i<=n; i++)
		out.println("<td><font color=blue size=3>"+"<br>"+rsm.getColumnName(i));
		out.println("<tr>");
		while(rs.next()){
			for(int i=1; i<=n; i++)
				out.println("<td><br>"+rs.getString(i));
				out.println("<tr>");
			}
			out.println("</table></body></html>");
			con.close();
		}
catch(Exception ex){
	out.println("<h3><center>"+ex+"</center></h3>");
}
%>

<p></p><form action="webpage.jsp"> 
<input type="hidden" name="web1">
<input type="submit" value="Home Page">
</form>
