package com.frontline.db;

import java.util.ArrayList;
import java.util.List;

import com.frontline.javabeans.RoomDTO;

public class RoomDB {
	private List<RoomDTO> roomList = new ArrayList<RoomDTO>();

	public List<RoomDTO> getRoomList() {
		return roomList;
	}

	public void setRoomList(List<RoomDTO> roomList) {
		this.roomList = roomList;
	}
}
