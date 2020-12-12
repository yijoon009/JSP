<%@page import="java.util.HashSet"%>
<%@page import="myday10.User"%>
<%@page import="java.util.Set"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:useBean id="user" class = "myday10.User"></jsp:useBean>
    <jsp:setProperty property="*" name="user"/>
	<jsp:useBean id="jdbcSample" class = 'myday10.MyJDBCSample'></jsp:useBean>    
    
<%



out.println(user);
int rows = jdbcSample.insertUser(user);

if(rows > 0){	//성공한다면 조회페이지로 이동
%>
<script>
alert('회원가입 성공했습니다.');
location.href = "./day10_jdbc_select.jsp";
</script>
<%
}else{	//실패한다면 idex로 이동해주세요.
%>
<script>
alert('회원가입 실패했습니다.');
location.href = "./day10_index.jsp";
</script>



<%	
}
%>