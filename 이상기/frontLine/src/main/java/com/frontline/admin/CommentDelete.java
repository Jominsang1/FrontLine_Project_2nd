package com.frontline.admin;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.frontline.db.CommentDB;
import com.frontline.javabeans.CommentDTO;

/**
 * Servlet implementation class CommentDelete
 */
@WebServlet("/CommentDelete")
public class CommentDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CommentDelete() {
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
		
		CommentDB commentData = new CommentDB();
		
		if(session.getAttribute("CommentDBKey") != null) {
			commentData = (CommentDB)session.getAttribute("CommentDBKey");
		}
		
		if(request.getParameter("coCommentTarget").equals("-1")) {
			int commentTarget = Integer.parseInt(request.getParameter("commentTarget"));
			
			commentData.getCommentList().remove(commentTarget);
			
			session.setAttribute("CommentDBKey", commentData);
			
			response.sendRedirect("admin_comment.jsp");
		} else {
			int commentTarget = Integer.parseInt(request.getParameter("commentTarget"));
			int coCommentTarget = Integer.parseInt(request.getParameter("coCommentTarget"));
			
			commentData.getCommentList().get(commentTarget).getCommentList().remove(coCommentTarget);
			
			session.setAttribute("CommentDBKey", commentData);
			
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
