package com.ht.season.stock;

import java.util.List;

import com.ht.season.member.memberDTO;

public interface stockService {
	public List<stockDTO> viewStock(stockDTO vo);
	public List<memberDTO> viewMember(memberDTO vo);
}
