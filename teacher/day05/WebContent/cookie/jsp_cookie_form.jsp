<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	//로그인 쿠키가 존재한다면 쿠키얻기
	String loginId = "";
	String loginPw = "";
	Cookie[] cookies = request.getCookies();
	if(cookies != null) {	//최초의 로딩 시에 쿠키 없음을 방지하는 코드
		for(Cookie cookie : cookies) {
			if("login_id".equals(cookie.getName())) {
				loginId = cookie.getValue();
			}
			if("login_pw".equals(cookie.getName())) {
				loginPw = cookie.getValue();
			}
		}
	}
	
	//로그인 정보 확인
	out.print("loginId>>>"+loginId);
	
%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp_cookie_form.jsp</title>
</head>
<body>
	<h2>로그인 페이지</h2>
	
	<%if("".equals(loginId) && "".equals(loginPw)) { %>
	<form action="./jsp_cookie_page.jsp">
		<div>
			로그인ID: <input type="text" name="login_id" />
		</div>
		<div>
			로그인PW: <input type="password" name="login_pw" />
		</div>
		<div>
			<input type="submit" value="로그인" />
		</div>
	</form>
	<%} else { %>
	<form action="./jsp_cookie_expires.jsp">
		<div><%=loginId %>님 환영합니다.</div>
		<div>
			<input type="submit" value="로그아웃" />
		</div>
	</form>	
	<%} %>
	
</body>
</html>








