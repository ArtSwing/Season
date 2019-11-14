package com.ht.season.board;

import java.text.SimpleDateFormat;
import java.util.Date;

public class BoardDTO {
	
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
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getSpot() {
		return spot;
	}
	public void setSpot(String spot) {
		this.spot = spot;
	}
	SimpleDateFormat date = new SimpleDateFormat("yyyy-MM-dd");
	public String getBoard_date() {
		String dates = date.format(board_date);
		return dates;
	}
	public void setBoard_date(Date board_date) {
		this.board_date = board_date;
	}
	private int bno;
	private String title;
	private String content;
	private String spot;
	private Date board_date;

}
