package day15;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.List;


public class FileService {
	//FileService 쪽에서는 FileDAO쪽 호출해서 사용만 함
	
	
	//파일의 저장 위치
	public static String SAVE_PATH = "C:\\korea";
	
	//오늘 날짜를 구하는 메서드
	public static String getToday() {
		Calendar c = Calendar.getInstance();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
		return sdf.format(c.getTime());
	}
	
	
	
	//임시 저장된 파일을 날짜별 폴더로 옮기기
	public void moveFile(FileDTO fileDTO, File file) {
		File dir = new File(SAVE_PATH+File.separatorChar+getToday());
		
		//오늘날짜의 디렉토리가 없다면 생성하기
		if(!dir.isDirectory()) {
			dir.mkdir();
		}
		
		//임시 공간에 있는 업로드 된 파일을 날짜별 폴더로 옮기기
		File newFile = new File(SAVE_PATH+fileDTO.getFilePath());
		file.renameTo(newFile);
	}
	
	
	
	public boolean fileUpload(String name, File file) {
		System.out.println("name >>>"+name);
		System.out.println("file >>>"+file);
		
		FileDAO fileDAO = new FileDAO();
		FileDTO fileDTO = new FileDTO();
		fileDTO.setName(name);
		fileDTO.setFileOrigName(file.getName());
		
		//파일 저장
		fileDAO.insertFile(fileDTO);
		
		//파일을 날짜별로 분류
		moveFile(fileDTO, file);
		System.out.println("fileDTO>>>"+fileDTO);
		return true;
	}
	
	//파일 리스트
	public List<FileDTO> selectFiles(){
		FileDAO fileDAO = new FileDAO();
		return fileDAO.selectFiles();
	}
	
	
}
