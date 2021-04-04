<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Action Tag</title>
</head>
<body>
	<%
		String title = request.getParameter("title");
		String date = request.getParameter("date");
	%>
	<h3><%= URLDecoder.decode(title) %></h3>
	Today is : <%=date%>
	<%String message = request.getParameter("message"); %>
	
	<h3><%= URLDecoder.decode(message) %></h3>
</body>
</html>