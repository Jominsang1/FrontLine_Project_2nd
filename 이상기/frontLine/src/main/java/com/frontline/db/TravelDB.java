package com.frontline.db;

import java.util.ArrayList;
import java.util.List;

import com.frontline.javabeans.TravelDTO;

public class TravelDB {
	private static List<TravelDTO> travelList = new ArrayList<TravelDTO>();
	
	static {
		travelList.add(new TravelDTO("천안시", "천호지", "https://i.namu.wiki/i/UrxBsmTZOYJtmi6ENeDWjumeF1CqQsmjV0RsVZHbou4DWx0RmDlUMIXXE7doMOfMnHGxR9hDtsz96q_F3wbQ9r62nklxU0DdWE1r2yLK1fMEdiuXnff0uMXgcwc7niB4x3rHaloRUoH3L_o-57j-Yw.webp", "봄, 가을에 걷기 좋은 데이트코스, 천안사는 사람이라면 모를 수가 없는 천호지 단대호수입니다. 운동을 즐기려면 농구공, 배드민턴라켓 등 챙겨오는 거 추천", "","", "충남 천안시 동남구 안서동 526-1"));
		travelList.add(new TravelDTO("천안시", "삼거리공원", "https://lh3.googleusercontent.com/p/AF1QipNMY49kV35DzuxQfa2wpOLBiUeJfY1C2cf1-5M8=s680-w680-h510", "잘 알려진 우리 민요 흥타령(興打令)으로 유명한 천안 삼거리를 기념하여 조성된 공원입니다.", "041-521-3841","", "충청남도 천안시 충절로 410"));
		travelList.add(new TravelDTO("천안시", "독립기념관", "https://search.pstatic.net/common/?src=https%3A%2F%2Fldb-phinf.pstatic.net%2F20150831_266%2F1441006691781VjuUq_JPEG%2FSUBMIT_1318825436850_11620331.jpg", "자주와 독립의 정신으로 지켜온 우리 민족의 뜨거운 역사를 만날 수 있는 곳", "041-560-0114","", "충남 천안시 동남구 목천읍 독립기념관로 1 독립기념관"));
		travelList.add(new TravelDTO("천안시", "성성호수공원", "https://www.cheonan.go.kr/cmm/fms/getImage.do;jsessionid=164335E9636096573A1825A93776A8DF?atchFileId=FILE_000000000507804&fileSn=1", "방문자 센터(홍보관/체험관), 잔디마당과 숲 놀이터, 생태탐방로 및 자연 관찰 교량인 성성 물빛 누리교, 인공식물 섬, 물 순환시설 등 자연과 사람이 공존하는 도시생활 속 친환경 생태공원", "041-521-5436","", "충청남도 천안시 서북구 성성2길 95"));
		travelList.add(new TravelDTO("천안시", "각원사", "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/17/6e/62/9e/photo0jpg.jpg?w=1200&h=-1&s=1", "충청남도 천안시 안서동 태조산에 자리한 각원사는 개산조(開山祖) 경해법인(鏡海法印) 조실(祖室)스님의 원력으로 1975년에 창건되어 대한불교조계종에 직할교구로 등록된 사찰이다.", "041-561-3545","", "충남 천안시 동남구 각원사길 245 각원사"));
	}

	public static List<TravelDTO> getTravelList() {
		return travelList;
	}

	public static void setTravelList(List<TravelDTO> travelList) {
		TravelDB.travelList = travelList;
	}
	
}
