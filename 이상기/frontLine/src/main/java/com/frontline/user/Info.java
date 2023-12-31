package com.frontline.user;

import java.io.IOException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.frontline.db.UserDB;
import com.frontline.javabeans.UserDTO;

/**
 * Servlet implementation class Info
 */
@WebServlet("/Info")
public class Info extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Info() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=utf-8");
		
		// 콘솔 출력
		System.out.println("이름 : " + request.getParameter("userName"));
		System.out.println("아이디 : " + request.getParameter("userId"));
		System.out.println("비밀번호 : " + request.getParameter("userPw"));
		System.out.println("이메일 : " + request.getParameter("userEmail"));
		System.out.println("휴대폰 번호 : " + request.getParameter("userPhone"));
		System.out.println("생년월일 : " + request.getParameter("userBirth"));
		
		HttpSession session = request.getSession();
		
		UserDTO userBean = (UserDTO)session.getAttribute("UserBeanKey");
		
		Enumeration params = request.getParameterNames();
		
		// 파라미터 네임을 가져와서 일치하면 각각 동작
		while (params.hasMoreElements()){
		    String name = (String)params.nextElement();
		    
		    switch(name) {
		    	case "userName":
		    		userBean.setUserName(request.getParameter(name));
		    		break;
		    	case "userPw":
		    		userBean.setUserPw(request.getParameter(name));
		    		break;
		    	case "userEmail":
		    		userBean.setUserEmail(request.getParameter(name));
		    		break;
		    	case "userPhone":
		    		userBean.setUserPhone(request.getParameter(name));
		    		break;
		    }
		    
		    System.out.println("수정된 필드값 : " + name + " : " +request.getParameter(name));
		    System.out.println("---------------------------------------------------------");
		}
		
		
		// 필드수정이 완료된 유저정보를 UserDB 리스트에 담음
		for(int i = 0; i<UserDB.getUserList().size(); i++) {
			if(UserDB.getUserList().get(i).getUserId().equals(userBean.getUserId())) {
				UserDB.getUserList().set(i, userBean);
			}
		}
		
		response.getWriter().println("<script>alert('정보가 수정되었습니다.'); location.href='info.jsp';</script>");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
