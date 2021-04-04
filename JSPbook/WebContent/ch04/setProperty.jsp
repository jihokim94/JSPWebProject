<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Action tag</title>
</head>
<body>
	<jsp:useBean id="person" class="ch04.com.dao.Person" scope="request"></jsp:useBean>
	<jsp:setProperty property="id" name="person" value="20182005"/>
	<jsp:setProperty property="name" name="person" value="홍길동"/>
	<jsp:setProperty property="age" name="person" value="25"/>
	
	<p> 아이디 : <% out.println(person.getId()); %>
	<p> 이름 : <% out.println(person.getName()); %>
	<p> 나이 : <% out.println(person.getAge()); %>
</body>
</html>