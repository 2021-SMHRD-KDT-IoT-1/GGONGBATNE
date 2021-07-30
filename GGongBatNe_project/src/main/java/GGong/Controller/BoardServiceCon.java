package GGong.Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import GGong.Model.Complaints_DAO;
import GGong.Model.Complaints_DTO;


@WebServlet("/BoardServiceCon")
public class BoardServiceCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		
		System.out.println(title);
		System.out.println(content);
		
		Complaints_DTO dto = new Complaints_DTO(title, content);
		Complaints_DAO dao = new Complaints_DAO();
		int cnt = dao.insert(dto);
		
		if(cnt>0) {
			System.out.println(" 글작성 성공");

		}else {
			System.out.println(" 글작성 실패");
		}
		
		
	}

}
