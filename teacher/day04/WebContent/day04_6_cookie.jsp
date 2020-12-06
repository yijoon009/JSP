<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
Cookie cookie1 = new Cookie("name", "korea");
cookie1.setMaxAge(365 * 24 * 60 * 60);  //365일


//쿠키를 클라이언트에 전송하여 쿠키를 생성한다.(굽는다)
response.addCookie(cookie1);

//쿠키를 얻기
Cookie[] cookies = request.getCookies();

%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>day04_6_cookie</title>
</head>
<body>
	<h2>쿠키 예제 페이지</h2>
	<%
	for(Cookie cookie : cookies) {
		out.println(cookie.getName() + " : " + cookie.getValue());
		out.println("<br />");
	}
	%>
</body>
</html>














