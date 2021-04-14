package com.site.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.site.dto.MemberDto;
import com.site.mapper.Member_mapper;

@Service
public class MemberService_impl implements MemberService {
	
	@Autowired
	Member_mapper member_mapper;
	

	@Override
	public int memberJoin(MemberDto memberDto) {
		
		int check = member_mapper.insertMemberJoin(memberDto);
		
		return check;

	}

	@Override
	public Map<String, Object> memberLogin(String userid, String pwd) {
		
		System.out.println("userid : "+userid);
		System.out.println("pwd : "+pwd);
		
		Map<String, Object> map = new HashMap<String, Object>();
		MemberDto memberDto = member_mapper.selectMemberLogin(userid,pwd);
		
		int loginCheck = -1;
		String message = "아이디와 패스워드가 일치하지 않습니다.";
		
		if(memberDto != null) {
			loginCheck = 1; 
		}
		
		System.out.println("memberDto : "+memberDto);
		 
		map.put("memberDto", memberDto);
		map.put("loginCheck", loginCheck);
		map.put("message", message);
		
		return map;
	}
	
	
	
	

}//class
