<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="korea" class = "day11.Korea"></jsp:useBean>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>el 표현식</h2>
	<div>
	더하기 : ${10+10 } <br/>
	</div>
	
	<div>
	${korea.getInfo() }<br/>
	${korea.add(4,7) }<br/>
	</div>
</body>
</html>