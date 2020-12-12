<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    //application 영역
    //1. 브라우저 간의 공유가 가능.
    //2. tomcat(was)가 종료되기 전까지 유지가 된다.
    //3. 브라우저가 종료되도 정보는 유지된다.
    String mySiteName = "korea_application";
    application.setAttribute("application_name", mySiteName);
    application.setAttribute("myCommon", "공통속성");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>day05_3_application_set</title>
</head>
<body>

</body>
</html>