<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    //request 영역
    // - a태그로 이동하면 안나옴. a 태그로 이동하는 것은 html의 요청이기 때문에
    //   getParameter로 가능합니다.
    // - 브라우저 개별로 호출해도 안나옴.
    // - forward 요청 시에는 attribute로 이용 가능합니다.
    
    request.setAttribute("request_name", "request요청");
	//forward: 이동하다. 지정된 페이지로 이동시키는 메소드
    pageContext.forward("day05_3_request_get.jsp?request_name=1");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>day05_3_request_set</title>
</head>
<body>
	<a href="./day05_3_request_get.jsp?request_name=1">페이지 이동</a>
</body>
</html>