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
	
	request.setAttribute("cart", cart);
	
	%>
	<c:choose>
	
	<c:when test="${cart==null}">
		<h2>장바구니가 비었습니다.</h2>
	</c:when>
	
	<c:otherwise>
	
	<h2>장 바 구 니</h2>
	
	<table>
		<tr>
			<th>번 호</th>
			<th>상 품</th>
			<th>색 상</th>
			<th>수 량</th>
		</tr>
		<c:forEach var="productDto" items="${cart}" varStatus="status"> <!-- varStatus="status" 현재상태 -->
			<tr>
				<td>${status.count}</td> <!-- 1부터 시작해서 for문이 돌때마다 1씩 증가함. ex)count++ -->
				<td>${productDto.product}</td>
				<td>${productDto.color}</td>
				<td>${productDto.quantity}</td>
			</tr>
		</c:forEach>
	</table>
	
	</c:otherwise>
	
	</c:choose>
	
	<a href="productList.jsp">상품 더 보기</a><br>
</body>
</html>