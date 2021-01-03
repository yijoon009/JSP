<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="fileDAO" class="day15.korea.FileDAO"/>
<c:set var="fileList" value="${fileDAO.selectFiles() }" />    
    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>
	
		<table border="1">
			<tr>
				<th>번호</th>
				<th>파일이름</th>
				<th>파일업로더</th>
			</tr>
			<c:forEach var="item" items="${fileList}" varStatus="status">
				<tr>
					<td>${status.count }</td>
					
					<c:url var="downUrl" value="./filedown.jsp">
						<c:param name="filePath">${item.filePath }</c:param>
						<c:param name="fileOrigName">${item.fileOrigName }</c:param>
					</c:url>
					<td>
					<a href="${downUrl }">
					${item.fileOrigName }
					</a>
					</td>
					
					
					<td>${item.name }</td>
				</tr>
			</c:forEach>
			<tr></tr>
			
		</table>
	
	</div>
</body>
</html>











