<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
session.invalidate();
//세션에 있는 정보들 날림/버림

response.sendRedirect("../board/board_list.jsp");

%>