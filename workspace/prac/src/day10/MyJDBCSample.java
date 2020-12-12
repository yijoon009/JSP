package day10;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class MyJDBCSample {
	
	//연결정보
	private String url = "jdbc:mariadb://127.0.0.1:3555/prac";
	private String id = "root";
	private String pass = "0000";
	
	
	//사용자 삭제
	public int deleteUser(User user) {

		Connection con = null;
		PreparedStatement pstmt = null;
		int rows = 0;
		try {
			Class.forName("org.mariadb.jdbc.Driver");
			con = DriverManager.getConnection(url, id, pass);
			String sql = "DELETE FROM users WHERE id = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, user.getId());
			
			rows = pstmt.executeUpdate();
			
			System.out.println("데이터베이스 연결 성공");
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("데이터베이스 연결 실패");
		}finally {
			try {if(pstmt != null) {pstmt.close();}} catch(Exception e) {e.printStackTrace();}
			try {if(con!=null) {con.close();}}catch(Exception e) {e.printStackTrace();}
		}
		return rows;
	}
	
	
	//사용자 수정
	public int updateUser(User user) {

		Connection con = null;
		PreparedStatement pstmt = null;
		int rows = 0;
		try {
			Class.forName("org.mariadb.jdbc.Driver");
			con = DriverManager.getConnection(url,id,pass);
			String sql = "UPDATE users SET password = ?, user_name = ? WHERE user_id = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, user.getPassword());
			pstmt.setString(2, user.getUserName());
			pstmt.setString(3, user.getUserId());

			rows = pstmt.executeUpdate();
			
			System.out.println("데이터베이스 연결 성공");
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("데이터베이스 연결 실패");
		}finally {
			try {if(pstmt != null) {pstmt.close();}} catch(Exception e) {e.printStackTrace();}
			try {if(con!=null) {con.close();}}catch(Exception e) {e.printStackTrace();}
		}
		return rows;
	
	}
	
	
	//사용자 단건 조회
	public User selectUser(User userParam) {

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		User user = new User();
		
		try {
			Class.forName("org.mariadb.jdbc.Driver");
			con = DriverManager.getConnection(url, id, pass);
			
			String sql = "SELECT * FROM users WHERE user_id = ?";
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, userParam.getUserId());
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				user.setId(rs.getInt("id"));
				user.setUserId(rs.getString("user_id"));
				user.setPassword(rs.getString("password"));
				user.setUserName(rs.getString("user_name"));
			}
			System.out.println("데이터베이스 연결 성공");
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("데이터베이스 연결 실패");
		}finally {
			try {if(rs!=null) {rs.close();}}catch(Exception e) {e.printStackTrace();}
			try {if(pstmt!=null) {pstmt.close();}}catch(Exception e) {e.printStackTrace();}
			try {if(con!=null) {con.close();}}catch(Exception e) {e.printStackTrace();}
		}
		return user;
	
	}
	
	
	//사용자 전체조회
	public List<User> selectUser(){
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<User> list = new ArrayList<User>();
		
		try {
			Class.forName("org.mariadb.jdbc.Driver");
			con = DriverManager.getConnection(url, id, pass);
			
			String sql = "SELECT * FROM users";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				User user = new User();
				user.setId(rs.getInt("id"));
				user.setUserId(rs.getString("user_id"));
				user.setPassword(rs.getString("password"));
				user.setUserName(rs.getString("user_name"));
				
				//리스트에 적재
				list.add(user);
			}
			System.out.println("데이터베이스 연결 성공");
			
		}catch(Exception e) {
			e.printStackTrace();
			System.out.println("데이터베이스 연결 실패");
		}
		finally {
			try {if(rs!=null) {rs.close();}}catch(Exception e) {e.printStackTrace();}
			try {if(pstmt!=null) {pstmt.close();}}catch(Exception e) {e.printStackTrace();}
			try {if(con!=null) {con.close();}}catch(Exception e) {e.printStackTrace();}
		}
		
		return list;
	}
	
	
	
	public int insertUser(User user) {
		Connection con = null;
		PreparedStatement pstmt = null;
		int rows = 0;
		try{
			Class.forName("org.mariadb.jdbc.Driver");
			con = DriverManager.getConnection(url,id,pass);
			
			String sql = "INSERT INTO users(user_id, PASSWORD, user_name) VALUES (?,?,?)";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, user.getUserId());
			pstmt.setString(2, user.getPassword());
			pstmt.setString(3, user.getUserName());
			
			rows = pstmt.executeUpdate();
			
			System.out.println("데이터베이스 연결 성공");
		}catch(Exception e) {
			e.printStackTrace();
			System.out.println("데이터베이스 연결 실패");
		}finally {
			try {if(pstmt != null) pstmt.close();}catch(Exception e) {e.printStackTrace();}
			try {if(con != null) con.close();}catch(Exception e) {e.printStackTrace();}
		}
		
		return rows;
	}//end insertUser
	
	
	public void myConn() {
		Connection con = null;
		try {
			Class.forName("org.mariadb.jdbc.Driver");
			con = DriverManager.getConnection(url, id, pass);
			System.out.println("데이터베이스 연결 성공");
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("데이터베이스 연결 실패");
		}finally {
			try {if(con!=null) {con.close();}}catch(Exception e) {e.printStackTrace();}
		}
	}//end myConn
}
