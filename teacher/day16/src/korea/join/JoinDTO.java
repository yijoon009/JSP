package korea.join;

import java.io.Serializable;

public class JoinDTO implements Serializable {

	private static final long serialVersionUID = 1L;
	
	private Long seq;
	private String userId; 
	private String userPw;
	
	
	
	public Long getSeq() {
		return seq;
	}
	public void setSeq(Long seq) {
		this.seq = seq;
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
	@Override
	public String toString() {
		return "JoinDTO [seq=" + seq + ", userId=" + userId + ", userPw=" + userPw + "]";
	}
	
	

}
