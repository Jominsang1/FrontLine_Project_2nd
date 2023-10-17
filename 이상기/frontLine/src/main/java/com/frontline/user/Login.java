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
		
		System.out.println("아이디 : " + request.getParameter("userId"));
		System.out.println("비밀번호 : " + request.getParameter("userPw"));
		
		HttpSession session = request.getSession();
		
		UserBean ub = new UserBean();
		UserDb ud = new UserDb();
		
		
		ub.setUserId(request.getParameter("userId"));
		ub.setUserPw(request.getParameter("userPw"));
		
		System.out.println("ub.getUserId() : " + ub.getUserId());
		System.out.println("ub.getUserPw() : " + ub.getUserPw());
		
		session.setAttribute("ub", ub);
		
		int count = 0;
		
		for(int i = 0; i<ud.getUserId().size(); i++) {
			System.out.println(ud.getUserId().get(i));
		}
		
		session.setAttribute("logon", true);
		
		response.sendRedirect("login_result.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
