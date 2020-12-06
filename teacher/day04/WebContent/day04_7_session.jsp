<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	//session은 jsp의 내장 객체	
	session.setAttribute("name", "korea session");
%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>session 예제</h2>
	<%
	out.println(session.getAttribute("name"));
	
	%>
</body>
</html>












