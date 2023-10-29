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

/*표*/
.table {
	display: flex;
	width: 944px;
	justify-content: space-between;
}

.tabletext {
	margin-top: 25px;
	font-weight: bold;
	font-size: 17px;
}

.board {
	margin-top: 10px;
	width: 450px;
	height: 30px;
	border-radius: 5px;
	border: solid 1px #999999;
}

.board_2 {
	margin-top: 10px;
	width: 944px;
	height: 200px;
	border-radius: 5px;
	border: solid 1px #999999;
}

table {
	border-collapse: collapse;
	border: 0;
}

th, td {
	border: 1px solid #aaa;
	padding: 0.6rem;
	text-align: center;
	margin: auto;
}

thead th, tbody th {
	background-color: #f8f8f8;
}

/*페이지 버튼*/
.page_button {
	text-align: center;
	margin-top: 25px;
}

.page_button_2 {
	width: 130px;
	height: 40px;
	border-radius: 5px;
	font-size: 20px;
	font-weight: bold;
	color: #FFF;
	background-color: #474747;
}
</style>
</head>

<body>
<jsp:include page="header.jsp"/>
		<main>
		<jsp:include page="admin_aside.jsp"/>
		
		<section>
		<form method="post" action="/frontLine/RoomNew">
			<div class="members">
				<div class="head">
					<h1 id="hleft">숙소 등록 > 신규등록</h1>
				</div>

				<div class="table">

					<div class="tabletext">
						숙소명<br> <input type="text" class="board" name="roomTitle">
					</div>

					<div class="tabletext">
						주소<br> <input type="text" class="board" name="roomAddress">
					</div>
				</div>
				<div class="table">

					<div class="tabletext">
						전화번호<br> <input type="text" class="board" name="roomTell">
					</div>

					<div class="tabletext">
						가격<br> <input type="text" class="board" name="roomPrice">
					</div>
				</div>

				<div class="table">

					<div class="tabletext">
						이미지<br> <input type="text" class="board" name="roomImage">
					</div>
				</div>

				<div class="table">

					<div class="tabletext">
						상세내용<br> <input type="text" class="board_2" name="roomDetail">
					</div>
				</div>

				<div class="page_button">
					<input type="submit" class="page_button_2" value="등록하기">
				</div>
			</div>
			</form>
		</section>
		</main>
</body>
</html>