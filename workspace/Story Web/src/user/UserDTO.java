package user;

public class UserDTO {
	// Data Transfer Object
	// JSP 프로그램안에서 하나의 데이터 단위를 담기위한 객체
	
	String userID;
	String userPassword;
	
	public String getUserID() {
		return userID;
	}
	// get = 현재의 기록된 데이터 수집
	// set = 데이터 기록 명령
	public void setUserID(String userID) {
		this.userID = userID;
	}
	public String getUserPassword() {
		return userPassword;
	}
	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}
	

	
}
