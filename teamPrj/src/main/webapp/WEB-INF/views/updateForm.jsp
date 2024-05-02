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
	<form action="update" method="post">
		아이디 : <input type=text name="id" value="${sessionScope.id }"><br>
		비밀번호 : <input type="password" name="pw" placeholder="비밀번호"> <br>
		이름 : <input type="text" name="name" placeholder="이름"> <br>
		<input class="btn" type="submit" value="정보수정하기"> <br>
	</form>
</div>
</body>
</html>