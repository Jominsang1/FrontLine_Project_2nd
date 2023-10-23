package com.frontline.db;

import java.util.*;
import com.frontline.javabeans.UserBean;

public class UserDb {
	private List<UserBean> userData = new ArrayList<UserBean>();
	
	public UserDb(){
		this.userData.add(new UserBean("관리자", "admin", "1234", "admin@admin.com", "01012345678", "19999999", "20231018", "admin"));
		this.userData.add(new UserBean("이상기", "lsk", "1234", "lsk@frontline.com", "01012345678", "19961215", "20231018", "user"));
		this.userData.add(new UserBean("이남주", "lnj", "1234", "lnj@frontline.com", "01012345678", "20000611", "20231018", "user"));
		this.userData.add(new UserBean("테스트1", "test1", "1234", "test1@frontline.com", "01012345678", "19961215", "20231018", "user"));
		this.userData.add(new UserBean("테스트2", "test2", "1234", "test2@frontline.com", "01012345678", "19961215", "20231018", "user"));
		this.userData.add(new UserBean("테스트3", "test3", "1234", "test3@frontline.com", "01012345678", "19961215", "20231018", "user"));
		this.userData.add(new UserBean("테스트4", "test4", "1234", "test4@frontline.com", "01012345678", "19961215", "20231018", "user"));
		this.userData.add(new UserBean("테스트5", "test5", "1234", "test5@frontline.com", "01012345678", "19961215", "20231018", "user"));
		this.userData.add(new UserBean("테스트6", "test6", "1234", "test6@frontline.com", "01012345678", "19961215", "20231018", "user"));
		this.userData.add(new UserBean("테스트7", "test7", "1234", "test7@frontline.com", "01012345678", "19961215", "20231018", "user"));
		this.userData.add(new UserBean("테스트8", "test8", "1234", "test8@frontline.com", "01012345678", "19961215", "20231018", "user"));
		this.userData.add(new UserBean("테스트9", "test9", "1234", "test9@frontline.com", "01012345678", "19961215", "20231018", "user"));
		this.userData.add(new UserBean("테스트10", "test10", "1234", "test10@frontline.com", "01012345678", "19961215", "20231018", "user"));
		this.userData.add(new UserBean("테스트11", "test11", "1234", "test11@frontline.com", "01012345678", "19961215", "20231018", "user"));
		this.userData.add(new UserBean("테스트12", "test12", "1234", "test12@frontline.com", "01012345678", "19961215", "20231018", "user"));
		this.userData.add(new UserBean("테스트13", "test13", "1234", "test13@frontline.com", "01012345678", "19961215", "20231018", "user"));
	}

	public List<UserBean> getUserData() {
		return userData;
	}

	public void setUserData(List<UserBean> userData) {
		this.userData = userData;
	}
}
