package com.frontline.admin;

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

/**
 * Servlet implementation class CommentEdit
 */
@WebServlet("/CommentEdit")
public class CommentEdit extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CommentEdit() {
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
		
		CommentDb commentData = new CommentDb();
		
		if(session.getAttribute("commentData") != null) {
			commentData = (CommentDb)session.getAttribute("commentData");
		}
		
		if(request.getParameter("coCommentTarget").equals("-1")) {
			int commentTarget = Integer.parseInt(request.getParameter("commentTarget"));
			
			commentData.getCommentData().get(commentTarget).setCommentText(request.getParameter("commentText"));
			
			session.setAttribute("commentData", commentData);
			
			response.sendRedirect("admin_comment.jsp");
		} else {
			int commentTarget = Integer.parseInt(request.getParameter("commentTarget"));
			int coCommentTarget = Integer.parseInt(request.getParameter("coCommentTarget"));
			
			commentData.getCommentData().get(commentTarget).getCommentData().get(coCommentTarget).setCommentText(request.getParameter("commentText"));
			
			session.setAttribute("commentData", commentData);
			
			response.sendRedirect("admin_comment.jsp");
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
