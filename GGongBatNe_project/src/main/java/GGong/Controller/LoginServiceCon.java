package GGong.Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import GGong.Model.Members_DAO;
import GGong.Model.Members_DTO;


@WebServlet("/LoginServiceCon")
public class LoginServiceCon extends HttpServlet {
	

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		System.out.println("여긴 들어와지나???");
		String mem_id = request.getParameter("mem_id");
		String mem_pw = request.getParameter("mem_pw");
		
		Members_DTO dto = new Members_DTO(mem_id, mem_pw);
		Members_DAO dao = new Members_DAO();
		Members_DTO resultDTO = dao.login(dto);
		
		HttpSession session = request.getSession();
		
		
		if(resultDTO != null) {
			System.out.println("로그인 성공");
			
//			HttpSession session = request.getSession();
			session.setAttribute("dto", resultDTO);
		}else {
			System.out.println("로그인 실패");
			
			session.removeAttribute("dto");
			
		}
		
		response.sendRedirect("index.jsp");
				
		
		
				
		
	}
	

}
