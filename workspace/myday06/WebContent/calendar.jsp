<%@page import="sun.misc.GC.LatencyRequest"%>
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    
    //달력 객체
    //싱글턴: 어플리케이션에서 객체가 1개만 생성되는 패턴
    Calendar c = Calendar.getInstance();
    
    //달력에서 이전달, 다음달로 전달받은 값
    String yearPara = request.getParameter("year");
    String monthPara = request.getParameter("month");
    //out.println("전달된 년도: "+yearPara);
    
    //년도와 월
    int year = 2020;
    int month = 11;

    //전달받은 년도가 null이라면(최초) 시스템의 현재년도를 사용하고,
    //전달받은 년도가 null이 아니라면 전달받은 년도를 사용한다.
    if(yearPara==null){
		year = c.get(Calendar.YEAR);		    	
    }else{
    	year = Integer.parseInt(yearPara);
    }
    
    //전달받은 월이 null이라면(최초) 시스템의 현재월을 사용하고,
    //전달받은 월이 null이 아니라면 전달받은 월을 사용한다.
    month = (monthPara==null) ? c.get(Calendar.MONTH) + 1 : Integer.parseInt(monthPara);
    
    

    
 	   
    
    
    
    //현재 월 표시를 위한 변수 세팅
    // - 현재 시스템의 년, 월이랑 jsp에서 그리고 있는 년, 월이 같다면
    //   일자에 색을 변경하여 이번달임을 알 수 있도록 표시
    int currYear = c.get(Calendar.YEAR);
    int currMonth = c.get(Calendar.MONTH)+1;
    int currDate = c.get(Calendar.DATE);
    
    boolean isToday = false;
    
    if((year==currYear) && (month==currMonth)){	//일자는 아직 없는 상태기 때문에 년, 월만 비교
    	isToday = true;
    }
    
    //생일 추가하기
    int birthDayMonth = 10 - 1; //10월임.
    int birthDayDate = 15;
    
    
    //달력 객체 날짜 세팅
    c.set(year, (month)-1,1);
    
    //해당 월의 1일의 요일 정보
    //일: 1 ~ 토:7
    int startDayOfWeek = c.get(Calendar.DAY_OF_WEEK);
    
    //해당 월의 마지막 날짜 구하기
    int lastDay = c.getActualMaximum(Calendar.DATE);
    
    //요일명 출력
    String[] weekNm = {"일","월","화","수","목","금","토"};
    %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script>
function birthday(){
	alert('생일을 축하합니다.');
}
</script>

</head>
<body>
	<div>현재 년: <%=c.get(Calendar.YEAR) %></div>
	<div>현재 월: <%=c.get(Calendar.MONTH)+1 %></div>
	
	<table border='2' width= '519' bgcolor = '#DFDFD8' cellpadding='0' cellspacing='0'  >
		
		<tr bgcolor = '#FFCC00'>
			<td colspan="2" align="right" >
				<a href='http://localhost:18888/myday06/calendar.jsp?year=<%=year%>&month=<%=month-1%>'>이전달</a>
			</td>
			<td colspan="3" align="center">
				<a href = './calendar.jsp'>
					<%=c.get(Calendar.YEAR)%>년 <%=c.get(Calendar.MONTH)+1%>월</a>
			</td>
			<td colspan="2">
				<a href='http://localhost:18888/myday06/calendar.jsp?year=<%=year%>&month=<%=month+1%>'>다음달</a>
			</td>
		
		</tr>
	
	
		<tr>
			<%for(String week : weekNm){ %>
			<td bgcolor='#666666' align="center">
				<font color='#FFFFFF'><%=week %></font>
			</td>
			<% }%>
		</tr>
	
		<tr>
			<% 
			//시작 요일에 따른 빈칸 구현
			//ex) 일요일이면 빈칸이 앞에 0칸, 목요일 시작이면 4칸
			for(int i=1;i<startDayOfWeek;i++){
				out.println("<td height='70'> &nbsp;</td>");
			}%>
			
			<%
			//달력 날짜 출력
			for(int i=1;i<= lastDay;i++){
				
				//현재년도, 현재월, 현재일인 경우에 색상을 변경
				//현재년도, 현재월의 조건은 ifToday 입니다.
				String bgColor ="#ffffff";
				if(isToday && (i==currDate)){
					bgColor = "#6c7ccc";
				}
				
				//생일 추가
				String todayMsg = "";
				//생일인 경우 자바스크립트 이벤트 부여
				String onScript = "";
				if((c.get(Calendar.MONTH)==birthDayMonth) && (birthDayDate==i)){
					bgColor = "#00FF00";
					todayMsg = "생일!";
					onScript = "onclick='birthday()'";
				}
				
				
				//out.println("<td height='70' valign = 'top' bgcolor='"+bgColor+"'>"+i+"<br/>"+todayMsg+"</td>");
				%>
				<td height='70' valign = 'top' bgcolor='<%=bgColor%>' <%=onScript %>>
					<%=i %><br/>
					<%=todayMsg %>
				</td>				
				<%
					
				
				//7일째마다 tr(줄 내리기) 만들기
				if(startDayOfWeek==7){
					out.println("</tr><tr>");
					startDayOfWeek = 1;
				}else{
					//startDayOfWeek가 7이 아니면 +1 시키기
					startDayOfWeek++;
				}
			}
			%>
			
			<%
			//끝 요일에 따른 빈칸
			for(int i=7;i>= startDayOfWeek;i--){	//i=7 startDayofweek = 4
				out.println("<td height='70'> &nbsp;</td>");
			}
			
			%>
		</tr>
	</table>
</body>
</html>