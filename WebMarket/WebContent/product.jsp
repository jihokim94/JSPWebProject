
<%@page import="dto.Product"%>
<%@page import="java.util.ArrayList"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="dao.ProductRepository"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:useBean id="productDAO" class="dao.ProductRepository"></jsp:useBean>
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
			<h1 class="display-3">상품 정보</h1>
		</div>
	</div>

	<%
		String id = request.getParameter("id");
		ProductRepository dao = ProductRepository.getInstance();
		Product pd = dao.getProductById(id);
	%>
	<div class="container">
		<div class="row">
			<div class="col-md-6">
				<h3><%=pd.getpName()%></h3>
				<p><%=pd.getDescription()%></p>
				<p>
					<b>상품코드</b> : <span class="badge badge-danger"> <%=pd.getProductId()%>
					</span>
				</p>
				<p>
					<b>제조사</b> :
					<%=pd.getManufacturer()%>
				</p>
				<p>
					<b>분류</b> :
					<%=pd.getCategory()%>
				</p>
				<p>
					<b>재고 수</b> :
					<%=pd.getUnitsInStock()%>
				</p>
				<h4><%=pd.getUnitPrice()%>원
				</h4>
				<p>
					<a href="#" class="btn btn-info">상품 주문 &raquo;</a>
				</p>
				<p>
					<a href="./products.jsp" class="btn btn-secondary">상품 목록
						&raquo;</a>
				</p>

			</div>
		</div>


	</div>
	<hr>

	<%@include file="footer.jsp"%>
</body>
</html>