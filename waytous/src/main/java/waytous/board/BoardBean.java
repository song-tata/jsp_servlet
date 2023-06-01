package waytous.board;

import java.sql.Timestamp;

public class BoardBean {
	private int arti_num;
	private String arti_title;
	private String arti_text;
	private String auther;
	private Timestamp arti_date;
	
	public BoardBean() {
		
	}
	
	public BoardBean(int arti_num,String arti_title,String auther,Timestamp arti_date) {
		this.arti_num = arti_num;
		this.arti_title = arti_title;
		this.auther = auther;
		this.arti_date = arti_date;
		//게시판 생성자
	}
	
	public BoardBean(int arti_num,String arti_title,String auther,Timestamp arti_date,String arti_text) {
		this.arti_num = arti_num;
		this.arti_title = arti_title;
		this.auther = auther;
		this.arti_date = arti_date;
		this.arti_text = arti_text;
		//게시글 생성자
	}
	
	
	public int getArti_num() {
		return arti_num;
	}
	public void setArti_num(int arti_num) {
		this.arti_num = arti_num;
	}
	public String getArti_title() {
		return arti_title;
	}
	public void setArti_title(String arti_title) {
		this.arti_title = arti_title;
	}
	public String getArti_text() {
		return arti_text;
	}
	public void setArti_text(String arti_text) {
		this.arti_text = arti_text;
	}
	public String getAuther() {
		return auther;
	}
	public void setAuther(String auther) {
		this.auther = auther;
	}
	public Timestamp getArti_date() {
		return arti_date;
	}
	public void setArti_date(Timestamp arti_date) {
		this.arti_date = arti_date;
	}
	
}
