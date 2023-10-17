<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.frontline.javabeans.UserBean"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>로그인 결과</h1>
	<%	
		UserBean ub = (UserBean)session.getAttribute("ub");
		out.println("ub.getUserId() : " + ub.getUserId());
		%>
		<br>
		<%
		out.println("ub.getUserPw() : " + ub.getUserPw());
	%>
</body>
</html>