<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
//mvc 예제 - model1방식
// - jsp에서 비즈니스 로직 처리가 이루어지는 방식
out.println(request.getParameter("hello"));

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>
	${param.hello }
	</div>
</body>
</html>