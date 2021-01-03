package day16.join;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import day16.conf.SqlMapConfig;

//데이터 베이스 처리 클래스
public class JoinDAO {
	
	//아까 데이터베이스 객체 만든거  넣어주고
	private SqlSessionFactory sqlSessionFactory = SqlMapConfig.getSqlMapInstance();
	private SqlSession sqlSession;
	
	//데이터 베이스 객체 얻어오기
	public JoinDAO() {
		sqlSession = sqlSessionFactory.openSession(true);
	}
	
	//회원 저장 메서드
	public boolean save(JoinDTO joinDTO) {
		
		int result = sqlSession.insert("saveJoin", joinDTO);
		return (result==1);
	}
	
	
	//회원 조회 메서드
	public List<JoinDTO> list() {
		return sqlSession.selectList("selectJoin");
	}
	
	
	
	
	
}
