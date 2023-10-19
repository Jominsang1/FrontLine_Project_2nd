package com.frontline.db;

import java.util.*;
import com.frontline.javabeans.UserBean;

public class UserDb {
	private List<UserBean> userData = new ArrayList<UserBean>();
	
	public UserDb(){
		this.userData.add(new UserBean("관리자", "admin", "1234", "admin@admin.com", "01012345678", "19999999", "20231018", "admin"));
		this.userData.add(new UserBean("이상기", "lsk", "1234", "lsk@frontline.com", "01012345678", "19961215", "20231018", "user"));
	}

	public List<UserBean> getUserData() {
		return userData;
	}

	public void setUserData(List<UserBean> userData) {
		this.userData = userData;
	}
}
