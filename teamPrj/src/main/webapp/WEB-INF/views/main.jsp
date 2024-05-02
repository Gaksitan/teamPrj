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
</div>	
	<script>
	
	const writers = document.querySelectorAll(".writers");
	const aLinks = document.querySelectorAll(".titleLink");

// 		내가 쓰거나 받은 글이 아닐 경우 제목옆에 표시
	writers.forEach(writer=>{
		if("${sessionScope.loginInfo.getId()}" != writer.innerText){
			const titleLink = writer.parentElement.querySelector(".titleLink");
			//a링크 옆에 자물쇠 모양보여주고 링크 클릭 못하게 만들기
			titleLink.insertAdjacentHTML("afterbegin", "🔒");
			titleLink.removeAttribute('href');
		}
	})
// 	내가 쓰거나 받은 글이 아닐 경우에 클릭하면 안내문 띄워주기
	aLinks.forEach(link =>{
		link.addEventListener("click", ()=>{
			const writer = link.parentElement.parentElement.querySelector(".writers").innerText;
			const receiver = link.parentElement.parentElement.querySelector(".receivers").innerText;
			if("${sessionScope.loginInfo.getId()}" != writer && "${sessionScope.loginInfo.getId()}" != receiver){
				alert("자신이 작성한 글이나, 자신에게 쓰여진 글만 열람가능합니다.");
			}
		});
	})
	</script>
</body>
</html>