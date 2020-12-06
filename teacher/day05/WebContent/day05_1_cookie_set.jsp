<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
Cookie c = new Cookie("userId", "korea");
//유효기간: 유효기간이 없으면 브라우저 종료 시 쿠키는 삭제
c.setMaxAge(365 * 24 * 60 * 60);		//365일

//jsp(server) 에서는 쿠키를 구울 수 없으므로 클라이언트측으로 정보만 전달하면서
//쿠키를 구우라고 명령해줘야함!!
response.addCookie(c);
%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>