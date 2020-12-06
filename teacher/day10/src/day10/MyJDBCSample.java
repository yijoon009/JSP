package day10;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.mariadb.jdbc.Driver;

//PreparedStatement: sql을 작성하는데 사용되는 객체
// ?로 데이터를 바인딩 시킬 수 있는 문법을 가지고 있다.


//ResultSet: select문으로 질의(sql)에 성공한 경우 결과물을 담고 있는 객체
//ResultSet은 sql에 의해서 생성된 테이블의 정보를 담고 있다.


public class MyJDBCSample {
	
	
	//연결 정보
	private String url = "jdbc:mariadb://127.0.0.1:3555/korea";
	private String id = "root";
	private String pass = "0000";
	
	//사용자 수정
	public int updateUser(User user) {
		Connection con = null;
		PreparedStatement pstmt = null;
		int rows = 0;
		try {			
			Class.forName("org.mariadb.jdbc.Driver");
			
			con = DriverManager.getConnection(url, id, pass);
			String sql = "UPDATE users SET password=?, user_name=? WHERE user_id = ? ";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, user.getPassword());
			pstmt.setString(2, user.getUserName());
			pstmt.setString(3, user.getUserId());
			
			//실행하기
			rows = pstmt.executeUpdate();
			
			System.out.println("데이터베이스 연결 성공");
			
		} catch(Exception e) {
			e.printStackTrace();
			System.out.println("데이터베이스 연결 실패");
		} 
		finally {
			try {if(pstmt != null) {pstmt.close();}} catch(Exception e) {e.printStackTrace();}
			try {if(con != null) {con.close();}} catch(Exception e) {e.printStackTrace();}
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
				user.setId(       rs.getInt("id") );
				user.setUserId(   rs.getString("user_id") );
				user.setPassword( rs.getString("password") );
				user.setUserName( rs.getString("user_name")  );							
			}
			
			System.out.println("데이터베이스 연결 성공");
			
		} catch(Exception e) {
			e.printStackTrace();
			System.out.println("데이터베이스 연결 실패");
		} 
		finally {
			try {if(rs != null) {rs.close();}} catch(Exception e) {e.printStackTrace();}
			try {if(pstmt != null) {pstmt.close();}} catch(Exception e) {e.printStackTrace();}
			try {if(con != null) {con.close();}} catch(Exception e) {e.printStackTrace();}
		}
		
		return user;		
	}
	
	
	
	//사용자 전체 조회
	public List<User> selectUser() {
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
				user.setId(       rs.getInt("id") );
				user.setUserId(   rs.getString("user_id") );
				user.setPassword( rs.getString("password") );
				user.setUserName( rs.getString("user_name")  );
				
				//리스트에 적재
				list.add(user);				
			}
			
			System.out.println("데이터베이스 연결 성공");
			
		} catch(Exception e) {
			e.printStackTrace();
			System.out.println("데이터베이스 연결 실패");
		} 
		finally {
			try {if(rs != null) {rs.close();}} catch(Exception e) {e.printStackTrace();}
			try {if(pstmt != null) {pstmt.close();}} catch(Exception e) {e.printStackTrace();}
			try {if(con != null) {con.close();}} catch(Exception e) {e.printStackTrace();}
		}
		
		return list;		
	}
	
	
	
	
	//사용자 가입
	public int inserUser(User user) {
		Connection con = null;
		PreparedStatement pstmt = null;
		int rows = 0;
		try {			
			Class.forName("org.mariadb.jdbc.Driver");			
			con = DriverManager.getConnection(url, id, pass);
			
			String sql = "INSERT INTO users(user_id, PASSWORD, user_name) VALUES(?, ?, ?)";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, user.getUserId());
			pstmt.setString(2, user.getPassword());
			pstmt.setString(3, user.getUserName());
			
			rows = pstmt.executeUpdate();		//sql 데이터를 입력해라.
			
			/*
			if(rows > 0) {
				System.out.println("데이터 입력에 성공했습니다.");
			} else {
				System.out.println("데이터 입력에 실패했습니다.");
			}
			*/
			
			System.out.println("데이터베이스 연결 성공");
		} catch(Exception e) {
			e.printStackTrace();
			System.out.println("데이터베이스 연결 실패");
		} 
		finally {
			try {if(pstmt != null) {pstmt.close();}} catch(Exception e) {e.printStackTrace();}
			try {if(con != null) {con.close();}} catch(Exception e) {e.printStackTrace();}
		}
		
		return rows;
		
	}
	
	
	
	
	
	
	
	
	
	
	public void myConn() {
		Connection con = null;
		try {			
			Class.forName("org.mariadb.jdbc.Driver");
			
			con = DriverManager.getConnection(url, id, pass);
			
			System.out.println("데이터베이스 연결 성공");
			
		} catch(Exception e) {
			e.printStackTrace();
			System.out.println("데이터베이스 연결 실패");
		} 
		finally {
			try {if(con != null) {con.close();}} catch(Exception e) {e.printStackTrace();}
		}
		
	}
}









