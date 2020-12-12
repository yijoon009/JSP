<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    String name = (String)session.getAttribute("userName");
    out.print(name);
   
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>day05_2_session_get</title>
</head>
<body>

</body>
</html>