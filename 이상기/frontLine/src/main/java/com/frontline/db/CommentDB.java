package com.frontline.db;

import java.util.ArrayList;
import java.util.List;

import com.frontline.javabeans.CommentDTO;

public class CommentDB {
	private List<CommentDTO> commentList = new ArrayList<CommentDTO>();

	public List<CommentDTO> getCommentList() {
		return commentList;
	}

	public void setCommentList(List<CommentDTO> commentList) {
		this.commentList = commentList;
	}
}
