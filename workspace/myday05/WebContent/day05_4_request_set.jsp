<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String id = "admin";
String pw = "admin";

//id와 pw가 admin이라면 
//day05_4_request_get.jsp 으로 admin이라는 정보를 넘겨주세요.
if("admin".equals(id) && "admin".equals(pw)){
	request.setAttribute("isAdmin", "admin");
	pageContext.forward("day05_4_request_get.jsp");
}

%>
