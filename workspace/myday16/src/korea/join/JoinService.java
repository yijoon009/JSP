package korea.join;

import java.util.List;

public class JoinService {
	private JoinDAO joinDAO = null;
	
	public JoinService() {
		joinDAO = new JoinDAO();
	}
	
	
	//회원 가입
	public boolean save(JoinDTO joinDTO) {
		//회원가입 시 비즈니스 로직 작성...
		return joinDAO.save(joinDTO);
	}
	
	
	//회원 조회
	public List<JoinDTO> list(){
		//회원 조회시 비즈니스 로직 작성...
		
		return joinDAO.list();
	}
	
	
	
	
}
