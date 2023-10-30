<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="com.frontline.db.UserDB" %>
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
			
			$("input[name=userTarget]").val(target)
			
			$(".popup").css("display", "block")
			
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
<script>
	$("document").ready(function(){
		$(".admin_menu").click(function(){
			$(this).siblings().css("display", "blcok")
		})
	})
</script>
<style>
	.section_title {
		text-align: center;
	}
	.section_table {
		text-align: center;
		
		display: flex;
		justify-content: center;
		flex-direction: column;
		
		margin-top: 5%;
		margin-left: 10%;
		margin-right: 10%;
	}
	.popup	{
		display: none;
		
		position: absolute;
		top: 20%;
		left: 50%;
		
		border: 2px solid rgb(71, 71, 71);
		background-color: white;
		
		
		padding-left: 5%;
		padding-right: 5%;
	}
	.popup_form_title {
		display: flex;
		
		text-align: center;
	}
	.popup_form_bottom {
		display: flex;
		justify-content: center
	}
	.userTarget {
		display: none;
	}
	.page_num_form {
		display: none;
	}
	.page_num_button{
		cursor: pointer;
	}
	.page {
		margin-top: 5%;
	}
	.table_no {
		border: none;
	}
</style>
</head>
<body>
	<jsp:include page="header.jsp"/>
	<main>
		<jsp:include page="admin_aside.jsp"/>
		<section>
			<div class="section_title">
				<h1>회원 목록</h1>
			</div>
			
			<div class="section_table">
				<table border="1" frame="void">
					<tr>
						<th>이름</th>
						<th>아이디</th>
						<th>비밀번호</th>
						<th>이메일</th>
						<th>핸드폰 번호</th>
						<th>생일</th>
						<th>회원가입일</th>
						<th>등급</th>
					</tr>
				
				<%-- 한페이지당 행의 수 --%>
				<fmt:parseNumber var="line" value="5"/>
				<%	
					int pageNumber = 1;
				// 원하는 페이지 숫자를 가진 파라미터가 있으면 ~ 그값으로 없으면 초기값인 1로
				if(request.getParameter("pageNumber") != null){
					pageNumber = Integer.parseInt(request.getParameter("pageNumber"));
					pageContext.setAttribute("pageNumber", pageNumber);
				} else {
					pageContext.setAttribute("pageNumber", pageNumber);
				}
				%>
				
				<%-- pageNumber와 line 값을 기준으로 출력할 인덱스의 값을 제한함 --%>
				<c:set var="start" value="${line*(pageNumber-1)}"/>
				<c:set var="end" value="${start+line-1}"/>
				<c:set var="size" value="<%=UserDB.getUserList().size()%>"/>
				<c:set var="page" value="${size/line+(1-(size/line%1))%1}"/>
				<fmt:parseNumber var="page" value="${page}"/>
				<c:forEach var="item" items="<%=UserDB.getUserList()%>" varStatus="i">
				<%
				int target = UserDB.getUserList().indexOf(pageContext.getAttribute("item")); 
				Long start = (Long)pageContext.getAttribute("start");
				Long end = (Long)pageContext.getAttribute("end");
				%>
					<c:if test="<%= target >= start && target <= end %>">
						<tr>
							<td>${item.userName}</td>
							<td>${item.userId}</td>
							<td>${item.userPw}</td>
							<td>${item.userEmail}</td>
							<td>${item.userPhone}</td>
							<td>${item.userBirth}</td>
							<td>${item.userRegDate}</td>
							<td>${item.userGrade}</td>
							<td class="table_no"><input type="button" value="수정" id="${i.index-start}" name="${i.index}"></td>
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
					<form class="page_num_form" action="admin_user.jsp" method="post">
						<c:out value="${number}"/>
						<input id="page_num" type="text" name="pageNumber">
						<input id="page_num_submit" type="submit">
					</form>
				</div>
			</div>
			
			
			<div class="popup">
				<form id="popup_form" action="/frontLine/UserEdit">
				<div class="popup_form_title"><h1>수정페이지</h1></div>
					<div>이름 : <a id="popup_name"></a><br><input type="text" name="userName"></div>
					<div>비밀번호 : <a id="popup_pw"></a><br><input type="text" name="userPw"></div>
					<div>이메일 : <a id="popup_email"></a><br><input type="text" name="userEmail"></div>
					<div>핸드폰 번호 : <a id="popup_phone"></a><br><input type="text" name="userPhone"></div>
					<div>생일 : <a id="popup_birth"></a><br><input type="text" name="userBirth"></div>
					<input class="userTarget" type="text" name="userTarget">
					<div class="popup_form_bottom">
						<input type="submit" value="수정하기">
						<input type="button" value="취소">
					</div>
				</form>
			</div>
		</section>
	</main>
</body>
</html>