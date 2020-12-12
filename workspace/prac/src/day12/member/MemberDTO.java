package day12.member;

import java.io.Serializable;

public class MemberDTO implements Serializable{

	private static final long serialVersionUID = 1L;
	
	private Long id;
	private String userId;
	private String userPass;
	private String userEmail;
	private String userAuthCheck;
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserPass() {
		return userPass;
	}
	public void setUserPass(String userPass) {
		this.userPass = userPass;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public String getUserAuthCheck() {
		return userAuthCheck;
	}
	public void setUserAuthCheck(String userAuthCheck) {
		this.userAuthCheck = userAuthCheck;
	}
	@Override
	public String toString() {
		return "MemberDTO [id=" + id + ", userId=" + userId + ", userPass=" + userPass + ", userEmail=" + userEmail
				+ ", userAuthCheck=" + userAuthCheck + "]";
	}
	
	
}
