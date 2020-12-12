<%@page import="myday08.PersonBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//javabeans 예제1
	// - 기존과 동일한 방식의 사용법
	PersonBean bean = new PersonBean();
	bean.setName("장영실");
	bean.setJob("발명가");





%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>day08_2_beans.jsp</h2>
	<div>이름: <%=bean.getName() %></div>
	<div>직읍: <%=bean.getJob() %></div>
</body>
</html>