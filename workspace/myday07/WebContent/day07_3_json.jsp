<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script>
	//주의사항 : Key는 항상 문자로 만드세요
	//키와 값이 문자열일 경우, 더블쿼테이션(쌍따옴표)로 묶으세요.
	var myObj = {"name": "korea","age":"30","city":"seoul"};	//자바 스크립트에서 {} 나오면 json으로 알아
	function show(){
		//alert('스크립트 클릭')
		
	}

</script>

</head>
<body>
	<div>
		<p onclick='show()'>내 정보(json)을 여기에 표시하기</p>
		
		<input type="text" id="myName" value="test"/><br/>
	</div>
</body>
</html>