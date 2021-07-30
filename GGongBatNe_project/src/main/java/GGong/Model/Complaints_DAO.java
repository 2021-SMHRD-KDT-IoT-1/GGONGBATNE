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
	
}
