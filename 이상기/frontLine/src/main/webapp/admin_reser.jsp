<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
			<h1>예약관리 페이지입니다.</h1>
		</section>
	</div>
</body>
</html>