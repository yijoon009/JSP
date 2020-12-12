<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%
int randomNum = (int)(Math.random()*10);
%>   
    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<div>
		<img src = './images/image<%out.print(randomNum); %>.gif'/><br/>
		<img src = './images/image<%=randomNum %>.gif'/><br/>
	</div>
</body>
</html>