<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
//- cookie에 데이터 저장하기
//- id 와 pw 불일치하는 경우, 경고창과 함께 로그인 페이지로 이동
// : id: admin pw:1234인 경우에만 로그인 성공
String loginId = request.getParameter("login_id");
String loginPw = request.getParameter("login_pw");

//로그인 정보가 틀렸을 경우
if(!("admin".equals(loginId) && "1234".equals(loginPw))){
	
	%>
	<script>
	alert("로그인 정보가 틀립니다.");
	//javascrip를 이용하여 페이지 이동시키기
	location.href = "jsp_cookie_form.jsp";
	</script>
<%
} else{	
	//로그인이 성공한 경우, 쿠키 굽기
	Cookie cookie = new Cookie("login_id",loginId);
	Cookie cookie_pw = new Cookie("login_pw",loginPw);
	
	//쿠키에 유효시간 설정하기
	cookie.setMaxAge(1*24*60*60);
	cookie_pw.setMaxAge(1*24*60*60);
	//쿠키를 클라이언트측에 전송하여 굽기
	response.addCookie(cookie);
	response.addCookie(cookie_pw);
	
	//로그인 페이지(jsp_cookie_form,jsp)로 이동시키기
	// - 페이지를 이동시키면서 request를 초기화하고, 
	//   마치 http(웹)의 기본 페이지 이동을 하는 것처럼 이동시키기
	response.sendRedirect("./jsp_cookie_form.jsp");	
}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp_cookie_form</title>
</head>
<body>
	<h2>로그인 페이지</h2>
	<div>
		<%=loginId %>님 환영합니다.
		
	</div>	
</body>
</html>