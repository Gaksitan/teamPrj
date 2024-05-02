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
<table border="1">
	<thead>
		<tr>
			<th>제목</th>
			<th>내용</th>
			<th>날짜</th>
		</tr>
	</thead>
	<thead>
		<c:forEach var="board" items="${list }">
		<td>${board.title }</td>
		<td>${board.content }</td>
		<td>${board.regTime }</td>
		</c:forEach>
	</thead>
</table>
</div>
</body>
</html>