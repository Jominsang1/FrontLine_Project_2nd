package com.frontline.admin;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.frontline.db.PlayDB;
import com.frontline.javabeans.PlayDTO;

/**
 * Servlet implementation class PlayNew
 */
@WebServlet("/PlayNew")
public class PlayNew extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PlayNew() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8;");
		
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();

		PlayDTO BoardDto = new PlayDTO();

		BoardDto.setCity(request.getParameter("city"));
		BoardDto.setTitle(request.getParameter("title"));
		BoardDto.setAddress(request.getParameter("address"));
		BoardDto.setTell(request.getParameter("tell"));
		BoardDto.setOpenTime(request.getParameter("openTime"));
		BoardDto.setDetail(request.getParameter("detail"));
		BoardDto.setImage(request.getParameter("image"));

		PlayDB.getPlayList().add(BoardDto);
		
		System.out.println();
		
		out.println("<script>");
		out.println("alert('등록되었습니다.')");
		out.println("</script>");
		
		out.println("<script>");
		out.println("location.href = 'admin_play_new.jsp'");
		out.println("</script>");

		
		
	}

}
