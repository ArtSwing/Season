package com.ht.season.stock;

public class stockDTO {

	public String getSid() {
		return sid;
	}
	public void setSid(String sid) {
		this.sid = sid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSpot() {
		return spot;
	}
	public void setSpot(String spot) {
		this.spot = spot;
	}
	public String getCount() {
		return count;
	}
	public void setCount(String count) {
		this.count = count;
	}
	public String getAvgnum() {
		return avgnum;
	}
	public void setAvgnum(String avgnum) {
		this.avgnum = avgnum;
	}
	public String getMinnum() {
		return minnum;
	}
	public void setMinnum(String minnum) {
		this.minnum = minnum;
	}
	public String getMaxnum() {
		return maxnum;
	}
	public void setMaxnum(String maxnum) {
		this.maxnum = maxnum;
	}
	private String sid;
	 private String name;
	 private String spot;
	 private String count;
	 private String avgnum;
	 private String minnum;
	 private String maxnum;

}
