package day16.join;

import java.util.List;

//비즈니스 로직 처리 클래스
public class JoinService {
	
	private JoinDAO joinDAO = null;
	
	public JoinService() {
		joinDAO = new JoinDAO();
	}
	
	
	//회원가입
	public boolean save(JoinDTO joinDTO) {
		//회원가입 시에 비즈니스 로직 작성...
		//id 길이, pw 길이, 문자입력값 맞는지 등등
		return joinDAO.save(joinDTO);
	}
	
	//회원 조회
	public List<JoinDTO> list(){
		//회원 조회 시에 비즈니스 로직 작성...
		//날짜 형태가 달라서 포맷처리, 특정 id에 vip설정해준다거나
		return joinDAO.list();
	}
	
	
}
