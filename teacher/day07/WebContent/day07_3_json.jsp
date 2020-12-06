<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>



</head>
<body>
	<div>
		<p id="myObj" onclick="show()">내 정보(json)를 여기에 표시하기</p>
		
		<input type="text" id="myName" value="test"/><br />
		<input type="text" id="myAge" value="test"/><br />
		<input type="text" id="myCity" value="test"/><br />
	</div>
</body>
</html>


<script>
	//주의사항: key는 문자로 만드세요.
	//키와 값을 문자일 경우 더블쿼테이션(쌍따옴표)로 묶으세요
	var myObj = {"name":"korea", "age":30, "city":"seoul"};
	
	//실습하기. name변수의 값을 test로 변경해주세요.
	//var name = "test";
	//alert( name );
	
	//실습하기. myName, myAge, myCity 값을 myObj json을 이용해서
	//        value를 셋팅해주세요.
	document.getElementById('myName').value = myObj.name;
	document.getElementById('myAge').value = myObj.age;
	document.getElementById('myCity').value = myObj.city;
	
	
	
	
	
	function show() {
		//alert('스크립트 클릭')
		var name = document.getElementById('myName').value;
		alert( name );
		//실습하기. myObj태그의 내용을 json(myObj)을 이용해서
		// 이름: korea, 나이: 30   으로 변경해주세요.
		document.getElementById('myObj').innerHTML = "이름:" + myObj.name + ", 나이:" + myObj.age;
		
	}	
</script>












