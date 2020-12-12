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
	<c:out value = "korea"/> <br/>
	<!-- 변수 세팅 -->
	<c:set var = "myVar" value = "코리아"></c:set>
	<c:out value="${myVar }"/>	<br/>
	
	<!-- 조건문 -->
	<c:set var = "isLogin" value = "true"></c:set>
	<c:if test="${isLogin }">
		로그인 성공<br/>
	</c:if>
	<c:if test="${!isLogin }">
		로그인 실패<br/>
	</c:if>
	
	<!-- switch -->
	<c:choose>
		<c:when test="${isLogin }">
			<p style = "coloe:#00eeee;">로그인이 true</p>
		</c:when>	
		<c:otherwise>
			<p style = "color:#ee33ee;">로그인이 false</p>
		</c:otherwise>
	</c:choose>
	
	
	<!-- 반복문 -->
	<c:forEach var = "i" begin = "0" end = "10" step = "2" varStatus="x">
		<p>
		<c:if test = "${x.first }"> first = </c:if>
		${i }
		<c:if test = "${x.last }"> = last </c:if>
		
		</p>
	</c:forEach>
	
	
</body>
</html>




