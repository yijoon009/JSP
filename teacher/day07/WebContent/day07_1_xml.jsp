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
String url = "http://localhost:18888/day07/books.xml";
//xml 파싱을 위한 객체
DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
DocumentBuilder builder = factory.newDocumentBuilder();

//bilder 객체를 이용하여  xml을 파싱하기
Document document = builder.parse(url);

//가장 상위의 태그를 읽어오기
NodeList book = document.getElementsByTagName("book");
List<Map> pubList = new ArrayList();


//반복문을 이용하실 분들
String[] elements = {"name", "author", "price", "pubdate"};

for(int i = 0; i < book.getLength(); i++) {
	Node n = book.item(i);
	Element e = (Element)n;
	Map pub = new HashMap();
	
	/*
	//실습하기. name, author, price 보여주세요.
	NodeList names = e.getElementsByTagName("name");
	NodeList authors = e.getElementsByTagName("author");
	NodeList prices = e.getElementsByTagName("price");
		
	//book 태그 하위의 name 태그 저장
	String nameKey = names.item(0).getNodeName();
	String nameValue = names.item(0).getChildNodes().item(0).getNodeValue();
	
	pub.put(nameKey, nameValue);
	
	//book 태그 하위의 author 태그 저장
	String authorKey = authors.item(0).getNodeName();
	String authorValue = authors.item(0).getChildNodes().item(0).getNodeValue();
	
	pub.put(authorKey, authorValue);
	
	//book 태그 하위의 price 태그 저장
	String priceKey = prices.item(0).getNodeName();
	String priceValue = prices.item(0).getChildNodes().item(0).getNodeValue();
	
	pub.put(priceKey, priceValue);
	
	*/
	
	for(String element : elements) {
		NodeList titles = e.getElementsByTagName(element);
		
		String key = titles.item(0).getNodeName();
		String value = titles.item(0).getChildNodes().item(0).getNodeValue();
		
		pub.put(key, value);
	}
	 
	//만들어진 pub을 publist에 저장하기
	pubList.add(pub);	
}

out.println(pubList);
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
			<th>책 이름</th>
			<th>저자</th>
			<th>가격</th>
		</tr>
		<%for(Map p : pubList) { %>
		<tr>
			<td><%=p.get("name") %></td>
			<td><%=p.get("author") %></td>
			<td><%=p.get("price") %></td>
		</tr>
		<%} %>
	</table>
</body>
</html>















