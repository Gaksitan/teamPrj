package com.example.teamPrj.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.example.teamPrj.dto.BoardDto;

@Mapper
public interface IBoardDao {

	public List<BoardDto> getAllBoard();
	public BoardDto getBoard(int bno);
	public void regBoard(@Param("board")BoardDto board);
	public void deleteBoard(int bno);
	public BoardDto getMyList(String writer);
	public BoardDto getReceiveList(String receiver);
	
}
