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

import com.frontline.db.CommentDb;
import com.frontline.javabeans.CommentBean;
import com.frontline.javabeans.UserBean;

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
		
		UserBean userBean = (UserBean)session.getAttribute("userBean");
		CommentBean commentBean = new CommentBean();
		CommentDb commentData = new CommentDb();
		
		if(session.getAttribute("commentData") != null) {
			commentData = (CommentDb)session.getAttribute("commentData");
		}
		
		commentBean.setCommentId(userBean.getUserId());
		commentBean.setCommentText(request.getParameter("commentText"));
		commentBean.setCommentRegDate(LocalDateTime.now().format(DateTimeFormatter.ofPattern("YYYY년 MM월 dd일 HH시 mm분 ss초")));
		commentBean.setCommentGrade(userBean.getUserGrade());
		
		if(request.getParameter("commentTarget") != null) {
			int target = Integer.parseInt(request.getParameter("commentTarget"));
			
			commentData.getCommentData().get(target).getCommentData().add(commentBean);
			
			session.setAttribute("commentData", commentData);
			
			response.sendRedirect("ch_food_detail.jsp");
		} else {
			commentData.getCommentData().add(commentBean);
			
			session.setAttribute("commentData", commentData);
			
			response.sendRedirect("ch_food_detail.jsp");
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
