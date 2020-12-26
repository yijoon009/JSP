<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%


try{
	
	String savePath = "C:/Temp/jsp";
	int maxSize = 10 * 1024 * 1024;
	String format = "utf-8";
	
	MultipartRequest multi = new MultipartRequest(request, savePath, maxSize, format);
	
	String title = multi.getParameter("name");	//input param 받기
	String uploadFile = multi.getFilesystemName("file");
	
	out.println("title>>>"+title);
	out.println("uploadFile>>>"+uploadFile);
	
	
}catch(Exception e){
	e.printStackTrace();
}

%>