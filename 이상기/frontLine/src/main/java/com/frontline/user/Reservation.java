package com.frontline.user;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.time.*;

/**
 * Servlet implementation class Reservation
 */
@WebServlet("/Reservation")
public class Reservation extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Reservation() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
		String startTime = request.getParameter("startDate");
		String endTime = request.getParameter("endDate");
		
		int startYear = Integer.parseInt(startTime.substring(0,4));
		int startMonth = Integer.parseInt(startTime.substring(5,7));
		int startDate = Integer.parseInt(startTime.substring(8));
		
		int endYear = Integer.parseInt(endTime.substring(0,4));
		int endMonth = Integer.parseInt(endTime.substring(5,7));
		int endDate = Integer.parseInt(endTime.substring(8));
		
		LocalDateTime start = LocalDateTime.of(startYear, startMonth, startDate, 0, 0);
		LocalDateTime end = LocalDateTime.of(endYear, endMonth, endDate, 0, 0);
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
