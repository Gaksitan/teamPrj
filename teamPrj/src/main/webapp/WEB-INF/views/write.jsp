<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	<form class="write" action="registBoard" method="post">
		<input type="text" name="title" placeholder="제목">
		<input type="text" name="content" placeholder="내용">
		<input type="text" name="receiver" placeholder="보낼사람">
		<a href="/">아이디 체크</a>
		<input class="btn" type="submit" value="회원가입하기">
	</form>
</div>
<script>
// 아이디 체크 관련 메서드만들기
</script>
</body>
</html>