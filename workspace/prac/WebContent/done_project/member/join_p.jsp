<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="memberDTO" class = 'done.member.MemberDTO'></jsp:useBean>
<jsp:setProperty property="*" name="memberDTO"/>
<jsp:useBean id="memberDAO" class = 'done.member.MemberDAO'></jsp:useBean>
<%
boolean result = memberDAO.insertMember(memberDTO);
if(result){%>
	<script>
	alert('회원가입 성공');
	location.href="./login_f.jsp";
	</script>
<%	
} else {%>
	<script>
	alert('회원가입 실패');
	location.href="./join_f.jsp";
	</script>
<%	
}
%>