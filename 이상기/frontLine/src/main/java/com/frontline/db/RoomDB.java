package com.frontline.db;

import java.util.ArrayList;
import java.util.List;

import com.frontline.javabeans.RoomDTO;

public class RoomDB {
	private static List<RoomDTO> roomList = new ArrayList<RoomDTO>();

	static {
    	roomList.add(new RoomDTO("신라스테이 천안", "충남 천안시 서북구 동서대로 177", "041-415-9000", "60000", "https://search.pstatic.net/common/?src=https%3A%2F%2Fldb-phinf.pstatic.net%2F20221213_296%2F1670919178589Lqv1U_JPEG%2F%25C5%25A9%25B1%25E2%25BA%25AF%25C8%25AF%25BD%25C5%25B6%25F3%25BD%25BA%25C5%25D7%25C0%25CC%25C3%25B5%25BE%25C8_%25BF%25DC%25B0%25E6%2528%25BE%25DF%25B0%25E6%2529.jpg", "우아한 인테리어와 현대적 세련미가 조화롭게 어우러진 신라 스테이의 그랜드 디럭스 룸은 초고층 객실에서 바라보는 천안 도심의 파노라믹뷰와 최상의 휴식을 제공합니다."));
    	roomList.add(new RoomDTO("소노벨 천안", "충남 천안시 동남구 성남면 종합휴양지로 200", "1588-4888", "100000", "https://search.pstatic.net/common/?src=https%3A%2F%2Fldb-phinf.pstatic.net%2F20210831_161%2F163036601130492Ghi_JPEG%2F%25C3%25B5%25BE%25C8%25C0%25FC%25B0%25E6.jpg", "대한민국의 중심, 하늘 아래 가장 편안한 땅에 위치한 소노벨 천안은, 객실, 오션어드벤처 등 다양한 부대시설을 구비하여 편안한 휴식은 물론 레저도 같이 즐길 수 있는 복합 문화 리조트 입니다."));
    	roomList.add(new RoomDTO("오엔시티 호텔", "충남 천안시 서북구 불당4로 105", "041-553-8080", "130000", "https://search.pstatic.net/common/?src=https%3A%2F%2Fldb-phinf.pstatic.net%2F20160422_46%2F1461284178456gRoHz_JPEG%2F176372494631700_13.jpeg", "오엔시티호텔(ON CITY HOTEL)은 충실한 부대시설을 갖춘 시티호텔로 천안아산을 방문하시는 비즈니스 고객과 관광객들에게 합리적인 호텔을 선사할 것입니다. "));
    	roomList.add(new RoomDTO("라마다앙코르바이윈덤 천안", "충남 천안시 서북구 차돌들길 12 라마다앙코르바이윈덤 천안", "041-570-3000", "110000", "https://search.pstatic.net/common/?src=https%3A%2F%2Fnaverbooking-phinf.pstatic.net%2F20220913_240%2F1663036698998oByDL_JPEG%2FDSC04579_full_2size.jpg", "세계 최대 호텔그룹인 ‘윈덤’의 국제적 인지도와 섬세한 ‘라마다’의 손길로 천안아산 지역의 1000여개 글로벌 기업과 33개 산업단지를 방문하는 고객 여러분의 현지 비즈니스 전초기지로서의 역할과 재충전을 위한 숙박시설의 본연의 역할을 충실히 할 것입니다."));
    	roomList.add(new RoomDTO("브라운도트호텔 천안 불당점", "충남 천안시 서북구 검은들3길 21 탑필드프라지빌딩 5층", "010-6307-6664", "80000", "https://search.pstatic.net/common/?src=https%3A%2F%2Fldb-phinf.pstatic.net%2F20230111_10%2F1673402131314wgHUd_JPEG%2F01.jpg", "브라운도트 천안 불당점은 다양하고 감각적인 부띠크 스타일의 인테리어와 비즈니스 직장인들을 위한 모던한 인테리어로 일상에서 벗어나 감성을 자극하는 즐거움과 힐링을 동시에 느낄 수 있습니다."));
    }
	
	public static List<RoomDTO> getRoomList() {
		return roomList;
	}

	public void setRoomList(List<RoomDTO> roomList) {
		this.roomList = roomList;
	}
}
