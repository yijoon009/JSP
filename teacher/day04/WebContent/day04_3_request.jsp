<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	//request객체는 웹 브라우저(클라이언트)에서 jsp페이지로 전달되는 정보로
	//http 헤더와 http 바디 구성되어있다.
	//HttpServletRequest 객체로 만들었습니다.
%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>day04_3_request</title>
</head>
<body>
	<h2>request 사용 예제</h2>
	<%
	out.println( request.getProtocol() );
	
	out.println("<br />");
	
	out.println( request.getParameter("name") );
	
	out.println("<br />");
	
	out.println( request.getServerName() );
	
	out.println("<br />");
	
	//브라우저 확인
	out.println( request.getHeader("User-Agent") );
	
	
	%>
</body>
</html>




















