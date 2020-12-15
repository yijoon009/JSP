package day12.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

//데이터베이스 접속을 담당할 클래스
public class DBConUtil  {
	
	//어플리케이션이 종료되기 전까지 메모리에 상주
	private static Connection conn = null;
	private DBConUtil() {;}
	
	//데이터베이스 연결 메소드
	//db를 외부에서 가져오는거기 때문에 예외처리 해줘야해
	public static Connection getConnection() throws Exception{
		
		//접속 정보
		String url 	= "jdbc:mariadb://127.0.0.1:3555/wcdi";
		String id 	= "root";
		String pass = "0000";
		
		//new 생성하지 않고 쓸수있는 방법
		Class.forName("org.mariadb.jdbc.Driver");
		conn = DriverManager.getConnection(url, id, pass);
		return conn;
	}	
	
	//데이터베이스 연결 종료 메소드
	public static void close(Connection conn, PreparedStatement ps) {
		if(ps!=null) {
			try {ps.close();}catch(Exception e) {}
		}
		if(conn!=null) {
			try {conn.close();}catch(Exception e) {}
		}
	}
	
	public static void close(Connection conn, PreparedStatement ps, ResultSet rs) {
		if(rs != null) {
			try {rs.close();} catch(Exception e) {}
		}
		close(conn, ps);
	}
	
}
