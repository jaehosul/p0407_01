package com.site.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class BiddingDto {
	
	private int bidding_id;
	private String bidding_name;
	private String bidding_title;
	private String bidding_content;
	private String bidding_date;
	private int bidding_hit;
	private int bidding_group;
	private int bidding_step;
	private int bidding_indent;
	private int auctioned;

}
