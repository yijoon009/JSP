<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%
String s = "02day";
%>    
     
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<div>
		<font color="red">
		hello 1234, <%="jsp 1234" %>
		</font>
		<br />
		<font color="blue">		
		<%
		// s가 02day이면 오늘도 화이팅
		// 아니라면 다음주도 화이팅을 화면에 출력해주세요.
		 
		//if( s.equals("02day") ) {			
		if( "02day".equals(s) ) {			
			out.println("오늘도 화이팅");	
		} else {
			out.println("다음주도 화이팅");
		}
		%>
		</font>
	</div>
</body>
</html>





















