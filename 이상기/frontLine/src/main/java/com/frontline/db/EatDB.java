package com.frontline.db;

import java.util.ArrayList;
import java.util.List;

import com.frontline.javabeans.EatDTO;

public class EatDB {
	private static List<EatDTO> eatList = new ArrayList<EatDTO>();
	
	static {
		eatList.add(new EatDTO("천안시", "충청남도 천안시 서북구 쌍용2동 392-1", "041-578-8982", "11:00 ~ 21:00", "고객의 꾸준한 사랑을 받아온 점포 가운데, 중소벤처기업부에서 그 우수성과 성장 가능성을 높게 평가 받아 공식 인증받은 점포입니다.", "https://mblogthumb-phinf.pstatic.net/MjAxNzA3MTFfMjE1/MDAxNDk5NzU0MTg3MDI4.zKJAz1cR6uBWq9kTx60S53Su8LIW6qcSK9pGKXNX-Jkg.fEQUdVlIQFEQopE8MTYTik0F4IPw4gIO0P7DsGXyQIEg.JPEG.2016largo/P20170711_114113125_B6AEAA4F-B836-4B05-8168-F1BA58E04579.JPG?type=w800", "고복수 냉면"));
		eatList.add(new EatDTO("천안시", "충청남도 천안시 동남구 청수8로 3", "010-6622-9810", "11:30 ~ 21:00", "바쁜 일상에서 벗어나 여유있는 식사한끼를 만들어드리고 싶어요 맛있는 덮밥 한 상 받으시고 좋은 시간 보내세요!", "https://mblogthumb-phinf.pstatic.net/MjAyMjA0MjVfOTMg/MDAxNjUwODQ5MjEwNzYw.X4iG6xzDfqJCnPPK2Xm1QVj4m7zXY4U9Hj_MA3BA_ukg.gVuxX8BxwzXBaQ1dgcesFSBT4FKzq8-u-5hjAh8D_DAg.JPEG.smalove7/%EC%9D%BC%EB%8F%84%EA%B8%B00.jpg?type=w800", "일도기"));
		eatList.add(new EatDTO("천안시", "충청남도 천안시 동남구 청수6로 35-80 1층", "010-6622-9810", "11:00 ~ 21:00", "단체 이용 가능, 주차, 포장, 예약, 남/녀 화장실 구분", "https://search.pstatic.net/common/?src=https%3A%2F%2Fldb-phinf.pstatic.net%2F20230713_120%2F1689214800760ivPwz_JPEG%2F20230712_164618.jpg", "동천홍"));
		eatList.add(new EatDTO("천안시", "충청남도 천안시 동남구 청수로 127", "041-556-0709", "11:30 ~ 19:00", "오래도록 같은 자리를 지켜온 김밥 및 간편 식사 전문점", "https://search.pstatic.net/common/?src=https%3A%2F%2Fldb-phinf.pstatic.net%2F20190131_149%2F1548926888013A804o_JPEG%2FdEXhvMOHndqH7FyQ7L0w2tvM.jpeg.jpg", "김밥세상"));
		eatList.add(new EatDTO("천안시", "충남 천안시 동남구 대흥로 215 백자빌딩 1층 102호 달식당", "041-557-2266", "09:00 ~ 21:00", "천안역 주변 바삭하면서 촉촉한 돈까스 맛집, 달식당", "https://search.pstatic.net/common/?src=https%3A%2F%2Fldb-phinf.pstatic.net%2F20180411_146%2F1523372533294d2dfy_JPEG%2FNiTQ8bacYAwEwEnwqMM1dYWU.jpeg.jpg", "달식당"));
	}

	public static List<EatDTO> getEatList() {
		return eatList;
	}

	public static void setEatList(List<EatDTO> eatList) {
		EatDB.eatList = eatList;
	}
}
