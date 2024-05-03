<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/css/style.css">
</head>
<%@ include file="header.jsp" %>
<body>
<div class="container">
<h1 class="page_title">받은 글보기</h1>
<c:if test="${empty list }">
	<p class="noDataBox">받은 글이 없습니다.</p>
</c:if>
<c:if test="${not empty list}">
<table border="1">
	<thead>
		<tr>
			<th>제목</th>
			<th>내용</th>
			<th>작성자</th>
			<th>날짜</th>
		</tr>
	</thead>
	
	<tbody>
		<c:forEach var="board" items="${list }">
			<tr>
				<td>${board.title }</td>
				<td>${board.content }</td>
				<td>${board.receiver }</td>
				<td>${board.regTime }</td>
			</tr>
		</c:forEach>
	</tbody>
</table>
</c:if>
</div>
</body>
</html>