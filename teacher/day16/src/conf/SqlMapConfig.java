package conf;

import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class SqlMapConfig {

	private static SqlSessionFactory sqlSession;
	
	static {
		try {
			String resource = "./conf/SqlMapConfig.xml";
			Reader reader = Resources.getResourceAsReader(resource);
			sqlSession = new SqlSessionFactoryBuilder().build(reader);
			reader.close();
		} catch(Exception e) {
			e.printStackTrace();
			throw new RuntimeException("error : " + e);
		}
	}
	
	public static SqlSessionFactory getSqlMapInstance() {
		return sqlSession;
	}
	
}
