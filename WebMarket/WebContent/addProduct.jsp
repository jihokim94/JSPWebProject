<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<script type="text/javascript" src="resources/js/validation.js">

</script>
<script>
function CheckAddProduct(){
	var productId = document.getElementById("productId");
	
	var unitPrice = document.getElementById("unitPrice");
	var unitsInStock = document.getElementById("unitsInStock");

	var form = document.newProducts;
	
	var productValue = form.productId.value;
	var validtionOfId = /^P[0-9]{4,11}$/;
	var name = form.name.value;
	var unitPriceValue = form.unitPrice.value;
	var unitsInStockValue = form.unitsInStock.value;
//상품 아이디 체크
	if (!validtionOfId.test(productValue)){
		alert("[상품코드]\nP와 숫자를 조합하여 5~12자까지 입력하세요\n첫 글자는 반드시 P로 시작하세요");
		return false;
	}
		
	//상품명 체크
	if(name.length <4 || name.length > 12) {
		alert("[상품명]\n최소 4자에서 최대 12자까지 입력하세요");
		return false;
	}
	//상품 가격 체크
	if (unitPriceValue.length == 0 || isNaN(unitPriceValue)) {
		alert("[상품가격]\n숫자만 입력하세요");
		unitPrice.select();
		unitPrice.focus();
		return false;
	}
	
	if (unitPriceValue < 0) {
		alert("[상품가격]\n음수는 입력할 수 없습니다");
		unitPrice.select();
		unitPrice.focus();
		return false;
	}
	
	//재고 수 체크
	if (isNaN(unitsInStockValue)) {
		alert("[재고 수]\n숫자만 입력하세요");
		unitsInStock.select();	
		unitsInStock.focus();
		return false;
	}
	
	
	document.newProducts.submit();
}


	</script>
<meta charset="UTF-8">
<title>상품 등록</title>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">상품 등록</h1>
		</div>
		<div class="container">
			<form action="processAddProduct01.jsp" name="newProducts"
				class="form-horizontal" method="post" enctype="multipart/form-data">
				<div class="form-group row">
					<label class="col-sm-2">상품 코드</label>
					<div class="col-sm-3">
						<input type="text" name="productId" class="form-control">
					</div>
				</div>
				<div class="form-group row">
					<label class="col-sm-2">상품명</label>
					<div class="col-sm-3">
						<input type="text" name="name" class="form-control">
					</div>
				</div>
				<div class="form-group row">
					<label class="col-sm-2">상품 가격</label>
					<div class="col-sm-3">
						<input type="text" name="unitPrice" class="form-control">
					</div>
				</div>
				<div class="form-group row">
					<label class="col-sm-2">상세 정보</label>
					<div class="col-sm-5">
						<textarea name="description" cols="50" rows="3"
							class="form-control">
						</textarea>
					</div>
				</div>
				<div class="form-group row">
					<label class="col-sm-2">제조사</label>
					<div class="col-sm-3">
						<input type="text" name="manufacturer" class="form-control">
					</div>
				</div>
				<div class="form-group row">
					<label class="col-sm-2">분류</label>
					<div class="col-sm-3">
						<input type="text" name="category" class="form-control">
					</div>
				</div>
				<div class="form-group row">
					<label class="col-sm-2">재고 수</label>
					<div class="col-sm-3">
						<input type="text" name="unitsInStock" class="form-control">
					</div>
				</div>
				<div class="form-group row">
					<label class="col-sm-2">상태</label>
					<div class="col-sm-5">
						<input type="radio" name="condition" value="New"> 신규 제품 <input
							type="radio" name="condition" value="Old"> 중고 제품 <input
							type="radio" name="condition" value="Refurbished"> 재생 제품
					</div>
				</div>
				<div class="form-group row">
					<label class="col-sm-2">이미지</label>
					<div class="col-sm-5">
						<input type="file" name="productImage" class="form-control">
					</div>
				</div>
				<div class="form-froup row">
					<div class="col-sm-offset-2 col-sm-10">
						<input type="button" class="btn btn-primary" value="등록"
							onclick="CheckAddProduct()">
					</div>
				</div>
			</form>
		</div>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>