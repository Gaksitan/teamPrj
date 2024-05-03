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
<c:if test="${empty list}">
    <p>작성한 글이 없습니다.</p>
</c:if>

<c:if test="${not empty list}">
<table border="1">
	<thead>
		<tr>
			<th>제목</th>
			<th>내용</th>
			<th>날짜</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="myList" items="${list }">
		<tr>
			<td>${myList.title }</td>
			<td>${myList.content }</td>
			<td>${myList.regTime }</td>
			<td><a href="delete?bno=${myList.bno }">글 삭제</a></td>
		</tr>
		</c:forEach>
	</tbody>
</table>
</c:if>
</div>

</body>
</html>