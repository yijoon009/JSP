<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<c:set var="boardAuth" value="false" />
	<!-- type이 Auth이면서 로그인이 되었다면 -->
	<c:if test="${param.type eq 'Auth' and !empty loginId}">
		<c:set var="boardAuth" value="true" />
	</c:if>



	<div class="navbar navbar-default">
		<div class="container">
			<div class="navbar-header">
				<button class="navbar-toggle" type="button" data-toggle="collapse" data-target="#navbar-main">
					<span class="icon-bar"></span> 					
				</button>
				<a href="#" class="navbar-brand">WCDI Board</a>
			</div>			
			<center>
			<!-- 인증X : 자유게시판 -->
			<c:if test="${boardAuth eq false }">
				<!-- 로그인X -->
				<c:if test="${empty loginId }">
				<div class = 'navbar-collapse collapse' id = 'navbar-main'>
					<form class = 'navbar-form'>
						<div class="form-group">
							<label for="userId">유저 ID</label> <input type="text" class="form-control" id="userId" name="userId" placeholder="아이디를 입력해주세요." />
						</div>
						<div class="form-group">
							<label for="userPw">비밀번호</label> <input type="text" class="form-control" id="userPw" name="userPw" placeholder="비밀번호를 입력해주세요." />
						</div>
	
						<div class="form-group text-center">
							<button type="button" class="btn btn-primary" id="loginBtn">로그인</button>
							<a href="./join_f.jsp" class="btn btn-info">회원가입</a>
						</div>
					</form>
				</div>
				</c:if>
				
				
				<!-- 로그인O -->
				<c:if test="${!empty loginId }">
				<div class = 'navbar-collapse collapse' id = 'navbar-main'>
					//로그인 아이디 표시
					${longinId }
				</div>
				
				</c:if>
			</c:if>
			<!-- 인증O : 인증게시판 -->
			
			<c:if test="${boardAuth eq true }">
				<div class = 'navbar-collapse collapse' id = 'navbar-main'>
					//로그인 아이디 표시
					${longinId }
				</div>
			
			</c:if>
			</center>
		</div>
	</div>
	
	
	<!-- 게시글 리스트 -->
	<div class="container">
		<legend>
			게시판
		</legend>
		
		<table class="table table-board">
			<colgroup>
				<col width="7%"/>		<!-- 글 번호 -->
				<col width="*"/>		<!-- 제목 -->
				<col width="15%"/>		<!-- 작성자 -->
				<col width="10%"/>		<!-- 작성일 -->
				<col width="7%"/>		<!-- 조회수 -->
			</colgroup>
			<thead>
				<tr>
					<th style="text-align:center;">글 번호</th>
					<th style="text-align:center;">제목</th>
					<th style="text-align:center;">작성자</th>
					<th style="text-align:center;">작성일</th>
					<th style="text-align:center;">조회수</th>
				</tr>
			</thead>
			<tbody>				
				
				<tr>
					<td style="text-align:center;"></td>
					<td></td>
					<td style="text-align:center;"></td>
					<td style="text-align:center;"></td>
					<td style="text-align:center;"></td>
				</tr>
				
			</tbody>
		</table>
		<div><a href="./board_insert.jsp?type=Auth" class="btn btn-default pull-right">인증글쓰기</a></div>
		<div><a href="./board_insert.jsp?type=Free" class="btn btn-success pull-right">자유글쓰기</a></div>
		
		
	</div>
	
	
	
	
	
</body>
</html>