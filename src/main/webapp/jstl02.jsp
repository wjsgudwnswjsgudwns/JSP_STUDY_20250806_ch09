<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL</title>
</head>
<body>
	<!-- if 문 -->
	<c:if test="${10>5}" >
		<h1>10은 5보다 크다</h1>
	</c:if>
	
	<!-- if else -->
	<c:choose>
		<!-- if -->
		<c:when test="${10>5}">
		<h1>10은 5보다 크다</h1>
		</c:when>
		
		<!-- if else -->
		<c:otherwise>
		<h1>10은 5보다 작다</h1>
		</c:otherwise>
	</c:choose>
	
	<!-- if else if -->
	<c:set var="scr" value="85"/>
	
	<c:choose>
		<!-- if -->
		<c:when test="${src}>=90">
		<h1>수</h1>
		</c:when>
		
		<!-- else if -->
		<c:when test="${src}>=80">
		<h1>우</h1>
		</c:when>
		
		<!-- else if -->
		<c:when test="${src}>=70">
		<h1>미</h1>
		</c:when>
		
		<!-- else if -->
		<c:when test="${src}>=60">
		<h1>양</h1>
		</c:when>
		
		<!-- else -->
		<c:otherwise>
		<h1>가</h1>
		</c:otherwise>
		
	</c:choose>
	
</body>
</html>