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
	<form class="regForm" action="regist" method="post">
		<input type="text" name="id" placeholder="아이디"> 
		<a href="/">중복체크</a> <br>
		<input type="password" name="pw" placeholder="비밀번호"> <br>
		<input type="text" name="name" placeholder="이름"> <br>
		<input class="btn" type="submit" value="회원가입하기"> <br>
	</form>
</div>
<script>
// 중복체크 버튼 관련 메서드만들기
</script>
</body>
</html>