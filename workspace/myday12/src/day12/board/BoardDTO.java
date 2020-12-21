package day12.board;

import java.io.Serializable;
import java.util.Date;

public class BoardDTO implements Serializable{
	
	
	private static final long serialVersionUID = 1L;
	private Long 	id;  //자동 증가, pk
	private String 	title;         //200
	private String 	content;       //4000
	private String 	boardPass;
	private Integer hit;
	private String 	createId;
	private Date 	createDate;
	private Boolean boardType;
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getBoardPass() {
		return boardPass;
	}
	public void setBoardPass(String boardPass) {
		this.boardPass = boardPass;
	}
	public Integer getHit() {
		return hit;
	}
	public void setHit(Integer hit) {
		this.hit = hit;
	}
	public String getCreateId() {
		return createId;
	}
	public void setCreateId(String createId) {
		this.createId = createId;
	}
	public Date getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	public Boolean getBoardType() {
		return boardType;
	}
	public void setBoardType(Boolean boardType) {
		this.boardType = boardType;
	}
	@Override
	public String toString() {
		return "BoardDTO [id=" + id + ", title=" + title + ", content=" + content + ", boardPass=" + boardPass
				+ ", hit=" + hit + ", createId=" + createId + ", createDate=" + createDate + ", boardType=" + boardType
				+ "]";
	}
	
}
