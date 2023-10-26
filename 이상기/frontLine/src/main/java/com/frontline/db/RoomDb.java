package com.frontline.db;

import java.util.ArrayList;
import java.util.List;

import com.frontline.javabeans.RoomDTO;

public class RoomDb {
	List<RoomDTO> RoomData = new ArrayList<RoomDTO>();

	public List<RoomDTO> getRoomData() {
		return RoomData;
	}

	public void setRoomData(List<RoomDTO> roomData) {
		RoomData = roomData;
	}
}
