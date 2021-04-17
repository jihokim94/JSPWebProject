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
		request.setCharacterEncoding("utf-8"); // JSP 내에서 한글을 받을 시 인코딩 설정

	String userId = request.getParameter("id"); // 아이디 요청 파라미터
	String userPw = request.getParameter("password"); // 패스워드 요청 파라미터 

	if (userId.equals("관리자") && userPw.equals("1234")) { // 요청 처리 로직

		response.sendRedirect("response01_success.jsp"); // true일시에 페이지 응답
	} else {
		response.sendRedirect("response01_failure.jsp"); // false일시에 페이지 응답
	}
	%>
</body>
</html>