package com.frontline.admin;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.frontline.db.EatDB;
import com.frontline.javabeans.EatDTO;

/**
 * Servlet implementation class EatNew
 */
@WebServlet("/EatNew")
public class EatNew extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EatNew() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		HttpSession session = request.getSession();
		
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=utf-8");
		
		EatDTO bodto = new EatDTO();
//		session.getAttribute("BoardListKey"); �̰� ����?
		
		//���ǿ� BoardListKey�� �ҷ��� �ȿ��� boardList��� ����Ʈ�� ����
		//���ǿ� BoardListKey��� ������ ������ boardList�� ����
		//�� �� ���帮��Ʈ�ϱ� ���帮��Ʈ �ȿ� �ִ� �迭�� ���ŵ�
		
		bodto.setCity(request.getParameter("city"));
		bodto.setAddress(request.getParameter("address"));
		bodto.setTell(request.getParameter("tell"));
		bodto.setOpenTime(request.getParameter("openTime"));
		bodto.setDetail(request.getParameter("detail"));
		bodto.setImage(request.getParameter("image"));
		bodto.setTitle(request.getParameter("title"));
		
		System.out.println("도시" + request.getParameter("city") );
		System.out.println("주소" + request.getParameter("address") );
		System.out.println("전화번호" + request.getParameter("tell") );
		System.out.println("영업시간" + request.getParameter("openTime") );
		System.out.println("이미지" + request.getParameter("image") );
		System.out.println("상호명" + request.getParameter("title") );
		System.out.println("상세설명" + request.getParameter("detail") );
		
		EatDB.getEatList().add(bodto);
		
		response.sendRedirect("admin_eat_management.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
