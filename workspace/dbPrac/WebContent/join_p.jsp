<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:useBean id="user" class = 'dbPrac.DTO'></jsp:useBean>
    <jsp:setProperty property="*" name="user"/>
    <jsp:useBean id="jdbc" class = 'dbPrac.JDBC'></jsp:useBean>

<%
out.println(user);
int rows = jdbc.insert(user);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	${member }
</body>
</html>