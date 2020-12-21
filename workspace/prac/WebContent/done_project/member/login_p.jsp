<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    

<jsp:useBean id="memberDTO" class = 'done.member.MemberDTO'></jsp:useBean>
<jsp:setProperty property="*" name="memberDTO"/>
<jsp:useBean id="memberDAO" class = 'done.member.MemberDAO'></jsp:useBean>
<%
Boolean result = memberDAO.selectMember(memberDTO);
if(result){
	//로그인 성공하면 세션에 저장
%>	
	<c:set var = "loginId" value = "${memberDTO.userId }" scope = 'session'></c:set>
	<c:redirect url = '../board/board_list.jsp?type=Auth'></c:redirect>

<%}else{%>

	<script>
	alert('로그인 실패');
	location.herf = "login_f.jsp";
	</script>
<%} %>

