package com.frontline.javabeans;

import java.util.ArrayList;
import java.util.List;

public class CommentBean {
	private List<CommentBean> commentData = new ArrayList<CommentBean>();
	private String commentId;
	private String commentText;
	private String commentRegDate;
	private String commentGrade;
	
	public List<CommentBean> getCommentData() {
		return commentData;
	}
	public void setCommentData(List<CommentBean> commentData) {
		this.commentData = commentData;
	}
	public String getCommentId() {
		return commentId;
	}
	public void setCommentId(String commentId) {
		this.commentId = commentId;
	}
	public String getCommentText() {
		return commentText;
	}
	public void setCommentText(String commentText) {
		this.commentText = commentText;
	}
	public String getCommentRegDate() {
		return commentRegDate;
	}
	public void setCommentRegDate(String commentRegDate) {
		this.commentRegDate = commentRegDate;
	}
	public String getCommentGrade() {
		return commentGrade;
	}
	public void setCommentGrade(String commentGrade) {
		this.commentGrade = commentGrade;
	}
}
