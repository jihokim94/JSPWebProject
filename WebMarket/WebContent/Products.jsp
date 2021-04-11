<%@page import="dto.Product"%>
<%@page import="java.util.ArrayList"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="dao.ProductRepository"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<head>
<meta charset="UTF-8">
<title>상품 목록</title>
</head>
<body>
	<%@include file="menu.jsp"%>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">상품 목록</h1>
		</div>
	</div>
	<div class="container">
	<div class="row" align="center">
	<%
		ProductRepository pr = new ProductRepository();

	ArrayList<Product> pdList = pr.getAllProducts();

	for (int i = 0; i < pdList.size(); i++) {
		Product product = pdList.get(i);
	%>
	<div class="col-md-4">
		<h3><%=product.getpName() %></h3>
		<h3><%=product.getDescription() %></h3>
		<h3><%=product.getUnitPrice()%></h3>
	</div>
	<%
		}
	%>
	</div>
<hr>
</div>

	<%@include file="footer.jsp"%>
</body>
</html>