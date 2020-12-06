<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
//달력 객체
//싱글턴: 어플리케이션에서 객체가 1개만 생성되는 패턴
Calendar c = Calendar.getInstance();


//달력에서 이전달, 다음달로 전달받는 값
String yearParam = request.getParameter("year");
String monthParam = request.getParameter("month");


//년도와 월
int year = 2020;
int month = 11;


//전달받은 년도가 null이라면 시스템의 현재년도를 사용하고,
//전달받은 년도가 null이 아니라면 전달받은 년도를 사용.
if(yearParam == null) {
	year = c.get(Calendar.YEAR);
} else {
	year = Integer.parseInt(yearParam);
}

//전달받은 월가 null이라면 시스템의 현재 월를 사용하고,
//전달받은 월가 null이 아니라면 전달받은 월를 사용.
month = (monthParam == null)?c.get(Calendar.MONTH) + 1:Integer.parseInt(monthParam);




//현재 월 표시를 위한 변수 셋팅
// - 현재 시스템의 년, 월이랑 jsp에서 그리고 있는 년, 월이 같다면
//   일자에 색을 변경하여 이번달을 알 수 있도록 표시
int currYear = c.get(Calendar.YEAR);
int currMonth = c.get(Calendar.MONTH) + 1;
int currDate = c.get(Calendar.DATE);
boolean isToday = false;

if( (year == currYear) && (month == currMonth) ) {
	isToday = true;
}

  
//달력 객체 날짜 셋팅
c.set(year, (month)-1, 1);

//해당 월의 1일의 요일 정보
//일:1 ~ 토:7
int startDayOfWeek = c.get(Calendar.DAY_OF_WEEK);


//해당 월의 마지막 날짜 구하기
int lastDay = c.getActualMaximum(Calendar.DATE);

//요일명 출력
String[] weekNm = {"일", "월", "화", "수", "목", "금", "토"};

%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>현재 년:<%=c.get(Calendar.YEAR) %></div>
	<div>현재 월:<%=c.get(Calendar.MONTH)+1 %></div>
	<table border="2" width="519" bgcolor="#DFDFD8" cellpadding="0" cellspacing="0">
		<tr bgcolor="#FFCC00">
			<td colspan="2" align="right">
				<a href="./calendar.jsp?year=<%=year%>&month=<%=month-1%>">이전달</a>				
			</td>
			<td colspan="3" align="center">
				<%=c.get(Calendar.YEAR)%>년 <%=c.get(Calendar.MONTH)+1 %>월
			</td>
			<td colspan="2" align="left">
				<a href="./calendar.jsp?year=<%=year%>&month=<%=month+1%>">다음달</a>
			</td>
		</tr>
	
		<tr>			
			<%for(String week : weekNm){ %>
			<td bgcolor="#666666" align="center">
				<font color="#FFFFFF"><%=week %></font>
			</td>				
			<%} %>					
		</tr>	
		
		<tr>
			<% 
			//시작 요일에 따른 빈칸 구현
			//ex) 일요일이면 빈칸 0개, 금요일이면 빈칸이 5개
			for(int i = 1; i < startDayOfWeek; i++) {
				out.println("<td height='70'>&nbsp;</td>");	
			}
			%>
			
			<%
			//달력 날짜 출력
			for(int i = 1; i <= lastDay; i++) {
				
				//현재년도, 현재월, 현재일인 경우에 색상을 변경
				//현재년도, 현재월의 조건은 isToday 입니다.				
				String bgColor = "#ffffff";
				if(isToday && (currDate == i)) {
					bgColor = "#6c7ccc";
				}
				
				out.println("<td height='70' valign='top' bgcolor='"+bgColor+"'>"+i+"</td>");
				
				//7일째마다 tr(줄을 내리기) 만들기
				if(startDayOfWeek==7) {
					out.println("</tr><tr>");
					startDayOfWeek = 1;
				} else {
					//startDayOfWeek이 7이 아니라면 +1 시키기
					startDayOfWeek++;
				}
			}
			%>
			
			<%
			//끝 요일에 따른 빈칸
			for(int i = 7; i >= startDayOfWeek; i--) {
				out.println("<td height='70'>&nbsp;</td>");	
			}
			%>
			
		</tr>
		
	</table>	
</body>
</html>
























