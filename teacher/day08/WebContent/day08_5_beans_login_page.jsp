<%@page import="day08.korea.PersonBean"%>
<%@page import="java.util.Set"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="bean" class="day08.korea.PersonBean">
<jsp:setProperty name="bean" property="*" />
<jsp:setProperty name="bean" property="email" param="emailtest"/>
</jsp:useBean>    


<%
//name과 password가 비어있지 않다면
//회원을 대상으로 로그인 가능한지 확인
boolean loginState = false;
if(bean.getName() != null && bean.getPassword() != null) {
	Set<PersonBean> userList = (Set)application.getAttribute("userList");
	out.println(userList);
	
	if(userList != null) {
		for(PersonBean p : userList) {
			if(bean.getName().equals(p.getName()) && 
			   bean.getPassword().equals(p.getPassword())  ) {
			   //로그인 성공 했다면
			   loginState = true;
			}
		}
	}
}


//로그인 여부에 따라서 페이지 이동
if(loginState) {
	//로그인 성공
%>
<div>
	<jsp:getProperty property="name" name="bean"/>님 환영합니다.
	<jsp:include page="./day08_6_poll_form.jsp"></jsp:include>
</div>	

<%	
} else {
	//로그인 실패
%>
	<script>
	alert('로그인에 실패하였습니다.');
	location.href="./day08_5_beans_login_form.jsp";
	</script>
<%	
}


%>
    

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    