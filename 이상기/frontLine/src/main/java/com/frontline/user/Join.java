package com.frontline.user;

import java.io.IOException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.frontline.javabeans.UserDTO;
import com.frontline.db.UserDB;

/**
 * Servlet implementation class Join
 */
@WebServlet("/Join")
public class Join extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Join() {
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
		System.out.println("---------------------------------------------------------");
		
		HttpSession session = request.getSession();
		
		// UserBean 필드 값에 입력
		UserDTO userBean = new UserDTO();
		
		userBean.setUserName(request.getParameter("userName"));
		userBean.setUserId(request.getParameter("userId"));
		userBean.setUserPw(request.getParameter("userPw"));
		userBean.setUserEmail(request.getParameter("userEmail"));
		userBean.setUserPhone(request.getParameter("userPhone"));
		userBean.setUserBirth(request.getParameter("userBirth"));
		userBean.setUserRegDate(LocalDate.now().format(DateTimeFormatter.ofPattern("YYYYMMdd")));
		userBean.setUserGrade("user");
		
		int dup = 0;

		for(int i = 0; i<UserDB.getUserList().size(); i++) {
			if(UserDB.getUserList().get(i).getUserId().equals(userBean.getUserId())) {
				response.getWriter().println("<script>alert('중복된 아이디가 존재합니다.'); location.href='join_2.jsp';</script>");
				dup = 1;
			}
		}
		
		if(dup == 0) {
			UserDB.getUserList().add(userBean);
			
			response.getWriter().println("<script>alert('회원가입이 완료되었습니다.'); location.href='main.jsp';</script>");
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
