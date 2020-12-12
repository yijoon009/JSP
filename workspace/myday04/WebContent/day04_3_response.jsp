<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% 
	//response(응답)
	//웹 브라우저(클라이언트)의 요청에 대한 응답할 정보를 가지고 있는 객체
	//setContentType()로 한글 처리
	//리다이렉트(redirect): 저장된 URL로 요청을 재전송
	response.sendRedirect("day04_3_redirect.jsp");
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>day04_3_response</h2>
</body>
</html>