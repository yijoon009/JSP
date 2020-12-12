<%@page import="day10.User"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="jdbcSample" class = 'day10.MyJDBCSample'></jsp:useBean>
<%
//회원 조회 호출
List<User> list = jdbcSample.selectUser();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>회원 현황</h2>
	<table border = '1'>
		<tr>
			<th>번호</th>
			<th>회원 ID</th>
			<th>회원 이름</th>
		</tr>
		<% for(User u : list){%>
		<tr>
			
			<td>
			<a href = "10_jdbc_delete_p.jsp?id=<%=u.getId() %>">
			<%=u.getId() %>
			</a>
			</td>
			<td>
				<a href = '10_jdbc_update.jsp?userId=<%=u.getUserId()%>'>
				<%=u.getUserId() %>
				</a>
			</td>
			<td><%=u.getUserName() %></td>
		</tr>
		<%} %>
	
	
	</table>
</body>
</html>