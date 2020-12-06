<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	// < % @ % > 지시자: JSP페이지를 서블릿으로 변환할 때
	// 필요한 정보를 기술하기 위하여 사용
	// - page: JSP 페이지에 대한 정보를 지정, 문서의 타입, 문서의 버퍼 크기,
	//         문서의 인코딩 등
	// - taglib: JSP에서 사용할 태그 라이브러리를 지정한다.
	// - include: JSP에서 다른 페이지를 포함시킨다. 
%>    

<%
	//스크립트릿
	//JSP에서 JAVA코드를 넣기 위한 방식 중에서 가장 많이 사용됩니다.
	//우리가 알고 있는 거의 모든 JAVA코드를 사용할 수 있습니다.	
	//클래스나 메서드 같은 선언은 불가능합니다.
	//- 변수는 가능
	int num1 = 35;
	int num2 = 30;
	int sum = num1 + num2;
	
	out.println(sum);
	
	//인자값을 2개 받아서 더하는 메서드
	int a = sum(num1, num2);
	out.print("합산 결과는: " + a);
	
%>

<%!
//선언문은 위치에 관계없이 먼저 실행됩니다.
public int sum(int a, int b) {
	return a + b;
}
%>

<%-- jsp의 주석 --%>
<!-- html의 주석 -->
<% //java의 주석  %>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>day04_1_jsp</title>
</head>
<body>
	<div>
	합산된 결과 보여주세요 <br />
	<%out.println(sum(5, 6)); %>
	<%=sum(5, 6) %>
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























