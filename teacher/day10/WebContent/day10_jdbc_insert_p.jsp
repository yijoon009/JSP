<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="user" class="day10.User"></jsp:useBean>
<jsp:setProperty property="*" name="user"/>    
<jsp:useBean id="jdbcSample" class="day10.MyJDBCSample"></jsp:useBean>
    
<%

out.println(user);

//회원가입
int rows = jdbcSample.inserUser(user);

if(rows > 0) { //성공한다면 조회페이지로 이동
%>
<script>
alert('회원 가입 성공했습니다.');
location.href="./day10_jdbc_select.jsp";
</script>
<%	
} else {	   //실패한다면 index로 이동해주세요
%>
<script>
alert('회원 가입 실패했습니다.');
location.href="./day10_index.jsp";
</script>
<%	
}
%>










