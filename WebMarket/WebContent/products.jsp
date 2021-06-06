
<%@page import="dto.Product"%>
<%@page import="java.util.ArrayList"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="dao.ProductRepository"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%-- <jsp:useBean id="productDAO" class="dao.ProductRepository"></jsp:useBean> --%>
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
			ProductRepository dao = ProductRepository.getInstance();
				ArrayList<Product> pdList = dao.getAllProducts();

			for (int i = 0; i < pdList.size(); i++) {
				Product product = pdList.get(i);
			%>
			<div class="col-md-4">
				<img src="C:/upload/<%=product.getFilename()%>" style="width: 100%" >
				<h3><%=product.getpName()%></h3>
				<p><%=product.getDescription()%></p>
				<p><%=product.getUnitPrice()%></p>
				
				<p><a href="product.jsp?id=<%=product.getProductId()%>" class="btn btn-secondary">상세정보 &raquo;</a></p>
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