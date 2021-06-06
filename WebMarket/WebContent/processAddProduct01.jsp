<%@page import="java.util.Enumeration"%>
<%@page import="dao.ProductRepository"%>
<%@page import="dto.Product"%>
<%@page import="java.util.*"%>
<%@page import="com.oreilly.servlet.*"%>
<%@page import="com.oreilly.servlet.multipart.*"%>
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

	String realFolder = "C:\\upload";
	int maxSize = 5 * 1024 * 1024;
	String encType = "utf-8";

	MultipartRequest multi = new MultipartRequest(request, realFolder, maxSize, encType, new DefaultFileRenamePolicy());

	String productId = multi.getParameter("productId");
	String name = multi.getParameter("name");
	String unitPrice = multi.getParameter("unitPrice");
	String description = multi.getParameter("description");
	String manufacturer = multi.getParameter("manufacturer");
	String category = multi.getParameter("productId");
	String unitsInStock = multi.getParameter("unitsInStock");
	String condition = multi.getParameter("condition");

	int price = 0;
	if (unitPrice.isEmpty() || unitPrice == null) {
		price = 0;
	} else {
		price = Integer.valueOf(unitPrice);
	}

	long stock = 0;
	if (unitsInStock.isEmpty() || unitsInStock == null) {
		stock = 0;
	} else {
		stock = Long.valueOf(unitsInStock);
	}

	Enumeration files = multi.getFileNames();
	String fname = (String) files.nextElement();
	String fileName = multi.getFilesystemName(fname);

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
	pd.setFilename(fileName);

	dao.addProduct(pd);

	response.sendRedirect("products.jsp");
	%>
</body>
</html>