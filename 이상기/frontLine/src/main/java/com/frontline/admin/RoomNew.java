package com.frontline.admin;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.frontline.db.RoomDb;
import com.frontline.javabeans.RoomDTO;

/**
 * Servlet implementation class RoomNew
 */
@WebServlet("/RoomNew")
public class RoomNew extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RoomNew() {
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
		
		RoomDb roomDb = new RoomDb();
		RoomDTO roomDTO = new RoomDTO();
		
		if(session.getAttribute("RoomDb") != null) {
			roomDb = (RoomDb)session.getAttribute("RoomDb");
		}
		
		roomDTO.setRoomTitle(request.getParameter("roomTitle"));
		roomDTO.setRoomAddress(request.getParameter("roomAddress"));
		roomDTO.setRoomPrice(request.getParameter("roomPrice"));
		roomDTO.setRoomImage(request.getParameter("roomImage"));
		roomDTO.setRoomDetail(request.getParameter("roomDetail"));
		
		roomDb.getRoomData().add(roomDTO);
		
		session.setAttribute("RoomDb", roomDb);
		
		response.sendRedirect("admin_room_new.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
