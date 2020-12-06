<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>회원가입</h2>
	<form action="day08_5_beans_page.jsp">
		<div>
			이름: <input type="text" name="name" />
		</div>
		<div>
			직업: <input type="text" name="job" />
		</div>
		<div>
			이메일: <input type="text" name="emailtest" />
		</div>
		<div>
			비밀번호: <input type="text" name="password" />
		</div>
		<div>
			<input type="submit" value="회원가입"/>
			<input type="button" value="로그인" onclick="goLogin()"/>			
		</div>
	</form>
</body>
</html>

<script>
function goLogin() {
	location.href="day08_5_beans_login_form.jsp";
}
</script>











