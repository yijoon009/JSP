package day11;

import javax.servlet.jsp.tagext.SimpleTagSupport;

public class MyFunctionTag extends SimpleTagSupport{
	
	public static Integer plus(Integer x, Integer y) {
		return x+y;
	}
	
	public static Integer multiple(Integer x, Integer y) {
		return x*y;
	}
	
	
}
