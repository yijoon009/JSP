package myday15;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.List;


public class FileService {
	
	//파일의 임시 저장 위치
	public static String SAVE_TMP_PATH = "C:\\Temp\\jsp";
	//실제 파일의 저장 위치
	public static String SAVE_PATH = "C:\\korea";
	
	
	//오늘 날짜를 구하는 메서드
	public static String getToday() {
		Calendar c = Calendar.getInstance();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyymmdd");
		
		return sdf.format(c.getTime());
	}
	
	// 임시 저장된 파일을 날짜별 폴더로 옮기기
	public void moveFile(FileDTO fileDto, File file) {
		File dir = new File(SAVE_PATH + file.separatorChar+getToday());
		
		//오늘 날짜의 디렉토리(폴더)가 없다면 생성하기
		if(!dir.isDirectory()) {
			dir.mkdir();
		}
		//임시 공간에 있는 업로드 된 파일을 날짜별 폴더로 옮기기
		File newFile = new File(SAVE_PATH+fileDto.getFilePath());
		file.renameTo(newFile);
	}
	
	
	public boolean fileUpload(String name, File file) {
		
		System.out.println("name>>>"+name);
		System.out.println("file>>>"+file);
		
		FileDAO fileDao = new FileDAO();
		FileDTO fileDto = new FileDTO();
		fileDto.setName(name);
		fileDto.setFileOrigName(file.getName());
		
		System.out.println("file 저장 전 >>>"+fileDto);
		
		//파일 저장
		fileDao.insertFile(fileDto);
		
		//파일을 날짜별로 분류
		moveFile(fileDto, file);
		System.out.println("fileDto>>>"+fileDto);
		System.out.println("file 저장 후 >>>"+fileDto);
		
		return false;
		
	}
	
	//파일 리스트
	public List<FileDTO> selectFiles(){
		FileDAO fileDao = new FileDAO();
		return fileDao.selectFiles();
	}
	

	
	
	
	
	
	
	
	
	
	
	
}





