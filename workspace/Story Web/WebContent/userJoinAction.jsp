<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="user.UserDTO"%>
<%@ page import="user.UserDAO"%>
<%@ page import="java.io.PrintWriter"%>

<%
	request.setCharacterEncoding("UTF-8");
	String userID = null;
	String userPassword = null;
	if(request.getParameter("userID") != null ){
		userID = (String) request.getParameter("userID");
	}
	if(request.getParameter("userPassword") != null ){
		userPassword = (String) request.getParameter("userPassword");
	}
	if(userID == null || userPassword == null ) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		/* if(userID == null) script.println("alert('아이디를 입력하세요.')");
		if(userPassword == null) script.println("alert('비밀번호를 입력하세요.')"); */
	 script.println("alert('입력이 되지 않은 부분이 있습니다.');");
		script.println("history.back();");
		script.println("</script>");
		script.close(); 
		return;
	}
	UserDAO userDAO = new UserDAO();
	int result = userDAO.join(userID, userPassword);
	if (result == 1 ) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('회원가입을 축하드립니다.');");
		script.println("location.href = 'index.jsp';");
		script.println("</script>");
		script.close(); 
		return;
	}
	%>