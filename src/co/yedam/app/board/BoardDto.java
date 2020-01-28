package co.yedam.app.board;

import java.util.Date;

public class BoardDto {
	private int no;
	private String subject;
	private String poster;
	private String contents;
	private Date lastpost;
	private int views;
	
	public BoardDto() {
		super();
	}

	public BoardDto(int no, String subject, String poster) {
		super();
		this.no = no;
		this.subject = subject;
		this.poster = poster;
	}
	
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getPoster() {
		return poster;
	}
	public void setPoster(String poster) {
		this.poster = poster;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public Date getLastpost() {
		return lastpost;
	}
	public void setLastpost(Date lastpost) {
		this.lastpost = lastpost;
	}
	public int getViews() {
		return views;
	}
	public void setViews(int views) {
		this.views = views;
	}
	@Override
	public String toString() {
		return "BoardDto [no=" + no + ", subject=" + subject + ", poster=" + poster + ", contents=" + contents
				+ ", lastpost=" + lastpost + ", views=" + views + "]";
	}
	
}
