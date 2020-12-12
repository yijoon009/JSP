<%@page import="java.util.*"%>
<%@page import="org.w3c.dom.*"%>
<%@page import="javax.xml.parsers.DocumentBuilder"%>
<%@page import="javax.xml.parsers.DocumentBuilderFactory"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
  //xml 데이터를 받아올 주소
  String url = "http://localhost:18888/myday07/07_day_movieList.xml";
  //xml 파싱을 위한 객체
  DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
  DocumentBuilder builder = factory.newDocumentBuilder();
  
  //builder 객체를 이용해 xml을 파싱
  Document document = builder.parse(url);
  
  //가장 상위의 태그를 읽어오기
  NodeList movie = document.getElementsByTagName("movie");
  List<Map> pubList = new ArrayList();
  
  //반복문을 이용하실 분들
  String[] elements = {"rank","rankOldAndNew","movieNm","openDt","salesAcc","audiAcc"};
  
  
  
  //xml 데이터의 tag 값을 배열화
  for(int i=0;i<movie.getLength();i++){
	  Node n = movie.item(i);	//<name></name> 안에 있는 값들이 node, element라고 불러.
	  Element e = (Element)n;
	  Map pub = new HashMap();
	  
	  for(String element : elements){
		  NodeList titles = e.getElementsByTagName(element);
		  
		  String key  = titles.item(0).getNodeName();
		  String value = titles.item(0).getChildNodes().item(0).getNodeValue();
		  
	  pub.put(key,value);
		  
		  
		  
	  }
	  
	  
	  //만들어진 pub을 publist에 저장하기
	  pubList.add(pub);
	  
  }
  
  out.println(pubList);
  
  
  
  
  %>
	  
	  
<%! 
//선언문 jsp에서만 사용할 java 메서드



%>
	  
	  
	  
	  
	  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border='1'>
		<tr bgcolor='#88ff99'>
			<th>순위</th>
			<th>신규진입여부</th>
			<th>영화명</th>
			<th>오픈일</th>
			<th>누적관객수</th>
			<th>누적수입</th>
			<th>신규랭킹진입</th>
		</tr>
		<%for(Map p: pubList){ %>
		<tr>
			<td><%=p.get("rank") %></td>
			<td><%=p.get("rankOldAndNew") %></td>
			<td><%=p.get("movieNm") %></td>
			<td><%=p.get("openDt") %></td>
			<td><%=p.get("salesAcc") %></td>
			<td><%=p.get("audiAcc") %></td>
		</tr>
		<% }%>
	</table>
</body>
</html>