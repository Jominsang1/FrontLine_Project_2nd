<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.frontline.db.PopupDB" %>
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
<style>
.popup {
	heigth: 300px;
   	width: 300px;
}
.popup_new {
	display: flex;
}
.popup_management {
	display: flex;
}
.popup_target {
	display: none;
}
</style>
</head>
<body>
	<jsp:include page="header.jsp"/>
	<main>
		<jsp:include page="admin_aside.jsp"/>
		<section>
			<h1>팝업 미리보기</h1>
			
			<div class="popup_new">
				<c:forEach var="item" items="<%= PopupDB.getPopupList()%>" varStatus="i">
					<div class="popup" id="${i.index}">
   	    				<img width="100%" heigth="100%" src="${item.getPopupImage()}">
   	    					<div class="popup_main">
   	    						<div>
   	    							<input id="popup_checkbox" type="checkbox" name="popup"> 10초동안 보지않기
   	    						</div> 
   	    						<input class="popup_submit" id="popup_submit" type="submit">
   	   	    					<input id="popup_button" type="button" value="닫기">
   	    					</div>
   	    			</div>
				</c:forEach>
			</div>
			<h1>팝업 수정하기</h1>
			<div class="popup_management">
				<c:forEach var="item" items="<%= PopupDB.getPopupList()%>" varStatus="i">
					<form action="/frontLine/Popup">
						${i.count }번 팝업 이미지 : <input type="text" name="popupImage">
						<input class="popup_target" type="text" name="popupTarget" value="${i.index}">
						<input type="submit" value="수정하기">
					</form>
				</c:forEach>
			</div>
			
			
		</section>
	</main>
</body>
</html>