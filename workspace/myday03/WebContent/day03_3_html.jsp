<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>day03_3_html</title>

<script>

function myFunction(){
	alert('버튼을 클릭했습니다.')
	var val01 = document.getElementById('val01').value
	var val02 = document.getElementById('val02').value
	//val01과 val02를 더해서 보여주세요
	alert(val01+val02);
	alert(Number(val01)+Number(val02));
	
}
</script>



<link rel="stylesheet" type="text/css" href="my.css">

<style type="text/css">
td {
	color:black;
}

.name_color{
	color:red;
}

</style>


</head>
<body>
	<!-- html 기초 . 제목태그 (headline tag)-->
	<h1>h1 태그입니다.</h1>
	<h2>h2 태그입니다.</h2>
	<h3>h3 태그입니다.</h3>
	<h4>h4 태그입니다.</h4>
	
	<div>
	한줄 내려 가나요?<br/>
	한줄 내려 가나요?
	</div>
	<div>
	div 두번째
	</div>
	<span>
	span tag
	</span>
	<span>
	span tag
	</span>
	<div>
		<b>b 태그는 텍스트를 굴게 만들어줍니다.</b><br/>
		<i>i 태그는 이탤릭체로 만들어줍니다.</i>
	</div>
	
	<hr />
	
	<a href="https://www.naver.com/" target="_blank">a 태그는 링크입니다. 링크는 href라는 속성을 이용합니다.</a>
	<br/>
	<br/>
	<br/>
	<br/>
	
	<table border="1" style="color: blue;">
		<tr >
			<th>번호</th>
			<th>이름</th>
		</tr>
		<tr >
			<td>1</td>
			<td style="color: black;">김철수</td>
		</tr>
		<tr >
			<td>2</td>
			<td class="name_color">이영희</td>
		</tr>
		
	</table>
	<br/>
	<br/>

	<button onclick="myFunction()">클릭</button>	
	
	<div>
		<input type="text" id="val01"/>
		<input type="text" id="val02"/>
	</div>
	
	
</body>
</html>
