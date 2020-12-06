<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>day03_1_page</title>
<link rel="stylesheet" type="text/css" href="my.css">

</head>
<body>
	<h2>조건문 예제</h2>
	<form action="./day03_2_process.jsp" method="post">
		<div>
			이름 입력: <input type="text" name="name" value="korea" />
		</div>
		
		<div>
			색 선택: <select name="color">
				<option value="blue">파랑색</option>
				<option value="green">녹색</option>
				<option value="red" selected="selected">빨강색</option>
				<option value="yellow">노란색</option>
			</select>
		</div>
		
		<div>
			<input type="submit" value="전송" />			
		</div>
	</form>
</body>
</html>











