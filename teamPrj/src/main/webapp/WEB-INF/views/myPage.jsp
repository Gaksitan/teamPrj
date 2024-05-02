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
<table id="table1" border="1">
	<tr>
		<td>아이디 : ${id}</td>
		<td>비밀번호 : ${pw }</td>
		<td>이름 : ${name } </td>
		<td><a href="updateForm">내정보 수정</a></td>
	</tr>
</table>
<br>
<br>
<ul>
	<li><a href="myList">내가 작성한 글로 가기</a></li>
	<li><a href="receiveList">받은 글로 가기</a></li>
</ul>
</body>
</html>