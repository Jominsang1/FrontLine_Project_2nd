package com.frontline.db;

import java.util.*;

import com.frontline.javabeans.PlayDTO;

public class PlayDB {
	private static List<PlayDTO> playList = new ArrayList<PlayDTO>();

	static {
		playList.add(new PlayDTO("천안시", "히흣 도예공방", "충청남도 천안시 동남구 대흥로 323","041-123-4567",".","주차, 포장, 예약, 남/녀 화장실 구분","https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&id=e6dc1e1f-224f-4a00-8d72-0d90ebf827b2"));
	    playList.add(new PlayDTO("천안시", "천안흥타령춤축제", "충청남도 천안시 서북구 번영로 208 종합운동장 천안시종합운동장일원","041-123-4567",".","주차, 포장, 예약, 남/녀 화장실 구분","https://korean.visitkorea.or.kr/kfes/upload/contents/db/1fc75427-81f0-42bf-946b-d81e9a32aca5_5.jpg"));
	    playList.add(new PlayDTO("천안시", "빵빵데이 천안", "충청남도 천안시 서북구 번영로 156 천안시청","041-123-4567",".","주차, 포장, 예약, 남/녀 화장실 구분","https://image.여기유.com/content_festival/2023082109372416925782441458.jpg"));
	    playList.add(new PlayDTO("천안시", "피크타임 페스티벌", "충청남도 천안시 서북구 불당동 242-3","041-635-3986","14:00 ~ 22:00","청년의날을 맞이해 충청남도, 천안시, 중앙청년지원센터에서 주최/주관/후원하는 청년들을 위한 피크닉형 토크 콘서트 2023년 피크타임페스티벌은 '하마터면 갓생 살뻔했다.' 라는 주제로 청년들에게 응원의 메세지와 고민들을 나눌수 있는 시간을 준비했습니다.","https://youth.chungnam.go.kr/utl/web/imageSrc.do?path=JsTjVEw4hKgEFsrL6sWAiw%3D%3D&physical=8SS6rhT0pJIxpkCrheFL6q9qq9OlkjfRQMtmgeXfcEmahO6PkPTPAf0lKZRxDhK7&contentType=zXYY%2BtRuxVsI%2FFpge91w%2FA%3D%3D"));
	    playList.add(new PlayDTO("천안시", "로라랜드", "충청남도 천안시 동남구 터미널9길 25","041-555-1455","14:00 ~ 20:00","연인 또는 가족과 함께 롤러스케이트로 즐거운 실내 데이트","https://search.pstatic.net/common/?src=https%3A%2F%2Fldb-phinf.pstatic.net%2F20220802_91%2F1659439571351mK1mT_JPEG%2FKakaoTalk_20220802_202442633_04.jpg"));
	}

	public static List<PlayDTO> getPlayList() {
		return playList;
	}

	public static void setPlayList(List<PlayDTO> playList) {
		PlayDB.playList = playList;
	}
	
	
}
