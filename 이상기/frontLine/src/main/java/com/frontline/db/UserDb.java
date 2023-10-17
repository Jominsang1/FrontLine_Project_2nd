package com.frontline.db;

import java.util.*;

public class UserDb {
	private List<String> userId = new ArrayList<String>();
	private List<String> userPw = new ArrayList<String>();
	
	public UserDb(){
		this.userId.add("frontline");
		this.userPw.add("1234");
	}

	public List<String> getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId.add(userId);
	}

	public List<String> getUserPw() {
		return userPw;
	}

	public void setUserPw(String userPw) {
		this.userPw.add(userPw);
	}
	
}
