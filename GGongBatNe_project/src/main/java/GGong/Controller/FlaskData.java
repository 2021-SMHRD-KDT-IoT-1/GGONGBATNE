package GGong.Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/FlaskData")
public class FlaskData extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String gigi_name = request.getParameter("gigi_name"); 
		String gigi_vol = request.getParameter("gigi_vol"); 
		String gigi_temp = request.getParameter("gigi_temp"); 
		String gigi_hum = request.getParameter("gigi_hum"); 
		String gigi_location_a = request.getParameter("gigi_location_a"); 
		String gigi_location_b = request.getParameter("gigi_location_b"); 
		
		System.out.println("��� �̸� : "+gigi_name);
		System.out.println("��� �뷮 : "+gigi_vol);
		System.out.println("��� �µ� : "+gigi_temp);
		System.out.println("��� ���� : "+gigi_hum);
		System.out.println("��� ���� : "+gigi_location_a);
		System.out.println("��� �浵 : "+gigi_location_b);
		
		
		
	}

}
