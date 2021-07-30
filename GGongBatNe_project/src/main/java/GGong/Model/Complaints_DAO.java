package GGong.Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class Complaints_DAO {
	
	Connection conn = null;
	PreparedStatement psmt = null;
	int cnt = 0;
	ResultSet rs = null;
	ArrayList<Complaints_DTO> list = null;
	
	public void conn() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			String db_url = "jdbc:oracle:thin:@localhost:1521:xe";
			String db_id = "hr";
			String db_pw = "hr";

			conn = DriverManager.getConnection(db_url, db_id, db_pw);
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	public void close() {
		try {
			if(rs != null) {
				rs.close();
			}	
			if (psmt != null) {
				psmt.close();
			}
			if (conn != null) {
				conn.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public int upload(Complaints_DTO dto) {
		
		conn();
		
		String sql = "insert into web_board values(mem_num.nextval, ? , ? , sysdate)";
		
		try {
			psmt = conn.prepareStatement(sql);
			
			psmt.setString(1, dto.getCom_title());
//			psmt.setString(2, dto.getCom_email());
			psmt.setString(2, dto.getCom_content());

			
			cnt = psmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}
	
	public int insert(Complaints_DTO dto) {

		conn();

		try {
			String sql = "insert into complaints values(sq_com_num.nextval, ? , ?, ?, sysdate)";
			
			psmt = conn.prepareStatement(sql);
			
			psmt.setString(1, dto.getGigi_name());
			psmt.setString(2, dto.getCom_title());
			psmt.setString(3, dto.getCom_content());

			cnt = psmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		
		
		return cnt;

	}
	
	public ArrayList<Complaints_DTO> showBoard() {
		
		ArrayList<Complaints_DTO> list = new ArrayList<Complaints_DTO>();
		conn();
		String sql = "select * from complaints order by com_date desc";
		
		try {
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();
			
			while(rs.next()) {
				int com_num = rs.getInt("com_num");
				String gigi_name = rs.getString("gigi_name");
				String com_title = rs.getString("com_title");
				String com_content = rs.getString("com_content");
				String com_date = rs.getString("com_date");
				
				Complaints_DTO dto = new Complaints_DTO(com_num, gigi_name, com_title, com_content, com_date);
				
				list.add(dto);
				
			}
		} catch (SQLException e) {

			e.printStackTrace();
		}finally {
			close();
		}
		return list;

		
	}
	
}
