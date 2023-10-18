package com.frontline.user;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.frontline.javabeans.UserBean;
import com.frontline.db.UserDb;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
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
		
		System.out.println("로그인 시도 아이디 : " + request.getParameter("userId"));
		System.out.println("로그인 시도 비밀번호 : " + request.getParameter("userPw"));
		System.out.println("---------------------------------------------------------");
		
		HttpSession session = request.getSession();
		
		UserDb userData = new UserDb();
		
		if(session.getAttribute("userData") != null) {
			userData = (UserDb)session.getAttribute("userData");
		}
		
		UserBean userBean = new UserBean();
		
		userBean.setUserId(request.getParameter("userId"));
		userBean.setUserPw(request.getParameter("userPw"));
		
		int target = -1;
		int count = -1;
		
		for(int i = 0; i<userData.getUserData().size(); i++) {
			if(userData.getUserData().get(i).getUserId().equals(userBean.getUserId())) {
				if(userData.getUserData().get(i).getUserPw().equals(userBean.getUserPw())){
					count = 1;
					target = i;
					userBean = userData.getUserData().get(i);
				}
			}
		}
		
		if(count == 1) {
			userBean = userData.getUserData().get(target);
			
			session.setAttribute("userBean", userBean);
			
			session.setAttribute("userData", userData);
			
			System.out.println(request.getParameter("userId") +" " + request.getParameter("userPw")+" 로그인 성공");
			System.out.println("---------------------------------------------------------");
			response.getWriter().println("<script>alert('로그인 되었습니다.'); location.href='main.jsp';</script>");
			
		} else {
			
			session.setAttribute("userData", userData);
			
			System.out.println(request.getParameter("userId") +" " + request.getParameter("userPw")+" 로그인 실패");
			System.out.println("---------------------------------------------------------");
			response.getWriter().println("<script>alert('아이디 또는 비밀번호가 틀렸습니다.'); location.href='login.jsp';</script>");
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
