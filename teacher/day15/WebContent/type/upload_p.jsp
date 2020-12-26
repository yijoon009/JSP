<%@page import="day15.korea.FileService"%>
<%@page import="java.io.File"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
<%
request.setCharacterEncoding("UTF-8");

try {
	String savePath = "C:/dev/files";
	int maxSize = 10 * 1024 * 1024; //최대 10mb
	String format = "UTF-8";
	int read = 0;
	byte[] buf = new byte[1024];
	
	MultipartRequest multi = new MultipartRequest(request, savePath, maxSize, format, new DefaultFileRenamePolicy());
	
	String name = multi.getParameter("name");	//input param 받기
	String uploadFile = multi.getFilesystemName("file");
	
	//파일 객체 구하기
	out.println(savePath + "\\" + uploadFile);
	File file = new File(savePath + "\\" + uploadFile);
	FileService fs = new FileService();
	fs.fileUpload(name, file);
	
	//파일리스트로 이동
	response.sendRedirect("./fileList.jsp");
	
} catch(Exception e) {
	e.printStackTrace();
}

%>
















