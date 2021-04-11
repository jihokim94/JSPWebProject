<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="person" class="ch04.com.dao.Person" scope="request" />
	<jsp:setProperty property="id" name="person" value="20182005"/>
	<jsp:setProperty property="name" name="person" value="홍길동"/>
	<jsp:setProperty property="age" name="person" value="30"/>
	
	
	<p>
		아이디 :
		<jsp:getProperty property="id" name="person" />
	<p>
		이름 :
		<jsp:getProperty property="name" name="person" />
	<p>
		나이 :
		<jsp:getProperty property="age" name="person" />
</body>
</html>