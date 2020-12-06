<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
//쿠키 삭제하기
Cookie[] cookies = request.getCookies();

for(Cookie cookie : cookies) {
	//전체 쿠키 삭제
	cookie.setMaxAge(0);
	response.addCookie(cookie);
}

response.sendRedirect("./jsp_cookie_form.jsp");

%>