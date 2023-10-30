package com.frontline.db;

import java.util.ArrayList;
import java.util.List;

import com.frontline.javabeans.CommentDTO;

public class CommentDB {
	private static List<CommentDTO> commentList = new ArrayList<CommentDTO>();

	public static List<CommentDTO> getCommentList() {
		return commentList;
	}

	public static void setCommentList(List<CommentDTO> commentList) {
		CommentDB.commentList = commentList;
	}
}
