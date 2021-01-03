<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>회원 리스트</h2>
	
	<div>
		<table border = "1">
			<tr>
				<th>순번</th>
				<th>이름</th>
			</tr>
			<c:forEach var = "item" items = "${joinList }" varStatus = "status">
			
			<tr>
				<td>${item.seq }</td>
				<td>${item.userId }</td>
			</tr>
			</c:forEach>
		</table>	
	</div>
	
</body>
</html>