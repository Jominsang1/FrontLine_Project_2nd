package com.frontline.db;

import java.util.ArrayList;
import java.util.List;

import com.frontline.javabeans.RoomDTO;

public class RoomDB {
	private static List<RoomDTO> roomList = new ArrayList<RoomDTO>();

	static {
    	roomList.add(new RoomDTO("롯데 시그니엘", "서울특별시 송파구 올림픽로 300 롯데월드타워 76-101층", "883500", "https://www.lottehotel.com/content/dam/lotte-hotel/signiel/seoul/accommodation/premier/5685-02-2000-roo-LTSG.jpg.thumb.480.480.jpg", "우아한 인테리어와 현대적 세련미가 조화롭게 어우러진 시그니엘 서울의 그랜드 디럭스 룸은 초고층 객실에서 바라보는 서울 도심의 파노라믹뷰와 최상의 휴식을 제공합니다."));
    	roomList.add(new RoomDTO("신라호텔", "서울특별시 중구 동호로 249", "448000", "https://i.namu.wiki/i/_VdL80a6q8YfJ3ob0cH0g6M4C4u3eafyHQV8oHFnZetT7yEjHPC8hybEh7-Xwfz6H6S4EkwBn6mkLvhb7rGscQ.webp", "모던한 콘셉트의 아늑한 공간 안에 편안한 휴식을 선사하는 침구와 업무를 위한 책상을 갖추어 효율적인 구성이 돋보이는 객실입니다. 안락한 공간이 주는 편안함과 함께 일상에서 벗어난 듯한 특별한 휴식을 경험해보시기 바랍니다."));
    }
	
	public static List<RoomDTO> getRoomList() {
		return roomList;
	}

	public void setRoomList(List<RoomDTO> roomList) {
		this.roomList = roomList;
	}
}
