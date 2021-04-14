package com.site.service;

import java.util.Map;

import com.site.dto.BiddingDto;

public interface BiddingService {


	void biddingWrite(BiddingDto biddingDto);

	Map<String, Object> biddingListAll(String listPage, String search);

	Map<String, Object> modify_view(String bidding_id, String page, String search);

	void biddingDelete(String bidding_id);

	Map<String, Object> content_view(String bidding_id, String page, String search);

	Map<String, Object> reply_view(String bidding_id, String page, String search);

	void biddingReply(BiddingDto biddingDto);



}
