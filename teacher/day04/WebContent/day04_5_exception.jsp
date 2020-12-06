<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page errorPage="day04_5_page.jsp" %>
    
<%
	//exception
	//jsp페이지에서 예외가 발생하였을 경우 처리할 페이지를 지정하였을 때
	//예외 페이지에 전달되는 객체
	
	//exception 객체는 page 디렉티브에서 isErrorPage속성을
	//true로 지정해야만 사용이 가능합니다.
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>에러를 발생시키는 페이지</h2>
	<%	
	//조건?참일때:거짓일떄;
	String name = request.getParameter("name")==null?"":request.getParameter("name");
	out.print( name.toUpperCase() );
	Integer.parseInt("test");
	
	//200: 성공
	//400: 클라이언트측의 잘못
	//500: 서버측의 잘못
	
	%>
</body>
</html>



























