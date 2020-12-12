<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style type = 'text/css'>
label{
width: 75px;
display: inline-block;
}
</style>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>회원 가입 페이지</h2>
	<form action  = '10_jdbc_insert_p.jsp'>
		<div>
			<lable>회원ID : </lable><input type = 'text' name = 'userId'/>
		</div>
		<div>
			<lable>회원PW : </lable><input type = 'password' name = 'password'/>
		</div>
		<div>
			<lable>회원NM : </lable><input type = 'text' name = 'userName'/>
		</div>
		<div>
			<input type = 'submit' value = '회원가입'/>
		</div>
	</form>
</body>
</html>