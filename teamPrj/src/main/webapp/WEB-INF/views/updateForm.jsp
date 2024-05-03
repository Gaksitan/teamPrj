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
	<form class="myinfoForm" action="update" method="post">
		<h1 class="page_title">내정보 수정</h1>
		<p>아이디</p>
		<input type=text name="id" value="${sessionScope.id }"><br>
		<p>비밀번호</p>
		<input type="password" name="pw" placeholder="비밀번호"> <br>
		<p>이름</p>
		<input type="text" name="name" placeholder="이름"> <br>
		<input class="btn" type="submit" value="정보수정하기"> <br>
	</form>
</div>
</body>
</html>