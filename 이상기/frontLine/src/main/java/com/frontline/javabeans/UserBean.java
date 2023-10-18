package com.frontline.javabeans;

public class UserBean {
	private String userName;
	private String userId;
	private String userPw;
	private String userEmail;
	private String userPhone;
	private String userBirth;
	private String userRegDate;
	private String userGrade;
	
	public UserBean() {
		
	}
	
	public UserBean(String userName, String userId, String userPw, String userEmail, String userPhone, String userBirth, String userRegDate, String userGrade) {
		this.userName = userName;
		this.userId = userId;
		this.userPw = userPw;
		this.userEmail = userEmail;
		this.userPhone = userPhone;
		this.userBirth = userBirth;
		this.userRegDate = userRegDate;
		this.userGrade = userGrade;
	}
	
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserPw() {
		return userPw;
	}
	public void setUserPw(String userPw) {
		this.userPw = userPw;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public String getUserPhone() {
		return userPhone;
	}
	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}
	public String getUserBirth() {
		return userBirth;
	}
	public void setUserBirth(String userBirth) {
		this.userBirth = userBirth;
	}
	public String getUserRegDate() {
		return userRegDate;
	}
	public void setUserRegDate(String userRegDate) {
		this.userRegDate = userRegDate;
	}
	public String getUserGrade() {
		return userGrade;
	}
	public void setUserGrade(String userGrade) {
		this.userGrade = userGrade;
	}
	
	@Override
	public String toString() {
		return "UserBean [userName=" + userName + ", userId=" + userId + ", userPw=" + userPw + ", userEmail="
				+ userEmail + ", userPhone=" + userPhone + ", userBirth=" + userBirth + ", userRegDate=" + userRegDate
				+ ", userGrade=" + userGrade + "]";
	}
	
}
