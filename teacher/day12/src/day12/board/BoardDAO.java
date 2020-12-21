package day12.board;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import day12.jdbc.DBConUtil;

//게시판 CRUD를 처리할 class
// - DB처리를 위한 class
public class BoardDAO {
	
	//게시글 수정
	public Integer updateBoard(BoardDTO boardDTO) {
		Connection conn = null;
		PreparedStatement ps = null;
		int rows = 0;		
		try {
			conn = DBConUtil.getConnection();
			//todo..
			
			String sql = "UPDATE board SET title=?, content=? WHERE id = ?";
			ps = conn.prepareStatement(sql);
			ps.setString(1, boardDTO.getTitle());
			ps.setString(2, boardDTO.getContent());
			ps.setLong(3, boardDTO.getId());
			
			rows = ps.executeUpdate();
			
			//todo..
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			DBConUtil.close(conn, ps);
		}
		return rows;
	}
	
	//게시글 삭제
	public Integer deleteBoard(BoardDTO boardDTO) {
		Connection conn = null;
		PreparedStatement ps = null;
		int rows = 0;
		try {
			conn = DBConUtil.getConnection();
			//todo..
			String sql = "DELETE FROM board WHERE id = ?";
			ps = conn.prepareStatement(sql);
			ps.setLong(1, boardDTO.getId());
			rows = ps.executeUpdate();
			
			//todo..
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			DBConUtil.close(conn, ps);
		}
		return rows;
	}
	
	
	//게시판 조회수 증가
	public void boardHit(BoardDTO boardDTO) {
		Connection conn = null;
		PreparedStatement ps = null;

		try {
			conn = DBConUtil.getConnection();
			//todo..
			String sql = "UPDATE board SET hit = (hit + 1) WHERE id = ? ";
			ps = conn.prepareStatement(sql);
			ps.setLong(1, boardDTO.getId());
			ps.executeUpdate();
			//todo..
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			DBConUtil.close(conn, ps);
		}
	}
	
	//게시판 상세조회
	public BoardDTO selectBoard(BoardDTO boardDTO) {
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		BoardDTO board = new BoardDTO();
		try {
			conn = DBConUtil.getConnection();
			//todo..
			String sql = "SELECT id, title, hit, create_id, create_date, content, board_pass, board_type FROM board WHERE id = ?";
			ps = conn.prepareStatement(sql);
			ps.setLong(1, boardDTO.getId());			
			rs = ps.executeQuery();
			if(rs.next()) {
				int i = 1;				
				board.setId(rs.getLong(i++));
				board.setTitle(rs.getString(i++));
				board.setHit(rs.getInt(i++));
				board.setCreateId(rs.getString(i++));
				board.setCreateDate(rs.getDate(i++));
				board.setContent(rs.getString(i++));
				board.setBoardPass(rs.getString(i++));
				board.setBoardType(rs.getBoolean(i++));
			}
			
			//게시글 조회 수 증가
			boardHit(boardDTO);
			
			//todo..
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			DBConUtil.close(conn, ps, rs);
		}
		return board;
		
	}
	
	//게시판 조회
	public List<BoardDTO> selectBoard(boolean type) {
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		List<BoardDTO> boardList = new ArrayList<BoardDTO>();
		try {
			conn = DBConUtil.getConnection();
			//todo..
			String sql = "SELECT id, title, hit, create_id, create_date FROM board WHERE board_type=?";
			ps = conn.prepareStatement(sql);
			ps.setBoolean(1, type);
			rs = ps.executeQuery();
			while(rs.next()) {
				int i = 1;
				BoardDTO board = new BoardDTO();
				board.setId(rs.getLong(i++));
				board.setTitle(rs.getString(i++));
				board.setHit(rs.getInt(i++));
				board.setCreateId(rs.getString(i++));
				board.setCreateDate(rs.getDate(i++));
				
				boardList.add(board);
			}
			
			
			//todo..
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			DBConUtil.close(conn, ps, rs);
		}
		return boardList;
		
	}
	
	//게시판 저장
	public Integer saveBoard(BoardDTO board) {		
		Connection conn = null;
		PreparedStatement ps = null;
		int rows = 0;
		try {
			conn = DBConUtil.getConnection();
			//todo..
			String sql = "INSERT INTO board(title, content, board_pass, create_id, board_type) "
					+ " VALUES(?, ?, ?, ?, ?)";
			ps = conn.prepareStatement(sql);
			ps.setString(1, board.getTitle());
			ps.setString(2, board.getContent());
			ps.setString(3, board.getBoardPass());
			ps.setString(4, board.getCreateId());
			ps.setBoolean(5, board.getBoardType());
			
			rows = ps.executeUpdate();
			
			//todo..
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			DBConUtil.close(conn, ps);
		}
		return rows;
		
	}
}
