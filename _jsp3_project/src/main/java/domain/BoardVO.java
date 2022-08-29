package domain;

import java.time.LocalDate;

public class BoardVO {

	private int bno;
	private String title;
	private String writer;
	private String content;
	private LocalDate reg_date = LocalDate.now();	// date도 String 형식으로 생성 -> 년월일만 나오게 하려면 LocalDate.now()로 변경
	
	public BoardVO() {}
	
	// insert (title, writer, content
	public BoardVO(String title, String writer, String content) {
		this.title = title;
		this.writer = writer;
		this.content = content;
	}
	
	// list (bno, title, writer, reg_date)
	public BoardVO(int bno, String title, String writer, LocalDate reg_date) {
		this.bno = bno;
		this.title = title;
		this.writer = writer;
		this.reg_date = reg_date;
	}
	
	// detail (bno, title, writer, content, reg_date)
	public BoardVO(int bno, String title, String writer, String content, LocalDate reg_date) {
		this.bno = bno;
		this.title = title;
		this.writer = writer;
		this.content = content;
		this.reg_date = reg_date;
	}
	
	// update (bno, title, content)
	public BoardVO(int bno, String title, String content) {
		this.bno = bno;
		this.title = title;
		this.content = content;
	}

	// getters and setters
	public int getBno() {
		return bno;
	}

	public void setBno(int bno) {
		this.bno = bno;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public LocalDate getReg_date() {
		/* yyyy-mm-dd 형식으로 자름 
		 * String date = reg_date.substring(0, reg_date.lastIndexOf(" ")+1);
		 * return date;
		 * */
		return reg_date;
	}

	public void setReg_date(LocalDate reg_date) {
		this.reg_date = reg_date;
	}
}
