<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:useBean id="user" class = 'day10.User'></jsp:useBean>
    <jsp:setProperty property="*" name="user"/>
    <jsp:useBean id="jdbcSample" class = 'day10.MyJDBCSample'></jsp:useBean>
    
<%
user = jdbcSample.selectUser(user);

%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
label {
width: 75px;
display: inline-block;
}
</style>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>회원 수정 페이지</h2>
	<form action = '10_jdbc_update_p.jsp'>
		<input type = "hidden" name = 'userId' value = '<%=user.getUserId()%>' />
		<div>
			<lable>회원 ID:</lable><input type = 'text' value = '<%=user.getUserId()%>' disabled="disabled"/>
		</div>
		<div>
			<lable>회원 PW:</lable><input type = "password" name = 'password' value ='<%=user.getPassword() %>' />
		</div>
		<div>
			<lable>회원 NM:</lable><input type = 'text' name = 'userName' value = '<%=user.getUserName() %>' />
		</div>
		<div>
			<input type = 'submit' value = '회원수정'/>
		</div>
	
	</form>

</body>
</html>