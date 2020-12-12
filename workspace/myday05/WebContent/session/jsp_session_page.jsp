<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
//한글이 깨지는 경우
request.setCharacterEncoding("UTF-8");


String product = request.getParameter("product");

List list = (List) session.getAttribute("productList");

//list가 null이면 객체 초기화
if(list==null){	//에러방지
	list = new ArrayList();
}
	//아래를 else 로 묶으면 최초 여기 들어왔을때 에러나. 
	//new로 만들고 list.add가 안되니까
	//그러니까 else 없앴어

	//리스트에 상품 추가
	list.add(product);

	//장바구니 세션에 리스트를 ㅅ추가
	session.setAttribute("productList", list);
	
	


%>

<script>
	alert('<%=product%>가 장바구니에 추가되었습니다.')
	//history.go(-1);
	location.href = "http://localhost:18888/myday05/cookie/jsp_cookie_form.jsp";
</script>


