package com.frontline.db;

import java.util.ArrayList;
import java.util.List;

import com.frontline.javabeans.CommentBean;

public class CommentDb {
	private List<CommentBean> commentData = new ArrayList<CommentBean>();

	public List<CommentBean> getCommentData() {
		return commentData;
	}

	public void setCommentData(List<CommentBean> commentData) {
		this.commentData = commentData;
	}
}
