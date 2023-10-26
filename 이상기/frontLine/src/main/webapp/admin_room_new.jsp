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
<!-- 관리자 메뉴 스타일 -->
<link rel="stylesheet" href="resources/css/admin_aside.css">
<script
  src="https://code.jquery.com/jquery-3.7.1.js"
  integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4="
  crossorigin="anonymous"></script>
<script>
	
</script>
</head>
<body>
	<jsp:include page="header.jsp"/>
	<main>
		<jsp:include page="admin_aside.jsp"/>
		<section>
			<h1>숙소 등록 페이지입니다.</h1>
			<form action="/frontLine/RoomNew">
				숙소 이름 : <input type="text" name="roomTitle"><br>
				숙소 주소 : <input type="text" name="roomAddress"><br>
				숙소 가격 : <input type="text" name="roomPrice"><br>
				숙소 이미지 : <input type="text" name="roomImage"><br>
				숙소 상세설명 : <input type="text" name="roomDetail"><br>
				<input type="submit" value="등록">
			</form>
		</section>
	</main>
</body>
</html>