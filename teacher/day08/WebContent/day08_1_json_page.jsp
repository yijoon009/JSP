<%@page import="org.json.simple.JSONObject"%>
<%@page import="org.json.simple.parser.JSONParser"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
String json = request.getParameter("data");
out.println(json);

MyObj myObj = getJson(json);
//out.println(myObj);
//out.println(myObj.name);
//out.println(myObj.age);
//out.println(myObj.city);
%>



<%!
//json 데이터를 담을 bean을 생성
// - 여기서는 캡슐화는 무시하고 생성함.
public class MyObj {
	String name;
	int age;
	String city;
}


//json 처리를 위한 메서드
public MyObj getJson(String json) {
	MyObj myObj = new MyObj();
	try {
		JSONParser jsonParser = new JSONParser();
		//json 객체로 데이터 꺼내기
		JSONObject obj = (JSONObject)jsonParser.parse(json);
		
		myObj.name = String.valueOf(obj.get("name"));
		myObj.age = Integer.parseInt(String.valueOf(obj.get("age")));
		myObj.city = String.valueOf(obj.get("city"));		
	} catch(Exception e) {
		System.out.println(e);
	}
	
	return myObj;
}
%>


<html>
	<head></head>
	<body>
		<div>
		이름: <%=myObj.name %>
		</div>
		<div>
		나이: <%=myObj.age %>
		</div>
		<div>
		도시: <%=myObj.city %>
		</div>
	</body>	
</html>











