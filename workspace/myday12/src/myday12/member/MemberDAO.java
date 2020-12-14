package myday12.member;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import myday12.jdbc.DBConUtil;

//멤버 가입 및 로그인 처리할 클래스
public class MemberDAO {
	
	//멤버 로그인
	// - 실제로는 pw를 암호화하여 저장함.
	public Boolean selectMember() {
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		try {
			conn = DBConUtil.getConnection();
			//todo...
			//todo...
		}catch(Exception e) {
			
		}finally {
			DBConUtil.close(conn, ps, rs);
		}
	}
	
	
	//멤버 가입
	public Boolean insertMember(MemberDTO memberDTO) {
		Connection conn = null;
		PreparedStatement ps = null;
		boolean state = false;
		try {
			conn = DBConUtil.getConnection();
			//todo...
			String sql = " INSERT INTO member(user_id,user_pass,user_email,user_auth_check) " +
						 " VALUES(?,?,?,?) ";
			ps = conn.prepareStatement(sql);
			ps.setString(1, memberDTO.getUserId());
			ps.setString(2, memberDTO.getUserPw());
			ps.setString(3, memberDTO.getUserEmail());
			ps.setBoolean(4, false);
			
			int rows = ps.executeUpdate();
			state = (rows == 1);
			//todo...
		}catch(Exception e) {
			
		}finally {
			DBConUtil.close(conn, ps);
		}
		return state;
	}
	
	
	
	
}

/*
 * 
 * 		Connection conn = null;
		PreparedStatement ps = null;
		
		try {
			conn = DBConUtil.getConnection();
			//todo...
			//todo...
		}catch(Exception e) {
			
		}finally {
			DBConUtil.close(conn, ps);
		}
		
		*/
