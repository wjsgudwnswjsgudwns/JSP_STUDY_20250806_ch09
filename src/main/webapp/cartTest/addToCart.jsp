<%@page import="dto.ProductListDto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	
	request.setCharacterEncoding("UTF-8");
	
	String product = request.getParameter("product");
	String color = request.getParameter("color");
	String quantity = request.getParameter("quantity");
	
	ArrayList<ProductListDto> cart = (ArrayList<ProductListDto>) session.getAttribute("cart");
	
	if (cart == null) {					// cart가 null 일때 
		cart = new ArrayList<ProductListDto>(); // ArrayList 새로 생성
	}
	
	cart.add(new ProductListDto(product, color, quantity));
	
	session.setAttribute("cart", cart); 
	%>
	<h2>장바구니에 <%= color %> <%= product %>이(가) <%= quantity %>개 추가 되었습니다.</h2>
	<a href="productList.jsp">상품 더 보기</a><br>
	<a href="viewCart.jsp">장바구니 보기</a>
</body>
</html>