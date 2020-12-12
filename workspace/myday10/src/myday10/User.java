package myday10;

import java.io.Serializable;

//Bean
public class User  implements Serializable{

	private static final long serialVersionUID = 1L;
	
	private Integer id;
	//int: 기본형
	//Integer : 기본객체
	private String userId;
	private String password;
	private String userName;
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	@Override
	public String toString() {
		return "User [id=" + id + ", userId=" + userId + ", password=" + password + ", userName=" + userName + "]";
	}
	
}
