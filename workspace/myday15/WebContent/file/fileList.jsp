<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="fileDAO" class  = "myday15.FileDAO"></jsp:useBean>
<c:set var = "fileList" value = "${fileDAO.selectFiles() }"></c:set>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>
		<table border = "1">
			<tr>
				<th>번호</th>
				<th>파일 이름</th>
				<th>파일 업로더</th>
			</tr>
			<c:forEach var = "item" items = "${fileList }" varStatus="status">
				<tr>
					<td>${status.count }</td>				
					<td>${item.fileOrigName }</td>				
					<td>${item.name }</td>				
				</tr>
			</c:forEach>
			<tr></tr>
			
		</table>
	</div>
</body>
</html>