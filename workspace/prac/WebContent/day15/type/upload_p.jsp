<%@page import="day15.FileService"%>
<%@page import="java.awt.desktop.FilesEvent"%>
<%@page import="java.io.File"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

// 이 프로젝트는 필터가 안걸려있어서 해줘야히
request.setCharacterEncoding("UTF-8");

try{
	
	String savePath = "C:\\Temp\\jsp_prac";
	int maxSize = 10 * 1024 * 1024;
	String format = "utf-8";
	int read = 0;
	byte[] buf = new byte[1024];
	
	
	MultipartRequest multi = new MultipartRequest(request, savePath, maxSize, format, new DefaultFileRenamePolicy());
	
	String name = multi.getParameter("name");	//input param 받기
	String uploadFile = multi.getFilesystemName("file");
	
	//파일 객체 구하기
	out.println(savePath + "/" + uploadFile);
	File file = new File(savePath+"/"+uploadFile);
	FileService fs = new FileService();
	fs.fileUpload(name, file);
	
	
	
}catch(Exception e){
	e.printStackTrace();
}

%>