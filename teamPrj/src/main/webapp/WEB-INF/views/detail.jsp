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
<h3>댓글</h3>
<div class="container_comment">
	<table border="1">
		<thead>
			<tr>
				<th>작성자</th><th>내용</th><th>작성날짜</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach var="commentList" items="${commentList }">
			<tr>
				<td>${commentList.writer }</td>
				<td>${commentList.content }</td>
				<td>${commentList.regTime }</td>
				<c:if test="${sessionScope.id == commentList.writer }">
				<td><a href="deleteComment?cno=${commentList.cno }&bno=${board.bno}">X</a></td>
				</c:if>
			</tr>
		</c:forEach>
		</tbody>
	</table>
</div>
<h3>댓글 등록 창</h3>
<div class="container_regcomment">
	<form action="regComment" method="post">
	<input type="hidden" name="bno" value="${board.bno }">
		<table border="1">
			<tr>
				<th>작성자</th><th>내용</th>
			</tr>
			<tr>
				<td>${sessionScope.id }</td>
				<td><input type="text" name="comment_content" placeholder="댓글 작성란"></td>
				<td><input type="submit" value="댓글 등록"></td>
			</tr>
		</table>
	</form>
</div>
<div><a href="main">메인으로 가기</a></div>
</body>
</html>