<%@page import="dao.ProductRepository"%>
<%@page import="dto.Product"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>

	<%
		request.setCharacterEncoding("utf-8");

	String productId = request.getParameter("productId");
	String name = request.getParameter("name");
	String unitPrice = request.getParameter("unitPrice");
	String description = request.getParameter("description");
	String manufacturer = request.getParameter("manufacturer");
	String category = request.getParameter("productId");
	String unitsInStock = request.getParameter("unitsInStock");
	String condition = request.getParameter("condition");

	int price;
	long stock;
	
	if (unitPrice.isEmpty() || unitPrice == null ) {
		price = 0;
	} else {
		price = Integer.valueOf(unitPrice);
	}

	if (unitsInStock.isEmpty() || unitsInStock == null){
		stock = 0;
	}
	else {
		stock = Long.valueOf(unitsInStock);
	}
		

	ProductRepository dao = ProductRepository.getInstance();
	Product pd = new Product();
	pd.setpName(name);
	pd.setUnitPrice(price);
	pd.setDescription(description);
	pd.setManufacturer(manufacturer);
	pd.setCategory(category);
	pd.setCondition(condition);
	pd.setProductId(productId);
	pd.setUnitsInStock(stock);
	
	dao.addProduct(pd);
	
	response.sendRedirect("products.jsp");
	%>
</body>
</html>