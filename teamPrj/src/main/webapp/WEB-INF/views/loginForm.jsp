<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀 게시판😏</title>
<link rel="stylesheet" href="/css/style.css">
</head>
<%@ include file="header.jsp" %>
<body>
<div class="container">
	<form class="loginForm" action="login" method="post">
	<h1 class="page_title">로그인</h1>
		<input type="text" name="id" placeholder="아이디">
		<input type="password" name="pw" placeholder="패스워드">
		<input class="btn" type="submit" value="로그인">
	</form>
</div>
</body>
</html>