package day12.member;

import java.sql.Connection;
import java.sql.PreparedStatement;

import day12.jdbc.DBConUtil;

//멤버 가입 및 로그인 처리할 클래스
public class MemberDAO {

	//멤버가입
	public Boolean insertMember (MemberDTO memberDTO) {
		Connection conn = null;
		PreparedStatement ps = null;
		boolean state = false;
		
		try {
			conn = DBConUtil.getConnection();
			String sql = " INSERT INTO member(user_id, user_pass, user_email, user_auth_check) " + 
					 " VALUES(?, ?, ?, ?) ";
			ps = conn.prepareStatement(sql);
			ps.setString(1, memberDTO.getUserId());
			ps.setString(2, memberDTO.getUserPw());
			ps.setString(3, memberDTO.getUserEmail());
			ps.setBoolean(4, false);
			int rows = ps.executeUpdate();
			
			//데이터베이스 잘 입력된거 rows == 1
			state = (rows==1);
		} catch (Exception e) {;}
		finally {
			DBConUtil.close(conn, ps);
		}
		return state;
	}
	
}

/*
Connection conn = null;
PreparedStatement ps = null;
boolean state = false;

try {
	conn = DBConUtil.getConnection();
	
} catch (Exception e) {;}
finally {
	DBConUtil.close(conn, ps);
}
*/