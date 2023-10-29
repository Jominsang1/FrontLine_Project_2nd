package com.frontline.javabeans;

import java.time.*;

public class RoomDTO {
	private String roomTitle;
	private String roomAddress;
	private String roomTell;
	private String roomPrice;
	private String roomImage;
	private String roomDetail;
	private LocalDateTime startDate;
	private LocalDateTime endDate;
	
	public RoomDTO() {
		
	}
	
	public RoomDTO(String roomTitle, String roomAddress, String roomTell, String roomPrice, String roomImage, String roomDetail) {
		this.roomTitle = roomTitle;
		this.roomAddress = roomAddress;
		this.roomTell = roomTell;
		this.roomPrice = roomPrice;
		this.roomImage = roomImage;
		this.roomDetail = roomDetail;
	}

	public String getRoomTitle() {
		return roomTitle;
	}

	public void setRoomTitle(String roomTitle) {
		this.roomTitle = roomTitle;
	}

	public String getRoomAddress() {
		return roomAddress;
	}

	public void setRoomAddress(String roomAddress) {
		this.roomAddress = roomAddress;
	}

	public String getRoomTell() {
		return roomTell;
	}

	public void setRoomTell(String roomTell) {
		this.roomTell = roomTell;
	}

	public String getRoomPrice() {
		return roomPrice;
	}

	public void setRoomPrice(String roomPrice) {
		this.roomPrice = roomPrice;
	}

	public String getRoomImage() {
		return roomImage;
	}

	public void setRoomImage(String roomImage) {
		this.roomImage = roomImage;
	}

	public String getRoomDetail() {
		return roomDetail;
	}

	public void setRoomDetail(String roomDetail) {
		this.roomDetail = roomDetail;
	}

	public LocalDateTime getStartDate() {
		return startDate;
	}

	public void setStartDate(LocalDateTime startDate) {
		this.startDate = startDate;
	}

	public LocalDateTime getEndDate() {
		return endDate;
	}

	public void setEndDate(LocalDateTime endDate) {
		this.endDate = endDate;
	}
	
	
	
}