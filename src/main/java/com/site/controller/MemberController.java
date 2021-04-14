package com.site.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.lang.Nullable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.site.dto.MemberDto;
import com.site.service.MemberService;

@Controller
public class MemberController {
	
	@Autowired
	MemberService memberService;

	@RequestMapping("/member/join")
	public String join() {
		return "/member/join";
	}
	
	@RequestMapping("/member/joinCheck")
	public String joinCheck(MemberDto memberDto, Model model) {
		
		int check = memberService.memberJoin(memberDto);
		System.out.println("con, check : "+check);
		model.addAttribute("check", check);
		
		return "/member/joinCheck";
	}
	
	@RequestMapping("/member/login")
	public String login() {
		return "/member/login";
	}
	
	@RequestMapping("/member/loginCheck")
	public String loginCheck(@RequestParam String userid, @RequestParam String pwd, HttpServletRequest request) {
		
		System.out.println("controller userid : "+userid);
		System.out.println("controller pwd : "+pwd);
		HttpSession session = request.getSession();
		Map<String, Object> map = memberService.memberLogin(userid,pwd);
		
		System.out.println("loginCheck : "+map.get("loginCheck"));
		
		if((int)map.get("loginCheck") == 1 ) {
			session.setAttribute("session_flag", "success");
			session.setAttribute("session_userid", ((MemberDto)map.get("memberDto")).getUserid());
			session.setAttribute("session_name", ((MemberDto)map.get("memberDto")).getName());
			session.setAttribute("session_nickName",((MemberDto) map.get("memberDto")).getNickName());
		}else {
			session.setAttribute("session_flag", "fail");
		}
		
		return "/member/login_check";
	}
	
	@RequestMapping("/member/logout")
	public String logout() {
		return "/member/logout";
	}
	
	@RequestMapping("/member/joinComplete")
	public String joinComplete() {
		return "/member/joinComplete";
	}
	
	
}//class
