package day15;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import day15.jdbc.DBConUtil;

public class FileDAO {
	
	
	//파일 업로드
	public void insertFile(FileDTO fileDTO) {
		Connection conn = null;
		PreparedStatement ps = null;
		String[] genColumns = {"id"};

		try {
			conn = DBConUtil.getConnection();
			String sql = "INSERT INTO tbl_file(name, file_orig_name) VALUES(?, ?)";
			//sql문 뒤에 genColumns 써주면 '이건 자동으로 만들어질거야' 라는 뜻
			ps = conn.prepareStatement(sql, genColumns);
			ps.setString(1, fileDTO.getName());
			ps.setString(2, fileDTO.getFileOrigName());
			
			int rows = ps.executeUpdate();
			
			//입력된 sql로부터 auto_increament된 id값 얻기
			//자동으로 생성되는 값이 있으면 가져와라
			//근데 뭐가 자동으로 생성되는지 모르니까 위에 String 배열 만들어서 알려줘
			
			try(ResultSet genKey = ps.getGeneratedKeys()) {
				if(genKey.next()) {
					fileDTO.setId(genKey.getLong(1));
				}
			}
			
			
			
			
			System.out.println("fileDTO>>>"+fileDTO);
			
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			DBConUtil.close(conn, ps);
		}
	}
	
	
}
/*
Connection conn = null;
PreparedStatement ps = null;

try {
	conn = DBConUtil.getConnection();
	//todo..
	//todo..
} catch(Exception e) {
	e.printStackTrace();
} finally {
	DBConUtil.close(conn, ps);
}
*/	