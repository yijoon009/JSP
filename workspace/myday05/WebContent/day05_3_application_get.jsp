<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    //application에 저장한 application_name, myCommon을 출력해주세요
    out.println(application.getAttribute("application_name"));
    out.println("<br />");
    out.println(application.getAttribute("myCommon"));
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>day05_3_application_get</title>
</head>
<body>

</body>
</html>