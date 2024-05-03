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
<h1>로그인 화면</h1>
	<form class="loginForm" action="login" method="post">
		<input type="text" name="id" placeholder="아이디">
		<input type="password" name="pw" placeholder="패스워드">
		<input class="btn" type="submit" value="로그인">
	</form>
</div>
</body>
</html>