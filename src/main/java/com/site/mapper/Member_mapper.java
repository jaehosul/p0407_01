package com.site.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.site.dto.MemberDto;

@Mapper
public interface Member_mapper {

	int insertMemberJoin(MemberDto memberDto);

	//로그인체크
	MemberDto selectMemberLogin(String userid, String pwd); 
	
	
}//interface
