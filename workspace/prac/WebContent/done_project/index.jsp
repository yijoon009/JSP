<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>회원 인증과 게시판</h2>
	<div>
		<ui>
			<li>
				<a href="./member/join_f.jsp">
				회원가입
				</a>
			</li>
			<li>
				<a href="./member/login_f.jsp">
				로그인
				</a>
			</li>
			<li>
				<a href="./board/board_list.jsp?type=Auth">
				인증게시판
				</a>
			</li>
			<li>
				<a href="./board/board_list.jsp?type=Free">
				자유게시판
				</a>
			</li>
		</ui>
	
	</div>
</body>
</html>