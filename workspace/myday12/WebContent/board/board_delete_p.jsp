<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="boardDTO" class = 'day12.board.BoardDTO'></jsp:useBean>
<jsp:setProperty property="*" name="boardDTO"/>
<jsp:useBean id="boardDAO" class = 'day12.board.BoardDAO'></jsp:useBean>

<%
int rows = boardDAO.deleteBoard(boardDTO);
if(rows >=1){
%>
<script>
alert('게시글 삭제 성공');
location.href = "board_list.jsp";
</script>


<%}else{%>
	
<script>
alert('게시글 삭제 실패');
history.back(-1);
</script>



<%}
%>