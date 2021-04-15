package com.site.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.site.dto.BiddingDto;

@Mapper
public interface BiddingMapper {

	// 입찰 리스트를 DB로부터 가져오기
	List<BiddingDto> selectBiddingListAll(int startrow, int endrow);
	List<BiddingDto> selectBiddingListSearch(int startrow, int endrow, String search);
	
	// list 개수 
	int listCount();
	int listCountSearch(String search);

	
	// 입찰 리스트 가운데 하나만 불러옵니다.
	BiddingDto content_view(String bidding_id);
	void selectUpHit(String bidding_id);
	BiddingDto selectBidding_upper(String bidding_id);
	BiddingDto selectBidding_lower(String bidding_id);
	BiddingDto selectBidding_upperSearch(String bidding_id, String search);
	BiddingDto selectBidding_lowerSearch(String bidding_id, String search);
	

	// 페이지 넘버링에 쓰입니다.
	List<BiddingDto> selectBiddingList(int startrow, int endrow);

	// 쓰기 기능을 통해 DB에 입력합니다.
	int insertBiddingWrite(BiddingDto biddingDto);

	// 삭제합니다.
	void biddingDelete(String bidding_id);
	
	// 리플
	// Reply
	void biddingReply(BiddingDto biddingDto);
	void biddingReplyPlus(BiddingDto biddingDto);
	
	// 수정
	// Modify
	void biddingModify(BiddingDto biddingDto);


}
