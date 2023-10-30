package com.frontline.page;

import java.io.IOException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.frontline.db.CommentDB;
import com.frontline.javabeans.CommentDTO;
import com.frontline.javabeans.UserDTO;

/**
 * Servlet implementation class Comment
 */
@WebServlet("/Comment")
public class Comment extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Comment() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
		HttpSession session = request.getSession();
		
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=utf-8");
		
		// UserBeanKey 를 가지고 있느냐에 따라 로그인 상태 판단
		if(session.getAttribute("UserBeanKey") == null) {
			response.getWriter().println("<script>alert('로그인이 필요합니다.'); location.href='login.jsp';</script>");
		}
		
		UserDTO userBean = (UserDTO)session.getAttribute("UserBeanKey");
		CommentDTO commentBean = new CommentDTO();
		
		commentBean.setCommentId(userBean.getUserId());
		commentBean.setCommentText(request.getParameter("commentText"));
		commentBean.setCommentRegDate(LocalDateTime.now().format(DateTimeFormatter.ofPattern("YYYY년 MM월 dd일 HH시 mm분 ss초")));
		commentBean.setCommentGrade(userBean.getUserGrade());
		
		// commentTarget 값으로 댓글 답글 여부 판단
		if(request.getParameter("commentTarget") != null) {
			int target = Integer.parseInt(request.getParameter("commentTarget"));
			
			CommentDB.getCommentList().get(target).getCommentList().add(commentBean);
			
//			System.out.println(request.getHeader("Referer"));
			String refer = request.getHeader("Referer");
			response.sendRedirect(refer);
		} else {
			CommentDB.getCommentList().add(commentBean);
			
//			System.out.println(request.getHeader("Referer"));
			String refer = request.getHeader("Referer");
			response.sendRedirect(refer);
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
