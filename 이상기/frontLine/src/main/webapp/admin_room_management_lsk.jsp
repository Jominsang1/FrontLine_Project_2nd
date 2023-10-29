<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="com.frontline.db.RoomDB" %>
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
	$("document").ready(function(){
		// 수정버튼
		$("input[value=수정]").click(function(){
			let target = Number($(this).attr("name"))
			let target_num = Number($(this).attr("id"))+1;
			
			let title = $("tr").eq(target_num).children("td").eq(0).text()
			let address = $("tr").eq(target_num).children("td").eq(1).text()
			let price = $("tr").eq(target_num).children("td").eq(2).text()
			let image = $("tr").eq(target_num).children("td").eq(3).text()
			let detail = $("tr").eq(target_num).children("td").eq(4).text()
			
			$("#popup_title").text(title)
			$("#popup_address").text(address)
			$("#popup_price").text(price)
			$("#popup_image").text(image)
			$("#popup_detail").text(detail)
			
			$("input[name=roomTarget]").val(target)
			
			$(".popup").css("display", "block")
		})
		
		// 삭제버튼
		$("input[value=삭제]").click(function(){
			let target = $(this).attr("id")
			
			$("input[name=roomTarget]").val(target)
			
			$("#popup_form").attr("action", "/frontLine/RoomDelete")
			$("#popup_submit").click();
			
		})
		
		// 팝업 취소버튼
		$("input[value=취소]").click(function(){
			
			$(".popup").css("display", "none")
		})
		
		// 페이지 이동
		$("a[id=page_num_button]").click(function(){
			$("#page_num").val($(this).attr("value"))
			$("#page_num_submit").click()
		})
		
		// prev 버튼
		$("input[id=prev_button]").click(function(){
			<%
			int pageNumber_button = 1;
			if(request.getParameter("pageNumber") != null){
				pageNumber_button = Integer.parseInt(request.getParameter("pageNumber"));
			}
			%>
			let pageNumber_button = "<%=pageNumber_button%>"
			
			if(pageNumber_button == 1){
				
			} else {
				pageNumber_button = parseInt(pageNumber_button) - 1
			}
			
			$("#page_num").val(pageNumber_button)
			$("#page_num_submit").click()
		})
		
		// next 버튼
		$("input[id=next_button]").click(function(){
			<%
			pageNumber_button = 1;
			if(request.getParameter("pageNumber") != null){
				pageNumber_button = Integer.parseInt(request.getParameter("pageNumber"));
			}
			%>
			let pageNumber_button = "<%=pageNumber_button%>"
			let max_page = $(".page_num_button").length
			
			if(pageNumber_button == max_page){
				<%--console.log("match")--%>
			} else {
				pageNumber_button = parseInt(pageNumber_button) + 1
			}
			
			$("#page_num").val(pageNumber_button)
			$("#page_num_submit").click()
		})
	})
</script>
<style>
	.page_num_form {
		display: none;
	}
	.table_no {
		border: none;
	}
	.popup {
		display: none;
		
		position: absolute;
		
		top: 20%;
		left: 50%;
		
		background-color: white;
		border: 1px solid black;
		padding: 1%;
	}
	.roomTarget {
		display: none;
	}
	.table_image {
		height: 100px;
		width: 100px;
	}
</style>
</head>
<body>
	<jsp:include page="header.jsp"/>
	<main>
		<jsp:include page="admin_aside.jsp"/>
	
		<section>
			<div class="section_title">
				<h1>숙소 목록</h1>
			</div>
			
			<div class="section_table">
				<table border="1" frame="void">
					<tr>
						<th>숙소명</th>
						<th>주소</th>
						<th>전화번호</th>
						<th>가격</th>
						<th>이미지</th>
						<th>상세설명</th>
						<th>예약일</th>
					</tr>
				
				<%-- 한페이지당 행의 수 --%>
				<fmt:parseNumber var="line" value="5"/>
				<%	
					int pageNumber = 1;
					
				if(request.getParameter("pageNumber") != null){
					pageNumber = Integer.parseInt(request.getParameter("pageNumber"));
					pageContext.setAttribute("pageNumber", pageNumber);
				} else {
					pageContext.setAttribute("pageNumber", pageNumber);
				}
				%>
				
				<c:set var="start" value="${line*(pageNumber-1)}"/>
				<c:set var="end" value="${start+line-1}"/>
				<c:set var="size" value="<%=RoomDB.getRoomList().size()%>"/>
				<c:set var="page" value="${size/line+(1-(size/line%1))%1}"/>
				<fmt:parseNumber var="page" value="${page}"/>
				<c:set var="flag" value="false"/>
				<c:forEach var="item" items="<%=RoomDB.getRoomList()%>" varStatus="i">
				<%
				int target = RoomDB.getRoomList().indexOf(pageContext.getAttribute("item")); 
				Long start = (Long)pageContext.getAttribute("start");
				Long end = (Long)pageContext.getAttribute("end");
				%>
					<%-- <c:if test="${sessionScope.RoomDBKey.getRoomList().indexOf(item) >= start && sessionScope.RoomDBKey.getRoomList().indexOf(item) <= end}"> --%>
					<c:if test="<%= target >= start && target <= end %>">
						<tr>
							<td>${item.getRoomTitle()}</td>
							<td>${item.roomAddress}</td>
							<td>${item.roomTell}</td>
							<td>${item.roomPrice}</td>
							<td><img class="table_image" src="${item.roomImage}"></td>
							<td>${item.roomDetail}</td>
							<td>
							<c:if test="${item.startDate != null && item.endDate != null }">
								${item.startDate} ~ ${item.endDate}
							</c:if>
							</td>
							<td class="table_no"><input type="button" value="수정" id="${i.index-start}" name="${i.index}"></td>
							<td class="table_no"><input type="button" value="삭제" id="${i.index-start}" name="${i.index}"></td>
						</tr>
					</c:if>
				</c:forEach>
				</table>
				<div class="page">
				<input id="prev_button" type=button value="<">
				<c:forEach var="i" begin="1" end="${page}">
					<a class="page_num_button" id="page_num_button" value="${i}" style="
					<c:if test="${i == pageNumber}">
					 font-weight:bold;
					</c:if>">${i}
					</a>
				</c:forEach>
				<input id="next_button" type=button value=">">
					<form class="page_num_form" action="admin_room_management.jsp" method="post">
						<c:out value="${number}"/>
						<input id="page_num" type="text" name="pageNumber">
						<input id="page_num_submit" type="submit">
					</form>
				</div>
			</div>
			
			
			<div class="popup">
				<form id="popup_form" action="/frontLine/RoomEdit">
				<div class="popup_form_title"><h1>수정페이지</h1></div>
					<div>숙소명 : <a id="popup_title"></a><br><input type="text" name="roomTitle"></div>
					<div>주소 : <a id="popup_address"></a><br><input type="text" name="roomAddress"></div>
					<div>주소 : <a id="popup_address"></a><br><input type="text" name="roomTell"></div>
					<div>가격 : <a id="popup_price"></a><br><input type="text" name="roomPrice"></div>
					<div>이미지 : <a id="popup_image"></a><br><input type="text" name="roomImage"></div>
					<div>상세설명 : <a id="popup_detail"></a><br><input type="text" name="roomDetail"></div>
					<input class="roomTarget" type="text" name="roomTarget">
					<div class="popup_form_bottom">
						<input id="popup_submit" type="submit" value="수정하기">
						<input type="button" value="취소">
					</div>
				</form>
			</div>
		</section>
	</main>
</body>
</html>