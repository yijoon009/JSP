package day15.korea;

import java.io.Serializable;

public class FileDTO implements Serializable {

	private static final long serialVersionUID = 1L;
	
	private Long id;
	private String name;
	private String filePath;
	private String fileOrigName;
	
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getFilePath() {
		return filePath;
	}
	public void setFilePath(String filePath) {
		this.filePath = filePath;
	}
	public String getFileOrigName() {
		return fileOrigName;
	}
	public void setFileOrigName(String fileOrigName) {
		this.fileOrigName = fileOrigName;
	}
	@Override
	public String toString() {
		return "FileDTO [id=" + id + ", name=" + name + ", filePath=" + filePath + ", fileOrigName=" + fileOrigName
				+ "]";
	}
	
	

}
