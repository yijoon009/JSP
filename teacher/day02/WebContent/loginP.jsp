<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%
String nm = request.getParameter("nm");
String pw = request.getParameter("pw");

out.println(nm);
out.println(pw);


out.print(request.getMethod());

// nm�� pw�� admin, admin�� ��쿡�� �α��� ����
// �ٸ��ٸ� �α��� ���ж�� ȭ�鿡 �����ּ���.
if("admin".equals(nm) && "admin".equals(pw) ) {
	out.print("�α��� ����");
} else {
	out.print("�α��� ����");
}
%>    
    