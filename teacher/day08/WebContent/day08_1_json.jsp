<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>json 예제</h2>
	<div>
		<form action="day08_1_json_page.jsp">
			<input type="text" name="data" id="myObj" />
			<input type="submit" value="전송" />			
		</form>
	</div>	
</body>

<script>
var myObj = {"name":"korea", "age":30, "city":"seoul"};
var myJson = JSON.stringify(myObj);
document.getElementById("myObj").value = myJson;


</script>




























</html>