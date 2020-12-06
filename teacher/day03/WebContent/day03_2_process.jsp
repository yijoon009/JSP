<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
// day03_1_page.jsp로부터 이름을 전송받아서
// 화면에 출력해주세요.

String name = request.getParameter("name");
out.println(name);

String color = request.getParameter("color");
out.println(color);
%>



<div>
	<font color='<%=color %>'><%=name %>님께서 선택한 색상은 <%=color %> 입니다.</font>
</div>


















