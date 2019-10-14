package com.ht.season.food;

import java.sql.Date;

public class foodDTO {
	private String fid;
	private String img;
	private String name;
	private Date life;
	private String country;
	private String price;
	public String getFid() {
		return fid;
	}
	public void setFid(String fid) {
		this.fid = fid;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Date getLife() {
		return life;
	}
	public void setLife(Date life) {
		this.life = life;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	
	
	

}
