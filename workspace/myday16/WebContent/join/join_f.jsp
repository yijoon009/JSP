<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
//join_f.jsp
//회원가입 form 페이지

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>회원가입</h2>
	<form action = "./join.do" method = "post">
		<div>
			<label>아이디</label>
			<input type = "text" name = "userId"/>
		</div>
		<div>
			<label>비밀번호</label>
			<input type = "text" name = "userPw"/>
		</div>
		<div>
			<button type = "submit">회원가입</button>
		</div>
	</form>
</body>
</html>