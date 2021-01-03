<%@page import="java.io.FileNotFoundException"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.File"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.io.InputStream"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//파일 다운로드를 위한 페이지
	//filedown.jsp
	
	request.setCharacterEncoding("UTF-8");

	//파일 저장된 경로
	String savePath = "C:/dev/korea";
	
	//다운로드 받을 파일 경로
	String fileName = request.getParameter("filePath");
	
	//다운로드 받을 파일명
	String origfilename = request.getParameter("fileOrigName");
	
	
	
	
	InputStream in = null;
	OutputStream os = null;
	File file = null;
	boolean skip = false;
	String client = "";
	
	try{ 
        // 파일을 읽어 스트림에 담기
        try{     
            file = new File(savePath, fileName);
            in = new FileInputStream(file);
        }catch(FileNotFoundException fe){
            skip = true;
        }         
        client = request.getHeader("User-Agent"); 
        // 파일 다운로드 헤더 지정
        response.reset() ;
        response.setContentType("application/octet-stream");
        response.setHeader("Content-Description", "JSP Generated Data"); 
        if(!skip){            
            // IE
            if(client.indexOf("MSIE") != -1){
                response.setHeader ("Content-Disposition", 
                		"attachment; filename="+new String(origfilename.getBytes("KSC5601"),"ISO8859_1")); 
            }else{
                // 한글 파일명 처리
                origfilename = new String(origfilename.getBytes("utf-8"),"iso-8859-1");
 
                response.setHeader("Content-Disposition", "attachment; filename=\"" + origfilename + "\"");
                response.setHeader("Content-Type", "application/octet-stream; charset=utf-8");
            }              
            response.setHeader ("Content-Length", ""+file.length() );
 
 			//jsp를 servlet으로 변환할적에 getOutputStream(); 관련 에러가 나는데
 			//아래 두 줄을 넣으면 에러 안 난다.
            out.clear();
            out=pageContext.pushBody(); 
            
            os = response.getOutputStream();
            byte b[] = new byte[(int)file.length()];
            int leng = 0;             
            while( (leng = in.read(b)) > 0 ){
                os.write(b,0,leng);
            } 
        }else{
            response.setContentType("text/html;charset=UTF-8");
            out.println("<script language='javascript'>alert('파일을 찾을 수 없습니다');history.back();</script>"); 
        }         
        in.close();
        os.close(); 
    }catch(Exception e){    	
      e.printStackTrace();
    }
%>