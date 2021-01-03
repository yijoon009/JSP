package day16.conf;

import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class SqlMapConfig {
	private static SqlSessionFactory sqlSession;
	
	//connection pool이라 생각하면 돼.
	//db랑 이미 연결된 것들을 pool에 모아놔
	static {
		try {
			//파일 위치지정
			String resource = "/day16/conf/SqlMapConfig.xml";
			//문자열로 그 파일가서 읽어오기
			Reader reader = Resources.getResourceAsReader(resource);
			//build로 파싱하고
			//파싱한걸 sqlSession이라는데에 넣어줌
			sqlSession = new SqlSessionFactoryBuilder().build(reader);
			reader.close();
		}catch(Exception e) {
			e.printStackTrace();
			throw new RuntimeException("error : "+e);
		}
	}
	
	
	public static SqlSessionFactory getSqlMapInstance() {
		return sqlSession;
	}
}
