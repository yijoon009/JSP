<%@page import="java.util.HashSet"%>
<%@page import="day08.korea.PersonBean"%>
<%@page import="java.util.Set"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="bean" class="day08.korea.PersonBean">
<%-- 
<jsp:setProperty name="bean" property="name" />
<jsp:setProperty name="bean" property="job"/>
--%>
<jsp:setProperty name="bean" property="*" />
<jsp:setProperty name="bean" property="email" param="emailtest"/>
</jsp:useBean>
    

<%
//로그인 기능 구현
// - List는 순서가 있고, 중복을 허용하는 구조
// - Set은 순서가 없고, 중복을 허용하지 않는 구조
Set<PersonBean> userList = (Set)application.getAttribute("userList");
if(userList == null) {
	userList = new HashSet<PersonBean>();	
}
 
//신규 유저 추가
userList.add(bean);

//어플리케이션 영역에 유저 추가
application.setAttribute("userList", userList);

//로그인 된 유저 확인
out.println(userList);


%>    
 
<script>
	alert('회원 가입을 완료하였습니다. 로그인페이지로 이동합니다.');
	location.href="./day08_5_beans_login_form.jsp";
</script> 
    
<!--     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>이름:<jsp:getProperty property="name" name="bean"/></div>
	<div>직업:<jsp:getProperty property="job" name="bean"/></div>
	<div>이메일:<jsp:getProperty property="email" name="bean"/></div>
	<div>비밀번호:<jsp:getProperty property="password" name="bean"/></div>
</body>
</html>
 -->












