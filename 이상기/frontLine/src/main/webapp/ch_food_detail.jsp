<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<script type="text/javascript"
        src="//dapi.kakao.com/v2/maps/sdk.js?appkey=a550ab36f8fa23b9d230a1ee3036c93f&libraries=services"></script>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
	<!-- 헤더 자바스크립트 -->
    <script src="resources/js/header.js"></script>
    <!-- 헤더 스타일 -->
    <link rel="stylesheet" href="resources/css/header.css">
    <!-- 푸터 스타일 -->
    <link rel="stylesheet" href="resources/css/footer.css">
    <%-- 상세페이지 스크립트 --%>
	<script src="resources/js/detail_page.js"></script>
	<%-- 상세페이지 css --%>
	<link rel="stylesheet" href="resources/css/detail_page.css">
    <script>
    <%-- 댓글기능 관련 스크립트 --%>
    $(function(){
    	$(".comment_list_button").click(function(){
    		let num = $(this).parent().parent().attr("id")
    		
    		console.log(num)
    		
    		if($("form[id="+num+"]").css("display") == "none"){
    			$("form[id="+num+"]").css("display", "flex")
    			$(this).attr("value", "답글접기")
    		} else {
    			$("form[id="+num+"]").css("display", "none")
    			$(this).attr("value", "답글달기")
    		}
    		
    	})
    })
    	
    </script>
</head>

<body>
	<jsp:include page="header.jsp"/>
    <div class="wrap">
        <div class="div1">
            <div class="div1 area">
                <img class="area1"
                    src="https://github.com/Jominsang1/FrontLine_Project/blob/main/images/Location_icon.png?raw=true">
                <div class="area2">천안시</div>
            </div>

            <div class="div1 place"></div>

            <div class="best_food">

                <div class="food_item">

                </div>

            </div><br>

            <div class="div2">
                <span class="div2 img"><img
                        src="https://raw.githubusercontent.com/Jominsang1/FrontLine_Project/abd4804f1a43745a0ff936a8ba1c64227c0618d0/images/quotation_marks.png"></span>
                <span class="div2 title">text</span>
                <span class="div2 img"><img
                        src="https://raw.githubusercontent.com/Jominsang1/FrontLine_Project/7da459fdc0919fd19c1b2f1517354f19d0c0c86a/images/quotation_marks2.png"></span>
                <span class="div2 text"></span>
            </div>




            <div class="findWay">
                <p class="btnText">READY?</p>
                <div class="btnTwo">
                    <p class="btnText2">GO!</p>
                </div>
            </div>

            <div id="map"></div>

        </div>

        <div class="list">

            <ul class="ul4 info">

            </ul>

        </div>
    </div>
	
	<hr>
	
	<div class="comment_wrap">
		<h1>댓글</h1>
		<form class="comment_form" action="Comment">
			<textarea class="comment_text" name="commentText"></textarea>
			<input class="comment_submit" type="submit" value="등록">
		</form>
		
		<hr>
		
		<div class="comment_list_wrap">
			<c:if test="${sessionScope.CommentDBKey != null }">
				<c:forEach var="item" items="${sessionScope.CommentDBKey.commentList}" varStatus="i">
				<div class="comment_list" id="${i.index}">
					<div>
						<div class="comment_list_title">아이디 : ${sessionScope.CommentDBKey.commentList.get(i.index).getCommentId()} 등급 : ${sessionScope.CommentDBKey.commentList.get(i.index).getCommentGrade()} </div>
						<div class="comment_list_text">${sessionScope.CommentDBKey.commentList.get(i.index).getCommentText()}</div>
						<div>작성날짜 : ${sessionScope.CommentDBKey.commentList.get(i.index).getCommentRegDate()}</div>
					</div>
					<div>
						<input class="comment_list_button" type="submit" value="답글달기">
					</div>
				</div>
				<div>
					<form class="comment_list_form" id="${i.index}" action="Comment">
						<textarea class="comment_list_text" name="commentText"></textarea>
						<input class="comment_list_target" type="text" value="${i.index}" name="commentTarget">
						<input class="comment_list_submit" type="submit" value="등록">
					</form>
				</div>
					<c:if test="${item.getCommentList().isEmpty() == false}">
						<c:forEach var="item" items="${item.getCommentList()}" varStatus="i">
							<div class="coComment_list_wrap">
								<div class="coComment_list_title">아이디 : ${item.getCommentId()} 등급 : ${item.getCommentGrade()} </div>
								<div class="coComment_list_text">${item.getCommentText()}</div>
								<div>작성날짜 : ${item.getCommentRegDate()}</div>
							</div>
						</c:forEach>
					</c:if>
				</c:forEach>
			</c:if>
		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>