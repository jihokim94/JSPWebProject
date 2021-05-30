<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	
	
<%!String greeting = "웹 쇼핑몰에 오신 것을 환영합니다.";
	String tagLine = "Welcome to Web Market";%>
<!DOCTYPE html>
<html>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<head>
<meta charset="UTF-8">
<title>Welcome</title>
</head>
<body>
	<!-- <nav class="navbar navbar-expand navbar-dark bg-dark">
		<div class="container">
			<div class="navbar-header">
				<a class="navbar-brand" href="./welcome.jsp">Home</a>
			</div>
		</div>
	</nav> -->
	<%@include file="menu.jsp" %>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">
				<%=greeting%>
			</h1>
		</div>
	</div>
	<main role="main">
		<div class="container">
			<div class="text-center">
				<h3><%=tagLine%></h3>  	 
				<% Date today = new Date();
				response.setIntHeader("Refresh", 5);
					String am_pm;
					int hour = today.getHours(); 
					int minute = today.getMinutes();
					int seconds = today.getSeconds();
					if(hour/12 == 0){
						am_pm="AM";
					}else{
						am_pm="PM";
						hour = hour-12;
					}
					String CT = hour+":" + minute + ":" + seconds + " " + am_pm;
					out.println("현재 접속 시각 :  " + CT);
				%>
			</div>
		</div>
	</main>	<%@include file="footer.jsp" %>
	
</body>
</html>