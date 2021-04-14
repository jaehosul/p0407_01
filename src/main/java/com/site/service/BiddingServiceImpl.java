package com.site.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.site.dto.BiddingDto;
import com.site.mapper.BiddingMapper;

@Service
public class BiddingServiceImpl implements BiddingService {

	@Autowired
	BiddingMapper biddingMapper;
	
	@Autowired
	PageNumber pageNumber; 
	Map<String, Object> map;
	List<BiddingDto> list;
	BiddingDto biddingDto;
	BiddingDto upperDto;
	BiddingDto lowerDto;
	
	
	@Override
	public Map<String, Object> biddingListAll(String listPage, String search) {
		Map map = new HashMap<String, Object>();
		list = new ArrayList<BiddingDto>();
		int page=1;  //첫페이지 초기화
		int limit=10; //한페이지에 나오는 게시글수 : 10
		//page데이터가 있으면 데이터값 적용
		if(listPage !=null && listPage !="" ) {
			page = Integer.parseInt(listPage);
		}
		int startrow = (page-1)*limit+1; // 시작 게시글번호 1,11,21...
		int endrow = startrow+limit-1; // 마지막 게시글번호 10,20,30...
		
		//리스트 가져오는 메소드
		if(search==null || search.equals("")) {
			list = biddingMapper.selectBiddingList(startrow,endrow);
		}else {
			list = biddingMapper.selectBiddingListSearch(startrow,endrow,search);
		}
		
		
		
		//페이지 넘버링 메소드
		map = pageNumber.pageNumber(page, limit);
		map.put("list", list);
		
		int test_page = (int) map.get("page");
		
		
		return map;
	}


	@Override
	public Map<String, Object> content_view(String bidding_id, String page, String search) {
		Map<String, Object> map = new HashMap<String, Object>();
		
		biddingDto = biddingMapper.content_view(bidding_id);		
		
		
		
		//조회수 1 증가
		biddingMapper.selectUpHit(bidding_id);

				
		//content 1개 가져오기
		biddingDto = biddingMapper.content_view(bidding_id);
		//리스트 가져오는 메소드
		if(search==null || search.equals("")) {
			//윗글 아랫글을 가지고 옴
			upperDto = biddingMapper.selectBidding_upper(bidding_id);
			lowerDto = biddingMapper.selectBidding_lower(bidding_id);
		}else {
			upperDto = biddingMapper.selectBidding_upperSearch(bidding_id,search);
			lowerDto = biddingMapper.selectBidding_lowerSearch(bidding_id,search);
		}
		
		map.put("biddingDto", biddingDto);
		map.put("upperDto", upperDto);
		map.put("lowerDto", lowerDto);
		map.put("search", search);
		map.put("page", page);
		
		return map;
	}

	// 쓰기 메소드
	@Override
	public void biddingWrite(BiddingDto biddingDto) {
	    int test=biddingMapper.insertBiddingWrite(biddingDto);
		return;
	}

	// 삭제 메소드
	@Override
	public void biddingDelete(String bidding_id) {
		biddingMapper.biddingDelete(bidding_id);
	}
	
	
	// 수정 메소드
	@Override
	public Map<String, Object> modify_view(String bidding_id, String page, String search) {
		//content 1개 가져오기
		BiddingDto biddingDto = biddingMapper.content_view(bidding_id);
		
		map.put("biddingDto", biddingDto);
		map.put("search", search);
		map.put("page", page);
		
		return map;
	}

	// 리플
	// Reply
	@Override
	public Map<String, Object> reply_view(String bidding_id, String page, String search) {
		//content 1개 가져오기
		biddingDto = biddingMapper.content_view(bidding_id);
		System.out.println("reply 임플리먼트: "+bidding_id);
		map.put("biddingDto", biddingDto);
		map.put("search", search);
		map.put("page", page);
		return map;
	}
	
	@Override
	public void biddingReply(BiddingDto biddingDto) {
	    // mapper전달
	    biddingMapper.biddingReply(biddingDto);
	    biddingMapper.biddingReplyPlus(biddingDto);
	    return;
		
	}

	
}// class
