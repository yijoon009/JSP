package day15;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Calendar;


public class FileService {
	
	
	//오늘 날짜를 구하는 메서드
	public static String getToday() {
		Calendar c = Calendar.getInstance();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
		return sdf.format(c.getTime());
	}
	
	
	public boolean fileUpload(String name, File file) {
		System.out.println("name >>>"+name);
		System.out.println("file >>>"+file);
		
		FileDAO fileDAO = new FileDAO();
		FileDTO fileDTO = new FileDTO();
		fileDTO.setName(name);
		fileDTO.setFileOrigName(file.getName());
		
		//ㅠㅏ일 저장
		fileDAO.insertFile(fileDTO);
		
		return false;
	}
}
