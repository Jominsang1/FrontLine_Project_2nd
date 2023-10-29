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
	<table class="table" border="1">
			<tr>
				<th>도시</th>
				<th>주소</th>
				<th>상호명</th>
				<th>전화번호</th>
				<th>오픈 시간</th>
				<th>상세 정보</th>
				<th>이미지</th>
				<th>&nbsp;</th>
				<th>&nbsp;</th>
				<th>&nbsp;</th>
			</tr>
			<c:forEach var="item" items="<%= EatDB.getEatList() %>">			
			<tr>	
				<td><textarea class="dto-class" name="city">"${item.getCity()}"</textarea></td>
				<td><textarea class="dto-class" name="address">"${item.getAddress()}"</textarea></td>
				<td><textarea class="dto-class" name="title">"${item.getTitle()}"</textarea></td>
				<td><textarea class="dto-class" name="tell">"${item.getTell()}"</textarea></td>
				<td><textarea class="dto-class" name="openTime">"${item.getOpenTime()}"</textarea></td>
				<td><textarea class="dto-class" name="detail">"${item.getDetail()}"</textarea></td>
				<td><img class="eat_image"src="${item.getImage()}"><textarea class="dto-class" name="image"></textarea></td>
				<td><input type="button" value="수정"></td>
				<td><input type="submit" value="완료"></td>
				<td><input type="button" value="삭제"></td>
			</tr>
			</c:forEach>
			</table>
	</section>
	</main>	
</body>
</html>
    


