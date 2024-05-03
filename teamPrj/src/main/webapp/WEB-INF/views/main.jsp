<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<a style="display:none" class="btn" id="regFormBtn" href="write">글 작성</a>

<c:if test="${empty list}">
    <p>※회원만 볼 수 있는 페이지입니다.<br>
    로그인 또는 회원가입을 해주세요😊
</c:if>
<c:if test="${not empty list}">
	<table>
		<tr>
			<th>제목</th>
			<th>작성자</th>
			<th>작성일자</th>
		</tr>
		<tbody>
			<c:forEach var="board" items="${list}">
				<tr>
					<td><a class="titleLink" href="detail?bno=${board.bno}">${board.title}</a></td>
					<td class="receivers" style="display:none">${board.receiver}</td>
					<td class="writers">${board.writer}</td>
					<td>${board.regTime}</td>
				</tr>
		    </c:forEach>
		 </tbody>
	</table>
</c:if>	
</div>	

	<script>
	
	const writers = document.querySelectorAll(".writers");
	const aLinks = document.querySelectorAll(".titleLink");
	const regFormBtn = document.querySelector("#regFormBtn");

// 	내가 쓰거나 받은 글이 아닐 경우에 클릭하면 안내문 띄워주기
	aLinks.forEach(link =>{
		const writer = link.parentElement.parentElement.querySelector(".writers").innerText;
		const receiver = link.parentElement.parentElement.querySelector(".receivers").innerText;
		
		if("${sessionScope.loginInfo.getId()}" != writer && "${sessionScope.loginInfo.getId()}" != receiver){
			link.insertAdjacentHTML("afterbegin", "🔒");
			link.removeAttribute('href');
		}
		link.addEventListener("click", ()=>{
			if("${sessionScope.loginInfo.getId()}" != writer && "${sessionScope.loginInfo.getId()}" != receiver){
				alert("자신이 작성한 글이나, 자신에게 쓰여진 글만 열람가능합니다.");
			}
		});
	})
	
	if(${sessionScope.loginInfo ne null}){
		regFormBtn.style.display="inline-block";
	}
	
	</script>
</body>
</html>