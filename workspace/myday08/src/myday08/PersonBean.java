package myday08;

import java.io.Serializable;

//lombok < getter/setter 자동으로 해줘

public class PersonBean implements Serializable { //이 전체 클래스를 bean이라 불러
	
	private static final long serialVersionUID = 1L;	//직렬화 ???
	
	private String name;
	private String job;
	private String email;
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getJob() {
		return job;
	}
	public void setJob(String job) {
		this.job = job;
	}
	
	
	
}
