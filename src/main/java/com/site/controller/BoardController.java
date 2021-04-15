package com.site.controller;

import java.net.URLEncoder;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.lang.Nullable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.site.dto.BiddingDto;
import com.site.service.BiddingService;

@Controller
public class BoardController {
	
	@Autowired
	BiddingService biddingService;
	Map<String, Object> map;

	@RequestMapping("/index")
	public String index() {
		return "index";
	}
	
	@RequestMapping("/body")
	public String body() {
		return "body";
	}
	
	// noticeboard 컨트롤러
	@RequestMapping("/noticeboard/normal")
	public String normal() {
		return "noticeboard/normal";
	}
	
	// 소개 컨트롤러
	@RequestMapping("/about/greeting")
	public String greeting() {
		return "about/greeting";
	}

	@RequestMapping("/about/info")
	public String info() {
		return "about/info";
	}
	
	@RequestMapping("/about/planner")
	public String planner() {
		return "/about/planner";
	}
	
	@RequestMapping("/about/map")
	public String map() {
		return "about/map";
	}
	
	
	// 예약 컨트롤러
	@RequestMapping("/hall/hall_reservation")
	public String hall_reservation() {
		return "/hall/hall_reservation";
	}
	
	@RequestMapping("/hall/hall_search")
	public String hall_search() {
		return "hall/hall_search";
	}
	
	// 리스트를 뿌려준다. 이를 위해 페이지와 검색어와 모델을 받아야 한다.
	@RequestMapping("/hall/hall_bidding_list")
	public String hall_bidding_list(@RequestParam @Nullable String page, 
			@RequestParam @Nullable String search,
			Model model) {
		map = biddingService.biddingListAll(page,search);
		model.addAttribute("map",map);
		return "hall/hall_bidding_list";
	}
	
	@RequestMapping("/hall/write_view")
	public String write_view() {
		return "hall/write_view";
	}
	
	@RequestMapping("/hall/write")
	public String write(BiddingDto biddingDto, Model model) {
     	biddingService.biddingWrite(biddingDto);
     	model.addAttribute("map",map);
		return "redirect:/hall/hall_bidding_list";
	}

	
	// 컨텐트 뷰 페이지 컨트롤러
	@RequestMapping("/hall/content_view")
	public String content_view(@RequestParam @Nullable String bidding_id, 
			@RequestParam @Nullable String page,
			@RequestParam @Nullable String search,
			Model model) {
		map = biddingService.content_view(bidding_id, page, search);
		model.addAttribute("map",map);
		return "/hall/content_view";
	}
	
	@RequestMapping("/hall/delete")
	public String delete(@RequestParam String bidding_id,@RequestParam @Nullable String page,
			@RequestParam @Nullable String search, Model model) throws Exception {
		biddingService.biddingDelete(bidding_id);
     	search = URLEncoder.encode(search,"utf-8");
 		return "redirect:/hall/hall_bidding_list?page="+page+"&search="+search;
	}

	// 수정 페이지 컨트롤러
	@RequestMapping("/hall/modify")
	public String modify(BiddingDto biddingDto,
			@RequestParam @Nullable String page,
			@RequestParam @Nullable String search,
			Model model) throws Exception {
		System.out.println("DTO:"+biddingDto.getBidding_id());
		biddingService.biddingModify(biddingDto);
		search = URLEncoder.encode(search,"utf-8");
		return "redirect:/hall/hall_bidding_list?page="+page+"&search="+search;
		
	}
	
	@RequestMapping("/hall/modify_view")
	public String modify_view(@RequestParam @Nullable String page,
			@RequestParam @Nullable String bidding_id, 
			@RequestParam @Nullable String search, 
			Model model) {
		map = biddingService.modify_view(bidding_id,page,search);
		model.addAttribute("map",map);
		return "hall/modify_view";
	}
	
	// 리플
	// Reply
	@RequestMapping("/hall/reply")
	public String reply(BiddingDto biddingDto,
			@RequestParam @Nullable String page,
			@RequestParam @Nullable String search,
			Model model) throws Exception {
		
		biddingService.biddingReply(biddingDto);
		search = URLEncoder.encode(search,"utf-8");
		return "redirect:/hall/hall_bidding_list?page="+page+"&search="+search;
	}
	
	@RequestMapping("/hall/reply_view")
	public String reply_view(@RequestParam @Nullable String page,
			@RequestParam @Nullable String search,
			@RequestParam @Nullable String bidding_id, Model model) {
		map = biddingService.modify_view(bidding_id,page,search);
		model.addAttribute("map",map);
		return "hall/reply_view";
	}
	
	
}// class
