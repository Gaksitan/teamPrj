package com.example.teamPrj.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.example.teamPrj.dto.CommentDto;

@Mapper
public interface ICommentDao {
	
	public List<CommentDto> getComment(int bno); // 특정 게시물의 댓글전부를 받아와서 뿌려줌
	public void regComment(@Param("comment") CommentDto comment);
	public void deleteComment(int cno);
	
	
}
