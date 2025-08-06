<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL</title>
</head>
<body>
	<!-- for -->
	
	<c:forEach var="i" begin="0" end="9">
	<h1>${i}</h1>
	</c:forEach>
	
	<!-- for -->
	
	<c:forEach var="i" begin="0" end="9" step="2">
	<h1>${i}</h1>
	</c:forEach>
	
	<%
	
	String[] str = {"이순신", "김유신", "홍길동"};
	request.setAttribute("strs", str);
	
	%>
	
	
	<!-- for -->
	
	<c:forEach var="str" items="${strs}">
		<h1>${str}</h1>
	</c:forEach>
</body>
</html>