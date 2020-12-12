<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="bean" class = "myday08.PersonBean">
    
    </jsp:useBean><%

	//javabeans 예제2
	// - 선언을 bean으로 활용
	bean.setName("이순신");
	bean.setJob("장군");

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>day08_3_beans.jsp</h2>
	<div>이름: <%=bean.getName() %></div>
	<div>직읍: <%=bean.getJob() %></div>
</body>
</html>