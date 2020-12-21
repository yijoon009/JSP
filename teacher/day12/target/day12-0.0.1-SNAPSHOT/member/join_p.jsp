<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="memberDTO" class="day12.member.MemberDTO"></jsp:useBean>
<jsp:setProperty property="*" name="memberDTO"/>
<jsp:useBean id="memberDAO" class="day12.member.MemberDAO"></jsp:useBean>    

<%
System.out.println(memberDTO);
boolean result = memberDAO.insertMember(memberDTO);

if(result) {
	//회원 가입 성공
%>
	<script>
	alert('회원가입 성공');
	location.href="./login_f.jsp";
	</script>
<%	
} else {
	//회원 가입 실패
%>
	<script>
	alert('회원가입 실패');
	location.href="./join_f.jsp";
	</script>
<%	
}
%>