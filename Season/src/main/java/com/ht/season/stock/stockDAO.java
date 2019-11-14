package com.ht.season.stock;

import java.util.List;

import com.ht.season.member.memberDTO;

public interface stockDAO {
	public List<stockDTO> viewStock(stockDTO vo);
	public List<memberDTO> viewMember(memberDTO vo);
	public List<stockDTO> viewStockAll(stockDTO vo);
}
