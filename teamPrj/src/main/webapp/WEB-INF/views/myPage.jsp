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
<p><내정보></p>
<table id="table1" border="1">
	<tr>
		<th>아이디</th><td> ${id}</td>
	</tr>
	<tr>	
		<th>비밀번호</th><td> ${pw }</td>
	</tr>
	<tr>	
		<th>이름</th><td> ${name } </td>
	</tr>
	<tr>	
		<th></th><td><a href="updateForm">내정보 수정</a></td>
	</tr>
</table>
<br>
<ul>
	<li><a href="myList">▶▶ 내가 작성한 글로 가기</a></li>
	<li><a href="receiveList">▶▶ 받은 글로 가기</a></li>
</ul>
</body>
</html>