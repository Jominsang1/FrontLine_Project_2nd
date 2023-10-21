<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.frontline.javabeans.UserBean" %>
<%@ page import="com.frontline.db.UserDb" %>
	<header>
		<div class="header_logo">
			<a href="main.jsp"><img src="resources/images/logo_main.png"></a>
		</div>
		<div class ="header_input">
			<ul class = "input_wrap">
				<li ><input class="input" type="text" placeholder="어디로 갈까U?"></li>
					<ul class="input_list">
                    	<a href="ch_main.jsp"><li class="header_ch">천안</li></a>
                    	<a href="./아산_천안_페이지/asan_main.html"><li class="header_as">아산</li></a>
                    	<li class="header_tsd">태안, 서산, 당진</li>
                    	<li class="header_yhc">예산, 홍성, 청양</li>
                    	<li class="header_bbs">보령, 부여, 서천</li>
                    	<li class="header_gss">공주, 논산, 금산</li>
                	</ul>
			</ul> 
		</div>
		<div>
			<ul class="menu_wrap">
				<li class="button"><img class="header_img" src="resources/images/세줄로고.png"></li>
					<ul class="menu">
						<% if(session.getAttribute("userBean") == null){
							%>
							<li class="menu_login"><a href="login.jsp">로그인</a></li>
							<li class="menu_join"><a href="join_1.jsp">회원가입</a></li>
							<%
						} else {
							%>
							<li>${sessionScope.userBean.userName}님 환영합니다.</li>
							<% 
							if("user".equals(((UserBean)session.getAttribute("userBean")).getUserGrade())){
								%>
								<li class="menu_logout"><a href="/frontLine/Logout">로그아웃</a></li>
								<li class="menu_my"><a href="info.jsp">내 정보</a></li>
								<li class="menu_reser"><a href="my-예약내역.html">예약내역</a></li>
								<%	
							} else if("admin".equals(((UserBean)session.getAttribute("userBean")).getUserGrade())){
								%>
								<li class="menu_logout"><a href="/frontLine/Logout">로그아웃</a></li>
								<li class="menu_my"><a href="info.jsp">내 정보</a></li>
								<li class="menu_admin"><a href="admin.jsp">관리자 페이지</a></li>
								<%	
							}
						}
						%>
					</ul>
			</ul>
		</div>
	</header>
