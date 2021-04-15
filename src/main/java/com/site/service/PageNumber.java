package com.site.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.site.mapper.BiddingMapper;

@Component
public class PageNumber {
	@Autowired
	BiddingMapper biddingMapper;
	
	// 하단 넘버링 정보메소드
	public Map<String,Object> pageNumber(int page,int limit,String search) {
		Map map = new HashMap<String, Object>();
		int listCount=0;

		if(search==null || search.equals("")) {
			listCount = biddingMapper.listCount();
		}else {
			listCount = biddingMapper.listCountSearch(search);
		}
		
		
		//최대페이지 수
		int maxpage = (int)((double)listCount/limit+0.95); //34/10+0.95=(int)4.35 -> 4페이지 
		//첫 페이지 번호 : 10페이지 10/10+0.9=(int)1.9 -> (1-1)*10+1 = 1
		int startpage = ((int)((double)page/10+0.9)-1) * 10 + 1;
		//마지막 페이지 번호 : 
		int endpage = maxpage;
		if(endpage>startpage+10-1) endpage = startpage+10-1;
		
		map.put("page", page);
		map.put("listCount",listCount );
		map.put("maxpage",maxpage );
		map.put("startpage",startpage );
		map.put("endpage",endpage );
		map.put("search",search );
		
		return map;
	}
}
