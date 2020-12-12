<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <jsp:useBean id="user" class = "myday10.User"></jsp:useBean>
    <jsp:setProperty property="*" name="user"/>
    <jsp:useBean id="jdbcSample" class = 'myday10.MyJDBCSample'></jsp:useBean>
<%
user = jdbcSample.selectUser(user);
out.println(user);
    
%>
<body>
	<h2>회원 수정 페이지</h2>
	<form action="day10_jdbc_update_p.jsp">
	<div>
		아이디 : <input type = 'text' name = 'userId'>
	</div>
	<div>
		비밀번호 : <input type = 'text' name = 'password'>
	</div>
	<div>
		이름 : <input type = 'text' name = 'userName'>
	</div>
	<div>
		<input type='submit' value = "회원 수정"/>
	</div>
	
	</form>
</body>
</html>