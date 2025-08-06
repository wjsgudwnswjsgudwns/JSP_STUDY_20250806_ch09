<%@page import="dto.BoardDto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 자유 게시판</title>
</head>
<body>
	<!-- 게시판 리스트 -->
	<%
		// 게시판 더미 데이터
		
		List<BoardDto> boardList = new ArrayList<BoardDto>();
		// 게시글을 여러개 담을 ArrayList 준비
		
		boardList.add(new BoardDto(1, "안녕하세요","이순신","2025-08-06"));
		boardList.add(new BoardDto(2, "감사해요","개똥이","2025-08-06"));
		boardList.add(new BoardDto(3, "잘있어요","소똥이","2025-08-06"));
		boardList.add(new BoardDto(4, "다시 만나요","말똥이","2025-08-06"));
		boardList.add(new BoardDto(5, "길가다가 100원 주움","양똥이","2025-08-06"));
		
		request.setAttribute("boardList", boardList);
		
	%>
	<h2>자유 게시판</h2>
	<table border="1" cellspacing="0" cellpadding="0">
		<tr>
			<th>No.</th>
			<th>제목</th>
			<th>글쓴이</th>
			<th>날짜</th>
		</tr>
		
		<c:forEach var="boardDto" items="${boardList}">
			<tr>
				<td>${boardDto.bnum}</td>
				<td>${boardDto.btitle}</td>
				<td>${boardDto.bwriter}</td>
				<td>${boardDto.bdate}</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>