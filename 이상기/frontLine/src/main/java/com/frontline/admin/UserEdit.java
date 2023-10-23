package com.frontline.admin;

import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.frontline.db.UserDb;
import com.frontline.javabeans.UserBean;

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
		UserBean userBean = (UserBean)session.getAttribute("userBean");
		UserDb userData = (UserDb)session.getAttribute("userData");
		
		int target = Integer.parseInt(request.getParameter("userTarget"));
		
		Enumeration params = request.getParameterNames();
		
		while (params.hasMoreElements()){
		    String name = (String)params.nextElement();
		    
		    switch(name) {
		    	case "userName":
		    		if(request.getParameter(name) != "") {
		    			System.out.println("수정전 userName : " + userData.getUserData().get(target).getUserName());
		    			userData.getUserData().get(target).setUserName(request.getParameter(name));
		    			System.out.println("수정된 userName : " + request.getParameter(name));
		    		}
		    		break;
		    	case "userPw":
		    		if(request.getParameter(name) != "") {
		    			System.out.println("수정전 userPw : " + userData.getUserData().get(target).getUserPw());
		    			userData.getUserData().get(target).setUserPw(request.getParameter(name));
		    			System.out.println("수정된 userPw : " + request.getParameter(name));
		    		}
		    		break;
		    	case "userEmail":
		    		if(request.getParameter(name) != "") {
		    			System.out.println("수정전 userEmail : " + userData.getUserData().get(target).getUserEmail());
		    			userData.getUserData().get(target).setUserEmail(request.getParameter(name));
		    			System.out.println("수정된 userEmail : " + request.getParameter(name));
		    		}
		    		break;
		    	case "userPhone":
		    		if(request.getParameter(name) != "") {
		    			System.out.println("수정전 userPhone : " + userData.getUserData().get(target).getUserPhone());
		    			userData.getUserData().get(target).setUserPhone(request.getParameter(name));
		    			System.out.println("수정된 userPhone : " + request.getParameter(name));
		    		}
		    		break;
		    	case "userBirth":
		    		if(request.getParameter(name) != "") {
		    			System.out.println("수정전 userBirth : " + userData.getUserData().get(target).getUserBirth());
		    			userData.getUserData().get(target).setUserBirth(request.getParameter(name));
		    			System.out.println("수정된 userBirth : " + request.getParameter(name));
		    		}
		    		break;
		    }
		}
		System.out.println("----------------------------------------------------");
		
		for(int i = 0; i<userData.getUserData().size(); i++) {
			if(userData.getUserData().get(i).getUserId().equals(userBean.getUserId())) {
				userData.getUserData().set(i, userBean);
			}
		}
		
		session.setAttribute("userBean", userBean);
		
		session.setAttribute("userData", userData);
		
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
