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
		// s�� 02day�̸� ���õ� ȭ����
		// �ƴ϶�� �����ֵ� ȭ������ ȭ�鿡 ������ּ���.
		 
		//if( s.equals("02day") ) {			
		if( "02day".equals(s) ) {			
			out.println("���õ� ȭ����");	
		} else {
			out.println("�����ֵ� ȭ����");
		}
		%>
		</font>
	</div>
</body>
</html>





















