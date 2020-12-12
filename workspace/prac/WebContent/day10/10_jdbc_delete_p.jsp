<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="user" class="day10.User"></jsp:useBean>
<jsp:setProperty property="*" name="user"/>
<jsp:useBean id="jdbcSample" class="day10.MyJDBCSample"></jsp:useBean>
    
    <%
	out.println(user);    
    
    int rows = jdbcSample.deleteUser(user);
    
  //성공한다면 조회페이지
    if(rows > 0){%>	
    <script>
    alert('회원 삭제 성공했습니다.');
    location.href = '10_jdbc_select.jsp';
    </script>
    <%}else{	//실패한다면 보여주기
    %>
    <script>
    alert('회원가 삭제 실패했습니다.');
    location.href = '10_index.jsp';
    </script>
    <%
    }%>
