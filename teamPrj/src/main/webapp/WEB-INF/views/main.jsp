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
	<table>
		<tr>
			<th>제목</th>
			<th>작성자</th>
			<th>작성일자</th>
		</tr>
		<c:forEach var="board" items="${list}">
			<tr>
				<td><a href="detail?bno="${board.bno}">${board.title}</a></td>
				<td>${board.writer}</td>
				<td>${board.regTime}</td>
			</tr>
	    </c:forEach>
	</table>
	
	<script>
// 		내가 쓰거나 받은 글이 아닐 경우 제목 클릭시 안내창이 뜨도록하는 함수
	
	</script>
</body>
</html>