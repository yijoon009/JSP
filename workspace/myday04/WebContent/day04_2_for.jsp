<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%!
// 캡슐화하지 않음!!
public static class User{
	String name;
	String age;
	User(String name, String age){
		this.name = name;
		this.age = age;
	}
}
   
%>
<%
//User 객체 만들기
User user1 = new User("김철수","20");
User user2 = new User("이영희","35");
User user3 = new User("박장군","30");

//리스트에 객체 넣기
List<User> userList = new ArrayList();
userList.add(user1);
userList.add(user2);
userList.add(user3);


out.println(userList);
%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>day04_2_for</title>
</head>
<body>
	<h2>table 실습</h2>
	<table border="1">
		<tr>
			<th rowspan="5">이번달</th>
			<th>이름</th>
			<th>나이</th>
		
		<%for(int i=0;i<userList.size();i++){ %>
		<tr>
			<td><%=userList.get(i).name %></td>
			<td><%=userList.get(i).age %></td>
		</tr>
		<%}%>
		<tr>
			<td colspan="2">총 수강생은 <%=userList.size() %>명입니다.</td>
		</tr>
		
		
		
	</table>
</body>
</html>