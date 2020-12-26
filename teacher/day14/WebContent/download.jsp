<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%
	File fileList = new File("C:/program_lec/JSP/teacher/day14/WebContent\files");
	for(File f : fileList.listFiles()){
		if(f.isFile()){
		//실습
		//out.println(f.getName());
		
		%>
		
		<a href = "<%=f.getName()%>"><%=f.getName() %></a><br/>
		
		
		<%
		}
	}
%>


