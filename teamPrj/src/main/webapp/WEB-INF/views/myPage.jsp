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
	<h1 class="page_title">마이페이지</h1>
	<div class="mypage_container">
		<a class="btn myinfobtn" href="updateForm">내정보 수정</a>
		<table id="table1" border="1">
			<tr>
				<td>아이디</td>
				<td>${id}</td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td id="pw">${pw }</td>
			</tr>
			<tr>
				<td>이름</td>
				<td>${name }</td>
			</tr>
		</table>
		<br>
		<a class="btn" href="myList">내가 작성한 글로 가기</a>
		<a class="btn" href="receiveList">받은 글로 가기</a>
		
	</div>
</div>
<script>
function hidePw(){
	const pwTd = document.querySelector("#pw");
	let pw = "${pw}";
	let length = pw.length;
	
	let hiddenPw = "*".repeat(length);
	pwTd.innerHTML = hiddenPw;
}
hidePw();
</script>
</body>
</html>