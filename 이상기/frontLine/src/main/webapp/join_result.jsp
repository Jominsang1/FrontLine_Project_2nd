<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.frontline.javabeans.UserBean"%>
<%@ page import="com.frontline.db.UserDb"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>회원가입 결과</h1>
	<%	
	if(session.getAttribute("userData") == null){
		out.println("회원가입에 실패하였습니다.");
	} else {
		out.println("회원가입이 완료되었습니다.");
		%>
		<br>
		<%
		session.getAttribute("userData").toString();
		UserDb userData = (UserDb)session.getAttribute("userData");
		for(int i = 0; i<userData.getUserData().size(); i++) {
			out.println(userData.getUserData().get(i).toString());
			%>
			<br>
			<%
		}
	}	
	%>
</body>
</html>