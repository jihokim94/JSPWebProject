<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Implicit Object</title>
</head>
<body>
	<%
		Enumeration en = request.getHeaderNames();
			while (en.hasMoreElements()) {
				String headerName = (String) en.nextElement(); // 헤더 요소 하나씩 !
				String headerValue = request.getHeader(headerName);
	%>
		
		<%=headerName%> : <%=headerValue%> <br>
		
		
	<%
		}
	%>
</body>
</html>