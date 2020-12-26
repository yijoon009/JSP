<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	File fileList = new File("C:/program_lec/JSP/workspace/prac/WebContent/files");
	for(File f : fileList.listFiles()){
		if(f.isFile()){
			%>
			
			<a href = "../files/<%=f.getName() %>"><%=f.getName() %></a><br/>
			
			
			
			
		<%}
	}

%>    


