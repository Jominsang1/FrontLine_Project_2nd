<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.frontline.db.UserDb" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- 헤더 자바스크립트 -->
<!-- 어드민 헤더만 자바스크립트로 헤더 스타일 변경해줌 -->
<script src="resources/js/header_admin.js"></script>
<!-- 헤더 스타일 -->
<link rel="stylesheet" href="resources/css/header.css">
<script
  src="https://code.jquery.com/jquery-3.7.1.js"
  integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4="
  crossorigin="anonymous"></script>
<script>
	$("document").ready(function(){
		// 수정버튼
		$("input[value=수정]").click(function(){
			
			let target_num = Number($(this).attr("id"))+1;
			
			let name = $("tr").eq(target_num).children("td").eq(0).text()
			let id = $("tr").eq(target_num).children("td").eq(1).text()
			let pw = $("tr").eq(target_num).children("td").eq(2).text()
			let email = $("tr").eq(target_num).children("td").eq(3).text()
			let phone = $("tr").eq(target_num).children("td").eq(4).text()
			let birth = $("tr").eq(target_num).children("td").eq(5).text()
			let reser = $("tr").eq(target_num).children("td").eq(6).text()
			let grade = $("tr").eq(target_num).children("td").eq(7).text()
			
			$("#popup_name").text(name)
			$("#popup_id").text(id)
			$("#popup_pw").text(pw)
			$("#popup_email").text(email)
			$("#popup_phone").text(phone)
			$("#popup_birth").text(birth)
			$("#popup_reser").text(reser)
			$("#popup_grade").text(grade)
			
			$(".popup").css("display", "block")
			
		})
		
		// 취소버튼
		$("input[value=취소]").click(function(){
			
			$(".popup").css("display", "none")
		})
		
		
	})
</script>
<style>
	body {
		height: 100vh;
		background-color: red;
	}
	nav{
		height: 100%;
		width: 20%;
		background-color: rgb(71, 71, 71);
		
		display: flex;
		flex-direction: column;
		justify-content: space-evenly;
	}
	section {
		background-color: white;
		width: 100%;
	}
	.mid_wrap {
		display: flex;
		height: 90%;
	}
	.menu {
		text-align: center;
		color: white;
	}
	.popup	{
		display: none;
		
		position: absolute;
		top: 10%;
		left: 25%;
		
		border: 2px solid red;
		background-color: white;
		
		width: 50%;
		height: 50%;
		
	}
</style>
</head>
<body>
	<jsp:include page="header.jsp"/>
	<div class="mid_wrap">
		<nav>
			<div class="menu menu_user"><a href="admin_user.jsp"><h1>회원 관리</h1></a></div>
			<div class="menu menu_wrtie"><a href="admin_write.jsp"><h1>게시물 관리</h1></a></div>
			<div class="menu menu_reser"><a href="admin_reser.jsp"><h1>예약 관리</h1></a></div>
		</nav>
	
		<section>
			<h1>회원관리 페이지입니다.</h1>
			<table border="1">
				<tr>
					<th>이름</th>
					<th>아이디</th>
					<th>비밀번호</th>
					<th>이메일</th>
					<th>핸드폰 번호</th>
					<th>생일</th>
					<th>회원가입일</th>
					<th>등급</th>
					<th>비고</th>
				</tr>
			<c:forEach var="item" items="${sessionScope.userData.getUserData()}" varStatus="i">
				<tr>
					<td>${item.userName}</td>
					<td>${item.userId}</td>
					<td>${item.userPw}</td>
					<td>${item.userEmail}</td>
					<td>${item.userPhone}</td>
					<td>${item.userBirth}</td>
					<td>${item.userRegDate}</td>
					<td>${item.userGrade}</td>
					<td><input type="button" value="수정" id="${i.index}"></td>
				</tr>
			</c:forEach>
			</table>
			<div class="popup">
				<form id="popup_form" action="/frontLine/UserEdit">
				<div><h1>수정페이지</h1></div>
					<div>이름 : <a id="popup_name"></a><br>수정할 값 : <input type="text" name="userName"></div>
					<div>비밀번호 : <a id="popup_pw"></a><br>수정할 값 : <input type="text" name="userPw"></div>
					<div>이메일 : <a id="popup_email"></a><br>수정할 값 : <input type="text" name="userEmail"></div>
					<div>핸드폰 번호 : <a id="popup_phone"></a><br>수정할 값 : <input type="text" name="userPhone"></div>
					<div>생일 : <a id="popup_birth"></a><br>수정할 값 : <input type="text" name="userBirth"></div>
					<div>회원가입일 : <a id="popup_reser"></a><br>수정할 값 : <input type="text" name="userRegDate"></div>
					<div>등급 : <a id="popup_grade"></a><br>수정할 값 : <input type="text" name="userGrade"></div>
					<input type="submit" value="수정하기">
					<input type="button" value="취소">
				</form>
			</div>
		</section>
	</div>
</body>
</html>