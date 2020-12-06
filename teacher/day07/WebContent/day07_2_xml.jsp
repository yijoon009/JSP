<%@page import="java.text.DecimalFormat"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="org.w3c.dom.*"%>
<%@page import="org.w3c.dom.Node"%>
<%@page import="org.w3c.dom.Document"%>
<%@page import="javax.xml.parsers.DocumentBuilder"%>
<%@page import="javax.xml.parsers.DocumentBuilderFactory"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<%
//xml 데이터를 받아올 주소
String url = "http://localhost:18888/day07/07_day_movieList.xml";
//xml 파싱을 위한 객체
DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
DocumentBuilder builder = factory.newDocumentBuilder();

//bilder 객체를 이용하여  xml을 파싱하기
Document document = builder.parse(url);

//가장 상위의 태그를 읽어오기
NodeList book = document.getElementsByTagName("dailyBoxOffice");
List<Map> pubList = new ArrayList();


//반복문을 이용하실 분들
String[] elements = {"rank", "rankOldAndNew", "movieNm", "openDt", "salesAcc", "audiAcc"};

for(int i = 0; i < book.getLength(); i++) {
	Node n = book.item(i);
	Element e = (Element)n;
	Map pub = new HashMap();	
	
	for(String element : elements) {
		NodeList titles = e.getElementsByTagName(element);
		
		String key = titles.item(0).getNodeName();
		String value = titles.item(0).getChildNodes().item(0).getNodeValue();
		
		pub.put(key, value);
	}
	 
	//만들어진 pub을 publist에 저장하기
	pubList.add(pub);	
}

//out.println(pubList);

//out.println( myFormat("4246112463")  );  

%>    
    
    
<%!
//선언문: jsp에서만 사용할 java 메서드를 선언
DecimalFormat df = new DecimalFormat("#,##0");
public String myFormat(String str) {
	return df.format(Long.parseLong(str));
}
%>    
    
    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border="1">
		<tr bgcolor="#88ff99">
			<th>순위</th>
			<th>영화명</th>
			<th>오픈일</th>
			<td>누적관객수</td>
			<td>누적수입</td>
			<td>신규랭킹진입</td>			
		</tr>
		<%for(Map p : pubList) { %>
		<tr>
			<td><%=p.get("rank")%></td>			
			<td><%=p.get("movieNm")%></td>
			<td><%=p.get("openDt")%></td>
			<td><%=myFormat( String.valueOf(p.get("audiAcc")) )%></td>
			<td><%=myFormat( p.get("salesAcc").toString() )%></td>			
			<td bgcolor="<%="TRUE".equals(p.get("rankOldAndNew"))?"#ffff44":"#ffffff"%>"><%=p.get("rankOldAndNew")%></td>
		</tr>
		<%} %>
	</table>
</body>
</html>















