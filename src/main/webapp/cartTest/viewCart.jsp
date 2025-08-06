<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="dto.ProductListDto"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<%
	
	ArrayList<ProductListDto> cart = (ArrayList<ProductListDto>) session.getAttribute("cart");
	
	if (cart == null) {
		out.println("장바구니가 비어 있습니다. <br>");	
	}
	
	
	%>
	<h2>장 바 구 니</h2>
	<table>
		<tr>
			<th>번 호</th>
			<th>상 품</th>
			<th>색 상</th>
			<th>수 량</th>
		</tr>
		<c:forEach var="productDto" items="${cart}" varStatus="status">
			<tr>
				<td>${status.count}</td>
				<td>${productDto.product}</td>
				<td>${productDto.color}</td>
				<td>${productDto.quantity}</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>