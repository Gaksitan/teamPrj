package com.example.teamPrj.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.example.teamPrj.dto.MemberDto;

@Mapper
public interface IMemberDao {

	public List<MemberDto> getAllMember();
	public MemberDto getMember(String id);
	public void regMember(@Param("member")MemberDto member);
	
}
