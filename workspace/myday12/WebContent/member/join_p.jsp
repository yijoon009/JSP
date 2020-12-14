<%@page import="myday12.member.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="memberDTO" class = 'myday12.member.MemberDTO'></jsp:useBean>
<jsp:setProperty property="*" name="memberDTO"/>
<jsp:useBean id="memberDAO" class = 'myday12.member.MemberDAO'></jsp:useBean>

<%
boolean result = memberDAO.insertMember(memberDTO);

if(result){
	//회원가입 성공
	%>
	<script>
	alert('회원가입 성공');
	location.href ="./login_f.jsp";
	</script>
	<%
	}else{
		//회원 가입 실패
	%>
	<script>
	alert('회원가입 실패');
	location.href ="./login_f.jsp";
	</script>
	
	<%}

%>