package util;

import java.sql.Connection;
import java.sql.DriverManager;

public class DatabaseUtil {
	
	public static Connection getConnection() {
		try {
			String dbURL = "jdbc:mysql://localhost:3305/userDB";
			String dbID = "root";
			String dbPassword = "password";
			Class.forName("com.mysql.jdbc.Driver");
			return DriverManager.getConnection(dbURL, dbID, dbPassword);
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		return null; // 오류 발생 시
	}

}
