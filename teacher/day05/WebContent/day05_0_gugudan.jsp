<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>day05_0_gugudan</h2>
	<table bgcolor="#ccaaff">	
	<%
	for(int i=1; i <= 9; i++) {
	%>
		<tr>
		<%for(int z=1; z<=9; z++) { %>		
			<td bgcolor="<%=(i%2==0)?"#ffffff":"#00aaff"%>"><%=(i*z) %></td>			
		<%}%> 
		</tr>
	<%	
	}
	%>
	</table>
</body>
</html>




























