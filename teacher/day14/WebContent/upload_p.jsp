<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
<%
try {
	String savePath = "C:/dev";
	int maxSize = 10 * 1024 * 1024; //최대 10mb
	String format = "UTF-8";
	
	MultipartRequest multi = new MultipartRequest(request, savePath, maxSize, format);
} catch(Exception e) {
	e.printStackTrace();
}

%>