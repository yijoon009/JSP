package day15.korea.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

//데이터 베이스 접속을 담당할 클래스

public class DBConUtil {
	//어플리케이션이 종료되기 전까지 메모리에 상주
	private static Connection conn = null;
	
	private DBConUtil() {}
	
	//데이터베이스 연결 메소드
	public static Connection getConnection() throws Exception {
		//접속 정보
		String url 	= "jdbc:mariadb://127.0.0.1:3555/wcdi";
		String id 	= "root";
		String pass = "0000";
		
		Class.forName("org.mariadb.jdbc.Driver");
		
		conn = DriverManager.getConnection(url, id, pass);
		
		return conn;
	}
	
	//데이터 베이스 연결 종료
	// - 다형성
	public static void close(Connection conn, PreparedStatement ps) {
		if(ps != null) {
			try {ps.close();} catch(Exception e) {e.printStackTrace();}
		}
		if(conn != null) {			
			try {conn.close();} catch(Exception e) {e.printStackTrace();}
		}
	}
	
	public static void close(Connection conn, PreparedStatement ps, ResultSet rs) {
		if(rs != null) {
			try {rs.close();} catch(Exception e) {e.printStackTrace();}
		}
		
		close(conn, ps);
	}
	
	
	
	
	
}


















