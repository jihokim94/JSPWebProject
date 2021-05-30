<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Form Processing</title>
</head>
<body>


	<table border="1">
		</tr>
		<th>요청 파라미터 이름</th>
		<th>요청 파라미터 밸류</th>
		</tr>
		<%
			request.setCharacterEncoding("utf-8");

		Enumeration paraNames = request.getParameterNames();
		while(paraNames.hasMoreElements()) {
			String name = (String)paraNames.nextElement();
			out.print("<tr><td>" + name + "</td>\n");
			String paramValue = request.getParameter(name);
			out.print("<td>" +paramValue+"</td></tr>\n");
		}
		%>
	</table>
</body>
</html>