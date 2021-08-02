package GGong.Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class Gigi_Names_DAO {

	Connection conn = null;
	PreparedStatement psmt = null;
	int cnt = 0;
	ResultSet rs = null;
	ArrayList<Gigi_Names_DTO> list = null;
	Gigi_Names_DTO dto = null;

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
			if (rs != null) {
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
	
	public  Gigi_Names_DTO xy(String GIGI_AREA) {
		Gigi_Names_DTO xy_dto = null;
		conn();
		
		try {
			String sql = "select GIGI_LOCATION_A, GIGI_LOCATION_B, GIGI_NAME from Gigi_Names where GIGI_AREA = ?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, GIGI_AREA );
			
			rs = psmt.executeQuery();

			if(rs.next()) {
				
				String gigi_location_A = rs.getString("GIGI_LOCATION_A");
				String gigi_location_B = rs.getString("GIGI_LOCATION_B");
				String gigi_name = rs.getString("GIGI_NAME");
				
				xy_dto = new Gigi_Names_DTO(gigi_location_A,gigi_location_B,gigi_name);
				System.out.println(xy_dto);
				
			}
		
		} catch(SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		
		return xy_dto;
	
	}
	
	
	public  int update(Gigi_Names_DTO dto) {
		
		conn();
		
		try {
			String sql = "update GIGI_NAMES set GIGI_LOCATION_A=? and GIGI_LOCATION_B=? where GIGI_NAME=?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getGigi_location_A() );
			psmt.setString(2, dto.getGigi_location_B() );
			psmt.setString(3, dto.getGigi_name() );
			
			cnt = psmt.executeUpdate(sql);
			
		

		
		} catch(SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		
		return cnt;
	
	}
	
	
	
	
	
}
	


