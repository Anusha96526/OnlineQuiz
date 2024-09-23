<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<% 
out.println("<h1><center>You successfully registered....</center></h1>");
%>
<center>
<form action="showuserdetails.jsp" method="get">
<input type="hidden" name="h1"><p></p>
<input type="submit" value="MY Profile">
</form>
<a href="webpage.jsp" target="_self"><input type="submit" value="Home Page"></a>
</center>