package myday15;

import java.io.File;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import myday15.jdbc.DBConUtil;

public class FileDAO {
	
	//경로 업데이트
	public void updateFilePath(FileDTO fileDTO) {
		Connection conn = null;
		PreparedStatement ps = null;

		try {
			conn = DBConUtil.getConnection();
			//todo..
			String sql = "UPDATE tbl_file SET file_path = ? WHERE id = ?";
			ps = conn.prepareStatement(sql);
			
			// /20201226/ 이렇ㄱ[
			//확장자 명 받아와서 해봐
			
			String filePath = File.separatorChar + FileService.getToday()+
					File.separatorChar+fileDTO.getId()+".txt";
			
			ps.setString(1, filePath);
			ps.setLong(2, fileDTO.getId());
			
			//파일 저장 경로 세팅
			fileDTO.setFilePath(filePath);
			
			ps.executeUpdate();
			
			//todo..
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			DBConUtil.close(conn, ps);
		}
	}
	
	
	
	//파일 업로드
	public void insertFile(FileDTO fileDTO) {
		Connection conn = null;
		PreparedStatement ps = null;
		String[] genColumns = {"id"}; 
		
		try {
			conn = DBConUtil.getConnection();
			//todo..
			String sql = "INSERT INTO tbl_file(name, file_orig_name) VALUES(?, ?)";
			//genColumns는 자동으로 만들어질거야
			ps = conn.prepareStatement(sql, genColumns);
			ps.setString(1, fileDTO.getName());
			ps.setString(2, fileDTO.getFileOrigName());
			
			int rows = ps.executeUpdate();
			
			//입력된 sql로부터 auto_increment된 id값 얻기
			try(ResultSet genKey = ps.getGeneratedKeys()){
				if(genKey.next()) {
					fileDTO.setId(genKey.getLong(1));
				}
			}
			
			//insert 실행 이후 구현할 로직이 모두 성공한다면
			// - 임시 공간에 있는 파일을 특정 위치로 이동
			// - 특정 위치는 오늘 날짜 기반으로 만듬
			if(rows >=1) {
				updateFilePath(fileDTO);
			}
			
			
			
			//todo..
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			DBConUtil.close(conn, ps);
		}
	}
	
	
	//file 리스트
	public List<FileDTO> selectFiles(){
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		List<FileDTO> fileList = new ArrayList<>();
		try {
			conn = DBConUtil.getConnection();
			//todo..
			String sql = "SELECT * FROM tbl_file";
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			
			while(rs.next()) {
				int i=1;
				FileDTO fileDTO = new FileDTO();
				fileDTO.setId(rs.getLong(i++));
				fileDTO.setName(rs.getString(i++));
				fileDTO.setFilePath(rs.getString(i++));
				fileDTO.setFileOrigName(rs.getString(i++));
				
				fileList.add(fileDTO);
			}
			//todo..
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			DBConUtil.close(conn, ps, rs);
		}
		return fileList;
	}
}

/*
 * Connection conn = null;
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
 * */
 