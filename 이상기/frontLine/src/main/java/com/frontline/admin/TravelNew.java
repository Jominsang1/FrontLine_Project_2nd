package com.frontline.admin;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.frontline.db.TravelDB;
import com.frontline.javabeans.TravelDTO;

/**
 * Servlet implementation class TravelNew
 */
@WebServlet("/TravelNew")
public class TravelNew extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TravelNew() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// ���� ����
				HttpSession session = request.getSession();
				
				// request.getParameter�� input�� ��������
				String city = request.getParameter("city");
				String title = request.getParameter("title");
				String image = request.getParameter("image");
				String shortInform = request.getParameter("shortInform");
				String detail = request.getParameter("detail");
				String tell = request.getParameter("tell");
				String openTime =request.getParameter("openTime");
				String address = request.getParameter("address");

				// AdminDto ��ü ����
				TravelDTO adminDto = new TravelDTO();
				
				// ������ input���� AdminDto�� �ֱ�
				adminDto.setCity(city);
				adminDto.setTitle(title);
				adminDto.setImage(image);
				adminDto.setDetail(detail);
				adminDto.setTell(tell);
				adminDto.setOpenTime(openTime);
				adminDto.setAddress(address);
				
				
				// input ���� AdminDb�� �ֱ�
				// AdminDb ��ü ����
				// adminData�� ���Ŵϱ� ����� ����ִ�
				// ������ �����س��� adminData�� ������
				// �װŷ� �ٲ۴�.
				
				
				// admindb�� �����ִ� list�� ������ �ִ� ����� ����ͼ�
				TravelDB.getTravelList().add(adminDto);
				
				// ���� ����� ���� �߰��ϰ�
				// admindb�� �ٽ� �־��ش�.
					
				
				
				
				
				// admindb�� �����ִ� list�� ������ �ִ� ����� ����ͼ�
//				List<AdminDto> list = adminData.getAdminData();
				// ���� ����� ���� �߰��ϰ�	
//				list.add(adminDto);
//					adminData.setAdminData(list);
				
				
				
				
				
				// �������� �̵�
				// �ϱ����� admindata�� ��Ƽ�
				// �̵��� ���������� ������
				
				// ���� ���ϴ� �͸� ���
				
				response.sendRedirect("admin_travel_new.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
