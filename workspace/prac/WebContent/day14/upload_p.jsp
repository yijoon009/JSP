<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%


try{
	
	String savePath = "C:\\Temp\\jsp_prac";
	int maxSize = 10 * 1024 * 1024;
	String format = "utf-8";
	
	MultipartRequest multi = new MultipartRequest(request, savePath, maxSize, format, new DefaultFileRenamePolicy());
	
	String name = multi.getParameter("name");
	String uploadFile = multi.getFilesystemName("file");
	
	out.println("name>>>"+name);
	out.println("file>>>"+uploadFile);
	
}catch(Exception e){
	e.printStackTrace();
}

%>