<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="fn" uri="jakarta.tags.functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> JSTL </title>
</head>
<body>
	<c:set var="score" value="100" /> <!-- int score = 100; -->
	점수 : ${ score }
</body>
</html>