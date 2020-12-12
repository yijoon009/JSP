<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%
String nm = request.getParameter("nm");
String pw = request.getParameter("pw");

out.println(nm);
out.println(pw);

out.print(request.getMethod());

//nm과 pw가 admin, admin일 경우에만 로그인 성공
//다르다면 로그인 실패라고 화면에 보여주세요.

if("admin".equals(nm)&&"admin".equals(pw)){
	out.println("로그인 성공");
}else{
	out.print("로그인 실패");
}



%>
    
    
    
    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<div>전송완료</div>
</body>
</html>