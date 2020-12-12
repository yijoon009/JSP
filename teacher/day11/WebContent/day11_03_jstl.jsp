<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:out value="korea"/> <br />
	
	<!-- 변수 셋팅 -->
	<c:set var="myVar" value="코리아" />
	<c:set var="myList" value="<%=new int[] {1, 2, 3, 4, 5} %>" />
	
	<!-- 실습하기. 변수 myVar를 출력해주세요. -->
	<c:out value="${myVar }"/> <br />
	${myVar } <br />
	<!-- 실습하기. 변수 myList에서 값 3을 출력해주세요. -->
	${myList[2] } <br />
	
	<!-- 조건문 -->	
	<c:set var="isLogin" value="false" />
	
	<c:if test="${isLogin }">
		로그인 성공<br />
	</c:if>
	<c:if test="${!isLogin }">
		로그아웃<br />
	</c:if>
	
	
	<!-- swtich문 -->
	<c:choose>
		<c:when test="${isLogin }">
			<p style="color:#00eeee;">로그인이 True</p>
		</c:when>
		<c:otherwise>
			<p style="color:#ee33ee;">로그인이 False</p>
		</c:otherwise>
	</c:choose>
	
	
	<!-- 반복문 -->
	<c:forEach var="i" begin="0" end="10" step="2" varStatus="x">
		<p>
			<c:if test="${x.first }"> first = </c:if>
			${i }
			<c:if test="${x.last }"> = last </c:if>
		</p>
	</c:forEach>
	
</body> 
</html>

































