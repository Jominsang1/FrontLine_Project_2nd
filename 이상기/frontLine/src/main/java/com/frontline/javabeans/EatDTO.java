package com.frontline.javabeans;

public class EatDTO {
	private String city;
	private String address;
	private String tell;
	private String openTime;
	private String detail;
	private String image;
	private String title;
	
	public EatDTO(String city, String address, String tell, String openTime, String detail, String image,
			String title) {
		super();
		this.city = city;
		this.address = address;
		this.tell = tell;
		this.openTime = openTime;
		this.detail = detail;
		this.image = image;
		this.title = title;
	}
	
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getTell() {
		return tell;
	}
	public void setTell(String tell) {
		this.tell = tell;
	}
	public String getOpenTime() {
		return openTime;
	}
	public void setOpenTime(String openTime) {
		this.openTime = openTime;
	}
	public String getDetail() {
		return detail;
	}
	public void setDetail(String detail) {
		this.detail = detail;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	
	
}
