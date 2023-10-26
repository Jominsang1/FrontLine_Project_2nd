<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
			let text = $(this).parent().parent().children().eq(2).text()
			let commentTarget = $(this).attr("id")
			
			$("input[name=coCommentTarget]").val("-1")
			
			if($(this).attr("name") != null){
				$("input[name=coCommentTarget]").val($(this).attr("name"))
			}
			
			$("#popup_text").text(text)
			
			$("input[name=commentTarget]").val(commentTarget)
			
			$(".popup").css("display", "block")
			
		})
		
		// 삭제버튼
		$("input[value=삭제]").click(function(){
			let commentTarget = $(this).attr("id")
			
			$("input[name=coCommentTarget]").val("-1")
			
			if($(this).attr("name") != null){
				$("input[name=coCommentTarget]").val($(this).attr("name"))
			}
			
			$("input[name=commentTarget]").val(commentTarget)
			
			$("#popup_form").attr("action", "/frontLine/CommentDelete")
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
<script>
	$("document").ready(function(){
		$(".admin_menu").click(function(){
			$(this).siblings().css("display", "blcok")
		})
	})
</script>
<style>
	body {
		height: 100vh;
	}
	main {
		display: flex;
		height: 90%;
	}
	aside{
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
		
		display: flex;
		justify-content: center;
		align-items: center;
	}
	.admin_menu {
		text-align: center;
	}
	.admin_menu a{
		text-decoration: none;
		color: white;
	}
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
</style>
</head>
<body>
	<jsp:include page="header.jsp"/>
	<main>
		<aside>
			<div class="admin_menu admin_menu_user">
				<a>
					<h1>회원 관리</h1>
				</a>
				<a href="admin_user.jsp">
					<h3>회원 목록</h3>
				</a>
				<a href="admin_comment.jsp">
					<h3>댓글 목록</h3>
				</a>
			</div>
			<div class="admin_menu admin_menu_wrtie">
				<a>
					<h1>게시물 관리</h1>
				</a>
				<a href="admin_write.jsp">
					<h3>맛집</h3>
				</a>
				<a>
					<h3>여행지</h3>
				</a>
				<a>
					<h3>숙소</h3>
				</a>
			</div>
			<div class="admin_menu admin_menu_reser">
				<a>
					<h1>예약 관리</h1>
				</a>
			</div>
		</aside>
	
		<section>
			<div class="section_title">
				<h1>댓글 목록</h1>
			</div>
			
			<div class="section_table">
				<table border="1">
					<tr>
						<th>위치</th>
						<th>아이디</th>
						<th>내용</th>
						<th>작성시간</th>
						<th>등급</th>
						<th>수정</th>
						<th>삭제</th>
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
				<c:set var="page" value="${sessionScope.commentData.getCommentData().size()/line+(1-(sessionScope.commentData.getCommentData().size()/line%1))%1}"/>
				<fmt:parseNumber var="page" value="${page}"/>
				<c:set var="flag" value="false"/>
				<c:forEach var="item" items="${sessionScope.commentData.getCommentData()}" varStatus="i">
					<c:if test="${sessionScope.commentData.getCommentData().indexOf(item) >= start && sessionScope.commentData.getCommentData().indexOf(item) <= end}">
						<tr>
							<td>댓글</td>
							<td>${item.commentId}</td>
							<td>${item.commentText}</td>
							<td>${item.commentRegDate}</td>
							<td>${item.commentGrade}</td>
							<td><input type="button" value="수정" class="co" id="${i.index}"></td>
							<td><input type="button" value="삭제" class="co" id="${i.index}"></td>
						</tr>
						<c:if test="${item.commentData.isEmpty() == false}">
							<c:forEach var="item" items="${item.getCommentData()}" varStatus="j">
							<tr>
								<td>답글</td>
								<td>${item.commentId}</td>
								<td>${item.commentText}</td>
								<td>${item.commentRegDate}</td>
								<td>${item.commentGrade}</td>
								<td><input type="button" value="수정" class="coco" id="${i.index}" name="${j.index}"></td>
								<td><input type="button" value="삭제" class="coco" id="${i.index}" name="${j.index}"></td>
							</tr>
						</c:forEach>
						</c:if>
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
					<form class="page_num_form" action="admin_comment.jsp" method="post">
						<c:out value="${number}"/>
						<input id="page_num" type="text" name="pageNumber">
						<input id="page_num_submit" type="submit">
					</form>
				</div>
			</div>
			
			
			<div class="popup">
				<form id="popup_form" action="/frontLine/CommentEdit">
				<div class="popup_form_title"><h1>수정페이지</h1></div>
					<div>수정할 내용 : <a id="popup_text"></a><br><input type="text" name="commentText"></div>
					<input class="commentTarget" type="text" name="commentTarget">
					<input class="coCommentTarget" type="text" name="coCommentTarget" value="-1">
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