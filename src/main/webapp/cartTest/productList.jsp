<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

	<head>

		<meta charset="UTF-8">
		<title> 상품 목록 </title>
		<script type="text/javascript">
		function checkForm() {
			if(document.productForm.quantity.value.length == 0){
				alert ("수량을 입력해주세요");
				return false;
			}
			
		}
		</script>


	</head>

<!-- -------------------------------BODY-------------------------------------- -->	

	<body>
		
		<h2>장바구니에 넣을 상품을 선택하세요</h2>
		<hr>
		
		<form action="addToCart.jsp" name="productForm"  onsubmit="return checkForm()">
			상 품 : 
			<select name="product">
				<option value="스마트폰">스마트폰</option>
				<option value="노트북">노트북</option>
				<option value="아이패드">아이패드</option>
				<option value="무선이어폰">무선이어폰</option>
			</select>
			
			<br>
			색 상 : <select name="color">
				<option value="검정">검정</option>
				<option value="회색">회색</option>
				<option value="청색">청색</option>
				</select>
			<br>
			수 량 : <input type="text" name="quantity" size="5">
			<br>
			<input type="submit" value="장바구니 담기">
		
		</form>
		<hr>
		<a href="viewCart.jsp">장바구니 보기</a>
	</body>
	
</html>