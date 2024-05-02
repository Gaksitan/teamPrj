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
			<th>작성자</th>
			<th>내용</th>
			<th>작성날짜</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td>${board.title} </td>
			<td>${board.writer} </td>
			<td>${board.content} </td>
			<td>${board.regTime} </td>
		<tr>
	</tbody>
</table>
</div>
<div><a href="main">메인으로 가기</a></div>
</body>
</html>