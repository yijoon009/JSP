package done.member;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import done.jdbc.DBConUtil;

public class MemberDAO {
	
	//멤버 로그인
	public Boolean selectMember(MemberDTO memberDTO) {
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		boolean state = false;

		try {
			conn = DBConUtil.getConnection();
			String sql = "SELECT * FROM member WHERE user_id = ? AND user_pw = ?";
			ps = conn.prepareStatement(sql);
			ps.setString(1, memberDTO.getUserId());
			ps.setString(2, memberDTO.getUserPw());
			rs = ps.executeQuery();
			if(rs.next()) {
				state = true;
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			DBConUtil.close(conn, ps);
		}
		return state;
	}
	
	
	//멤버가입
	public Boolean insertMember(MemberDTO memberDTO) {
		Connection conn = null;
		PreparedStatement ps = null;
		boolean state = false;
		try {
			conn = DBConUtil.getConnection();
			String sql = "INSERT INTO member(user_id, user_pw, user_email,user_auth_check) "
					+ " VALUES(?,?,?,?)";
			ps = conn.prepareStatement(sql);
			ps.setString(1, memberDTO.getUserId());
			ps.setString(2, memberDTO.getUserPw());
			ps.setString(3, memberDTO.getUserEmail());
			ps.setBoolean(4, false);
			
			int rows = ps.executeUpdate();
			state = (rows==1);
			
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			DBConUtil.close(conn, ps);
		}
		return state;
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