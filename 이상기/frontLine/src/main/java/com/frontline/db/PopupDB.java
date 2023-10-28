package com.frontline.db;

import java.util.ArrayList;
import java.util.List;

import com.frontline.javabeans.PopupDTO;
import com.frontline.javabeans.RoomDTO;

public class PopupDB {
	private static List<PopupDTO> popupList = new ArrayList<PopupDTO>();
	
	static {
    	popupList.add(new PopupDTO("resources/images/popup_image_1.jpg"));
    	popupList.add(new PopupDTO("resources/images/popup_image_2.jpg"));
    }

	public static List<PopupDTO> getPopupList() {
		return popupList;
	}

	public static void setPopupList(List<PopupDTO> popupList) {
		PopupDB.popupList = popupList;
	}
}
