<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="user" class = 'day10.User'></jsp:useBean>
<jsp:setProperty property="*" name="user"/>
<jsp:useBean id="jdbcSample" class = 'day10.MyJDBCSample'></jsp:useBean>
<%
out.println(user);

//회원가입
int rows = jdbcSample.insertUser(user);
if(rows > 0){%>
<script>
alert('회원가입 성공했습니다.');
location.href = '10_jdbc_select.jsp';
</script>
<%}else{
%>
<script>
alert('회원가입 실패했습니다.');
location.href = '10_index.jsp';
</script>
<%
}%>
