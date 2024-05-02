<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%@ include file="header.jsp" %>
<body>
<h1>Detail Page</h1>
<hr>
<table border="1">
	<thead>
		<th>제목</th>
		<th>작성자</th>
		<th>내용</th>
		<th>작성날짜</th>
	</thead>
	<tbody>
		<td>${board.title} </td>
		<td>${board.writer} </td>
		<td>${board.content} </td>
		<td>${board.regtime} </td>
	</tbody>
</table>
<div><a href="main">메인으로 가기</a></div>
</body>
</html>