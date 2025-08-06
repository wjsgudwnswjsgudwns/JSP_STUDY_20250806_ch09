<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 로그인 확인</title>
</head>
<body>
	<%
	
		request.setCharacterEncoding("UTF-8");
		
		String mid = request.getParameter("mid");
		String mpw = request.getParameter("mpw");
		
		request.setAttribute("memberPw", mpw);
		
		if(mid.equals("tiger") && mpw.equals("12345")){
			session.setAttribute("user", mid);
		}
	%>
	
	<h2>${ sessionScope.user } 로그인</h2>
	<h3>${ memberPw } </h3>
</body>
</html>