package com.frontline.db;

import java.util.*;

import com.frontline.javabeans.PlayDTO;

public class PlayDB {
	private static List<PlayDTO> playList = new ArrayList<PlayDTO>();

	static {
		playList.add(new PlayDTO("천안시", "히흣 도예공방", "충청남도 천안시 동남구 대흥로 323","041-123-4567",".","주차, 포장, 예약, 남/녀 화장실 구분","https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&id=e6dc1e1f-224f-4a00-8d72-0d90ebf827b2"));
	    playList.add(new PlayDTO("천안시", "천안흥타령춤축제", "충청남도 천안시 서북구 번영로 208 종합운동장 천안시종합운동장일원","041-123-4567",".","주차, 포장, 예약, 남/녀 화장실 구분","https://korean.visitkorea.or.kr/kfes/upload/contents/db/1fc75427-81f0-42bf-946b-d81e9a32aca5_5.jpg"));
	    playList.add(new PlayDTO("천안시", "빵빵데이 천안", "충청남도 천안시 서북구 번영로 156 천안시청","041-123-4567",".","주차, 포장, 예약, 남/녀 화장실 구분","https://image.여기유.com/content_festival/2023082109372416925782441458.jpg"));
	}

	public static List<PlayDTO> getPlayList() {
		return playList;
	}

	public static void setPlayList(List<PlayDTO> playList) {
		PlayDB.playList = playList;
	}
	
	
}
