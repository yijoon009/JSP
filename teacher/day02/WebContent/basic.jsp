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
		// 1 - 10���� �ջ��Ͽ� ȭ�鿡 ����� �����ּ���
		int sum = 0;
		for(int i = 0; i <= 10; i++) {
			sum = sum + i;
		}
		out.print(sum);
		%>
		<br />
		<%
		Calendar c = Calendar.getInstance();
		out.print(c.get(Calendar.YEAR));
		%>
		<br />
		<%
		Korea k = new Korea();
		String d = k.day();
		out.print(d);
		%>
	</div>
</body>
</html>
































