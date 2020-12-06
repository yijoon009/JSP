<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>day04_4_page.jsp</title>
</head>
<body>

	<h2>page 객체 예제</h2>
	<div>
		<%
		//out객체 사용하기
		JspWriter output = pageContext.getOut();
		output.print("out 객체와 동일한 객체");
		
		output.print("<br />");
		
		//request 객체 사용하기
		ServletRequest req = pageContext.getRequest();
		output.print(req.getServerName());
		%>
	</div>

</body>
</html>









