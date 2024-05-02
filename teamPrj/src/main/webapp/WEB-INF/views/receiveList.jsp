<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%@ include file="header.jsp" %>
<body>

<div class="container">
<table border="1">
	<thead>
		<th>제목</th>
		<th>내용</th>
		<th>날짜</th>
	</thead>
	<thead>
		<td>${title }</td>
		<td>${content }</td>
		<td>${regtime }</td>
	</thead>
</table>
</div>
</body>
</html>