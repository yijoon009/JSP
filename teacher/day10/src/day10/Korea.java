package day10;

public class Korea {
	public static void main(String[] args) {
		MyJDBCSample m = new MyJDBCSample();
		
		//user 객체
		User user = new User();
		user.setUserId("korea3");
		user.setPassword("1234");
		user.setUserName("테스트");
		
		//user 객체를 데이터 베이스에 입력
		m.inserUser(user);
		
		//user 데이터 조회
		m.selectUser();
		
	}
}
