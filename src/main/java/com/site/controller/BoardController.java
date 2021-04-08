package com.site.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BoardController {

	@RequestMapping("/index")
	public String index() {
		return "index";
	}
	
	@RequestMapping("/noticeboard/normal")
	public String normal() {
		return "/noticeboard/normal";
	}
	
	@RequestMapping("/about/greeting")
	public String greeting() {
		return "/about/greeting";
	}

	@RequestMapping("/about/info")
	public String info() {
		return "/about/info";
	}
	
	@RequestMapping("/about/planner")
	public String planner() {
		return "/about/planner";
	}
	
	@RequestMapping("/about/map")
	public String map() {
		return "/about/map";
	}
	
	@RequestMapping("/reservation/reservation")
	public String reservation() {
		return "/reservation/reservation";
	}
	
	@RequestMapping("/reservation/bidding_list")
	public String bidding_list() {
		return "/reservation/bidding_list";
	}
	
	@RequestMapping("/reservation/bidding_write")
	public String bidding_write() {
		return "/reservation/bidding_write";
	}
	
}// class
