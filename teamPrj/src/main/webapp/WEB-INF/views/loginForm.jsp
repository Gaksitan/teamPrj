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
	<form action="login" method="post">
		<input type="text" name="id" placeholder="아이디">
		<input type="password" name="pw" placeholder="패스워드">
		<input type="submit" value="로그인">
	</form>
</body>
</html>