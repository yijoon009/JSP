package myday10;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

//PreparedStatement : sql문을 작성하는데 사용되는 객체
// ?로 데이터를 바인딩 시킬 수 있는 문법을 가지고 있다.

//ResultSet : select문으로 질의(sql)에 성공한 경우, 결과물을 담고있는 객체
//ResultSet은 sql에 의해서 생성된 테이블의 정보를 담고있다.

public class MyJDBCSample {

	//연결 정보
	private String url = "jdbc:mariadb://127.0.0.1:3555/korea";
	private String id = "root";
	private String pass = "0000";
	
	
	//사용자 단건 조회
	public User selectUser(User userParam){
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		User user = new User();
		
		try {
			Class.forName("org.mariadb.jdbc.Driver");
			con = DriverManager.getConnection(url,id,pass);
			
			String sql = "SELECT * FROM users WHERE user_id = ?";
			pstmt = con.prepareStatement(sql);	//데이터베이스로 보내느 과정
			
			pstmt.setString(1, userParam.getUserId());
			rs = pstmt.executeQuery();
			
			//단건이고 user_id는 중복이 안되니까 while보단 if가 맞아
			if(rs.next()) {	//rs.next() 다음이 있니?
				//이 안에서는 하나의 행의 정보를 담고있어.
				
				user.setId(rs.getInt("id"));
				user.setUserId(rs.getString("user_id"));
				user.setPassword(rs.getString("password"));
				user.setUserName(rs.getString("user_name"));
				
			}
			System.out.println("데이터베이스 연결 성공");
			
		}catch(Exception e) {
			e.printStackTrace();
			System.out.println("데이터베이스 연결 실패");
		}finally {
			try{if(rs!=null) {rs.close();}}catch(Exception e) {e.printStackTrace();}	//열린거의 역순으로 닫아줘야해
			try{if(pstmt!=null) {pstmt.close();}}catch(Exception e) {e.printStackTrace();}	//con보다 항상 먼저 닫혀야해.
			try{if(con!=null) {con.close();}}catch(Exception e) {e.printStackTrace();}
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
			con = DriverManager.getConnection(url,id,pass);
			
			String sql = "SELECT * FROM users";
			pstmt = con.prepareStatement(sql);	//데이터베이스로 보내느 과정
			rs = pstmt.executeQuery();	//조회할때는 executeQuery
			
			while(rs.next()) {	//rs.next() 다음이 있니?
				//이 안에서는 하나의 행의 정보를 담고있어.
				
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
		}finally {
			try{if(rs!=null) {rs.close();}}catch(Exception e) {e.printStackTrace();}	//열린거의 역순으로 닫아줘야해
			try{if(pstmt!=null) {pstmt.close();}}catch(Exception e) {e.printStackTrace();}	//con보다 항상 먼저 닫혀야해.
			try{if(con!=null) {con.close();}}catch(Exception e) {e.printStackTrace();}
		}
		
		return list;
	}
	
	
	
	//사용자 가입
	public int insertUser(User user) {	//dependency injection 방식 DI

		Connection con = null;
		PreparedStatement pstmt = null;
		int rows = 0;
		try {
			Class.forName("org.mariadb.jdbc.Driver");	//마리아인지 오라클인지 여기서 판단
			con = DriverManager.getConnection(url,id,pass);
			
			String sql = "INSERT INTO users(user_id, PASSWORD, user_name) VALUES(? , ? , ?)";
			pstmt = con.prepareStatement(sql);
			
			//userid, pass, name 전부 String이라 setString으로 한거야
			//배열과 다르게 첫번째가 1이야
			pstmt.setString(1, user.getUserId());	
			pstmt.setString(2, user.getPassword());
			pstmt.setString(3, user.getUserName());
			
			rows = pstmt.executeUpdate();	//저장
			
//			if(rows > 0) {
//				System.out.println("데이터 입력에 성공");
//			}else {
//				System.out.println("데이터 입력에 실패");
//			}
			
			System.out.println("데이터베이스 연결 성공");
			
		}catch(Exception e) {
			e.printStackTrace();
			System.out.println("데이터베이스 연결 실패");
		}finally {
			try{if(pstmt!=null) {pstmt.close();}}catch(Exception e) {e.printStackTrace();}	//con보다 항상 먼저 닫혀야해.
			try{if(con!=null) {con.close();}}catch(Exception e) {e.printStackTrace();}
		}
		return rows;
		
	}//end insertUser
	
		
		
	
	
	public void myConn() {
		Connection con = null;
		try {
			//Driver 자동완성 써서  mariadc 이 루트 임포트하고, 그 뒤에 아래에 복붙하고 삭제
			Class.forName("org.mariadb.jdbc.Driver");
			con = DriverManager.getConnection(url,id,pass);
			System.out.println("데이터베이스 연결 성공");
		}catch(Exception e) {
			e.printStackTrace();
			System.out.println("데이터베이스 연결 실패");
		}finally {
			try{if(con!=null) {con.close();}}catch(Exception e) {e.printStackTrace();}
		}
	}//end myConn
}
