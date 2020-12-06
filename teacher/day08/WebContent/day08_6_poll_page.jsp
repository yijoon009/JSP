<%@page import="java.util.HashSet"%>
<%@page import="java.util.Set"%>
<%@page import="day08.korea.PollBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="pollBean" class="day08.korea.PollBean"/>
<jsp:setProperty name="pollBean" property="*"  />


<%
out.println(pollBean);

Set<PollBean> pollList = (Set)application.getAttribute("pollList");
if(pollList == null) {
	pollList = new HashSet<PollBean>();
}

//투표자 이름과 투표값이 존재하면 데이터 저장
if(pollBean.getItem() != null && pollBean.getName() != null) {
	pollList.add(pollBean);
	application.setAttribute("pollList", pollList);
}
%>
    
<script>
alert('투표가 완료되었습니다.');
location.href="./day08_6_poll_form.jsp?name=<%=pollBean.getName()%>";
</script>    
    
    
    
    
    
    
    
    
    
    
    
    