<%@page import="java.util.HashSet"%>
<%@page import="day08.korea.PollBean"%>
<%@page import="java.util.Set"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="bean" class="day08.korea.PersonBean" />
<jsp:setProperty property="*" name="bean"/>
<jsp:useBean id="pollBean" class="day08.korea.PollBean"/>
    
<%
//투표하기 페이지
//day08_6_poll_form.jsp

Set<PollBean> pollList = (Set)application.getAttribute("pollList");
if(pollList == null) {
	pollList = new HashSet<PollBean>();
}

out.println(pollList);

%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>마이 배틀 트립 <%=bean.getName() %></h2>
	<form action="./day08_6_poll_page.jsp">
		<input type="hidden" name="name" value="<%=bean.getName()%>"/>
		<table border="2">
			<tr>
				<th colspan="2">가장 가고 싶은 여행지</th>
			</tr>
			<tr>
				<td>
					<input type="radio" name="item" value="0" />미국				
				</td>
				<td>
					현재 득표 수: <%=pollBean.getPoll(pollList, "0") %>
				</td>
			</tr>
			<tr>
				<td>
					<input type="radio" name="item" value="1" />유럽				
				</td>
				<td>
					현재 득표 수: <%=pollBean.getPoll(pollList, "1") %>
				</td>
			</tr>
			<tr>
				<td>
					<input type="radio" name="item" value="2" />아시아				
				</td>
				<td>
					현재 득표 수: <%=pollBean.getPoll(pollList, "2") %>
				</td>
			</tr>
			<tr>
				<td>
					<input type="radio" name="item" value="3" />국내여행				
				</td>
				<td>
					현재 득표 수: <%=pollBean.getPoll(pollList, "3") %>
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="submit" value="투표하기">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>




















