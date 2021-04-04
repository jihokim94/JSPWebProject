<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC_KR" import="java.util.Date, java.lang.Math"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
 Today is <%= new Date() %> <br>
 Next Random Number is :  <%= (int)(Math.random()*100) %>
</body>
</html>