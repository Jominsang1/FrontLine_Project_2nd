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
.head {
	display: block;
}

#search {
	display: inline-block;
}

.sb {
	width: 80px;
	height: 30px;
	font-size: 14px;
	border: 1px solid #aaa;
	border-radius: 6px;
}

.sinput {
	width: 150px;
	height: 26px;
	font-size: 14px;
	text-align: center;
	border: 1px solid #aaa;
	border-radius: 6px;
}

.sbtn {
	width: 50px;
	height: 30px;
	font-size: 14px;
	border: 1px solid #aaa;
	border-radius: 6px;
}

.table {
	width: 50%;
}

.table input {
	width: 100%;
	word-break: break-all;
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
				<td><input class="dto-class" name="city" type="text" value="${item.getCity()}" readonly></td>
				<td><input class="dto-class" name="address" type="text" value="${item.getAddress()}" readonly></td>
				<td><input class="dto-class" name="title" type="text" value="${item.getTitle()}" readonly></td>
				<td><input class="dto-class" name="tell" type="text" value="${item.getTell()}" readonly></td>
				<td><input class="dto-class" name="openTime" type="text" value="${item.getOpenTime()}" readonly></td>
				<td><input class="dto-class" name="detail" type="text" value="${item.getDetail()}" readonly></td>
				<td><input class="dto-class" name="image" type="text" value="${item.getImage()}" readonly></td>
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
    


