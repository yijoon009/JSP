<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>day11_01_el.jsp</h2>
	<div>
		더하기: ${10 + 10} <br />
		빼기: ${10 - 10 } <br />
		곱하기: ${10 * "10" } <br />
		나누기: ${'40' div '6'} <br />
		나머지: ${40 mod 6}	
	</div>
	
	<h2>비교 연산자</h2>
	<div>
		같은가? ${10 eq 10 } <br />
		다른가? ${10 ne 10 } <br />
		작은가? ${10 lt 10 } <br />
		크가? ${10 gt 10 } <br />
		작거나 같은가? ${10 le 10 } <br />
		크거나 같은가? ${10 ge 10 } <br />
	</div>
	
	<div>
		${korea.getInfo() }<br/>
		${korea.add(2,5)}<br/>
	</div>
	
	</body>
	</html>