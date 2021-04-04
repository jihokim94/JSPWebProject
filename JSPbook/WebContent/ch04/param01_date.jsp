<%@page import="java.net.URLDecoder"%>
<%@page import="org.apache.naming.java.javaURLContextFactory"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<p>
		아이디 :
		<%=request.getParameter("id")%>
		<%
			String name = request.getParameter("name");
		%>
	
	<p>
		이름:
		<%=URLDecoder.decode(name)%>
	<p>
		메세지 :
		<%=request.getParameter("msg")%>
</body>
</html>