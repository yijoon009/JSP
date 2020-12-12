<%@page import="korea.Korea"%>
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<div>
	<%
	//1-10까지 합산하여 화면에 결과를 보여주세요 
	int sum=0;
	for(int i=0;i<10;i++){
			sum+=i+1;
	}
	out.println(sum);
	%>
	<br />
	<%
	Calendar c = Calendar.getInstance();
	out.println(c.get(Calendar.YEAR));
	%>
	<br />
	<%
	Korea k = new Korea();
	String d=k.day();
	out.print(d);
	%>
	
	</div>
</body>
</html>