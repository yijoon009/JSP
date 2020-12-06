<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
out.print( request.getAttribute("request_name") );
out.print( request.getParameter("request_name") );
%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>day05_3_request_set</title>
</head>
<body>

</body>
</html>