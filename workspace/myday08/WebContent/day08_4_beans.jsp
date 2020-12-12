<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<jsp:useBean id="bean" class = "myday08.PersonBean">
<jsp:setProperty name="bean" property="name" value="윤동주"/>
<jsp:setProperty name="bean" property="job" value="시인"/>
</jsp:useBean>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>day08_4_beans.jsp</h2>
	<div>이름:<jsp:getProperty property="name" name="bean"/> </div>
	<div>직업: <jsp:getProperty property="job" name="bean"/></div>
</body>
</html>