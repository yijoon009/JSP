<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="user" class = 'day10.User'></jsp:useBean>
<jsp:setProperty property="*" name="user"/>
<jsp:useBean id="jdbcSample" class = 'day10.MyJDBCSample'></jsp:useBean>
<%
int rows = jdbcSample.updateUser(user);
if(rows>0){%>
	
	<script>
	alert('데이터 수정에 성공했습니다.')
	location.href = '10_jdbc_select.jsp';
	</script>
	
	
<%} else{
%>
	<script>
	alert('데이터 수정에 실패했습니다.')
	location.href = '10_jdbc_select.jsp';
	</script>


<%} %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
</body>
</html>