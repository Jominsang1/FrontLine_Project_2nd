<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.frontline.db.EatDB"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
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
<style>
/*셀렉트*/
.table {
	width: 30%;
}

.table textarea {
	width: 100px;
}
.eat_image {
	width: 100px;
	height: 100px;
}

textarea {
	resize: none;
}
</style>
</head>

<body>
	<jsp:include page="header.jsp"/>
	<main>
	<jsp:include page="admin_aside.jsp"/>
	<section>
	<div class="hright">
						<div class="travelReg">
							<h2>여행지 등록 페이지</h2>
						</div>
						<form id="search" method="GET" action="TravelNew">
							<select class="sb" name="city">
								<option value="" disabled="disabled" selected="selected">지역선택</option>
								<option value="천안시">천안시</option>
								<option value="아산시">아산시</option>
								<option value="태안군">태안군</option>
								<option value="서산시">서산시</option>
								<option value="당진시">당진시</option>
								<option value="홍성군">홍성군</option>
								<option value="예산군">예산군</option>
								<option value="공주시">공주시</option>
								<option value="청양군">청양군</option>
								<option value="보령시">보령시</option>
								<option value="부여군">부여군</option>
								<option value="계룡시">계룡시</option>
								<option value="서천군">서천군</option>
								<option value="논산시">논산시</option>
								<option value="금산군">금산군</option>
							</select>
							<div class="inputInform">
								<div>상호명</div>
								<input class="sinput" type="text" name="title">
								<div>여행지 사진</div>
								<input class="sinput" type="text" name="image">
								<div>상세 소개글</div>
								<input class="sinput" type="text" name="detail">
								<div>문의 및 안내글</div>
								<input class="sinput" type="text" name="tell">
								<div>편의 정보</div>
								<input class="sinput" type="text" name="openTime">
								<div>상세주소</div>
								<input class="sinput" type="text" name="address">
							</div>
							<input class="sbtn" type="submit" value="등록">
						</form>
					</div>
	</section>
	</main>	
</body>
</html>
    