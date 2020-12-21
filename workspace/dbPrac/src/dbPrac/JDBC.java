package dbPrac;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Connection;


public class JDBC {
	private String url = "jdbc:mariadb://127.0.0.1:3555/prac";
	private String id = "root";
	private String pass = "0000";
	
	
	public int insert(DTO dto) {
		Connection con = null;
		PreparedStatement pstmt = null;
		int rows = 0;
		try{
			Class.forName("org.mariadb.jdbc.Driver");
			con = DriverManager.getConnection(url,id,pass);
			
			String sql = "INSERT INTO prac(name, age) VALUES (?, ?)";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, dto.getName());
			pstmt.setInt(2, dto.getAge());
			
			rows = pstmt.executeUpdate();
			System.out.println("데이터베이스 연결 성공");
		}catch(Exception e) {
			System.out.println("데이터베이스 연결 실패");
			System.out.println(e.getMessage());
		}finally {
			try {if(pstmt != null) pstmt.close();}catch(Exception e) {e.printStackTrace();}
			try {if(con != null) con.close();}catch(Exception e) {e.printStackTrace();}
		}
		return rows;
	}
	
	
	
	
	public void myConn() {
		
		Connection con = null;
		try {
			Class.forName("org.mariadb.jdbc.Driver");
			con = DriverManager.getConnection(url, id, pass);

			System.out.println("데이터 베이스 연결 성공");
		} catch (Exception e) {
			System.out.println("데이터 베이스 연결 실패");
		}finally {
			try {if(con!=null) {con.close();}}catch(Exception e){}
		}
			
			
		
		
	}
}
