package day12.member;

import java.io.Serializable;

public class MemberDTO implements Serializable{

	private static final long serialVersionUID = 1L;
	
	private Long id;
	private String userId;
	private String userPw;
	private String userEmail;
	private Boolean userAuthCheck;
	
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
	public String getUserPw() {
		return userPw;
	}
	public void setUserPw(String userPw) {
		this.userPw = userPw;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public Boolean getUserAuthCheck() {
		return userAuthCheck;
	}
	public void setUserAuthCheck(Boolean userAuthCheck) {
		this.userAuthCheck = userAuthCheck;
	}
	@Override
	public String toString() {
		return "MemberDTO [id=" + id + ", userId=" + userId + ", userPw=" + userPw + ", userEmail=" + userEmail
				+ ", userAuthCheck=" + userAuthCheck + "]";
	}
	
	
}
