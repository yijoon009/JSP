package day11;

import java.io.IOException;
import java.io.StringWriter;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.SimpleTagSupport;

public class MyCustomTag extends SimpleTagSupport{
	
	private String userName;
	
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}

	StringWriter sw = new StringWriter();
	
	@Override
	public void doTag() throws JspException, IOException {
		//invoke : private에 접근할때 set을 자동으로 해준다.
		getJspBody().invoke(sw);
		getJspContext().getOut().println(getUserName()+String.valueOf(sw)+"<br />");
	}
	
	
}
