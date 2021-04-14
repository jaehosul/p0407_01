package com.site.service;

import java.util.Map;

import com.site.dto.MemberDto;

public interface MemberService {

	int memberJoin(MemberDto memberDto);

	Map<String, Object> memberLogin(String userid, String pwd); 

}
