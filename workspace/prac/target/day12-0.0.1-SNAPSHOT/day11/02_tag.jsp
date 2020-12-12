<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "ex" uri = "/WEB-INF/custom.tld" %>
<%@ taglib prefix = "myf" uri = "/WEB-INF/myFunction.tld" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<ex:Hello/><br/>
	<ex:myCustom userName = "korea">님 안녕하세요. </ex:myCustom>
	<ex:myCustom userName = "코리아">님 안녕하세요. </ex:myCustom>
	
	<div>
		10+10의 결과는 ${myf:plus(10,10) }<br/>
		10*10의 결과는 ${myf:multiple(10,10) }
	
	</div>
	
</body>
</html>