<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.frontline.javabeans.UserBean"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>로그인 결과</h1>
	<%	
	if(session.getAttribute("userBean") != null){
		UserBean ub = (UserBean)session.getAttribute("userBean");
		out.println(ub.toString());
	} else {
		out.println("정보가 없습니다.");
	}
		
	%>
</body>
</html>