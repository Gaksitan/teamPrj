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
<form action="regist" method="post">
	<input type="text" name="id" placeholder="아이디">
	<a href="/">중복체크</a>
	<input type="password" name="pw" placeholder="비밀번호">
	<input type="text" name="name" placeholder="이름">
	<input type="submit" value="회원가입하기">
</form>

<script>
// 중복체크 버튼 관련 메서드만들기
</script>
</body>
</html>