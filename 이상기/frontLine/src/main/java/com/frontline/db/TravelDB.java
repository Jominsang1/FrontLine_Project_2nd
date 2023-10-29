package com.frontline.db;

import java.util.ArrayList;
import java.util.List;

import com.frontline.javabeans.TravelDTO;

public class TravelDB {
	private static List<TravelDTO> travelList = new ArrayList<TravelDTO>();
	
	static {
		travelList.add(new TravelDTO("천안시", "천호지", "https://i.namu.wiki/i/UrxBsmTZOYJtmi6ENeDWjumeF1CqQsmjV0RsVZHbou4DWx0RmDlUMIXXE7doMOfMnHGxR9hDtsz96q_F3wbQ9r62nklxU0DdWE1r2yLK1fMEdiuXnff0uMXgcwc7niB4x3rHaloRUoH3L_o-57j-Yw.webp", "봄, 가을에 걷기 좋은 데이트코스, 천안사는 사람이라면 모를 수가 없는 천호지 단대호수입니다. 운동을 즐기려면 농구공, 배드민턴라켓 등 챙겨오는 거 추천", "","", "충남 천안시 동남구 안서동 단대호수"));
		travelList.add(new TravelDTO("천안시", "삼거리공원", "https://lh3.googleusercontent.com/p/AF1QipNMY49kV35DzuxQfa2wpOLBiUeJfY1C2cf1-5M8=s680-w680-h510", "잘 알려진 우리 민요 흥타령(興打令)으로 유명한 천안 삼거리를 기념하여 조성된 공원입니다.", "041-521-3841","", "충청남도 천안시 충절로 410"));
	}

	public static List<TravelDTO> getTravelList() {
		return travelList;
	}

	public static void setTravelList(List<TravelDTO> travelList) {
		TravelDB.travelList = travelList;
	}
	
}
