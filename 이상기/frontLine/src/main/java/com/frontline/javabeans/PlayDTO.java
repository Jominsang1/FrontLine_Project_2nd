package com.frontline.javabeans;

public class PlayDTO {
	
	private String city;
	private String title;
	private String address;
	private String tell;
	private String openTime;
	private String detail;
	private String image;
	
	public PlayDTO() {}
	
	public PlayDTO(String city, String title, String address, String tell,String openTime,String detail,String image) {
		this.city = city;
		this.title = title;
		this.address = address;
		this.tell = tell;
		this.openTime = openTime;
		this.detail = detail;
		this.image = image;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
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
}
