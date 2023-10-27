package com.frontline.admin;

import java.io.IOException;
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
 * Servlet implementation class Edit
 */
@WebServlet("/UserEdit")
public class UserEdit extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserEdit() {
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
		System.out.println("*관리자 정보 수정*");
		System.out.println("----------------------------------------------------");
		
		HttpSession session = request.getSession();
		
		// UserBean 필드 값에 입력
		UserDTO userBean = (UserDTO)session.getAttribute("UserBeanKey");
		UserDB userData = (UserDB)session.getAttribute("UserDBKey");
		
		int target = Integer.parseInt(request.getParameter("userTarget"));
		
		Enumeration params = request.getParameterNames();
		
		while (params.hasMoreElements()){
		    String name = (String)params.nextElement();
		    
		    switch(name) {
		    	case "userName":
		    		if(request.getParameter(name) != "") {
		    			System.out.println("수정전 userName : " + userData.getUserList().get(target).getUserName());
		    			userData.getUserList().get(target).setUserName(request.getParameter(name));
		    			System.out.println("수정된 userName : " + request.getParameter(name));
		    		}
		    		break;
		    	case "userPw":
		    		if(request.getParameter(name) != "") {
		    			System.out.println("수정전 userPw : " + userData.getUserList().get(target).getUserPw());
		    			userData.getUserList().get(target).setUserPw(request.getParameter(name));
		    			System.out.println("수정된 userPw : " + request.getParameter(name));
		    		}
		    		break;
		    	case "userEmail":
		    		if(request.getParameter(name) != "") {
		    			System.out.println("수정전 userEmail : " + userData.getUserList().get(target).getUserEmail());
		    			userData.getUserList().get(target).setUserEmail(request.getParameter(name));
		    			System.out.println("수정된 userEmail : " + request.getParameter(name));
		    		}
		    		break;
		    	case "userPhone":
		    		if(request.getParameter(name) != "") {
		    			System.out.println("수정전 userPhone : " + userData.getUserList().get(target).getUserPhone());
		    			userData.getUserList().get(target).setUserPhone(request.getParameter(name));
		    			System.out.println("수정된 userPhone : " + request.getParameter(name));
		    		}
		    		break;
		    	case "userBirth":
		    		if(request.getParameter(name) != "") {
		    			System.out.println("수정전 userBirth : " + userData.getUserList().get(target).getUserBirth());
		    			userData.getUserList().get(target).setUserBirth(request.getParameter(name));
		    			System.out.println("수정된 userBirth : " + request.getParameter(name));
		    		}
		    		break;
		    }
		}
		System.out.println("----------------------------------------------------");
		
		for(int i = 0; i<userData.getUserList().size(); i++) {
			if(userData.getUserList().get(i).getUserId().equals(userBean.getUserId())) {
				userData.getUserList().set(i, userBean);
			}
		}
		
		session.setAttribute("UserBeanKey", userBean);
		
		session.setAttribute("UserDBKey", userData);
		
		response.getWriter().println("<script>alert('정보가 수정되었습니다.'); location.href='admin_user.jsp';</script>");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
