<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:useBean id="member" class="dto.MemberDto"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> bean </title>
</head>
<body>
	<jsp:setProperty property="mid" name="member" value="tiger"/>
	<jsp:setProperty property="mpw" name="member" value="12345"/>
	<jsp:setProperty property="name" name="member" value="홍길동"/>
	<jsp:setProperty property="mage" name="member" value="17"/>
	
	<h2>회원정보</h2>
	<hr>
	<ul>
		<li>아이디 : ${ member.mid }</li>
		<li>비밀번호 : ${ member.mpw }</li>
		<li>이름 : ${ member.name }</li>
		<li>나이 : ${ member.mage }</li>
	</ul>
</body>
</html>