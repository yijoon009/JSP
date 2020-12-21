<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = 'c' uri = "http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id = 'boardDAO' class = 'done.board.BoardDAO'/>

<c:set var = 'boardAuth' value = 'false'/>

<!-- type이 Auth이면서 로그인이 되어있다면 -->
<c:if test="${param.type eq 'Auth' and !empty loginId }">
	<c:set var = 'boardAuth' value = 'true'/>
</c:if>

<c:set var = 'boardList' value = "${boardDAO.selectBoard(boardAuth)}"/>



<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<script>
$(function(){
	//로그인 버튼 클릭하면
	$('#loginBtn').click(function(){
		location.href="../member/login_f.jsp";
	});
	
	//인증게시판 버튼을 클릭하면
	$('#authBtn').click(function(){
		location.href="./board_list.jsp?type=Auth";
	});
	
	//자유게시판 버튼을 클릭하면
	$('#freeBtn').click(function(){
		location.href="./board_list.jsp?type=Free";
	})
	
	//로그아웃 버튼을 클릭하면
	$('#logOutBtn').click(function(){
		if(confirm('정말 로그아웃 하시겠습니까?')){
			location.href="../member/logout.jsp";
		}
	})
})

</script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="navbar navbar-default">
		<div class="container">
			<div class="navbar-header">
				<button class="navbar-toggle" type="button" data-toggle="collapse" data-target="#navbar-main">
					<span class="icon-bar"></span> 					
				</button>
				<a href="#" class="navbar-brand">WCDI Board</a>
			</div>			
			<center>
			
				<!-- 인증  X: 자유게시판 -->
				<c:if test="${boardAuth eq false}">
					<!-- 로그인 X -->
					<c:if test="${empty loginId}">
					<div class="navbar-collapse collapse" id="navbar-main">
						자유게시판 <button class="btn btn-primary" id="loginBtn">로그인</button>
					</div>
					</c:if>
					
					<!-- 로그인 O -->
					<c:if test="${!empty loginId}">
					<div class="navbar-collapse collapse" id="navbar-main">
						자유게시판 
						<button class="btn btn-info" id="logOutBtn">로그아웃</button>
						<button class="btn btn-default" id="authBtn">인증게시판</button>
					</div>
					</c:if>
				</c:if>
				
				<!-- 인증  O: 인증게시판 -->
				<c:if test="${boardAuth eq true }">
				<div class="navbar-collapse collapse" id="navbar-main">
					인증게시판
					<button class="btn btn-info" id="logOutBtn">로그아웃</button>
					<button class="btn btn-default" id="freeBtn">자유게시판</button>
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
				
				<c:forEach var="item" items="${boardList}">
				<tr>
					<td style="text-align:center;">${item.id }</td>
					<td>
						<a href="./board_detail.jsp?id=${item.id }">
						${item.title }
						</a>					
					</td>
					<td style="text-align:center;">${item.createId }</td>
					<td style="text-align:center;">${item.createDate }</td>
					<td style="text-align:center;">${item.hit }</td>
				</tr>
				</c:forEach>
				
			</tbody>
		</table>
		<c:if test="${boardAuth eq true}">
			<div><a href="./board_insert.jsp?type=Auth" class="btn btn-default pull-right">인증글쓰기</a></div>
		</c:if>
		<c:if test="${boardAuth eq false}">
			<div><a href="./board_insert.jsp?type=Free" class="btn btn-success pull-right">자유글쓰기</a></div>
		</c:if>
	</div>
</body>
</html>