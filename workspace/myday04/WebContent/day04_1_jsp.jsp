<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
   <%
   		// < % @ % > 지시자: JSP페이지를 서블릿으로 변환할 때
   		//필요한 정보를 기술하기 위해 사용
   		// - page: jsp 페이지에 대한 정보를 지정, 문서의 타입, 문서의 버퍼 크기, 
   		//			문서의 인코딩 등
   		// - taglib: JSP에서 사용할 태그 라이브러리를 지칭
   		// - include: 
   
   %>
    
<%
	//%뒤에 아무것도 없는걸 스크립트릿
	//JSP에서 JAVA코드를 넣기위한 방식중에서 가장 많이 사용된다.
	//우리가 알고 있는 거의 모든 JAVA코드를 사용 할 수 있다.
	//클래스나 메서드같은 선언은 불가능하다.
	//- 변수는 가능
	int num1 = 35;
	int num2 = 30;
	int sum = num1 + num2;
	
	out.println(sum);
	
	//인자값 2개를 받는 메서드를 만들어보세요.
	int a=sum(num1, num2);
	out.println("합산 결과는: "+a);
	
%>
<%!
//<%!: 선언문
//선언문은 위치에 관계없이 먼저 실행된다.
//메인클래스 안에서 
public int sum(int n1, int n2){
return n1+n2;
}
%>
<%--  jsp의 주석 --%>
<!--  htmp의 주석 -->
<% //java의 주석  %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>day04_1_jsp</title>
</head>
<body>
	<div>
	합산된 결과를 보여주세요. <br/>
	<%out.println(sum(5,6)); %>
	<%=sum(11,10) %>
	</div>

	<div>
		<%@ include file="./day04_1_include.jsp" %>
	</div>
	<div>
		<%@ include file="./day04_1_include.jsp" %>
	</div>
	<div>
		<%@ include file="./day04_1_include.jsp" %>
	</div>


</body>
</html>